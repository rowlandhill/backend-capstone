class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :name
      t.text :description
      t.boolean :iscomplete, :default => false
      t.references :projects, foreign_key: true

      t.timestamps
    end
  end
end
