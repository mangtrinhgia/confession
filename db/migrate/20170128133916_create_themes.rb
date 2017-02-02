class CreateThemes < ActiveRecord::Migration
  def change
    create_table :themes do |t|
      t.string :name
      t.integer :text_size, :default => 15
      t.string :text_color, :default => '#000000'
      t.string :back_ground, null: false

      t.timestamps null: false
    end
  end
end
