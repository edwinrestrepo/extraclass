class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.string :image
      t.integer :status
      t.references :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :courses, :categories
  end
end
