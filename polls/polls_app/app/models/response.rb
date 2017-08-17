class Response < ApplicationRecord

  belongs_to :respondent,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: 'User'

  belongs_to :question,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: 'Question'

  has_many :answer_choices,
    through: :question,
    source: :answer_choices
end
