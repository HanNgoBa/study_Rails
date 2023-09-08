# frozen_string_literal: true

class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :type
      t.integer :legs

      t.timestamps
    end
  end
end
