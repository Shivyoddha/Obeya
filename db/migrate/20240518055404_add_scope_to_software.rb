class AddScopeToSoftware < ActiveRecord::Migration[7.0]
  def change
    add_column :softwares, :scope, :string
  end
end
