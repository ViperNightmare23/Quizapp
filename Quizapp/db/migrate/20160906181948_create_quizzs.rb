class CreateQuizzs < ActiveRecord::Migration[5.0]
  def change
    create_table :quizzs do |t|
      t.text :question
      t.text :ans1
      t.text :ans2
      t.text :ans3
      t.text :ans4
      t.integer :correctAns

      t.timestamps
    end
  end
end
