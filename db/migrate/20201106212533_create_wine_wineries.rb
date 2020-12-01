class CreateWineWineries < ActiveRecord::Migration[6.0]
  def change
    create_table :wine_wineries do |t|
      t.belongs_to :wine, null: false, foreign_key: true
      t.belongs_to :winery, null: false, foreign_key: true

      t.timestamps
    end
  end
end
