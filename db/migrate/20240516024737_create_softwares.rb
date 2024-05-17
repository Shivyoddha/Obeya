class CreateSoftwares < ActiveRecord::Migration[7.0]
  def change
    create_table :softwares do |t|
      t.string :name
      t.integer :esats_no

      t.timestamps
    end
  end
end
