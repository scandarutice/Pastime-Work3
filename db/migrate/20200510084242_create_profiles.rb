class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :family_name, null: false
      t.string :family_name_kana, null: false
      t.string :first_name, null: false
      t.string :first_name_kana, null: false
      t.integer :age, null: false
      t.bigint :tel_number, null: false
      t.bigint :zip_cord, null: false
      t.string :city, null: false
      t.string :address, null: false
      t.references :user
      t.timestamps
    end
  end
end
