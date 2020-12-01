class AddWineAndVintageRefToWineVintages < ActiveRecord::Migration[6.0]
  def change
    add_reference :wine_vintages, :wine, null: false, foreign_key: true
    add_reference :wine_vintages, :vintage, null: false, foreign_key: true
  end
end
