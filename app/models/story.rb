class Story < ActiveRecord::Base
  belongs_to :user
  belongs_to :epic
end
