class CharSkill < ApplicationRecord
  belongs_to :skill
  belongs_to :skill_tree
end
