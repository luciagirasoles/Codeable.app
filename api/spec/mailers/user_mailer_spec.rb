require "rails_helper"

RSpec.describe UserMailer, type: :mailer do
  describe "password_reset" do

    let(:user) { User.create( name: 'Ricardo Yrupailla', email: 'rsantiago@able.co', password: '123456' )}
    let(:mail) { described_class.password_reset(user) }

    it "renders the headers" do
      expect(mail.subject).to eq("Password reset")
      expect(mail.to).to eq(["rsantiago@able.co"])
      expect(mail.from).to eq(["from@example.com"])
    end

    it "renders the body including link to reset password" do
      expect(mail.text_part.body.to_s).to match "#{ENV["CLIENT_HOST"] }/resetpassword/#{user.reset_digest}"
    end
  end

end
