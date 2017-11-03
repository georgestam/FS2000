class CreateTutorials < ActiveRecord::Migration[5.0]
  def change
    create_table :tutorials do |t|
      t.string :description
      t.string :title
      t.string :file

      t.timestamps
    end
  end
end
