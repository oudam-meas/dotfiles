# frozen_string_literal: true
Pry.config.theme = 'pry-modern-256'

# $LOAD_PATH << '/Users/measoutdam/.rbenv/versions/2.4.3/lib/ruby/gems/2.4.0/gems/awesome_print-1.8.0/lib/'
# $LOAD_PATH << '/Users/measoutdam/.rbenv/versions/2.3.0/lib/ruby/gems/2.3.0/gems/awesome_print-1.8.0/lib/'
# $LOAD_PATH << '/Users/measoutdam/.rbenv/versions/2.3.0/lib/ruby/gems/2.3.0/gems/pry-nav-0.2.4/lib/'
$LOAD_PATH << "/Users/measoutdam/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/awesome_print-1.8.0/lib"
# $LOAD_PATH << "/Users/measoutdam/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/pry-nav-0.2.4/lib"
# $LOAD_PATH << "/Users/measoutdam/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/pry-0.10.4/lib"
require 'awesome_print'
# require 'pry'
# require 'pry-nav'
AwesomePrint.irb!
