class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :full_name
      t.string :phone_number
      t.string :email_address
      t.text :Notes

      t.timestamps
    end
  end
end
