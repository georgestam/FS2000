class CreateDownloads < ActiveRecord::Migration[5.0]
  def change
    create_table :downloads do |t|
      t.string :version
      t.string :description

      t.timestamps
    end
  end
end
