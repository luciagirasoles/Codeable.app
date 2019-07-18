class User < ApplicationRecord
  has_secure_password
  has_secure_token
  has_secure_token :reset_digest

  def invalidate_token
    update(token: nil)
  end

  def self.valid_login?(email, password)
    user = find_by(email: email)
    user if user&.authenticate(password)
  end

  def send_password_reset_email
    UserMailer.password_reset(self).deliver_now
  end

  def regenerate_and_timestamp_reset_token
    regenerate_reset_digest
    update_attribute(:reset_sent_at, Time.zone.now)
  end

  def password_reset_expired?
    reset_sent_at < 2.hours.ago
  end
end
