#
# Cookbook Name:: sc_infra
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt'
include_recipe 'git'
include_recipe 'ruby_build'
include_recipe 'rvm'
include_recipe 'rvm::system'
include_recipe 'rvm::vagrant'
include_recipe 'rvm::gem_package'
include_recipe 'vim'
include_recipe 'nodejs'
include_recipe 'postgresql::server'
include_recipe 'postgresql::client'
include_recipe 'mongodb'
include_recipe 'redisio'
include_recipe 'redisio::enable'
include_recipe 'imagemagick'