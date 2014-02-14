ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do

    section "Recent Posts" do
        table_for Post.order("title").limit(5) do
          column :name
          column :title
          column :content
        end
        strong { link_to "View All Posts", admin_posts_path }
    end
    
  end # content
end
