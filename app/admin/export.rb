ActiveAdmin.register_page "Export" do
  content do
    c = Company.all.order(:name)
    companies = []
    c.each do |c|
      companies << {name: c.name, id: c.id}
    end
    render partial: 'export', locals: {companies: companies}
  end
end
