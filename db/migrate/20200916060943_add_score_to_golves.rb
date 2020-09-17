class AddScoreToGolves < ActiveRecord::Migration[6.0]
  def change
    add_column :golves, :score, :integer
  end
end
