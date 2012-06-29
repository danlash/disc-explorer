var HTTPRequest = require('HTTPRequest')
  , verbose = true
  , fs = require('fs')
  

function collect(error, callback) {
	var results = []
	  , urlTemplate = 'http://www.discgolfcenter.com/main_displayProductList.php?topx=25&page=#{page}&s=4&type=6'
	  , i
	  , url
	  , pages = 15

  	for (i = 0; i < pages; i++) {
		var page = i+1
		url = urlTemplate.replace(/#{page}/gi, page)

		if (verbose) { console.log('requesting ', url); }

		HTTPRequest.get(url, responseFor(page));
	}
}

function responseFor(page) {
	return function(status, headers, content)
		{
			console.log('writing file for page ' + page)
			fs.writeFile('./disc-database-page-'+page+'.html', content)
		}
}


console.log(collect(
				function(){ console.log('error'); }, 
				function(results){ 
					console.log(results); 
				}
			))