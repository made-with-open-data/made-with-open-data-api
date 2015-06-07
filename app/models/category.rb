class Category < ActiveRecord::Base
  has_many :project_categories, inverse_of: :category
  has_many :projects, through: :project_categorys

  validates :name, presence: true, uniqueness: true

  def to_s
    name
  end
end
