module Booking
  module Application
    class PurchaseInsurance
      def initialize(policy_id:, customer_details:)
        @policy_id = policy_id
        @customer_details = customer_details
      end

      def call
        # In a real DDD application, this would involve more complex logic:
        # 1. Find the InsurancePolicy aggregate root.
        # 2. Create a new Booking or PolicyHolder entity.
        # 3. Process payment (could be another domain).
        # 4. Dispatch domain events (e.g., InsurancePurchased).

        policy = InsurancePolicy.find(@policy_id)

        # For simplicity, we'll just log a message.
        # In a real scenario, you might trigger a background job.
        Rails.logger.info "Insurance purchased: #{policy.name} for #{@customer_details[:name]}"

        # Example of triggering a Sidekiq job
        SendPurchaseConfirmationJob.perform_async(policy.id, @customer_details)

        { success: true, policy: policy }
      rescue ActiveRecord::RecordNotFound
        { success: false, error: "Policy not found" }
      end
    end
  end
end
