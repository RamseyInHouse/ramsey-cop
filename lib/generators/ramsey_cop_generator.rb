class RamseyCopGenerator < Rails::Generators::Base

  source_root(File.expand_path(File.dirname(__FILE__)))

  def create_rubcop_yml
    template 'rscop.yml', 'config/.rubocop.yml'
  end

end
