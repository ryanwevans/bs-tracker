class AddUserIdToRecords < ActiveRecord::Migration[5.2]
  def change
    change_table :records do |t|
      t.belongs_to :user, index: true, foreign_key: true
    end
  end
end
