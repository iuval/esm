class AddProjectToSprint < ActiveRecord::Migration
  def change
    add_column :sprints, :project_id, :integer, index: true
  end
end
