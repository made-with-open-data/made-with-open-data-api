class Project < ActiveRecord::Base
  has_many :project_categories, inverse_of: :project
  has_many :project_types, inverse_of: :project

  has_many :categories, through: :project_categories
  has_many :types, through: :project_types

  validates :title, presence: true, uniqueness: true
  validates :url, presence: true
  validates :description, presence: true

  def to_s
    title
  end
end
