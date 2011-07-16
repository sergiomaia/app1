class EmailsController < ApplicationController
  def new

  end

  def create
    email = params[:email]
    flash[:notice] = "Email recebido."
    render 'new'
  end
end

