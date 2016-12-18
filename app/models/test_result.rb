class TestResult < ApplicationRecord
  belongs_to :execution
  belongs_to :test_result_type
end
