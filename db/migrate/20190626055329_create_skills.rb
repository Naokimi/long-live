class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :category
      t.string :sub_category
      t.string :description

      t.timestamps
    end
  end
end
