class ApplicationController < Sinatra::Base

  # Set configuration for all environments
  configure do
    set :public_folder, File.expand_path('../../../public/',__FILE__)
    set :views, File.expand_path('../../views',__FILE__)
    set :dump_errors, true
    set :sessions, false
    set :loggin, true

    # Set encrypted cookie params. If the app run over SSL, set :secure => true
    session_settings = {
      # secret: SecureRandom.hex(32),
      expire_after: 630720000,
      path: "/",
      httponly: true
      }
  end

  # Set configuration for development environment.
  configure :development do
    register Sinatra::Reloader
  end


  # Set configuration for test environtment
  # configure :test do
  # end

  # Set configuration for test and development environment
  configure :development, :test do
    session_settings[:secret] = "This.is.super.secret.hash"
  end

  # Set configuration for production environment
  configure :production do
    # Change secret when start the app. Session stored in client side,
    # can't be readed because secret mismatch.
    session_settings[:secret] = SecureRandom.hex(32)

    # If the application run over SSl uncomment line below.
    # session_settings[:secure] = true
  end

  use Rack::Session::EncryptedCookie, session_settings
end
