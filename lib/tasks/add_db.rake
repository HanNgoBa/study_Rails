# frozen_string_literal: true

namespace :add_db do
  desc 'add payment'
  task add_payment: :environment do
  end

  desc 'add payment detail'
  task add_payment_detail: :environment do
  end

  desc 'add time price'
  task add_time_price: :environment do
    10.times do |i|
      TimePrice.create(name: "Dich vu #{i}", price: i * 10_000)
    end
  end

  desc 'add coupon'
  task add_coupon: :environment do
    5.times do |i|
      Coupon.create(name: "Phieu loai #{i}", quanlity: i)
    end
  end
end
