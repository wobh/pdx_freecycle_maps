class EmailsController < ApplicationController
  # GET /emails
  # GET /emails.json
  def index
    @emails = Email.all

    render json: @emails
  end

  # GET /emails/1
  # GET /emails/1.json
  def show
    @email = Email.find(params[:id])

    render json: @email
  end

  # GET /emails/new
  # GET /emails/new.json
  def new
    @email = Email.new

    render json: @email
  end

  # POST /emails
  # POST /emails.json
  def create
    @email = Email.new(params[:email])

    if @email.save
      render json: @email, status: :created, location: @email
    else
      render json: @email.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /emails/1
  # PATCH/PUT /emails/1.json
  def update
    @email = Email.find(params[:id])

    if @email.update_attributes(params[:email])
      head :no_content
    else
      render json: @email.errors, status: :unprocessable_entity
    end
  end

  # DELETE /emails/1
  # DELETE /emails/1.json
  def destroy
    @email = Email.find(params[:id])
    @email.destroy

    head :no_content
  end
end
