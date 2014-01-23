class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.references :story, index: true
      t.string :name
      t.string :state

      t.timestamps
    end
  end
end
