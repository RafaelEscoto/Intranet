class CreateTrainings < ActiveRecord::Migration
  def change
    create_table :trainings do |t|
      t.string :course_name
      t.string :topic
      t.string :expositor
      t.datetime :start_date
      t.time :duration
      t.integer :attendance_id

      t.timestamps null: false
    end
  end
end
