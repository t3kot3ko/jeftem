class CreateTestCases < ActiveRecord::Migration[5.0]
  def change
    create_table :test_cases do |t|
      t.string :title
      t.text :step
      t.text :precondition
      t.text :postcondition
      t.text :expected_result
      t.string :identifier
      t.text :description
      t.text :summary
      t.references :section, foreign_key: true

      t.timestamps
    end
  end
end
