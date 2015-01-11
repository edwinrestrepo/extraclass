class CreateSurveys < ActiveRecord::Migration
  def change
    create_table :surveys do |t|
      t.string :title
      t.text :description
      t.integer :status
      t.references :content, index: true

      t.timestamps null: false
    end
    add_foreign_key :surveys, :contents
  end
end
