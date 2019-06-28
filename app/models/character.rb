class Character < ApplicationRecord
  has_many :char_skills, dependent: :destroy
  has_many :skills, through: :char_skills

  validates :name, presence: true
  validates :gender, presence: true, inclusion: { in: %w(male female other) }
end
