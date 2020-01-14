class CreateRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :records do |t|
      t.integer :reading
      t.integer :dose
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
