class MessageMailer < ApplicationMailer
  default from: "revista.mi.veterinario@gmail.com"
  default to: " revista.mi.veterinario@gmail.com "
  def new_message(message)
    @message = message
    mail subject: "Message from #{message.name}"
  end
end
