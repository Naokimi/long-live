class Character < ApplicationRecord
  validates :name, presence: true
  validates :name, presence: true, inclusion: { in: %w(male female other) }
end
