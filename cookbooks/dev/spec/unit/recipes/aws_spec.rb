#
# Cookbook Name:: dev
# Spec:: aws
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'dev::aws' do
  let(:chef_run) do
    runner = ChefSpec::ServerRunner.new
    runner.converge(described_recipe)
  end

  %w(awscli).each do |name|
    it "install #{name}" do
      expect(chef_run).to install_package(name)
    end
  end
end
