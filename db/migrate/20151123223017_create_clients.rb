class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :area_id
      t.string :category
      t.string :company_name
      t.string :contact_name
      t.string :position
      t.string :email
      t.string :phone
      t.date :birthdate
      t.boolean :sex
      t.string :company_adress

      t.timestamps null: false
    end
  end
end
