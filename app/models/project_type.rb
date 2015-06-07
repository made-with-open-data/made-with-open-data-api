class ProjectType < ActiveRecord::Base
  belongs_to :project
  belongs_to :type

  validates :project, presence: true
  validates :type, presence: true, uniqueness: { scope: :project }
end
