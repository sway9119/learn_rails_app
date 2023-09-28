class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.references :articles, null: false, foreign_key: true
      t.text :title
      t.text :body
      t.timestamps
    end
  end
end
