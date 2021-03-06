class MessagesController < ApplicationController
  before_action :authenticate_user!, only: [:edit, :destroy, :index, :update]
  before_action :set_message, only: [:show, :edit, :update, :destroy]
  # before_filter :login_required, :except[:new, :create]

  # Defaults
  @contact_type = ''
  @form_class = 'solicit'
  @form_id = 'form-solicit'

  # GET /messages
  # GET /messages.json
  def index
    @messages = Message.all
  end

  # GET /messages/1
  # GET /messages/1.json
  def show
    respond_to do |format|
      if @message.save
        # flash[:success] = '<i class="fa fa-paper-plane"></i>Thanks for your message. We will review your request and be in touch soon.'
        flash[:success] = ' Thanks for your message. We will review your request and be in touch soon.'
        format.html { redirect_to Song }
      end
    end
  end

  # GET /messages/new
  def new
    @message = Message.new
  end

  # GET /messages/new/project
  def new_project
    @message = Message.new

    respond_to do | format |
      format.html { render template: 'messages/_form_project_request' }
      format.json { render json: @message.errors, status: :unprocessable_entity }
    end
  end

  # GET /messages/1/edit
  def edit
  end

  # POST /messages
  # POST /messages.json
  def create
    @message = Message.new(message_params)
    @message.types = params['types']

    respond_to do |format|
      if @message.save
        # Send an email to the appropriate place
        if params['contact_type'] == 'project'
          ContactMailer.project_request(@message).deliver_now
          ContactMailer.project_request_confirmation(@message).deliver_now
        else
          ContactMailer.contact_request.deliver_later
        end

        format.html { redirect_to @message, notice: ' Message was successfully created.', style: 'success' }
        format.json { render :show, status: :created, location: @message }
      else
        if params['contact_type'] == 'project'
          format.html { render template: 'messages/_form_project_request' }
        else
        format.html { render :new }
        format.json { render json: @message.errors, status: :unprocessable_entity }
        end
      end
    end
  end

  # PATCH/PUT /messages/1
  # PATCH/PUT /messages/1.json
  def update
    respond_to do |format|
      if @message.update(message_params)
        flash[:alert] =  ' Message was successfully updated.'
        format.html { redirect_to @message }
        format.json { render :show, status: :ok, location: @message }
      else
        format.html { render :edit }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /messages/1
  # DELETE /messages/1.json
  def destroy
    @message.destroy
    respond_to do |format|
      flash[:alert] = ' Message was successfully destroyed.'
      format.html { redirect_to messages_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_message
      @message = Message.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def message_params
      params.require(:message).permit(:project, :description, :name, :email_address, :listen_online, :send_suggestions, :types)
    end
end
