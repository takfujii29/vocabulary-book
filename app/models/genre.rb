class Genre < ActiveHash::Base
  self.data = [
      {id: 1, name: 'HTML'}, {id: 2, name: 'CSS'}, {id: 3, name: 'Ruby'}, {id: 4, name: 'JavaScript'}, {id: 5, name: 'linux'}, {id: 6, name: 'RSpec'}, {id: 7, name: 'C++'}, {id: 8, name: 'PHP'}, {id: 9, name: 'java'}, {id: 10, name: 'Python'}, {id: 11, name: 'その他'}
  ]
end