class SendPurchaseConfirmationJob
  include Sidekiq::Job

  def perform(policy_id, customer_details)
    # In a real application, this job would:
    # 1. Find the policy.
    # 2. Generate a confirmation document (e.g., PDF).
    # 3. Send an email to the customer with the confirmation.

    policy = InsurancePolicy.find(policy_id)
    Rails.logger.info "Sending purchase confirmation for #{policy.name} to #{customer_details['name']}."

    # Example: ActionMailer would be used here
    # PolicyMailer.purchase_confirmation(policy, customer_details).deliver_now
  end
end
