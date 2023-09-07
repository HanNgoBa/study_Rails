# frozen_string_literal: true

class AddEmployeeIdToPayments < ActiveRecord::Migration[7.0]
  def change
    add_column :payments, :employee_id, :integer
  end
end
