module Api
  class InsurancePoliciesController < ApplicationController
    before_action :set_insurance_policy, only: [ :show ]

    # GET /api/insurance_policies
    def index
      @insurance_policies = InsurancePolicy.all
      render json: @insurance_policies
    end

    # GET /api/insurance_policies/1
    def show
      render json: @insurance_policy
    end

    # POST /api/insurance_policies
    def create
      @insurance_policy = InsurancePolicy.new(insurance_policy_params)

      if @insurance_policy.save
        render json: @insurance_policy, status: :created, location: api_insurance_policy_url(@insurance_policy)
      else
        render json: @insurance_policy.errors, status: :unprocessable_entity
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_insurance_policy
        @insurance_policy = InsurancePolicy.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def insurance_policy_params
        params.require(:insurance_policy).permit(:name, :description, :provider, :price, :category)
      end
  end
end
