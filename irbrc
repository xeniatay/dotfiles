if Rails.env
    require 'rubygems'
    require 'hirb'
    Hirb.enable

    require 'wirble'
    Wirble.init
    Wirble.colorize

    require 'awesome_print'
    AwesomePrint.irb!
end
