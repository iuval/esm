class CreateStoryTags < ActiveRecord::Migration
  def change
    create_table :story_tags do |t|
      t.references :story, index: true
      t.references :tag, index: true

      t.timestamps
    end
  end
end
