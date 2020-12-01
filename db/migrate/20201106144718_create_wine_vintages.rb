class CreateWineVintages < ActiveRecord::Migration[6.0]
  def change
    create_table :wine_vintages do |t|

      t.timestamps
    end
  end
end
