class AddCourseRefToContent < ActiveRecord::Migration
  def change
    add_reference :contents, :course, index: true
    add_foreign_key :contents, :courses
  end
end
