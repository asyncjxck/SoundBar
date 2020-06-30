class CreateInstruments < ActiveRecord::Migration[6.0]
  def change
    create_table :instruments do |t|
      t.string :model
      t.string :instrument_type
      t.string :description
      t.string :price
      t.belongs_to :brand, foreign_key: true
      t.belongs_to :category, foreign_key: true
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end