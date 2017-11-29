class CreateHeros < ActiveRecord::Migration[5.1]
  def change
    create_table :heros do |t|
      t.string :name
      t.text :description
      t.integer :health
      t.integer :armour
      t.integer :shield
      t.string :real_name
      t.integer :age
      t.integer :height
      t.string :affiliation
      t.string :base_of_operations
      t.integer :difficulty
      t.string :url

      t.timestamps
    end
  end
end
