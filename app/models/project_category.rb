class ProjectCategory < ActiveRecord::Base
  belongs_to :project
  belongs_to :category

  validates :project, presence: true
  validates :category, presence: true, uniqueness: { scope: :project }
end
