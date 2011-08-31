module ApplicationHelper
<<<<<<< HEAD
    def hidden_div_if(condition, attributes = {}, &block)
    if condition
         attributes["style"] = "display: none"
    end
    content_tag("div", attributes, &block)
    end
=======
>>>>>>> 72a6b0fda60331618bef674b43236ea7b625d541
end
