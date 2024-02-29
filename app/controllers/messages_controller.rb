class MessagesController < ApplicationController
    def create
        message = current_user.messages.build(params.require(:message).permit(:body))
        if message.save
            ActionCable.server.broadcast('chatroom_channel', {message: message.body})
        end
    end
end