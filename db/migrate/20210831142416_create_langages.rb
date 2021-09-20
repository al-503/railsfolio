class CreateLangages < ActiveRecord::Migration[6.1]
  def change
    create_table :langages do |t|
      t.string :name

      t.timestamps
    end
  end
end
