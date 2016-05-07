#!/usr/bin/env ruby

require 'open3'
unless ENV['CI']
  puts 'bundle install'
  out, err, status = Open3.capture3('bundle', 'install')
  $stdout.puts out
  $stderr.puts err
  exit status.exitstatus if !status.exitstatus.nil? && status.exitstatus != 0
end
unless ENV['CI']
  puts 'npm install'
  out, err, status = Open3.capture3('npm', 'install')
  $stdout.puts out
  $stderr.puts err
  exit status.exitstatus if !status.exitstatus.nil? && status.exitstatus != 0
end
