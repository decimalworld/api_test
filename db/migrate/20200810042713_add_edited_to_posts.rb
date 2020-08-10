class AddEditedToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :edited, :boolean
  end
end
