class RemoveDeleteFromPost < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :delete, :string
  end
end
