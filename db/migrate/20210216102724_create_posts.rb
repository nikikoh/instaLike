class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.references :image
      t.text :word
      t.string :name

      t.timestamps
    end

    create_table :images do |t|
      t.string :image

      t.timestamps
    end

  end
end
