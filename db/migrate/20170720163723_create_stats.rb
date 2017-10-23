class CreateStats < ActiveRecord::Migration[5.0]
  def change
    create_table :stats do |t|
      t.string :courses
      t.string :refreshers
      t.string :working_hours

      t.timestamps
    end
  end
end
