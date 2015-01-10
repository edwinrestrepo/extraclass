class CreateCoursesContents < ActiveRecord::Migration
  def change
    create_table :courses_contents do |t|
      t.belongs_to :course, index: true
      t.belongs_to :content, index: true

      t.timestamps null: false
    end
    add_foreign_key :courses_contents, :courses
    add_foreign_key :courses_contents, :contents
  end
end
