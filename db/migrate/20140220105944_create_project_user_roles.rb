class CreateProjectUserRoles < ActiveRecord::Migration
  def change
    create_table :project_user_roles do |t|
      t.references :project, index: true
      t.references :user, index: true
      t.string :role

      t.timestamps
    end
  end
end
