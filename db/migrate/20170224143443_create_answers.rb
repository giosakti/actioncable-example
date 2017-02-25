class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.references :question, null: false
      t.integer :order, null: false
      t.string :title, null: false
      t.timestamps
    end

    add_index :answers, :title
  end
end
