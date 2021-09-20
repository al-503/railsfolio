class CreateProjectSchemas < ActiveRecord::Migration[6.1]
  def change
    create_table :project_schemas do |t|
      t.references :schema, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end