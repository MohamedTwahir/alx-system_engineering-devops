#!/usr/bin/env ruby
#matching a string that starts with h ending with n and any character between
puts ARGV[0].scan(/^h.n$/).join
