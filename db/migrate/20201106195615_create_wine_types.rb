class CreateWineTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :wine_types do |t|
      t.belongs_to :wine, null: false, foreign_key: true
      t.belongs_to :type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
