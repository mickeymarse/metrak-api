class PagesController < ApplicationController
  def home
    @media = Medium.all
  end
end