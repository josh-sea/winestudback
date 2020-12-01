class CreateWineFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :wine_foods do |t|
      t.belongs_to :wine, null: false, foreign_key: true
      t.belongs_to :food, null: false, foreign_key: true

      t.timestamps
    end
  end
end
