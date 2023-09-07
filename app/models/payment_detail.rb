# frozen_string_literal: true

class PaymentDetail < ApplicationRecord
  belongs_to :payment
  belongs_to :menu, polymorphic: true
end
