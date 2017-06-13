class CreateStations < ActiveRecord::Migration[5.1]
  def change
    create_table :stations do |t|
      t.string :title
      t.string :phone
      t.text :address
      t.text :info

      t.timestamps
    end
  end
end
