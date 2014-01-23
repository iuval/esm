class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.text :summary
      t.text :detail
      t.references :user, index: true
      t.string :points
      t.integer :position
      t.references :epic, index: true

      t.timestamps
    end
  end
end
