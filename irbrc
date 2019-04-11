# frozen_string_literal: true

$LOAD_PATH << '~/.rbenv/versions/2.6.2/lib/ruby/gems/2.6.0/gems/awesome_print-1.8.0/lib/'
require 'awesome_print'
require 'irb/ext/save-history'
IRB.conf[:SAVE_HISTORY] = 200
IRB.conf[:HISTORY_FILE] = '~/.irb-history'
# require 'irbtools'
# require 'irbtools/more'
# Irbtools.start
require 'wirb'
Wirb.start
# def stack_caller
#   caller.select { |x| x['core-bongloy'] }
# end
# belongs_to :account, optional: true
# $LOAD_PATH << "/Users/measoutdam/.rbenv/versions/2.4.3/lib/ruby/gems/2.4.0/gems/hirb-0.7.3/lib"
# require "hirb"
# Hirb.enable
