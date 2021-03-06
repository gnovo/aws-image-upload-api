# frozen_string_literal: true

class User < ApplicationRecord
  devise :database_authenticatable,
         :registerable,
         :trackable,
         :rememberable,
         :timeoutable,
         :jwt_authenticatable,
         jwt_revocation_strategy: UserJwtBlacklist
end
