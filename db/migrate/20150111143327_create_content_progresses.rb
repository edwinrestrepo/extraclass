class CreateContentProgresses < ActiveRecord::Migration
  def change
    create_table :content_progresses do |t|
      t.references :student, index: true
      t.references :content, index: true
      t.float :grade
      t.references :course, index: true

      t.timestamps null: false
    end
    add_foreign_key :content_progresses, :students
    add_foreign_key :content_progresses, :contents
    add_foreign_key :content_progresses, :courses
  end
end
