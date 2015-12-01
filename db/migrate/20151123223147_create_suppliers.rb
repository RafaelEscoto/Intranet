class CreateSuppliers < ActiveRecord::Migration
  def change
    create_table :suppliers do |t|
      t.string :Company_name
      t.string :contact_name
      t.string :phone_a
      t.string :phone_b
      t.string :email
      t.string :description
      t.string :webpage

      t.timestamps null: false
    end
  end
end
