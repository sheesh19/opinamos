class SubscriptionsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def show; end
end
