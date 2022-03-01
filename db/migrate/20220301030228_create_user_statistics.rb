class CreateUserStatistics < ActiveRecord::Migration[5.2]
  def change
    create_table :user_statistics do |t|
      t.references :user, foreign_key: true
      t.integer :right_questions
      t.integer :wrong_questions

      t.timestamps
    end
  end
end
