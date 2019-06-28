class CreateCharSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :char_skills do |t|
      t.integer :level, default: 0
      t.references :skill, foreign_key: true
      t.references :skill_tree, foreign_key: true

      t.timestamps
    end
  end
end
