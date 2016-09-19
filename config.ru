require 'cinch'

bot = Cinch::Bot.new do
  configure do |c|
    c.server = "irc.devel.redhat.com/6667"
    c.nick = "PlatformManagementBot"
    c.channels = ["#PM-scrum-meeting"]
  end

  on :message, "hello" do |m|
    m.reply "Hello, #{m.user.nick}"
  end
end

bot.start
