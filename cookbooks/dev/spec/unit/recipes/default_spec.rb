#
# Cookbook Name:: dev
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'dev::default' do
  let(:chef_run) do
    runner = ChefSpec::ServerRunner.new
    runner.converge(described_recipe)
  end

  %w(tree bind-utils vim tmux).each do |name|
    it "install #{name}" do
      expect(chef_run).to install_package(name)
    end
  end

  it 'install git_client[default]' do
    expect(chef_run).to install_git_client('default')
  end
end
