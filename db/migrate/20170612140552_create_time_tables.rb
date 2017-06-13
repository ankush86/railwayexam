class CreateTimeTables < ActiveRecord::Migration[5.1]
  def change
    create_table :time_tables do |t|
      t.time :arrival_time
      t.time :departure_time
      t.references :station, foreign_key: true
      t.references :train, foreign_key: true

      t.timestamps
    end
  end
end
