class AddShortNotationToNotes < ActiveRecord::Migration[7.0]
  def change
    add_column :notes, :short_notation, :string
  end
end
