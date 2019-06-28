class CreateWeeks < ActiveRecord::Migration[5.2]
  def change
    create_table :weeks do |t|
      t.integer :number, default: 1

      t.timestamps
    end
  end
end
