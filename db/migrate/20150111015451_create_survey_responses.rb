class CreateSurveyResponses < ActiveRecord::Migration
  def change
    create_table :survey_responses do |t|
      t.references :survey, index: true
      t.references :question, index: true
      t.references :answer, index: true
      t.integer :timestamp
      t.references :student, index: true

      t.timestamps null: false
    end
    add_foreign_key :survey_responses, :surveys
    add_foreign_key :survey_responses, :questions
    add_foreign_key :survey_responses, :answers
    add_foreign_key :survey_responses, :students
  end
end
