# frozen_string_literal: true

class CreateEmployees < ActiveRecord::Migration[7.0]
  def up
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone_number
      t.boolean :sex
      t.date :birthday
      t.string :level
      t.string :address

      t.timestamps
    end
  end

  def down
    drop_table :employees
  end
end
