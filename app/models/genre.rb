class Genre < ActiveHash::Base
  self.data = [
      {id: 1, name: 'HTML'}, {id: 2, name: 'CSS'}, {id: 3, name: 'Ruby'}, {id: 4, name: 'JavaScript'}, {id: 5, name: 'linux'}, {id: 6, name: 'RSpec'}, {id: 7, name: 'その他'}
  ]
end