class RamseyCopGenerator < Rails::Generators::Base
  source_root(File.expand_path(File.dirname(__FILE__)))

  def create_rubcop_yml
    template "../../default.yml", ".rubocop.yml"
  end
end
