class ShortenedUrl < ActiveRecord::Base
  include SecureRandom
  validates :short_url, uniqueness: true, presence: true
  validates :long_url, presence: true

  def self.random_code
    a = SecureRandom.urlsafe_base64
    if ShortenedUrl.exists?( {:short_url => a} )
      ShortenedUrl.random_code
    else
      return a
    end
  end

  def self.create_for_user_and_long_url!(user, long_url)
    ShortenedUrl.create({:long_url => long_url, :short_url => ShortenedUrl.random_code})
  end

  belongs_to :user,
    foreign_key: :user_id,
    primary_key: :id,
    class_name: :User

end
