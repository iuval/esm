class Project < ActiveRecord::Base
  belongs_to :sprints
  has_many :users, through: :project_user_roles
  has_many :project_user_roles

  scope :team_members, (lambda do
    users.join(UserProjectRoles)
      .merge(UserProjectRoles.where(project: self, role: :team_member))
  end)

  scope :clients, (lambda do
    users.join(UserProjectRoles)
      .merge(UserProjectRoles.where(project: self, role: :client))
  end)

  scope :masters, (lambda do
    users.join(UserProjectRoles)
      .merge(UserProjectRoles.where(project: self, role: :master))
  end)
end
