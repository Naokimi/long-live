class Character < ApplicationRecord
  has_one :skill_tree, dependent: :destroy
  has_many :char_skills, through: :skill_tree

  validates :name, presence: true
  validates :gender, presence: true, inclusion: { in: %w(male female other) }
end
