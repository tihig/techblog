module ApplicationHelper

  def edit_and_destroy_buttons(item)
  unless current_user.nil?
    if current_user.admin?
      edit = link_to('Edit', url_for([:edit, item]), class:"btn btn-primary")
      del = link_to('Destroy', item, method: :delete,
                    data: {confirm: 'Are you sure?' }, class:"btn btn-danger")
      raw("#{edit} #{del}")
    end
   end
  end

  def new_buttons(item)
  unless current_user.nil?
    if current_user.admin?
      byebug
      new = link_to('New', url_for([:new, item]), class:"btn btn-default")
      raw("#{new}")
    end
   end
  end

 def favorite_button(post)

     #favorite = button_to("Favorite", url_for([:create_favorite, post.id, current_user.id]), class: "favorite-btn btn btn-default")
 end
end
