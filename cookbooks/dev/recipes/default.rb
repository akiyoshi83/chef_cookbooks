#
# Cookbook Name:: dev
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
include_recipe 'vim'
include_recipe 'git'
include_recipe 'tmux'

packages = %w(
  tree
  bind-utils
)

packages.each do |name|
  package name do
    action :install
  end
end
