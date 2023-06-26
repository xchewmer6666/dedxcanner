const Wappalyzer = require('wappalyzer')

var url = '';

if (process.argv.length === 2) {
  console.error('Expected at least one argument!');
  process.exit(1);
}

if (process.argv[2] && process.argv[2] === '-u') {
  console.log('[!] url is present.');
  url = process.argv[3];
  console.log(url);
} else {
  console.log('[!] url is not present.');
}

const options = {
  debug: false,
  delay: 1000,
  headers: {},
  maxDepth: 10,
  maxUrls: 30,
  maxWait: 5000,
  recursive: true,
  probe: true,
  proxy: false,
  userAgent: 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:109.0) Gecko/20100101 Firefox/114.0',
  htmlMaxCols: 2000,
  htmlMaxRows: 2000,
  noScripts: false,
  noRedirect: false,
};

const wappalyzer = new Wappalyzer(options)

  ; (async function () {
    try {
      await wappalyzer.init()

      // Optionally set additional request headers
      const headers = {}

      // Optionally set local and/or session storage
      const storage = {
        local: {},
        session: {}
      }

      const site = await wappalyzer.open(url, headers, storage)

      // Optionally capture and output errors
      site.on('error', console.error)

      const results = await site.analyze()

      console.log(JSON.stringify(results, null, 2))
    } catch (error) {
      console.error(error)
    }

    await wappalyzer.destroy()
  })()