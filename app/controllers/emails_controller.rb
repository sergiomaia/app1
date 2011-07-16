require "net/http"
require "uri"

class EmailsController < ApplicationController

  def new

  end

  def create
    email = params[:email]

    uri = URI.parse("http://0.0.0.0:3001/emails")
    response = Net::HTTP.post_form(uri, {"address" => email})

    flash[:notice] = "Email recebido."
    render 'new'
  end
end

