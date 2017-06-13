class CreateStaffs < ActiveRecord::Migration[5.1]
  def change
    create_table :staffs do |t|
      t.string :title
      t.text :info
      t.references :station, foreign_key: true

      t.timestamps
    end
  end
end
