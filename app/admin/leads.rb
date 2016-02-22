# -*- coding: utf-8 -*-
ActiveAdmin.register Lead do
  menu parent: I18n.t('app.active_admin.reports'), priority: 1

  config.per_page = 10

  filter :name
  filter :contacted
  filter :created_at

  index do
    column :name
    column :email
    column :phone
    column :created_at
    default_actions
  end

end
