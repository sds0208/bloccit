class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.references :question, index: true, foreign_key: true
      t.text :body

      t.timestamps null: false
    end
  end
end
