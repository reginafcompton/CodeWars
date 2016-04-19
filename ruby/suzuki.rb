def lineup_students(students)
  arr = students.split(' ')
  arr.sort_by! { |name| [name.length, name] }
  arr.reverse
end

lineup_students('Tadashi Takahiro Takao Takashi Takayuki Takehiko Takeo Takeshi Takeshi')
