class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.date :due_date
      t.integer :priority
      t.boolean :is_done
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
