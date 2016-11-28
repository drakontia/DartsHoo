json.extract! reg, :id, :userid, :gameid, :regno, :gametype, :gamestats, :roundnum, :created_at, :updated_at
json.url reg_url(reg, format: :json)