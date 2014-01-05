var SRC_URL = "";
var BASE_KEY = "";

var version = process.env.NODE_VERSION || 'latest';

if (process.env.NODE_LANG === "ja") {
  SRC_URL  = 'http://nodejs.jp/nodejs.org_ja/docs/' + version + '/api/index.html';
  BASE_KEY = 'http://nodejs.jp/nodejs.org_ja/docs/' + version + '/api/*';
} else {
  SRC_URL  = 'http://nodejs.org/docs/' + version + '/api/index.html';
  BASE_KEY = 'http://nodejs.org/docs/' + version + '/api/*';
}

module.exports = {
  SRC_URL: SRC_URL,
  BASE_KEY: BASE_KEY
};
