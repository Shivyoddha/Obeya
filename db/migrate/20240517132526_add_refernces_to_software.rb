class AddReferncesToSoftware < ActiveRecord::Migration[7.0]
  def change
    add_reference :notes, :activity, foreign_key: true
  end
end
