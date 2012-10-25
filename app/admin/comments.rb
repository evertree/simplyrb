ActiveAdmin.register Comment, :as => "PostComment" do
	index do
		column :post_id
		column :commenter
		column :body
		column :created_at
		column :updated_at
		default_actions
	end
  
end
