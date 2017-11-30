class AddRawIdToAbilities < ActiveRecord::Migration[5.1]
  def change
    add_column :abilities, :raw_id, :integer
  end
end
