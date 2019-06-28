class SkillTree < ApplicationRecord
  has_many :char_skills, dependent: :destroy
  belongs_to :character
end
