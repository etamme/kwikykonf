#!/usr/bin/env ruby
require 'erb'
require './config.var.rb'

template = ERB.new(File.read('./index.html.erb'), nil, '-')

outfile = File.new('index.html', 'w');

outfile.puts template.result($erb_context)
