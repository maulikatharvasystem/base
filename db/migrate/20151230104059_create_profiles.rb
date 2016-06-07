class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.references :user
      t.string :first_name
      t.string :last_name
      t.date :dob
      t.text :address
      t.string :phone_number

      t.timestamps null: false
    end
  end
end
