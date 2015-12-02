require 'pry' if ENV['APP_ENV'] == 'debug'

Dir['./lib/**/**.rb'].each { |file| require file }
