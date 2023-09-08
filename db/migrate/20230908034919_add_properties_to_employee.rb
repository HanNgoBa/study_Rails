# frozen_string_literal: true

class AddPropertiesToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :properties, :text
  end
end
