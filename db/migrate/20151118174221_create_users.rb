class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.date :birthdate
      t.integer :age
      t.string :phone
      t.string :emergency_number
      t.string :curp
      t.string :imms
      t.string :rfc
      t.string :employee_id
      t.date :date_of_admission
      t.integer :area_id
      t.string :boss
      t.integer :salary
      t.integer :role_id

      t.timestamps null: false
    end
  end
end
