# frozen_string_literal: true

class AddLiveInToAnimal < ActiveRecord::Migration[7.0]
  def change
    add_column :animals, :live_in, :integer
  end
end
