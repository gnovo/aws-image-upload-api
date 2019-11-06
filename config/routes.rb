# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users,
             controllers: {
              sessions: 'users/sessions',
              registrations: 'users/registrations'
             }

  match 'ping' => 'application#ping', via: :all
  match 'auth_ping' => 'application#auth_ping', via: :all
end
