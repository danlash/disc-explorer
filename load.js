var fs = require("fs");
var HTTPRequest = require('HTTPRequest');  
var totalRecordsCreated = 0;

fs.readFile('./disc-database.json', parseFile);

function parseFile(err, data) { 
	if (err) throw err; 

	var discs = JSON.parse(data); 

	discs.forEach(function(disc) {
		var url = 'http://localhost:3000/discs.json';
		var data = { 
			'disc[name]' : disc.name,
			'disc[manufacturer]' : disc.manufacturer,
			'disc[throw_type]' : disc.type,
			'disc[flight_difficulty]' : disc.flight.difficulty,
			'disc[flight_speed]' : disc.flight.speed,
			'disc[flight_glide]' : disc.flight.glide,
			'disc[flight_turn]' : disc.flight.turn,
			'disc[flight_fade]' : disc.flight.fade
		};

		HTTPRequest.post(url, data, createRespondToDiscCreation(disc.plastic));
	});
}

function createRespondToDiscCreation(editions) {
	return function respondToDiscCreation(status, headers, content)
	{
		totalRecordsCreated += 1;
		var disc = JSON.parse(content);
		console.log('Disc ' + disc.id + ' created.')
		var url = 'http://localhost:3000/discs/'+disc.id+'/disc_editions.json'

		if (editions) {
			editions.forEach(function(edition) {
				var data = {
					'disc_edition[plastic]' : edition.name,
					'disc_edition[price]' : edition.price
				}

				HTTPRequest.post(url, data, respondToDiscEditionCreation);
			});
		}
	}
}

function respondToDiscEditionCreation(status, headers, content)
{
	totalRecordsCreated += 1;
	
	var discEdition = JSON.parse(content);
	console.log('Disc Edition ' + discEdition.id + ' created for disc ' + discEdition.disc_id + '.')
}