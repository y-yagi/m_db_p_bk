if Rails.env.development?
  logger = ActiveSupport::Logger.new(File.join(Rails.root, "log", "notifications.log"))
  ActiveSupport::Notifications.subscribe('sql.active_record') do |event|
    sql = event.payload[:sql]
    role = ActiveRecord::Base.current_role
    config = event.payload[:connection].instance_variable_get(:@config)
    logger.info("[#{event.name}] time: #{event.duration.to_f} sql: #{sql} config: #{config} role: #{role}")
  end
end
