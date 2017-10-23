class EmailInterceptor
  def self.delivering_email(message)
    message.from = ['jordi@respira.io']
    message.subject = "#{message.to} #{message.subject}"
    message.to = ['jordi@newwaves.design']
  end
end