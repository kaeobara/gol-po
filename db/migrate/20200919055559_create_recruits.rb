class CreateRecruits < ActiveRecord::Migration[6.0]
  def change
    create_table :recruits do |t|
      t.references :user,            foreign_key: true
      t.references :golf,            foreign_key: true
      t.timestamps
    end
  end
end
