class CreateUserConfesses < ActiveRecord::Migration
  def change
    create_table :user_confesses do |t|
      t.integer :user_id, :null => false
      t.string :lover_name
      t.string :lover_sex
      t.string :text_color, :default => "#000000"
      t.integer :theme_id, :null => false
      t.integer :title_size, :default => 30
      t.integer :body_size, :default => 14
      t.string :cf_title
      t.text :cf_body

      t.timestamps null: false
    end
  end
end
