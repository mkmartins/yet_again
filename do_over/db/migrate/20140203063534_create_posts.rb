class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :author
      t.string :title
      t.text :body
      t.datetime :published_at
      t.boolean :featured

      t.timestamps
    end
  end
end
