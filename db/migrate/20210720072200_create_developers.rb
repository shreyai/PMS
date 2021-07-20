class CreateDevelopers < ActiveRecord::Migration[6.1]
  def change
    create_table :developers do |t|
      t.string :name
      t.string :email
      t.string :position
      t.string :title

      t.timestamps
    end
  end
end
