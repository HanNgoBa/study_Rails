# frozen_string_literal: true

class Employee < ApplicationRecord
  class Properties
    include ActiveModel::Conversion
    extend ActiveModel::Naming

    attr_accessor :twitter_handle, :location

    def persisted? = true

    def id = 1
  end
  serialize :properties, Properties

  # serialize :properties
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i, message: 'định dạng email không hợp lệ' },
                    presence: true,
                    uniqueness: true
  validates :phone_number, presence: true, uniqueness: true, numericality: true, length: { maximum: 11 }
  has_many :payments

  before_save :change_level
  def change_level
    self.level = 'Free' if level.nil?
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  scope :not_free, -> { where.not(level: 'Free') }
end
