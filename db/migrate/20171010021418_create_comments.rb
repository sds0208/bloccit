class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
