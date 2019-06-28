class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name, default: "Elody"
      t.string :gender, default: "female"

      t.timestamps
    end
  end
end
