# frozen_string_literal: true

class CreatePaymentDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :payment_details do |t|
      t.references :menu, polymorphic: true
      t.references :payment

      t.timestamps
    end
  end
end
