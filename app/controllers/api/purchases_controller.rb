module Api
  class PurchasesController < ApplicationController
    def create
      # In a real app, customer details would come from an authenticated user session
      customer_details = { "name" => "John Doe", "email" => "john.doe@example.com" }

      purchase_service = Booking::Application::PurchaseInsurance.new(
        policy_id: params[:policy_id],
        customer_details: customer_details
      )

      result = purchase_service.call

      if result[:success]
        render json: { message: "Insurance purchased successfully", policy: result[:policy] }, status: :created
      else
        render json: { error: result[:error] }, status: :unprocessable_entity
      end
    end
  end
end
