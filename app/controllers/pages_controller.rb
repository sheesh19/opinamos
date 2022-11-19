class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :about_us, :contact_us, :for_businesses ]

  def home; end

  def about_us; end

  def contact_us; end

  def for_businesses; end
end
