class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.references :answer, null: false
      t.string :username, null: false
      t.timestamps
    end

    add_index :votes, :username
  end
end
