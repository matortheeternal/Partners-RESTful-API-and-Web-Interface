class User < ActiveRecord::Base
  before_create :create_remember_token
  validates(:username, presence: true, length: { minimum: 6, maximum: 50 }, uniqueness: true)
  
  has_secure_password
  validates(:password, presence: true, length: { minimum: 8 })
  
  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.digest(token)
    Digest::SHA1.hexdigest(token.to_s)
  end

  private

    def create_remember_token
      self.remember_token = User.digest(User.new_remember_token)
    end
end
