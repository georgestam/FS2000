class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.date :date_start, null: false
      t.date :date_finish, null: false
      t.time :time_start, null: false
      t.string :location, null: false
      t.string :locale, null: false
      t.string :description

      t.timestamps
    end
  end
end
