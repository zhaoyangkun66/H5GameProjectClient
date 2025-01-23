
const crypto = require('crypto');
let apiToken = "7183941304:AAHeaXArIfSJiK_GbaJn6Fzyc9oZ9J2BCik"
const hash = "def6dfb738a9a9eb55cff2dfea9d122952ae9b762428c7e08696be5ecb08794e"
const dataToCheck = "auth_date=1727668067/nchat_instance=2970449520108226620/nchat_type=private/nuser={\"id\":6583485575,\"first_name\":\"zhao\",\"last_name\":\"yangkun\",\"language_code\":\"zh-hans\",\"allows_write_to_pm\":true}"
const secretKey = crypto.createHmac("sha256", "WebAppData").update(apiToken).digest();




//const crypto = require('crypto');
let key = "TgGamexxBpcyBhIGtleQ=="
let path = "/HtmlView/WatchAdsInSubGames"
let TimeStamp = "1730083383"
let UniqueID = "1730083383"
let data = path + TimeStamp + UniqueID + "--sjkfopwfpqopi"
const _hash = crypto.createHmac("sha256", key).update(data).digest("base64");
console.log(_hash);