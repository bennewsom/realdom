class SessionsController < ApplicationController
  before_action :authenticate_user!, only: [:show, :new, :create, :edit, :update]
end
