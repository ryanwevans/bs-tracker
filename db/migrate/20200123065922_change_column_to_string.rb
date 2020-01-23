class ChangeColumnToString < ActiveRecord::Migration[5.2]
  def change
    change_column :records, :dose, :string
  end
end
