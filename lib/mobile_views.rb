# frozen_string_literal: true

require_relative "mobile_views/version"

module MobileViews
  class Error < StandardError; end

  def mobile_device?
    user_agent = request.headers['User-Agent']
    client = DeviceDetector.new(user_agent)
    mobile_devices = %w[smartphone feature_phone phablet smart_display wearable]
    mobile_devices.include?(client.device_type)
  end

  def set_mobile_view_path
    mobile_view_exists = File.exist?("#{Rails.root}/app/views/#{controller_name}/#{action_name}_mobile.html.erb")
    return unless mobile_view_exists

    self.action_name = "#{action_name}_mobile"
    self.class.prepend_view_path Rails.root.join("app", "views", controller_name, "#{action_name}_mobile")
  end

  def self.included(base)
    base.before_action :set_mobile_view_path, if: :mobile_device?
  end
end
