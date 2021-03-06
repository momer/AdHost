Audiobox::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  config.cache_store = :redis_store, "redis://localhost:6379/7"

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise an error on page load if there are pending migrations
  config.active_record.migration_error = :page_load

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  config.dbsync = {
    :local   => "#{Rails.root}/../dbdumps/audiobox.dump",
    :remote  => "scprdb@66.226.4.229:~scprdb/audiobox.dump"
  }

  config.preroller.audio_dir = "/Users/bryan/projects/AdHost/public/audio"
  config.ffmpeg_binary = "/usr/local/bin/ffmpeg"
end
