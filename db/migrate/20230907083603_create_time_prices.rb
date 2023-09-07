# frozen_string_literal: true

class CreateTimePrices < ActiveRecord::Migration[7.0]
  def change
    create_table :time_prices do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
