class CreateSprints < ActiveRecord::Migration
  def change
    create_table :sprints do |t|
      t.integer :number
      t.string :objective
      t.date :from
      t.date :to

      t.timestamps
    end
  end
end
