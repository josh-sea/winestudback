class CreateQrcodes < ActiveRecord::Migration[6.0]
  def change
    create_table :qrcodes do |t|
      t.string :value
      t.belongs_to :wine, null: false, foreign_key: true

      t.timestamps
    end
  end
end
