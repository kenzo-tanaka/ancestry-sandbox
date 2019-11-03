parents = %w[ 家電 ファッション 本 ]
electronics_child = %w[ 洗濯機 炊飯器 ]
fashion_child = %w[ アウター トップス ]
book_child = %w[ 自己啓発 技術書 ]

parents.each do |parent|
  Category.seed do |c|
    c.name = parent
  end
end
electronics_child.each do |child|
  Category.find_by!(name: '家電').children.create(name: child)
end
fashion_child.each do |child|
  Category.find_by!(name: 'ファッション').children.create(name: child)
end
book_child.each do |child|
  Category.find_by!(name: '本').children.create(name: child)
end
