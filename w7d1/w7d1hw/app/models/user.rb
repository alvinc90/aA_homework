# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  password_digest :string           not null
#  session_token   :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
    validates :username, :session_token, presence: true 
    validates :password_digest, presence: {message: "Password can't be blank!!!!!!"}
    validates :password, length: {minimum: 4, allow_nil: true} 
    before_validation :ensure_session_token 

    after_initialize :ensure_session_token 

    def password 
        @password 
    end

    def password=(password) 
        @password = password 
    end

    def reset_session_token!
        self.session_token = SecureRandom.base64(64) 
        self.save! 
        self.session_token
    end

    def is_password?(password) 
        Bcrypt::Password.new(self.password_digest).is_password?(password) 
    end

    def self.find_by_credentials(username, password) 
        user = User.find_by(username: username)
        return nil if user.nil? 
        user.is_password?(password) ? user : nil 
    end

    def ensure_session_token
        self.session_token ||= SecureRandom.base64(64) 
    end

end

        
