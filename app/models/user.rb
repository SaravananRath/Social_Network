class User < ApplicationRecord
 
has_many :posts

has_many :comments, through: :posts

has_many :likes, through: :posts




has_many :sent_requests, foreign_key: :sender_id, class_name: 'Friend'

has_many :acceptors, :through => :sent_requests, source: :acceptor



has_many :ack_requests, foreign_key: :acceptor_id, class_name: 'Friend'

has_many :senders, :through => :ack_requests, source: :sender


scope :friends, ->(user_id) {

        User.find(user_id).senders + User.find(user_id).acceptors
    }

scope :friend_req, ->(user_id){

	   	User.find(user_id).sent_requests + User.find(user_id).ack_requests

}
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
