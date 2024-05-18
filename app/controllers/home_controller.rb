class HomeController < ApplicationController
  before_action :authenticate_user!
  #load_and_authorize_resource only: [:index]
  def index
  end
end
