class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :email
      t.string :email2
      t.boolean :email_verified
      t.string :nickname
      t.string :picture
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
