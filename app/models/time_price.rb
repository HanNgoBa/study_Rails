# frozen_string_literal: true

class TimePrice < ApplicationRecord
  has_many :payment_detail, as: :menu
end
