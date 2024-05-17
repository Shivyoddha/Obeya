class AddKeyresultsToSoftware < ActiveRecord::Migration[7.0]
  def change
    add_column :softwares, :key_result, :string
    add_column :softwares, :objective, :string
  end
end
