module ApplicationHelper

  def edit_and_destroy_buttons(item)
    unless current_user.nil?
      edit = link_to('Edit', url_for([:edit, item]), class:"btn btn-primary")
      del = link_to('Destroy', item, method: :delete,
                    data: {confirm: 'Are you sure?' }, class:"btn btn-danger")
      raw("#{edit} #{del}")
    end
  end

 def favorite_button(post)
    byebug
   if not current_user.in? @favorite.users
     form_for(@favorite) do |f| 
     f.hidden_field :post_id
     f.submit value:"Add to Favorites"
     end
   end
   if current_user.in? @favorite.users
     form_for(@favorite, method: "delete") do |f|
      f.hidden_field :post_id
      f.submit value: "unfavorite"
     end
   end
 end
end
