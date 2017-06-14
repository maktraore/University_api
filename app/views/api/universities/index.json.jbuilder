json.array! @universities.each do |univ|
    json.partial! 'university.json.jbuilder', university: univ
  end