class AddShortToType < ActiveRecord::Migration[7.0]
  def change
    add_column :types, :short_notation, :string
  end
end
