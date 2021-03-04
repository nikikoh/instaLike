class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.references :user, null: false
      t.references :image

      t.text :email
      t.string :name
      t.text :bio

      t.timestamps
    end
  end
end
