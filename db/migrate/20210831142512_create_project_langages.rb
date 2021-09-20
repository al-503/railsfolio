class CreateProjectLangages < ActiveRecord::Migration[6.1]
  def change
    create_table :project_langages do |t|
      t.references :langage, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end