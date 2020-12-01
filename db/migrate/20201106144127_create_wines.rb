class CreateWines < ActiveRecord::Migration[6.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.date :drink_date

      t.timestamps
    end
  end
end
