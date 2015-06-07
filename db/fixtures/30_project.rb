Project.seed(:id) do |p|
  p.id = 1
  p.title = 'Made with Open Data'
  p.url = 'https://www.madewithopendata.org'
  p.description = 'This site (so meta)!'
end

ProjectCategory.seed(:project_id) do |pt|
  pt.project_id = 1
  pt.category_id = 1
end

ProjectType.seed(:project_id) do |pt|
  pt.project_id = 1
  pt.type_id = 2
end
