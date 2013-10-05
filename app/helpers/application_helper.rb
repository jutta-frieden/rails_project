module ApplicationHelper
    def sortable(column, title = nil)
        title ||=column.titleize
        css_class = (column == sort_column) ? "current #{sort_direction}" : nil
        direction = (column == sort_column && sort_direction == "asc") ? "desc" : "asc"
        link_to title, {:sort => column, :direction => direction}, {:class => css_class}
    end

    def sign_in_out_link(user)
        if user
            link_to "Sign out", session_path, :method => :destroy
        else
            link_to "Sign in", new_session_path
        end
    end    
end
