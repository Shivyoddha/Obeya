class CreateSubsoftwares < ActiveRecord::Migration[7.0]
  def change
    create_table :subsoftwares do |t|
      t.string :name
      t.integer :esats_id
      t.string :version
      t.string :standard_scope
      t.references :software, null: false, foreign_key: true

      t.timestamps
    end
  end
end
