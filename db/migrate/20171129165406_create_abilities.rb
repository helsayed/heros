class CreateAbilities < ActiveRecord::Migration[5.1]
  def change
    create_table :abilities do |t|
      t.string :name
      t.text :description
      t.boolean :is_ultimate
      t.string :url
      t.integer :hero_id

      t.timestamps
    end
  end
end
