class MeetingTime < ActiveHash::Base
  self.data = [
      {id: 1, name: '4時〜5時'}, {id: 2, name: '5時〜6時'}, {id: 3, name: '6時〜7時'},
      {id: 4, name: '7時〜8時'}, {id: 5, name: '8時〜9時'}, {id: 6, name: '9時〜10時'},
      {id: 7, name: '10時＝11時'}, {id: 8, name: '11時〜12時'}, {id: 9, name: '12時〜13時'},
      {id: 10, name: '13時〜14時'}, {id: 11, name: '14時〜15時'}, {id: 12, name: '15時〜16時'},
      {id: 13, name: '17時〜18時'}, {id: 14, name: '18時〜19時'}, {id: 15, name: '19時〜20時'},
      {id: 16, name: '21時〜22時'}
  ]
end