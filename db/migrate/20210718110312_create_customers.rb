class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :tin_no
      t.string :name
      t.string :location
      t.string :email
      t.string :phone_number
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
