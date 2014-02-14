ActiveAdmin.register Comment, :as => "PostComment" do
  index do
  	column :id
    column :commenter
    column "Content", :body
    default_actions
  end
end
