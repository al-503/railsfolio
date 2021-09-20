class CreateProjectMokeups < ActiveRecord::Migration[6.1]
  def change
    create_table :project_mokeups do |t|
      t.references :mokeup, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end