class Match < ActiveRecord::Base

	#associations
	belongs_to :winning_player, class_name: "User"
	belongs_to :losing_player, class_name: "User"
	belongs_to :tie_player_one, class_name: "User"
	belongs_to :tie_player_two, class_name: "User"
	belongs_to :winning_hashtag, class_name: "Hashtag"
	belongs_to :losing_hashtag, class_name: "Hashtag"
	belongs_to :tie_hashtag_one, class_name: "Hashtag"
	belongs_to :tie_hashtag_two, class_name: "Hashtag"

	#validations
	validates_numericality_of :winning_hashtag_score, allow_nil: :true
	validates_numericality_of :losing_hashtag_score, allow_nil: :true
	validates_numericality_of :tie_score, allow_nil: :true


end