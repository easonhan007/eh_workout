module ApplicationHelper
  include Pagy::Frontend

  def to_md(text)
    options = [:hard_wrap, :autolink, :no_intra_emphasis, :fenced_code_blocks]
    Markdown.new(text, *options).to_html.html_safe
  end

  def default_img()
    'https://images.unsplash.com/photo-1594882645126-14020914d58d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=800&q=80'
  end

  def is_active(path)
    return ' active' if path.eql?(request.path)
    ''
  end

  def dark_link(name, path)
    link_to name, path, class: 'link-secondary link-offset-2 link-underline-opacity-25 link-underline-opacity-100-hover'
  end

end
