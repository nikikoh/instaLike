class AddColumnImageString < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :image, :string
    add_column :profiles, :image, :string
    add_column :posts, :image, :string
  end
end
