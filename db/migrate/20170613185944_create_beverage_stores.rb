class CreateBeverageStores < ActiveRecord::Migration[5.1]
  def change
    create_table :beverage_stores do |t|
      t.string :title
      t.text :info
      t.float :price
      t.references :station, foreign_key: true

      t.timestamps
    end
  end
end
