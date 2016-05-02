class CreateTechTalks < ActiveRecord::Migration
  def change
    create_table :tech_talks do |t|
      t.string :title
      t.text :description
      t.integer :length
      t.boolean :like
      t.integer :views

      t.timestamps null: false
    end
  end
end
