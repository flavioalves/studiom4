ActiveAdmin.register AdminUser do
  config.per_page = 10
  filter :email

  index do
    column :id
    column :email
    default_actions
  end

  show title: :email do
    render partial: 'show'
  end

  form partial: 'form'
end