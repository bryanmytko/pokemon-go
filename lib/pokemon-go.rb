require "./lib/pokemon.pb.rb"
require "gpsoauth"

# @TODO dev
require 'byebug'
require 'io/console'

API_URL = "https://pgorelease.nianticlabs.com/plfe/rpc"
LOGIN_URL = 'https://sso.pokemon.com/sso/login?service=https%3A%2F%2Fsso.pokemon.com%2Fsso%2Foauth2.0%2FcallbackAuthorize'
LOGIN_OAUTH = 'https://sso.pokemon.com/sso/oauth2.0/accessToken'
PTC_CLIENT_SECRET = 'w8ScCUXJQc6kXKw8FiOhd8Fixzht18Dq3PEVkUCP5ZPxtgyWsbTvWHFLm2wNY0JR'

ANDROID_ID = '9774d56d682e549c'
SERVICE= 'audience:server:client_id:848232511240-7so421jotr2609rmqakceuu1luuq0ptb.apps.googleusercontent.com'
APP = 'com.nianticlabs.pokemongo'
CLIENT_SIG = '321187995bc7cdc2b5fc91b11a96e2baa8602c62'

def google_login(email, password)
  g = Gpsoauth::Connection.new(ANDROID_ID)
  response = g.master_login(email, password)
  oauth = g.oauth(email, response["Token"], SERVICE, APP, CLIENT_SIG)

  oauth["Auth"]
end

print "Email: "
email = gets.chomp

print "Password: "
password = STDIN.noecho(&:gets)

puts "\nYour OAuth token for using Pokemon Go is: #{google_login(email, password)}"
