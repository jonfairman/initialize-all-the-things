#!/usr/bin/env puppet

home = ENV["HOME"]
#cwd = File.dirname(__FILE__)
Dir.chdir("#{home}/dotfiles")
linkables = Dir.glob('*/**{.symlink}')

cwd = Dir.getwd

node :default do
  linkables.each do |linkable|
    shorname = linkable.split('/').last.split('.symlink').last
    target = "#{ENV["HOME"]}/.#{shorname}"
    source = "#{cwd}/#{linkable}"
    file target,
      :ensure => source
  end

  file "#{home}/.config/awesome",
    :ensure => "#{cwd}/X/awesome"

  file home,
    :mode => '0700'

end

