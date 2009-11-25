# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ilmo_session',
  :secret      => '0b84698d8ecb65d1ea2947bfb08b9b0cda66f1835e3f953c5c8a8e69e56180ad7809b519795d4fd1761fbd2fed1fc371de87f0afba96c3feb8a5a3ac6fa19bec'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
