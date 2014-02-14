ActiveAdmin.register Post do
  index do
  	column :id
    column :title
    column :name
    column :content
    default_actions
  end
end
