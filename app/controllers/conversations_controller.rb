class ConversationsController < ApplicationController
  # before_action :authenticate_user
  before_action :get_mailbox
  before_action :get_conversation, only: [:index, :show, :reply]

  def index
    @conversations = @mailbox.inbox
  end

  def show
    @conversation.mark_as_read(current_user)
  end

  def reply
    current_user.reply_to_conversation(@conversation, params[:body])
    flash[:notice] = "reply sent!"
    redirect_to(conversation_path(@conversation))
  end

  private

  def get_mailbox
    @mailbox ||= current_user.mailbox
  end

  def get_conversation
    @conversation ||= @mailbox.conversations.find_by_id(params[:id])
  end
end
