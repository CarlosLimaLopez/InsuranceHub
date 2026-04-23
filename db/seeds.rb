InsurancePolicy.find_or_create_by!(
  name: "Basic Travel Insurance",
  description: "Covers medical emergencies and trip cancellations.",
  provider: "SafeTravel",
  price: 50.00,
  category: "travel_assistance"
)

InsurancePolicy.find_or_create_by!(
  name: "Premium Travel Insurance",
  description: "Comprehensive coverage including lost baggage and legal assistance.",
  provider: "Global Secure",
  price: 150.00,
  category: "travel_assistance"
)

InsurancePolicy.find_or_create_by!(
  name: "Cancellation-Only Insurance",
  description: "Refund for non-refundable travel expenses if you have to cancel.",
  provider: "CancelGuard",
  price: 25.00,
  category: "cancellation"
)

InsurancePolicy.find_or_create_by!(
  name: "Lost Item Coverage",
  description: "Protection against loss or theft of personal belongings.",
  provider: "SecureStay",
  price: 15.00,
  category: "lost_items"
)
