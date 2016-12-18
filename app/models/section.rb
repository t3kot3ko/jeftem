class Section < ApplicationRecord
  belongs_to :project
	has_many :test_cases
end
