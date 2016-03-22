class AddUsersToBooksAndAdaptations < ActiveRecord::Migration
  def change
    add_column :books, :user_id, :integer
    add_column :adaptations, :user_id, :integer
  end
end
