class AddColumnToProfileEmail < ActiveRecord::Migration[6.1]
  def change
    add_column :profiles, :email, :text
  end
end
