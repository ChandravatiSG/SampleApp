ActiveAdmin.register Tag do
  index do
  	column :id
    column "Tag Name", :name
    default_actions
  end
end
