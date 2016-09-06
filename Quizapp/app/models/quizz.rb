class Quizz < ApplicationRecord
validates_presence_of :question,:ans1,:ans2,:ans3,:ans4
validates_numericality_of :correctAns
validates_length_of :question,:ans1,:ans2,:ans3,:ans4 => 5
end
