class CreateAnswerChoices < ActiveRecord::Migration[5.1]
  def change
    create_table :answer_choices do |t|
      t.integer :question_id, null: false, unique: true
      t.string :text
      t.timestamps
    end
  end
end
