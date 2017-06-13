module ApplicationHelper

  def controller?(*controller)
    controller.include?(params[:controller])
  end

  def action?(*action)
    action.include?(params[:action])
  end

  def active_link(link_path,title,other_params={})
    css_class = ["menulink"]
    css_class << "active" if link_path.to_s.include?(params[:controller])
    content_tag :li, class: css_class.join(" ") do 
      link_to(title, link_path,other_params)
    end
  end
    
end
