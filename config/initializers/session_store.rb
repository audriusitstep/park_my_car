# Be sure to restart your server when you modify this file.

Rails.application.config.session_store :cookie_store, key: '_car_parking_session'

Sidekiq::Logging.logger.level = Logger::DEBUG