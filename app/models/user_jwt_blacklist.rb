# frozen_string_literal: true

class UserJwtBlacklist < ApplicationRecord
  # include Devise::JWT::RevocationStrategies::Blacklist

  # self.table_name = 'user_jwt_blacklists'
  include Devise::JWT::RevocationStrategies::Blacklist

  def self.jwt_revoked?(payload, user)
    $redis.exists("user_blacklist:#{user.id}:#{payload['jti']}").present?
  end

  def self.revoke_jwt(payload, user)
    expiration = payload['exp'] - payload['iat']
    $redis.setex("user_blacklist:#{user.id}:#{payload['jti']}", expiration, payload['jti'])
  end
end
