class CreateBlogComments < ActiveRecord::Migration
  def change
    create_table :blog_comments do |t|
      t.string :commenter
      t.text :body
      t.references :post_id

      t.timestamps
    end
    add_index :blog_comments, :post_id_id
  end
end
