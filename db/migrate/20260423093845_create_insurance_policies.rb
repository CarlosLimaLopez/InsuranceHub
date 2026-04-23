class CreateInsurancePolicies < ActiveRecord::Migration[8.1]
  def change
    create_table :insurance_policies do |t|
      t.string :name
      t.text :description
      t.string :provider
      t.decimal :price, precision: 10, scale: 2
      t.string :category # e.g., cancellation, lost items, medical

      t.timestamps
    end
  end
end
