# frozen_string_literal: true

namespace :add_employee do
  desc 'TODO'
  task add_employee: :environment do
    8.times do |i|
      a = %w[Ngo Le Nguyen Ho]
      b = %w[Han Nam Anh Hoang Giao Ly]
      c = ['Free', 'Medium', 'Premium', nil]
      d = ['Hue', 'Ha Noi', 'Da Nang', 'Sai Gon']
      ran = rand(i..999)
      Employee.new(first_name: a.sample,
                   last_name: b.sample,
                   email: "testgm#{ran}@gmail.com",
                   phone_number: "09864216#{ran}",
                   sex: [true, false].sample,
                   birthday: Date.new(2000, 1, 1) + rand(9497).days,
                   level: c.sample,
                   address: d.sample).save
    end
  end
end
