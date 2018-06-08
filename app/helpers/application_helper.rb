module ApplicationHelper
def flash_class(level)
    case level
        when 'notice' then "alert alert-info"
        when 'create' then "alert alert-success"
        when 'delete' then "alert alert-danger"
        when 'update' then "alert alert-info"
    end
end

end
