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
    unless current_user.nil?

   form_for(@membership) do |f| 
     f.hidden_field :post_id
     f.submit value:"add to favorites!"

    end
  end
end
