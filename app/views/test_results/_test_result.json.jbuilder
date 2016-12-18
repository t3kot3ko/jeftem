json.extract! test_result, :id, :description, :finished_at, :execution_id, :test_result_type_id, :created_at, :updated_at
json.url test_result_url(test_result, format: :json)