class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :responses, :question_id, :answer_choice_id
  end
end
