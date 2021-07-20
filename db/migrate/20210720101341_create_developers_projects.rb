class CreateDevelopersProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :developers_projects do |t|
      t.references :developer, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
