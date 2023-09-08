# frozen_string_literal: true

# Class Animal by STI
class Animal < ApplicationRecord
  enum live_in: {
    sky: 0,
    ground: 1,
    underwater: 2
  }
end

class Dog < Animal
end

class Cat < Animal
end

class Bird < Animal
end
