class AddCoordinatesToStories < ActiveRecord::Migration[5.0]
  def change
    add_column :stories, :x_mobile, :integer, default: 1000
    add_column :stories, :y_mobile, :integer, default: 200
    add_column :stories, :gravity, :string, default: ""
  end
end
