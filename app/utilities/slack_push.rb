module SlackPush
    WEBHOOK_URL = ENV["SLACK_WEBHOOK"]

    def self.send(message, webhook = nil)
        url = webhook.blank? ? WEBHOOK_URL : webhook
        notifier = Slack::Notifier.new url
        notifier.ping message
    end
end