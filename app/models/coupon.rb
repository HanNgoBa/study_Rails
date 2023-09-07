# frozen_string_literal: true

class Coupon < ApplicationRecord
  has_many :payment_detail, as: :menu
end
