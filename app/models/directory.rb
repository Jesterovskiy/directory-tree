# frozen_string_literal: true

##
# Class: Directory model
#
class Directory < Sequel::Model
  plugin MatPath::Plugin
  dataset_module MatPath::Datasets
end
