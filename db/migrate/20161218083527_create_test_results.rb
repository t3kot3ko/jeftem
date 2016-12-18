class CreateTestResults < ActiveRecord::Migration[5.0]
  def change
    create_table :test_results do |t|
      t.text :description
      t.datetime :finished_at
      t.references :execution, foreign_key: true
      t.references :test_result_type, foreign_key: true

      t.timestamps
    end
  end
end
