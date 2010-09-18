class Project < ActiveRecord::Base
  has_many :project_languages

  def to_param
    uuid
  end
end
