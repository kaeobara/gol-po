class CreateGolves < ActiveRecord::Migration[6.0]
  def change
    create_table :golves do |t|
      t.string :title,                        null: false      
      t.text :introduction,                   null: false      
      t.date :play_date,                      null: false      
      t.integer :meeting_time_id,             null: false
      t.integer :prefecture_id,               null: false
      t.string :course_name       
      t.integer :drive_id,                    null: false             
      t.integer :price,                       null: false      
      t.references :user,                     foreign_key: true
      t.timestamps


    end
  end
end
