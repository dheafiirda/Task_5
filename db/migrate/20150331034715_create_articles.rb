class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.integer :article_id
      t.string :article_title
      t.string :article_content
      t.string :article_status

      t.timestamps null: false
    end
  end
end
