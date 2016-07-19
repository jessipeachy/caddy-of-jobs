class AddValuesToPositions < ActiveRecord::Migration[5.0]
  def change
    add_column :positions, :user_id, :integer
  end
end
