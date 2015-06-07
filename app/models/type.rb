class Type < ActiveRecord::Base
  has_many :project_types, inverse_of: :type
  has_many :projects, through: :project_types

  validates :name, presence: true, uniqueness: true

  def to_s
    name
  end
end
