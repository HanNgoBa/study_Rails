class AddColToEmployees < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :col, :string
  end
end
