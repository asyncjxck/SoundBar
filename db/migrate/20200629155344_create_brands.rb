class CreateBrands < ActiveRecord::Migration[6.0]
  def change
    create_table :brands do |t|
      t.string :name
      t.string :category
      t.boolean :available

      t.timestamps
    end
  end
end
