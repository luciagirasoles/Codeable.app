# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  name            :string
#  token           :string
#  email           :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  reset_digest    :string
#  reset_sent_at   :datetime
#


class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email,:token
end
