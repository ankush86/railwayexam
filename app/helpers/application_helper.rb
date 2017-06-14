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

  def bootstrap_devise_error_messages!
    return '' if resource.errors.empty?

    messages = resource.errors.full_messages.map { |msg| content_tag(:li, msg) }.join
    sentence = I18n.t('errors.messages.not_saved',
      count: resource.errors.count,
      resource: resource.class.model_name.human.downcase)

    html = <<-HTML
    <div class="alert alert-danger alert-block devise-bs" id="errors_div">
      <button type="button" class="close" data-dismiss="alert">&times;</button>
      <h5>#{sentence}</h5> 
      <ul>#{messages}</ul>
    </div>
    HTML

    html.html_safe
  end
    
end
