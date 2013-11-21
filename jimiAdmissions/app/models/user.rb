#class User < ActiveRecord::Base
#  attr_accessible :login, :password
#  validates :login, :presence => true
#
#  def password
#    @password
#  end
#
#  def password=(pass)
#    return unless pass
#    @password = pass
#    generate_password(pass)
#  end
#
#  def self.authenticate(login, password)
#    user = User.find_by_login(login)
#    if user && Digest::SHA256.hexdigest(password + user.salt) == user.hashed_password
#      return user
#    end
#    false
#  end
#
#  private
#  def generate_password(pass)
#    salt = Array.new(10){rand(1024).to_s(36)}.join
#    self.salt, self.hashed_password =
#        salt, Digest::SHA256.hexdigest(pass + salt)
#  end
#end


require 'digest/sha1'
class User < ActiveRecord::Base
  validates_presence_of :name
  validates_uniqueness_of :name
  attr_accessor :password_confirmation
  validates_confirmation_of :password
  validate :password_non_blank
  def self.authenticate(name,password)
    user = self.find_by_name(name)   #ActiveRecord，以find_by开头和一个字段名结尾，
                                     #就自动创建一个查找方法，并将其添加到模型类上
    if user
      expected_password = encrypted_password(password, user.salt)
      if user.hashed_password != expected_password
        user = nil
      end
    end
    user
  end
  def password
    @password
  end
  def password=(pwd)
    @password = pwd
    return if pwd.blank?
    create_new_salt
    self.hashed_password = User.encrypted_password(self.password, self.salt)
  end
  private
  def password_non_blank
    errors.add(:password, "Missing password" )if hashed_password.blank?
  end
  def create_new_salt
    self.salt = self.object_id.to_s + rand.to_s
  end
  def self.encrypted_password(password,salt)
    string_to_hash = password + "wibble" + salt
    Digest::SHA1.hexdigest(string_to_hash)
  end
end
