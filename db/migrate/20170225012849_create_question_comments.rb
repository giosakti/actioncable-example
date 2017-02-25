class CreateQuestionComments < ActiveRecord::Migration[5.0]
  def change
    create_table :question_comments do |t|
      t.references :question, null: false
      t.string :username, null: false
      t.text :body, null: false
      t.timestamps
    end
  end
end
