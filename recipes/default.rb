#
# Cookbook Name:: sc_infra
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
enviroment        = node['sc_config']['enviroment']



include_recipe 'apt'
include_recipe 'git'
include_recipe 'ruby_build'
include_recipe 'rvm'


case enviroment
when "production"
when "staging"
when "development"
  include_recipe 'rvm::system'
  include_recipe 'rvm::vagrant'
end


include_recipe 'rvm::gem_package'
include_recipe 'nodejs'
include_recipe 'postgresql::server'
include_recipe 'postgresql::client'
include_recipe 'mongodb'
include_recipe 'redisio'
include_recipe 'redisio::enable'
include_recipe 'imagemagick'
