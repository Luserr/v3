QBShared = QBShared or {}
QBShared.VehicleHashes = {}

QBShared.Vehicles = {
	----ACURA
	['filthynsx'] = {
		['name'] = 'NSX',
		['brand'] = 'Acura',
		['model'] = 'filthynsx',
		['price'] = 2995000,
		['category'] = 'acura',
		['hash'] = 'filthynsx',
		['shop'] = 'tuner',
	},
	['c8z0623'] = {
		['name'] = 'C8Z',
		['brand'] = 'Corvette',
		['model'] = 'c8z0623',
		['price'] = 2995000,
		['category'] = 'none',
		['hash'] = 'c8z0623',
		['shop'] = 'none',
	},
	['tltypes'] = {
		['name'] = 'TL Type S',
		['brand'] = 'Acura',
		['model'] = 'tltypes',
		['price'] = 180000,
		['category'] = 'acura',
		['hash'] = 'tltypes',
		['shop'] = 'tuner',
	},
	["lwgtr"] = {
		['name'] = 'R35 GT-R Liberty Walk',
		['brand'] = 'Nissan',
		['model'] = 'lwgtr',
		['price'] = 575000,
		['category'] = 'sports',
		['hash'] = `lwgtr`,
		['shop'] = 'custom',
	},
	----ALFAROMEO
	['gtam21'] = {
		['name'] = 'Giulia GT AM',
		['brand'] = 'Alfa Romeo',
		['model'] = 'gtam21',
		['price'] = 1670000,
		['category'] = 'alfaromeo',
		['hash'] = 'gtam21',
		['shop'] = 'tuner',
	},
	['155q4'] = {
		['name'] = '155 Q4',
		['brand'] = 'Alfa Romeo',
		['model'] = '155q4',
		['price'] = 93500,
		['category'] = 'alfaromeo',
		['hash'] = '155q4',
		['shop'] = 'tuner',
	},
	['giuliasuper'] = {
		['name'] = 'Giulia Super',
		['brand'] = 'Alfa Romeo',
		['model'] = 'giuliasuper',
		['price'] = 81000,
		['category'] = 'alfaromeo',
		['hash'] = 'giuliasuper',
		['shop'] = 'tuner',
	},
	['stelvio'] = {
		['name'] = 'Stelvio',
		['brand'] = 'Alfa Romeo',
		['model'] = 'stelvio',
		['price'] = 130000,
		['category'] = 'alfaromeo',
		['hash'] = 'stelvio',
		['shop'] = 'tuner',
	},
	----ASTON MARTIN
	['db11'] = {
		['name'] = 'DB11',
		['brand'] = 'Aston Martin',
		['model'] = 'db11',
		['price'] = 2765000,
		['category'] = 'astonmartin',
		['hash'] = 'db11',
		['shop'] = 'tuner',
	},
	['victor'] = {
		['name'] = 'Victor',
		['brand'] = 'Aston Martin',
		['model'] = 'victor',
		['price'] = 2850000,
		['category'] = 'astonmartin',
		['hash'] = 'victor',
		['shop'] = 'tuner',
	},
	['vulcan'] = {
		['name'] = 'Vulcan',
		['brand'] = 'Aston Martin',
		['model'] = 'vulcan',
		['price'] = 22850000,
		['category'] = 'astonmartin',
		['hash'] = 'vulcan',
		['shop'] = 'tuner',
	},
	['valkyrietp'] = {
		['name'] = 'Valkyrie',
		['brand'] = 'Aston Martin',
		['model'] = 'valkyrietp',
		['price'] = 4145000,
		['category'] = 'super',
		['hash'] = 'valkyrietp',
		['shop'] = 'custom',
	},
	['v877'] = {
		['name'] = 'V8 Vantage 1977',
		['brand'] = 'Aston Martin',
		['model'] = 'v877',
		['price'] = 21450000,
		['category'] = 'super',
		['hash'] = 'v877',
		['shop'] = 'custom',
	},
	['ast'] = {
		['name'] = 'Vanquish',
		['brand'] = 'Aston Martin',
		['model'] = 'ast',
		['price'] = 2800000,
		['category'] = 'astonmartin',
		['hash'] = 'ast',
		['shop'] = 'tuner',
	},
	['cyrus'] = {
		['name'] = 'Cyrus',
		['brand'] = 'Aston Martin',
		['model'] = 'cyrus',
		['price'] = 2800000,
		['category'] = 'super',
		['hash'] = 'cyrus',
		['shop'] = 'custom',
	},
	----AUDI
	['s1hr'] = {
		['name'] = 'S1 HR',
		['brand'] = 'Audi',
		['model'] = 's1hr',
		['price'] = 1895000,
		['category'] = 'super',
		['hash'] = 's1hr',
		['shop'] = 'custom',
	},
	['rs520211przemo'] = {
		['name'] = 'RS5 2021',
		['brand'] = 'Audi',
		['model'] = 'rs520211przemo',
		['price'] = 1895000,
		['category'] = 'audi',
		['hash'] = 'rs520211przemo',
		['shop'] = 'tuner',
	},
	['audirs6tk'] = {
		['name'] = 'RS6 Wagon',
		['brand'] = 'Audi',
		['model'] = 'audirs6tk',
		['price'] = 1300000,
		['category'] = 'super',
		['hash'] = 'audirs6tk',
		['shop'] = 'pdm',
	},
	['r8v10'] = {
		['name'] = 'R8 V10',
		['brand'] = 'Audi',
		['model'] = 'r8v10',
		['price'] = 2900000,
		['category'] = 'super',
		['hash'] = 'r8v10',
		['shop'] = 'custom',
	},
	['r8h'] = {
		['name'] = 'R8 Hycade',
		['brand'] = 'Audi',
		['model'] = 'r8h',
		['price'] = 2790000,
		['category'] = 'super',
		['hash'] = 'r8h',
		['shop'] = 'custom',
	},
	['a6'] = {
		['name'] = 'A6 Quattro',
		['brand'] = 'Audi',
		['model'] = 'a6',
		['price'] = 2450000,
		['category'] = '',
		['hash'] = 'a6',
		['shop'] = 'pdm',
	},
	['audquattros'] = {
		['name'] = 'Quattro',
		['brand'] = 'Audi',
		['model'] = 'audquattros',
		['price'] = 75000,
		['category'] = 'audi',
		['hash'] = 'audquattros',
		['shop'] = 'tuner',
	},
	['2013rs7'] = {
		['name'] = 'RS 7',
		['brand'] = 'Audi',
		['model'] = '2013rs7',
		['price'] = 950000,
		['category'] = 'n/a',
		['hash'] = '2013rs7',
		['shop'] = 'pdm',
	},
	['2015s3'] = {
		['name'] = 'S3',
		['brand'] = 'Audi',
		['model'] = '2015s3',
		['price'] = 351000,
		['category'] = 'sports',
		['hash'] = '2015s3',
		['shop'] = 'pdm',
	},
	['rs3'] = {
		['name'] = 'RS3',
		['brand'] = 'Audi',
		['model'] = 'rs3',
		['price'] = 400000,
		['category'] = 'sports',
		['hash'] = 'rs3',
		['shop'] = 'pdm',
	},
	['sjaudi'] = {
		['name'] = 'S2',
		['brand'] = 'Audi',
		['model'] = 'sjaudi',
		['price'] = 95000,
		['category'] = 'audi',
		['hash'] = 'sjaudi',
		['shop'] = 'tuner',
	},
	['tts'] = {
		['name'] = 'TTS',
		['brand'] = 'Audi',
		['model'] = 'tts',
		['price'] = 81000,
		['category'] = 'n/a',
		['hash'] = 'tts',
		['shop'] = 'n/a',
	},
	----BENTLEY
	['bdragon'] = {
		['name'] = 'Continental SS II',
		['brand'] = 'Bentley',
		['model'] = 'bdragon',
		['price'] = 5250000,
		['category'] = 'super',
		['hash'] = 'bdragon',
		['shop'] = 'luxury',
	},
	['contss18'] = {
		['name'] = 'Continental SS',
		['brand'] = 'Bentley',
		['model'] = 'contss18',
		['price'] = 2405000,
		['category'] = 'bentley',
		['hash'] = 'contss18',
		['shop'] = 'tuner',
	},
	['bbentayga'] = {
		['name'] = 'bentayga',
		['brand'] = 'Bentley',
		['model'] = 'bbentayga',
		['price'] = 177000,
		['category'] = 'super',
		['hash'] = 'bbentayga',
		['shop'] = 'luxury',
	},
	----BICYCLES
	['bimx'] = {
		['name'] = 'BMX',
		['brand'] = 'Bike',
		['model'] = 'bimx',
		['price'] = 1600,
		['category'] = 'cycles',
		['hash'] = 'bimx',
		['shop'] = 'RowsRides',
	},
	['bmx'] = {
		['name'] = 'BMX',
		['brand'] = 'Bike',
		['model'] = 'bmx',
		['price'] = 160,
		['category'] = 'cycles',
		['hash'] = 'bmx',
		['shop'] = 'RowsRides',
	},
	['cruiser'] = {
		['name'] = 'Cruiser',
		['brand'] = 'Bike',
		['model'] = 'cruiser',
		['price'] = 510,
		['category'] = 'cycles',
		['hash'] = 'cruiser',
		['shop'] = 'RowsRides',
	},
	['fixter'] = {
		['name'] = 'Fixter',
		['brand'] = 'Bike',
		['model'] = 'fixter',
		['price'] = 225,
		['category'] = 'cycles',
		['hash'] = 'fixter',
		['shop'] = 'RowsRides',
	},
	['scorcher'] = {
		['name'] = 'Scorcher',
		['brand'] = 'Bike',
		['model'] = 'scorcher',
		['price'] = 280,
		['category'] = 'cycles',
		['hash'] = 'scorcher',
		['shop'] = 'RowsRides',
	},
	['tribike'] = {
		['name'] = 'Tri Bike',
		['brand'] = 'Bike',
		['model'] = 'tribike',
		['price'] = 500,
		['category'] = 'cycles',
		['hash'] = 'tribike',
		['shop'] = 'RowsRides',
	},
	['tribike2'] = {
		['name'] = 'Tri Bike 2',
		['brand'] = 'Bike',
		['model'] = 'tribike2',
		['price'] = 700,
		['category'] = 'cycles',
		['hash'] = 'tribike2',
		['shop'] = 'RowsRides',
	},
	['tribike3'] = {
		['name'] = 'Tri Bike 3',
		['brand'] = 'Bike',
		['model'] = 'tribike3',
		['price'] = 520,
		['category'] = 'cycles',
		['hash'] = 'tribike3',
		['shop'] = 'RowsRides',
	},
	['bfixter'] = {
		['name'] = 'Fister',
		['brand'] = 'Bike',
		['model'] = 'bfixter',
		['price'] = 1000,
		['category'] = 'cycles',
		['hash'] = 'bfixter',
		['shop'] = 'RowsRides',
	},
	['bmxP2'] = {
		['name'] = 'BMX P2',
		['brand'] = 'Bike',
		['model'] = 'bmxP2',
		['price'] = 177000,
		['category'] = 'cycles',
		['hash'] = 'bmxP2',
		['shop'] = 'RowsRides',
	},
	----BMW
	['bmwm2h'] = {
		['name'] = 'M2 HR',
		['brand'] = 'BMW',
		['model'] = 'bmwm2h',
		['price'] = 1925000,
		['category'] = 'bmw',
		['hash'] = 'bmwm2h',
		['shop'] = 'tuner',
	},
	['acs8'] = {
		['name'] = 'i8',
		['brand'] = 'BMW',
		['model'] = 'acs8',
		['price'] = 1925000,
		['category'] = 'bmw',
		['hash'] = 'acs8',
		['shop'] = 'tuner',
	},
	['e36prb'] = {
		['name'] = 'M3 E36',
		['brand'] = 'BMW',
		['model'] = 'e36prb',
		['price'] = 2145000,
		['category'] = 'bmw',
		['hash'] = 'e36prb',
		['shop'] = 'tuner',
	},
	['f10m5rc'] = {
		['name'] = 'F10 M5 RC Car',
		['brand'] = 'BMW',
		['model'] = 'f10m5rc',
		['price'] = 50000,
		['category'] = 'event',
		['hash'] = 'f10m5rc',
		['shop'] = 'tuner',
	},
	['m5e60'] = {
		['name'] = 'M5 E60',
		['brand'] = 'BMW',
		['model'] = 'm5e60',
		['price'] = 1450000,
		['category'] = 'sports',
		['hash'] = 'm5e60',
		['shop'] = 'pdm',
	},
	['22m5'] = {
		['name'] = 'M5 C5 2022',
		['brand'] = 'BMW',
		['model'] = '22m5',
		['price'] = 2995000,
		['category'] = 'bmw',
		['hash'] = '22m5',
		['shop'] = 'none',
	},
	['m2f22'] = {
		['name'] = 'M2 F22',
		['brand'] = 'BMW',
		['model'] = 'm2f22',
		['price'] = 1685000,
		['category'] = 'bmw',
		['hash'] = 'm2f22',
		['shop'] = 'tuner',
	},
	['m4'] = {
		['name'] = 'M4',
		['brand'] = 'BMW',
		['model'] = 'm4',
		['price'] = 2085000,
		['category'] = 'bmw',
		['hash'] = -711938045,
		['shop'] = 'tuner',
	},
	['m3e46'] = {
		['name'] = 'M3 E46',
		['brand'] = 'BMW',
		['model'] = 'm3e46',
		['price'] = 4455000,
		['category'] = 'bmw',
		['hash'] = 'm3e46',
		['shop'] = 'tuner',
	},
	['m3e30'] = {
		['name'] = 'M3 E30',
		['brand'] = 'BMW',
		['model'] = 'm3e30',
		['price'] = 1755000,
		['category'] = 'bmw',
		['hash'] = 'm3e30',
		['shop'] = 'tuner',
	},
	['325et'] = {
		['name'] = '325 Alpina',
		['brand'] = 'BMW',
		['model'] = '325et',
		['price'] = 28000,
		['category'] = 'bmw',
		['hash'] = '325et',
		['shop'] = 'tuner',
	},
	['750il'] = {
		['name'] = '750 Long',
		['brand'] = 'BMW',
		['model'] = '750il',
		['price'] = 28000,
		['category'] = 'bmw',
		['hash'] = '750il',
		['shop'] = 'tuner',
	},
	['bmw7sw'] = {
		['name'] = '750 Sport Wagon',
		['brand'] = 'BMW',
		['model'] = 'bmw7sw',
		['price'] = 28000,
		['category'] = 'bmw',
		['hash'] = 'bmw7sw',
		['shop'] = 'tuner',
	},
	['bmw507'] = {
		['name'] = '507',
		['brand'] = 'BMW',
		['model'] = 'bmw507',
		['price'] = 28000,
		['category'] = 'bmw',
		['hash'] = 'bmw507',
		['shop'] = 'tuner',
	},
	['bmwe3'] = {
		['name'] = 'E30 Drift',
		['brand'] = 'BMW',
		['model'] = 'bmwe3',
		['price'] = 28000,
		['category'] = 'bmw',
		['hash'] = 'bmwe3',
		['shop'] = 'tuner',
	},
	['e21'] = {
		['name'] = 'E21',
		['brand'] = 'BMW',
		['model'] = 'e21',
		['price'] = 28000,
		['category'] = 'bmw',
		['hash'] = 1152513354,
		['shop'] = 'tuner',
	},
	['e92lb'] = {
		['name'] = 'E92 Liberty Walk',
		['brand'] = 'BMW',
		['model'] = 'E92',
		['price'] = 187000,
		['category'] = 'bmw',
		['hash'] = 'E92',
		['shop'] = 'tuner',
	},
	['f82'] = {
		['name'] = 'M4 F82',
		['brand'] = 'BMW',
		['model'] = 'f82',
		['price'] = 147000,
		['category'] = 'n/a',
		['hash'] = 'f82',
		['shop'] = 'none',
	},
	['m4c'] = {
		['name'] = 'M4 Convertible',
		['brand'] = 'BMW',
		['model'] = 'm4c',
		['price'] = 178000,
		['category'] = 'bmw',
		['hash'] = -1790311237,
		['shop'] = 'tuner',
	},
	['m4lb'] = {
		['name'] = 'M4 Liberty Walk',
		['brand'] = 'BMW',
		['model'] = 'm4lb',
		['price'] = 188000,
		['category'] = 'sports',
		['hash'] = 'm4lb',
		['shop'] = 'luxury',
	},
	['m5e28'] = {
		['name'] = 'M5 E28',
		['brand'] = 'BMW',
		['model'] = 'm5e28',
		['price'] = 530000,
		['category'] = 'super',
		['hash'] = 'm5e28',
		['shop'] = 'pdm',
	},
	['m6f13'] = {
		['name'] = 'm6f13',
		['brand'] = 'BMW',
		['model'] = 'f13',
		['price'] = 180000,
		['category'] = 'bmw',
		['hash'] = 'm6f13',
		['shop'] = 'tuner',
	},
	['rmodx6'] = {
		['name'] = 'X6 M',
		['brand'] = 'BMW',
		['model'] = 'rmodx6',
		['price'] = 180000,
		['category'] = 'bmw',
		['hash'] = 'rmodx6',
		['shop'] = 'tuner',
	},
	['z4bmw'] = {
		['name'] = 'Z4',
		['brand'] = 'BMW',
		['model'] = 'z4bmw',
		['price'] = 180000,
		['category'] = 'sports',
		['hash'] = 'z4bmw',
		['shop'] = 'luxury',
	},
	----BUGATTI
	['bolide'] = {
		['name'] = 'Bolide',
		['brand'] = 'Bugatti',
		['model'] = 'bolide',
		['price'] = 3200000,
		['category'] = 'bugatti',
		['hash'] = 'bolide',
		['shop'] = 'tuner',
	},
	['chiron17'] = {
		['name'] = 'Chiron 17',
		['brand'] = 'Bugatti',
		['model'] = 'chiron17',
		['price'] = 3555000,
		['category'] = 'bugatti',
		['hash'] = 'chiron17',
		['shop'] = 'tuner',
	},
	['rmodbugatti'] = {
		['name'] = 'La Voiture',
		['brand'] = 'Bugatti',
		['model'] = 'rmodbugatti',
		['price'] = 3800000,
		['category'] = 'bugatti',
		['hash'] = 'rmodbugatti',
		['shop'] = 'tuner',
	},
	----BUICK
	['rrgnx'] = {
		['name'] = 'GN X RR',
		['brand'] = 'Buick',
		['model'] = 'rrgnx',
		['price'] = 30000,
		['category'] = 'buick',
		['hash'] = 'rrgnx',
		['shop'] = 'tuner',
	},
	['bgnx'] = {
		['name'] = 'GN X',
		['brand'] = 'Buick',
		['model'] = 'bgnx',
		['price'] = 30000,
		['category'] = 'buick',
		['hash'] = 'bgnx',
		['shop'] = 'tuner',
	},
	['cnty'] = {
		['name'] = 'Century',
		['brand'] = 'Buick',
		['model'] = 'cnty',
		['price'] = 30000,
		['category'] = 'buick',
		['hash'] = 'cnty',
		['shop'] = 'tuner',
	},
	----CADILLAC
	['esv'] = {
		['name'] = 'Escalade',
		['brand'] = 'Cadillac',
		['model'] = 'esv',
		['price'] = 1330000,
		['category'] = 'super',
		['hash'] = 'esv',
		['shop'] = 'pdm',
	},
	['fleet78'] = {
		['name'] = 'fleet78',
		['brand'] = 'cadillac',
		['model'] = 'fleetwood',
		['price'] = 60000,
		['category'] = 'cadillac',
		['hash'] = 'fleet78',
		['shop'] = 'tuner',
	},
	----CHRYSLER
	['300chellcat'] = {
		['name'] = '300C Hellcat',
		['brand'] = 'Chrysler',
		['model'] = '300chellcat',
		['price'] = 1986000,
		['category'] = 'super',
		['hash'] = '300chellcat',
		['shop'] = 'none',
	},
	----CHEVROLET
	['rrbelair'] = {
		['name'] = 'BelAir Custom',
		['brand'] = 'Chevrolet',
		['model'] = 'rrbelair',
		['price'] = 1986000,
		['category'] = 'chevrolet',
		['hash'] = 'rrbelair',
		['shop'] = 'tuner',
	},
	['c7'] = {
		['name'] = 'Corvette C7',
		['brand'] = 'Chevrolet',
		['model'] = 'c7',
		['price'] = 1986000,
		['category'] = 'sports',
		['hash'] = 'c7',
		['shop'] = 'luxury',
	},
	['exor'] = {
		['name'] = 'Camaro ZL1 Hennessey',
		['brand'] = 'Chevrolet',
		['model'] = 'exor',
		['price'] = 1750000,
		['category'] = 'chevrolet',
		['hash'] = 'exor',
		['shop'] = 'tuner',
	},
	['bc21tahoe'] = {
		['name'] = 'Tahoe',
		['brand'] = 'Chevrolet',
		['model'] = 'bc21tahoe',
		['price'] = 84000,
		['category'] = 'chevrolet',
		['hash'] = 'bc21tahoe',
		['shop'] = 'tuner',
	},
	['camaro90'] = {
		['name'] = 'Camaro Iroc Z',
		['brand'] = 'Chevrolet',
		['model'] = 'camaro90',
		['price'] = 84000,
		['category'] = 'chevrolet',
		['hash'] = 'camaro90',
		['shop'] = 'tuner',
	},
	['impala59c'] = {
		['name'] = 'Impala',
		['brand'] = 'Chevrolet',
		['model'] = 'impala59c',
		['price'] = 64000,
		['category'] = 'chevrolet',
		['hash'] = 'impala59c',
		['shop'] = 'tuner',
	},
	['saleemc7'] = {
		['name'] = 'Saleem C7',
		['brand'] = 'Chevrolet',
		['model'] = 'saleemc7',
		['price'] = 164000,
		['category'] = 'chevrolet',
		['hash'] = 'saleemc7',
		['shop'] = 'tuner',
	},
	----DODGE
	['HellephantDurango'] = {
		['name'] = 'Durango Hellcat',
		['brand'] = 'Dodge',
		['model'] = 'HellephantDurango',
		['price'] = 1300000,
		['category'] = 'dodge',
		['hash'] = 'HellephantDurango',
		['shop'] = 'tuner',
	},
	['rr68demoncharger'] = {
		['name'] = '69 Demon Charger',
		['brand'] = 'Dodge',
		['model'] = 'rr68demoncharger',
		['price'] = 1300000,
		['category'] = 'dodge',
		['hash'] = 'rr68demoncharger',
		['shop'] = 'tuner',
	},
	['rrhelldart'] = {
		['name'] = 'Hell Dart',
		['brand'] = 'Dodge',
		['model'] = 'rrhelldart',
		['price'] = 1300000,
		['category'] = 'dodge',
		['hash'] = 'rrhelldart',
		['shop'] = 'tuner',
	},
	['69charger'] = {
		['name'] = 'Charger RT/70 1969',
		['brand'] = 'Dodge',
		['model'] = '69charger',
		['price'] = 1300000,
		['category'] = 'dodge',
		['hash'] = '69charger',
		['shop'] = 'tuner',
	},
	['demon'] = {
		['name'] = 'Challenger SR/T Demon',
		['brand'] = 'Dodge',
		['model'] = 'demon',
		['price'] = 2625000,
		['category'] = 'muscle',
		['hash'] = 'demon',
		['shop'] = 'luxury',
	},
	['68dart'] = {
		['name'] = 'Dart 168',
		['brand'] = 'Dodge',
		['model'] = '68dart',
		['price'] = 1925000,
		['category'] = 'dodge',
		['hash'] = '68dart',
		['shop'] = 'tuner',
	},
	['bmdaytona'] = {
		['name'] = 'Daytona',
		['brand'] = 'Dodge',
		['model'] = 'bmdaytona',
		['price'] = 86000,
		['category'] = 'dodge',
		['hash'] = 'bmdaytona',
		['shop'] = 'tuner',
	},
	['chargerf8'] = {
		['name'] = 'Charger F8',
		['brand'] = 'Dodge',
		['model'] = 'chargerf8',
		['price'] = 286000,
		['category'] = 'dodge',
		['hash'] = 'chargerf8',
		['shop'] = 'tuner',
	},
	['ram2500'] = {
		['name'] = 'Ram 2500',
		['brand'] = 'Dodge',
		['model'] = 'ram2500',
		['price'] = 116000,
		['category'] = 'dodge',
		['hash'] = 'ram2500',
		['shop'] = 'tuner',
	},
	['redeye'] = {
		['name'] = 'Challenger RedEye',
		['brand'] = 'Dodge',
		['model'] = 'redeye',
		['price'] = 196000,
		['category'] = 'dodge',
		['hash'] = 'redeye',
		['shop'] = 'tuner',
	},
	['rt70'] = {
		['name'] = 'Charger RT70',
		['brand'] = 'Dodge',
		['model'] = 'rt70',
		['price'] = 196000,
		['category'] = 'dodge',
		['hash'] = 'rt70',
		['shop'] = 'tuner',
	},
	----FERRARI
	['488misha'] = {
		['name'] = '488 Misha',
		['brand'] = 'ferrari',
		['model'] = '488misha',
		['price'] = 3050000,
		['category'] = 'ferrari',
		['hash'] = '488misha',
		['shop'] = 'tuner',
	},
	['laferrari17'] = {
		['name'] = 'F150 LaFerrari',
		['brand'] = 'Ferrari',
		['model'] = 'laferrari17',
		['price'] = 3225000,
		['category'] = 'super',
		['hash'] = 'laferrari17',
		['shop'] = 'luxury',
	},
	['412'] = {
		['name'] = '412',
		['brand'] = 'Ferrari',
		['model'] = '412',
		['price'] = 420000,
		['category'] = 'ferrari',
		['hash'] = '412',
		['shop'] = 'tuner',
	},
	['488gtb'] = {
		['name'] = '488 GTB',
		['brand'] = 'Ferrari',
		['model'] = '488gtb',
		['price'] = 1100000,
		['category'] = 'super',
		['hash'] = '488gtb',
		['shop'] = 'luxury',
	},
	['f812'] = {
		['name'] = 'f812',
		['brand'] = 'Ferrari',
		['model'] = 'f812',
		['price'] = 320000,
		['category'] = 'ferrari',
		['hash'] = 'f812',
		['shop'] = 'tuner',
	},
	['fer612'] = {
		['name'] = '612',
		['brand'] = 'Ferrari',
		['model'] = 'fer612',
		['price'] = 360000,
		['category'] = 'ferrari',
		['hash'] = 'fer612',
		['shop'] = 'tuner',
	},
	['fxxk'] = {
		['name'] = 'FXXK',
		['brand'] = 'Ferrari',
		['model'] = 'fxxk',
		['price'] = 2360000,
		['category'] = 'ferrari',
		['hash'] = 'fxxk',
		['shop'] = 'tuner',
	},
	['lw458s'] = {
		['name'] = '458S LW',
		['brand'] = 'Ferrari',
		['model'] = 'lw458s',
		['price'] = 1960000,
		['category'] = 'ferrari',
		['hash'] = 'lw458s',
		['shop'] = 'tuner',
	},
	----FORD
	['hoonitruck'] = {
		['name'] = 'Hooni Truck',
		['brand'] = 'FORD',
		['model'] = 'hoonitruck',
		['price'] = 1187000,
		['category'] = 'ford',
		['hash'] = 'hoonitruck',
		['shop'] = 'tuner',
	},
	['rrtermivert'] = {
		['name'] = 'Mustang Wide Convertible',
		['brand'] = 'FORD',
		['model'] = 'rrtermivert',
		['price'] = 1187000,
		['category'] = 'ford',
		['hash'] = 'rrtermivert',
		['shop'] = 'tuner',
	},
	['rr70bosswide'] = {
		['name'] = 'Mustang RR Wide',
		['brand'] = 'FORD',
		['model'] = 'rr70bosswide',
		['price'] = 1187000,
		['category'] = 'ford',
		['hash'] = 'rr70bosswide',
		['shop'] = 'tuner',
	},
	['66fastback'] = {
		['name'] = 'Fastback Mustang 1996',
		['brand'] = 'Ford',
		['model'] = '66fastback',
		['price'] = 850000,
		['category'] = 'sports',
		['hash'] = '66fastback',
		['shop'] = 'pdm',
	},
	['f150'] = {
		['name'] = 'Raptor SVT-R 2012',
		['brand'] = 'Ford',
		['model'] = 'f150',
		['price'] = 1705000,
		['category'] = 'offroad',
		['hash'] = 'f150',
		['shop'] = 'custom',
	},
	['gt17'] = {
		['name'] = 'GT 2017',
		['brand'] = 'Ford',
		['model'] = 'gt17',
		['price'] = 2410000,
		['category'] = 'ford',
		['hash'] = 'gt17',
		['shop'] = 'tuner',
	},
	['mustang19'] = {
		['name'] = 'Mustang 2019',
		['brand'] = 'Ford',
		['model'] = 'mustang19',
		['price'] = 1350000,
		['category'] = 'sports',
		['hash'] = 'mustang19',
		['shop'] = 'pdm',
	},
	['ffrs'] = {
		['name'] = 'Focus RS',
		['brand'] = 'Ford',
		['model'] = 'ffrs',
		['price'] = 1935000,
		['category'] = 'sports',
		['hash'] = 'ffrs',
		['shop'] = 'pdm',
	},
	['rmodmustang'] = {
		['name'] = 'Mustang RMOD',
		['brand'] = 'Ford',
		['model'] = 'rmodmustang',
		['price'] = 1999000,
		['category'] = 'ford',
		['hash'] = 'rmodmustang',
		['shop'] = 'tuner',
	},
	['67shelbygt500'] = {
		['name'] = 'GT500',
		['brand'] = 'Shelby',
		['model'] = '67shelbygt500',
		['price'] = 1450000,
		['category'] = 'muscle',
		['hash'] = '67shelbygt500',
		['shop'] = 'pdm',
	},
	['shelbygt500w'] = {
		['name'] = 'GT500W',
		['brand'] = 'Shelby',
		['model'] = 'shelbygt500w',
		['price'] = 850000,
		['category'] = 'sports',
		['hash'] = 'shelbygt500w',
		['shop'] = 'pdm',
	},
	['boss429'] = {
		['name'] = 'Mustang Boss 429',
		['brand'] = 'Ford',
		['model'] = 'boss429',
		['price'] = 1550000,
		['category'] = 'ford',
		['hash'] = 'boss429',
		['shop'] = 'tuner',
	},
	['boss302'] = {
		['name'] = 'Mustang Boss 302',
		['brand'] = 'Ford',
		['model'] = 'boss302',
		['price'] = 1450000,
		['category'] = 'ford',
		['hash'] = 'boss302',
		['shop'] = 'tuner',
	},
	['cobra'] = {
		['name'] = 'Cobra',
		['brand'] = 'Ford',
		['model'] = 'cobra',
		['price'] = 145000,
		['category'] = 'ford',
		['hash'] = 'cobra',
		['shop'] = 'tuner',
	},
	['fgt'] = {
		['name'] = 'GT',
		['brand'] = 'Ford',
		['model'] = 'fgt',
		['price'] = 1450000,
		['category'] = 'super',
		['hash'] = 'fgt',
		['shop'] = 'luxury',
	},
	['towtruck2'] = {
		['name'] = 'Tow Truck',
		['brand'] = 'Ford',
		['model'] = 'towtruck2',
		['price'] = 5000,
		['category'] = 'ford',
		['hash'] = 'towtruck2',
		['shop'] = 'pdm',
	},
	----HONDA
	['fk8hr'] = {
		['name'] = 'Civic FK8 HR',
		['brand'] = 'Honda',
		['model'] = 'fk8hr',
		['price'] = 1865000,
		['category'] = 'sports',
		['hash'] = 'fk8hr',
		['shop'] = 'custom',
	},
	['s2pm'] = {
		['name'] = 'S2000 Custom',
		['brand'] = 'Honda',
		['model'] = 's2pm',
		['price'] = 1865000,
		['category'] = 'honda',
		['hash'] = 's2pm',
		['shop'] = 'tuner',
	},
	['ap2'] = {
		['name'] = 'S2000',
		['brand'] = 'Honda',
		['model'] = 'ap2',
		['price'] = 1865000,
		['category'] = 'honda',
		['hash'] = 'ap2',
		['shop'] = 'tuner',
	},
	['delsoleg'] = {
		['name'] = 'Civic Si R',
		['brand'] = 'Honda',
		['model'] = 'delsoleg',
		['price'] = 1325000,
		['category'] = 'honda',
		['hash'] = 'delsoleg',
		['shop'] = 'tuner',
	},
	['dc5'] = {
		['name'] = 'Integra DC5',
		['brand'] = 'Honda',
		['model'] = 'dc5',
		['price'] = 1565000,
		['category'] = 'honda',
		['hash'] = 'dc5',
		['shop'] = 'tuner',
	},
	['na1'] = {
		['name'] = 'NSX R 1992',
		['brand'] = 'Honda',
		['model'] = 'na1',
		['price'] = 2575000,
		['category'] = 'sports',
		['hash'] = 'na1',
		['shop'] = 'pdm',
	},
	['civic'] = {
		['name'] = 'Civic',
		['brand'] = 'Honda',
		['model'] = 'civic',
		['price'] = 380000,
		['category'] = 'sports',
		['hash'] = 'civic',
		['shop'] = 'pdm',
	},
	['dc2'] = {
		['name'] = 'Integra DC',
		['brand'] = 'Honda',
		['model'] = 'dc2',
		['price'] = 15000,
		['category'] = 'honda',
		['hash'] = 'dc2',
		['shop'] = 'tuner',
	},
	['ep3'] = {
		['name'] = 'Civic EP3',
		['brand'] = 'Honda',
		['model'] = 'ep3',
		['price'] = 50000,
		['category'] = 'honda',
		['hash'] = 'ep3',
		['shop'] = 'tuner',
	},
	['fd2'] = {
		['name'] = 'Civic TypeR',
		['brand'] = 'Honda',
		['model'] = 'fd2',
		['price'] = 60000,
		['category'] = 'honda',
		['hash'] = 'fd2',
		['shop'] = 'tuner',
	},
	['honody'] = {
		['name'] = 'Odyssey Elite',
		['brand'] = 'Honda',
		['model'] = 'honody',
		['price'] = 1111111,
		['category'] = 'honda',
		['hash'] = 'honody',
		['shop'] = 'tuner',
	},
	['fk8'] = {
		['name'] = 'Civic Type R FK-8',
		['brand'] = 'Honda',
		['model'] = 'fk8',
		['price'] = 1915000,
		['category'] = 'honda',
		['hash'] = 'fk8',
		['shop'] = 'tuner',
	},
	----HYUNDAI
	['veln'] = {
		['name'] = 'Veloster',
		['brand'] = 'Hyundai',
		['model'] = 'veln',
		['price'] = 1100000,
		['category'] = 'sports',
		['hash'] = 'veln',
		['shop'] = 'pdm',
	},
	----JAGUAR
	['fpacehm'] = {
		['name'] = 'F-Type Hamann',
		['brand'] = 'Jaguar',
		['model'] = 'fpacehm',
		['price'] = 80000,
		['category'] = 'jaguard',
		['hash'] = 'fpacehm',
		['shop'] = 'tuner',
	},
	['jagxjs80'] = {
		['name'] = 'XJS V12',
		['brand'] = 'Jaguar',
		['model'] = 'jagxjs80',
		['price'] = 30000,
		['category'] = 'jaguard',
		['hash'] = 'jagxjs80',
		['shop'] = 'tuner',
	},
	['p7'] = {
		['name'] = 'P7',
		['brand'] = 'Jaguar',
		['model'] = 'p7',
		['price'] = 50000,
		['category'] = 'jaguard',
		['hash'] = 'p7',
		['shop'] = 'tuner',
	},
	['project8'] = {
		['name'] = 'XE',
		['brand'] = 'Jaguar',
		['model'] = 'project8',
		['price'] = 700000,
		['category'] = 'super',
		['hash'] = 'project8',
		['shop'] = 'custom',
	},
	['xkgt'] = {
		['name'] = 'XK GT',
		['brand'] = 'Jaguar',
		['model'] = 'xkgt',
		['price'] = 174000,
		['category'] = 'jaguard',
		['hash'] = 'xkgt',
		['shop'] = 'tuner',
	},
	----JEEP
	['srt8b'] = {
		['name'] = 'Grand Cherokee SRT',
		['brand'] = 'Jeep',
		['model'] = 'srt8b',
		['price'] = 1625000,
		['category'] = 'jeep',
		['hash'] = 'srt8b',
		['shop'] = 'tuner',
	},
	['demonhawk'] = {
		['name'] = 'SRT Demonhawk',
		['brand'] = 'Jepp',
		['model'] = 'demonhawk',
		['price'] = 674000,
		['category'] = 'sports',
		['hash'] = 'demonhawk',
		['shop'] = 'n/a',
	},
	['gladiator'] = {
		['name'] = 'Gladiator',
		['brand'] = 'Jeep',
		['model'] = 'gladiator',
		['price'] = 375000,
		['category'] = 'sports',
		['hash'] = 'gladiator',
		['shop'] = 'pdm',
	},
	----KIA
	['kiagt'] = {
		['name'] = 'Stinger GT',
		['brand'] = 'KIA',
		['model'] = 'kiagt',
		['price'] = 2222222,
		['category'] = 'super',
		['hash'] = 'kiagt',
		['shop'] = 'pdm',
	},
	----KOENIGSEGG
	['KoenigseggAgeraR'] = {
		['name'] = 'Agera R',
		['brand'] = 'Koenigsegg',
		['model'] = 'KoenigseggAgeraR',
		['price'] = 2555000,
		['category'] = 'koenigsegg',
		['hash'] = 'KoenigseggAgeraR',
		['shop'] = 'tuner',
	},
	['jesko2020'] = {
		['name'] = 'Jesko 2020',
		['brand'] = 'Koenigsegg',
		['model'] = 'jesko2020',
		['price'] = 3865000,
		['category'] = 'koenigsegg',
		['hash'] = 'jesko2020',
		['shop'] = 'tuner',
	},
	----LAMGORGHINI
	['500gtrlam'] = {
		['name'] = 'Diablo GTR',
		['brand'] = 'lamborghini',
		['model'] = '500gtrlam',
		['price'] = 2950000,
		['category'] = 'lamborghini',
		['hash'] = '500gtrlam',
		['shop'] = 'tuner',
	},
	['610lb'] = {
		['name'] = 'Huracan Libery Walk',
		['brand'] = 'Lamborghini',
		['model'] = '610lb',
		['price'] = 400000,
		['category'] = 'lamborghini',
		['hash'] = '610lb',
		['shop'] = 'tuner',
	},
	['gallardosuperlb'] = {
		['name'] = 'Galardo Super LW',
		['brand'] = 'Lamborghini',
		['model'] = 'gallardosuperlb',
		['price'] = 400000,
		['category'] = 'lamborghini',
		['hash'] = 'gallardosuperlb',
		['shop'] = 'tuner',
	},
	['huralbcamber'] = {
		['name'] = 'Huracan Camber LW',
		['brand'] = 'Lamborghini',
		['model'] = 'huralbcamber',
		['price'] = 400000,
		['category'] = 'lamborghini',
		['hash'] = 'huralbcamber',
		['shop'] = 'tuner',
	},
	['lp610'] = {
		['name'] = 'Huracan Convertible',
		['brand'] = 'Lamborghini',
		['model'] = 'lp610',
		['price'] = 2500000,
		['category'] = 'super',
		['hash'] = 'lp610',
		['shop'] = 'luxury',
	},
	['lp700'] = {
		['name'] = 'Aventador LP700',
		['brand'] = 'Lamborghini',
		['model'] = 'lp700',
		['price'] = 3375000,
		['category'] = 'lamborghini',
		['hash'] = 'lp700',
		['shop'] = 'tuner',
	},
	['lp670'] = {
		['name'] = 'Murcielago LP670',
		['brand'] = 'Lamborghini',
		['model'] = 'lp670',
		['price'] = 3255000,
		['category'] = 'lamborghini',
		['hash'] = 'lp670',
		['shop'] = 'tuner',
	},
	----LANCIA
	['deltaintegrale'] = {
		['name'] = 'Delta Integrale',
		['brand'] = 'Lancia',
		['model'] = 'deltaintegrale',
		['price'] = 80000,
		['category'] = 'lancia',
		['hash'] = 'deltaintegrale',
		['shop'] = 'tuner',
	},
	----LEXUS
	['is300'] = {
		['name'] = 'IS300',
		['brand'] = 'Lexus',
		['model'] = 'is300',
		['price'] = 275000,
		['category'] = 'super',
		['hash'] = 'is300',
		['shop'] = 'pdm',
	},
	['lfa'] = {
		['name'] = 'LFA',
		['brand'] = 'Lexus',
		['model'] = 'lfa',
		['price'] = 1975000,
		['category'] = 'sports',
		['hash'] = 'lfa',
		['shop'] = 'luxury',
	},
	['lc500'] = {
		['name'] = 'LC500',
		['brand'] = 'Lexus',
		['model'] = 'lc500',
		['price'] = 2925000,
		['category'] = 'lexus',
		['hash'] = 'lc500',
		['shop'] = 'tuner',
	},
	['gs350'] = {
		['name'] = 'GS350',
		['brand'] = 'Lexus',
		['model'] = 'gs350',
		['price'] = 1925000,
		['category'] = 'lexus',
		['hash'] = 'gs350',
		['shop'] = 'tuner',
	},
	['rcf'] = {
		['name'] = 'RCF',
		['brand'] = 'Lexus',
		['model'] = 'rcf',
		['price'] = 2725000,
		['category'] = 'lexus',
		['hash'] = 'rcf',
		['shop'] = 'tuner',
	},
	['gx460'] = {
		['name'] = 'GX 460',
		['brand'] = 'Lexus',
		['model'] = 'gx460',
		['price'] = 60000,
		['category'] = 'lexus',
		['hash'] = 'gx460',
		['shop'] = 'tuner',
	},
	----LOTUS
	['carlton'] = {
		['name'] = 'Carlton',
		['brand'] = 'Lotus',
		['model'] = 'calrton',
		['price'] = 60000,
		['category'] = 'lotus',
		['hash'] = 'calrton',
		['shop'] = 'tuner',
	},
	['cortina'] = {
		['name'] = 'Cortina',
		['brand'] = 'Lotus',
		['model'] = 'cortina',
		['price'] = 50000,
		['category'] = 'lotus',
		['hash'] = 'cortina',
		['shop'] = 'tuner',
	},
	---- MASERATI
	['granlb'] = {
		['name'] = 'Gran Turismo LW',
		['brand'] = 'Maserati',
		['model'] = 'granlb',
		['price'] = 1950000,
		['category'] = 'super',
		['hash'] = 'granlb',
		['shop'] = 'pdm',
	},
	----MAZDA
	['rx7twerk'] = {
		['name'] = 'RX7 Twerk Drift',
		['brand'] = 'Mazda',
		['model'] = 'rx7twerk',
		['price'] = 1775000,
		['category'] = 'mazda',
		['hash'] = 'rx7twerk',
		['shop'] = 'tuner',
	},
	['hotwaterlab'] = {
		['name'] = 'RX7 Custom',
		['brand'] = 'Mazda',
		['model'] = 'hotwaterlab',
		['price'] = 1775000,
		['category'] = 'mazda',
		['hash'] = 'hotwaterlab',
		['shop'] = 'tuner',
	},
	['na6'] = {
		['name'] = 'MX-5 Miata',
		['brand'] = 'Mazda',
		['model'] = 'na6',
		['price'] = 1775000,
		['category'] = 'mazda',
		['hash'] = 'na6',
		['shop'] = 'tuner',
	},
	['rx811'] = {
		['name'] = 'RX-8',
		['brand'] = 'Mazda',
		['model'] = 'rx811',
		['price'] = 1975000,
		['category'] = 'sports',
		['hash'] = 'rx811',
		['shop'] = 'none',
	},
	['mx5stance'] = {
		['name'] = 'MX5 Stance',
		['brand'] = 'Mazda',
		['model'] = 'mx5stance',
		['price'] = 43000,
		['category'] = 'mazda',
		['hash'] = 'mx5stance',
		['shop'] = 'tuner',
	},
	['fnfrx7'] = {
		['name'] = 'RX7',
		['brand'] = 'Mazda',
		['model'] = 'fnfrx7',
		['price'] = 3450000,
		['category'] = 'mazda',
		['hash'] = 'fnfrx7',
		['shop'] = 'tuner',
	},
	['mfc'] = {
		['name'] = 'FC RX7',
		['brand'] = 'Mazda',
		['model'] = 'mfc',
		['price'] = 2250000,
		['category'] = 'mazda',
		['hash'] = 'mfc',
		['shop'] = 'tuner',
	},
	----MCLAREN
	['mclarenf1wb'] = {
		['name'] = 'F1 Wide Body',
		['brand'] = 'McLaren',
		['model'] = 'mclarenf1wb',
		['price'] = 2350000,
		['category'] = 'super',
		['hash'] = 'mclarenf1wb',
		['shop'] = 'pdm',
	},
	['720s'] = {
		['name'] = '720s',
		['brand'] = 'McLaren',
		['model'] = '720s',
		['price'] = 3250000,
		['category'] = 'mclaren',
		['hash'] = '720s',
		['shop'] = 'tuner',
	},
	['675ltsp'] = {
		['name'] = '675LTSP 2016',
		['brand'] = 'McLaren',
		['model'] = '675ltsp',
		['price'] = 3150000,
		['category'] = 'mclaren',
		['hash'] = '675ltsp',
		['shop'] = 'tuner',
	},
	['senna'] = {
		['name'] = 'Senna',
		['brand'] = 'McLaren',
		['model'] = 'senna',
		['price'] = 3565000,
		['category'] = 'mclaren',
		['hash'] = 'senna',
		['shop'] = 'tuner',
	},
	['720wideprzemo'] = {
		['name'] = '720 Wide Body',
		['brand'] = 'Mclaren',
		['model'] = '720wideprzemo',
		['price'] = 2330000,
		['category'] = 'super',
		['hash'] = '720wideprzemo',
		['shop'] = 'luxury',
	},
	----MERCEDES
	['mbc63'] = {
		['name'] = 'AMG C63',
		['brand'] = 'Mercedes',
		['model'] = 'mbc63',
		['price'] = 2915000,
		['category'] = 'mercedes',
		['hash'] = 'mbc63',
		['shop'] = 'tuner',
	},
	['rrmaybach'] = {
		['name'] = 'Maybach',
		['brand'] = 'Mercedes Benz',
		['model'] = 'rrmaybach',
		['price'] = 1700000,
		['category'] = 'mercedes',
		['hash'] = 'rrmaybach',
		['shop'] = 'tuner',
	},
	['a45amg'] = {
		['name'] = 'A45 AMG',
		['brand'] = 'Mercedes Benz',
		['model'] = 'a45amg',
		['price'] = 2945000,
		['category'] = 'mercedes',
		['hash'] = 'a45amg',
		['shop'] = 'tuner',
	},
	['gtrc'] = {
		['name'] = 'AMG GT RC',
		['brand'] = 'Mercedes',
		['model'] = 'gtrc',
		['price'] = 2825000,
		['category'] = 'super',
		['hash'] = 'gtrc',
		['shop'] = 'luxury',
	},
	['gt63'] = {
		['name'] = 'AMG GT63 S',
		['brand'] = 'Mercedes Benz',
		['model'] = 'gt63',
		['price'] = 2925000,
		['category'] = 'mercedes',
		['hash'] = 'gt63',
		['shop'] = 'tuner',
	},
	['500w124'] = {
		['name'] = '500E',
		['brand'] = 'Mercedes',
		['model'] = '500w124',
		['price'] = 47000,
		['category'] = 'mercedes',
		['hash'] = '500w124',
		['shop'] = 'tuner',
	},
	['722s'] = {
		['name'] = 'SLR',
		['brand'] = 'Mercedes',
		['model'] = '722s',
		['price'] = 147000,
		['category'] = 'mercedes',
		['hash'] = '722s',
		['shop'] = 'tuner',
	},
	['amgcew'] = {
		['name'] = 'E55 6.0 AMG',
		['brand'] = 'Mercedes',
		['model'] = 'amgcew',
		['price'] = 97000,
		['category'] = 'mercedes',
		['hash'] = 'amgcew',
		['shop'] = 'tuner',
	},
	['b63s'] = {
		['name'] = 'B63 S',
		['brand'] = 'Mercedes',
		['model'] = 'b63s',
		['price'] = 197000,
		['category'] = 'mercedes',
		['hash'] = 'b63s',
		['shop'] = 'tuner',
	},
	['brabus850'] = {
		['name'] = 'Brabus 850',
		['brand'] = 'Mercedes',
		['model'] = 'brabus850',
		['price'] = 475000,
		['category'] = 'sports',
		['hash'] = 'brabus850',
		['shop'] = 'pdm',
	},
	['c63hr'] = {
		['name'] = 'C63S Wide Body',
		['brand'] = 'Mercedes',
		['model'] = 'c63hr',
		['price'] = 197000,
		['category'] = 'mercedes',
		['hash'] = 'c63hr',
		['shop'] = 'tuner',
	},
	['cls53'] = {
		['name'] = 'CLS 53',
		['brand'] = 'Mercedes',
		['model'] = 'cls53',
		['price'] = 127000,
		['category'] = 'mercedes',
		['hash'] = 'cls53',
		['shop'] = 'tuner',
	},
	['e55'] = {
		['name'] = 'E55 AMG',
		['brand'] = 'Mercedes',
		['model'] = 'e55',
		['price'] = 47000,
		['category'] = 'mercedes',
		['hash'] = 'e55',
		['shop'] = 'tuner',
	},
	----MITSUBISHI
	['ap4'] = {
		['name'] = 'XPander',
		['brand'] = 'Mitsubishi',
		['model'] = 'ap4',
		['price'] = 2775000,
		['category'] = 'mitsubishi',
		['hash'] = 'ap4',
		['shop'] = 'tuner',
	},
	['cp9a'] = {
		['name'] = 'Evolution VI CP9A',
		['brand'] = 'Mitsubishi',
		['model'] = 'cp9a',
		['price'] = 1775000,
		['category'] = 'mitsubishi',
		['hash'] = 'cp9a',
		['shop'] = 'tuner',
	},
	['evo9'] = {
		['name'] = 'Evolution IX',
		['brand'] = 'Mitsubishi',
		['model'] = 'evo9',
		['price'] = 1845000,
		['category'] = 'mitsubishi',
		['hash'] = 'evo9',
		['shop'] = 'tuner',
	},
	['cz4a'] = {
		['name'] = 'Evo 10',
		['brand'] = 'Mitsubishi',
		['model'] = 'cz4a',
		['price'] = 147000,
		['category'] = 'mitsubishi',
		['hash'] = 'cz4a',
		['shop'] = 'tuner',
	},
	['mlec'] = {
		['name'] = 'Evo 9 Wide Body',
		['brand'] = 'Mitsubishi',
		['model'] = 'mlec',
		['price'] = 147000,
		['category'] = 'mitsubishi',
		['hash'] = 'mlec',
		['shop'] = 'tuner',
	},
	----NISSAN 
	['razerhycade34'] = {
		['name'] = 'R34 Hycade',
		['brand'] = 'Nissan',
		['model'] = 'razerhycade34',
		['price'] = 260000,
		['category'] = 'nissan',
		['hash'] = 1369146075,
		['shop'] = 'tuner',
	},
	['nissanr33tbk'] = {
		['name'] = 'R33 GTR',
		['brand'] = 'Nissan',
		['model'] = 'nissanr33tbk',
		['price'] = 260000,
		['category'] = 'nissan',
		['hash'] = -1484026753,
		['shop'] = 'tuner',
	},
	['zlay_gtrkuhl'] = {
		['name'] = 'GTR Kuhl',
		['brand'] = 'Nissan',
		['model'] = 'zlay_gtrkuhl',
		['price'] = 260000,
		['category'] = 'nissan',
		['hash'] = -978869455,
		['shop'] = 'tuner',
	},
	['zlay420sx'] = {
		['name'] = '420SX Custom',
		['brand'] = 'Nissan',
		['model'] = 'zlay420sx',
		['price'] = 260000,
		['category'] = 'nissan',
		['hash'] = 'zlay420sx',
		['shop'] = 'tuner',
	},
	['s14hachi'] = {
		['name'] = 'S14 Custom HR',
		['brand'] = 'Nissan',
		['model'] = 's14hachi',
		['price'] = 260000,
		['category'] = 'nissan',
		['hash'] = 's14hachi',
		['shop'] = 'tuner',
	},
	['s15varietta'] = {
		['name'] = 'S15 Convertible',
		['brand'] = 'Nissan',
		['model'] = 's15varietta',
		['price'] = 260000,
		['category'] = 'nissan',
		['hash'] = 's15varietta',
		['shop'] = 'tuner',
	},
	['s15urashr'] = {
		['name'] = 'S15 Uras HR',
		['brand'] = 'Nissan',
		['model'] = 's15urashr',
		['price'] = 260000,
		['category'] = 'nissan',
		['hash'] = 's15urashr',
		['shop'] = 'tuner',
	},
	['gtr17'] = {
		['name'] = 'GTR Custom',
		['brand'] = 'Nissan',
		['model'] = 'gtr17',
		['price'] = 260000,
		['category'] = 'nissan',
		['hash'] = 'gtr17',
		['shop'] = 'tuner',
	},
	['240sxhr'] = {
		['name'] = '240SX HR',
		['brand'] = 'Nissan',
		['model'] = '240sxhr',
		['price'] = 260000,
		['category'] = 'nissan',
		['hash'] = '240sxhr',
		['shop'] = 'tuner',
	},
	['350z'] = {
		['name'] = '350z Wide',
		['brand'] = 'Nissan',
		['model'] = '350z',
		['price'] = 260000,
		['category'] = 'nissan',
		['hash'] = '350z',
		['shop'] = 'tuner',
	},
	['nis180'] = {
		['name'] = '180sx',
		['brand'] = 'Nissan',
		['model'] = 'nis180',
		['price'] = 268000,
		['category'] = 'nissan',
		['hash'] = 'nis180',
		['shop'] = 'tuner',
	},
	['r35'] = {
		['name'] = 'R35',
		['brand'] = 'Nissan',
		['model'] = 'r35',
		['price'] = 349000,
		['category'] = 'nissan',
		['hash'] = 'r35',
		['shop'] = 'tuner',
	},
	['maj350z'] = {
		['name'] = '350z Maj',
		['brand'] = 'Nissan',
		['model'] = 'maj350z',
		['price'] = 220000,
		['category'] = 'nissan',
		['hash'] = 'maj350z',
		['shop'] = 'tuner',
	},
	['r32'] = {
		['name'] = 'R32 Skyline',
		['brand'] = 'Nissan',
		['model'] = 'r32',
		['price'] = 320000,
		['category'] = 'nissan',
		['hash'] = 'r32',
		['shop'] = 'tuner',
	},
	['s15rb'] = {
		['name'] = 'Silvia S15',
		['brand'] = 'Nissan',
		['model'] = 's15rb',
		['price'] = 177500,
		['category'] = 'nissan',
		['hash'] = 's15rb',
		['shop'] = 'tuner',
	},
	['bnr34'] = {
		['name'] = 'Skyline R34 BNR',
		['brand'] = 'Nissan',
		['model'] = 'bnr34',
		['price'] = 247000,
		['category'] = 'nissan',
		['hash'] = 'bnr34',
		['shop'] = 'tuner',
	},
	['fnf4r34'] = {
		['name'] = 'Skyline R34',
		['brand'] = 'Nissan',
		['model'] = 'fnf4r34',
		['price'] = 295000,
		['category'] = 'nissan',
		['hash'] = 'fnf4r34',
		['shop'] = 'tuner',
	},
	['s30'] = {
		['name'] = 'S30 Fairlady Z',
		['brand'] = 'Nissan',
		['model'] = 's30',
		['price'] = 245000,
		['category'] = 'nissan',
		['hash'] = 's30',
		['shop'] = 'tuner',
	},
	['s14'] = {
		['name'] = 'Silvia S14',
		['brand'] = 'Nissan',
		['model'] = 's14',
		['price'] = 285000,
		['category'] = 'nissan',
		['hash'] = 's14',
		['shop'] = 'tuner',
	},
	['s14boss'] = {
		['name'] = 'Silvia S14',
		['brand'] = 'Nissan',
		['model'] = 's14boss',
		['price'] = 295000,
		['category'] = 'nissan',
		['hash'] = 's14boss',
		['shop'] = 'tuner',
	},
	['gtr'] = {
		['name'] = 'R35 GTR',
		['brand'] = 'Nissan',
		['model'] = 'gtr',
		['price'] = 312500,
		['category'] = 'nissan',
		['hash'] = 'gtr',
		['shop'] = 'tuner',
	},
	['fnf4r344'] = {
		['name'] = 'Skyline R34',
		['brand'] = 'Nissan',
		['model'] = 'fnf4r344',
		['price'] = 135000,
		['category'] = 'fnf',
		['hash'] = 'fnf4r344',
		['shop'] = 'tuner',
	},
	['gtr50'] = {
		['name'] = 'GTR50',
		['brand'] = 'Nissan',
		['model'] = 'gtr50',
		['price'] = 247000,
		['category'] = 'nissan',
		['hash'] = 'gtr50',
		['shop'] = 'tuner',
	},
	['gtz34'] = {
		['name'] = 'R34 GTZ Edition',
		['brand'] = 'Nissan',
		['model'] = 'gtz34',
		['price'] = 247000,
		['category'] = 'nissan',
		['hash'] = 'gtz34',
		['shop'] = 'tuner',
	},
	['rmod240sx'] = {
		['name'] = '240SX Rocket Bunny',
		['brand'] = 'Nissan',
		['model'] = 'rmod240sx',
		['price'] = 157000,
		['category'] = 'nissan',
		['hash'] = 'rmod240sx',
		['shop'] = 'tuner',
	},
	['skylinec110'] = {
		['name'] = 'Skyline C110',
		['brand'] = 'Nissan',
		['model'] = 'skylinec110',
		['price'] = 77000,
		['category'] = 'nissan',
		['hash'] = 'skylinec110',
		['shop'] = 'tuner',
	},
	----PAGANI
	['bc'] = {
		['name'] = 'Huayra',
		['brand'] = 'Pagani',
		['model'] = 'bc',
		['price'] = 2865000,
		['category'] = 'super',
		['hash'] = 'bc',
		['shop'] = 'luxury',
	},
	['imola'] = {
		['name'] = 'Huayra Imola',
		['brand'] = 'Pagani',
		['model'] = 'imola',
		['price'] = 286500,
		['category'] = 'pagani',
		['hash'] = 'imola',
		['shop'] = 'tuner',
	},
	----PEUGEOT
	['205'] = {
		['name'] = '205 GTI',
		['brand'] = 'Peugeot',
		['model'] = '205',
		['price'] = 77000,
		['category'] = 'peugeot',
		['hash'] = '205',
		['shop'] = 'tuner',
	},
	----PONTIAC
	['rr69gto'] = {
		['name'] = '69 GTO',
		['brand'] = 'Pontiac',
		['model'] = 'rr69gto',
		['price'] = 2795000,
		['category'] = 'pontiac',
		['hash'] = 'rr69gto',
		['shop'] = 'tuner',
	},
	----PORSCHE
	['caymank'] = {
		['name'] = 'Cayman Wide Body',
		['brand'] = 'Porsche',
		['model'] = 'caymank',
		['price'] = 2795000,
		['category'] = 'porsche',
		['hash'] = 'caymank',
		['shop'] = 'tuner',
	},
	['panamera17turbo'] = {
		['name'] = 'Panamera Turbo 2017',
		['brand'] = 'Porsche',
		['model'] = 'panamera17turbo',
		['price'] = 2795000,
		['category'] = 'porsche',
		['hash'] = 'panamera17turbo',
		['shop'] = 'tuner',
	},
	['por930'] = {
		['name'] = '930 Turbo',
		['brand'] = 'Porsche',
		['model'] = 'por930',
		['price'] = 2635000,
		['category'] = 'porsche',
		['hash'] = 'por930',
		['shop'] = 'tuner',
	},
	['pgt322'] = {
		['name'] = '911 GT3',
		['brand'] = 'Porsche',
		['model'] = 'pgt322',
		['price'] = 2935000,
		['category'] = 'porsche',
		['hash'] = 'pgt322',
		['shop'] = 'tuner',
	},
	['cgt'] = {
		['name'] = 'Carrera GT',
		['brand'] = 'Porsche',
		['model'] = 'cgt',
		['price'] = 3835000,
		['category'] = 'porsche',
		['hash'] = 'cgt',
		['shop'] = 'tuner',
	},
	['356ac'] = {
		['name'] = '356 AC',
		['brand'] = 'Porsche',
		['model'] = '356ac',
		['price'] = 277000,
		['category'] = 'porcshe',
		['hash'] = '356ac',
		['shop'] = 'tuner',
	},
	['boxterlb'] = {
		['name'] = 'Boxter LB',
		['brand'] = 'Porsche',
		['model'] = 'boxterlb',
		['price'] = 1370000,
		['category'] = 'super',
		['hash'] = 'boxterlb',
		['shop'] = 'luxury',
	},
	['macan'] = {
		['name'] = 'Macan',
		['brand'] = 'Porsche',
		['model'] = 'macan',
		['price'] = 137000,
		['category'] = 'porcshe',
		['hash'] = 'macan',
		['shop'] = 'tuner',
	},
	['p944'] = {
		['name'] = '944 Drift',
		['brand'] = 'Porsche',
		['model'] = 'p944',
		['price'] = 137000,
		['category'] = 'porcshe',
		['hash'] = 'p944',
		['shop'] = 'tuner',
	},
	['por718gt4'] = {
		['name'] = '718 GT4',
		['brand'] = 'Porsche',
		['model'] = 'por718gt4',
		['price'] = 147000,
		['category'] = 'porcshe',
		['hash'] = 'por718gt4',
		['shop'] = 'tuner',
	},
	['SingerDLS'] = {
		['name'] = '911 Singer',
		['brand'] = 'Porsche',
		['model'] = 'SingerDLS',
		['price'] = 347000,
		['category'] = 'porcshe',
		['hash'] = 'SingerDLS',
		['shop'] = 'tuner',
	},
	----Land ROVER
	['lrvelar'] = {
		['name'] = 'Irvelar',
		['brand'] = 'Land Rover',
		['model'] = 'lrvelar',
		['price'] = 147000,
		['category'] = 'landrover',
		['hash'] = 'lrvelar',
		['shop'] = 'tuner',
	},
	['cddefender'] = {
		['name'] = 'Defender',
		['brand'] = 'Land Rover',
		['model'] = 'cddefender',
		['price'] = 147000,
		['category'] = 'landrover',
		['hash'] = 'cddefender',
		['shop'] = 'tuner',
	},
	['rr12'] = {
		['name'] = 'Range Rover Sport',
		['brand'] = 'Land Rover',
		['model'] = 'rr12',
		['price'] = 87000,
		['category'] = 'landrover',
		['hash'] = 'rr12',
		['shop'] = 'tuner',
	},
	['rr14'] = {
		['name'] = 'Range Rover',
		['brand'] = 'Land Rover',
		['model'] = 'rr14',
		['price'] = 299000,
		['category'] = 'landrover',
		['hash'] = 'rr14',
		['shop'] = 'tuner',
	},
	----RENAULT
	['cliors'] = {
		['name'] = 'Clio RS',
		['brand'] = 'Renault',
		['model'] = 'cliors',
		['price'] = 750000,
		['category'] = 'super',
		['hash'] = 'cliors',
		['shop'] = 'pdm',
	},
	['clio'] = {
		['name'] = 'Clio',
		['brand'] = 'Renault',
		['model'] = 'clio',
		['price'] = 27000,
		['category'] = 'renault',
		['hash'] = 'clio',
		['shop'] = 'tuner',
	},
	----ROLLSROYCE
	['cullinann'] = {
		['name'] = 'Cullinan Wide Body',
		['brand'] = 'Rolls Royce',
		['model'] = 'cullinann',
		['price'] = 157000,
		['category'] = 'rollsroyce',
		['hash'] = 'cullinann',
		['shop'] = 'tuner',
	},
	['chrolls'] = {
		['name'] = 'Cullinan',
		['brand'] = 'Rolls Royce',
		['model'] = 'chrolls',
		['price'] = 157000,
		['category'] = 'rollsroyce',
		['hash'] = 'chrolls',
		['shop'] = 'tuner',
	},
	['silver67'] = {
		['name'] = 'Silver 67',
		['brand'] = 'Rolls Royce',
		['model'] = 'silver67',
		['price'] = 357000,
		['category'] = 'rollsroyce',
		['hash'] = 'silver67',
		['shop'] = 'tuner',
	},
	['wraith'] = {
		['name'] = 'Wraith',
		['brand'] = 'Rolls Royce',
		['model'] = 'wraith',
		['price'] = 257000,
		['category'] = 'rollsroyce',
		['hash'] = 'wraith',
		['shop'] = 'tuner',
	},
	----SUBARU
	['wrx'] = {
		['name'] = 'WRX STi Custom',
		['brand'] = 'Subaru',
		['model'] = 'wrx',
		['price'] = 3155000,
		['category'] = 'subaru',
		['hash'] = 'wrx',
		['shop'] = 'tuner',
	},
	['22b'] = {
		['name'] = 'WRX STi',
		['brand'] = 'Subaru',
		['model'] = '22b',
		['price'] = 3155000,
		['category'] = 'subaru',
		['hash'] = '22b',
		['shop'] = 'tuner',
	},
	['brz'] = {
		['name'] = 'BRZ Rocket Bunny',
		['brand'] = 'Subaru',
		['model'] = 'brz',
		['price'] = 127000,
		['category'] = 'subaru',
		['hash'] = 'brz',
		['shop'] = 'tuner',
	},
	['subwrx'] = {
		['name'] = 'WRX STi',
		['brand'] = 'Subaru',
		['model'] = 'subwrx',
		['price'] = 2855000,
		['category'] = 'subaru',
		['hash'] = 'subwrx',
		['shop'] = 'tuner',
	},
	['wrx15'] = {
		['name'] = '15 Impreza WRX',
		['brand'] = 'Subaru',
		['model'] = 'wrx15',
		['price'] = 327000,
		['category'] = 'sports',
		['hash'] = 'wrx15',
		['shop'] = 'pdm',
	},
	----TOYOTA
	['zupra2'] = {
		['name'] = 'Supra Wide Custom',
		['brand'] = 'Toyota',
		['model'] = 'zupra2',
		['price'] = 175000,
		['category'] = 'sports',
		['hash'] = 'zupra2',
		['shop'] = 'custom',
	},
	['tacomaks'] = {
		['name'] = 'Tacoma',
		['brand'] = 'Toyota',
		['model'] = 'tacomaks',
		['price'] = 175000,
		['category'] = 'toyota',
		['hash'] = 'tacomaks',
		['shop'] = 'tuner',
	},
	['crownbp'] = {
		['name'] = 'Crown Custom',
		['brand'] = 'Toyota',
		['model'] = 'crownbp',
		['price'] = 175000,
		['category'] = 'toyota',
		['hash'] = 'crownbp',
		['shop'] = 'tuner',
	},
	['a90e'] = {
		['name'] = 'Supra A90',
		['brand'] = 'Toyota',
		['model'] = 'a90e',
		['price'] = 175000,
		['category'] = 'toyota',
		['hash'] = 'a90e',
		['shop'] = 'tuner',
	},
	['ae86'] = {
		['name'] = 'AE86',
		['brand'] = 'Toyota',
		['model'] = 'ae86',
		['price'] = 175000,
		['category'] = 'toyota',
		['hash'] = 'ae86',
		['shop'] = 'tuner',
	},
	['a80'] = {
		['name'] = 'Supra A80',
		['brand'] = 'Toyota',
		['model'] = 'a80',
		['price'] = 275000,
		['category'] = 'toyota',
		['hash'] = 'a80',
		['shop'] = 'tuner',
	},
	['326p'] = {
		['name'] = 'GT86 326power',
		['brand'] = 'Toyota',
		['model'] = '326p',
		['price'] = 225000,
		['category'] = 'toyota',
		['hash'] = '326p',
		['shop'] = 'tuner',
	},
	['lc100'] = {
		['name'] = 'Landcruiser',
		['brand'] = 'Toyota',
		['model'] = 'lc100',
		['price'] = 175000,
		['category'] = 'toyota',
		['hash'] = 'lc100',
		['shop'] = 'tuner',
	},
	['cam8tun'] = {
		['name'] = 'Camry XSE',
		['brand'] = 'Toyota',
		['model'] = 'cam8tun',
		['price'] = 87000,
		['category'] = 'toyota',
		['hash'] = 'cam8tun',
		['shop'] = 'tuner',
	},
	['jzx100'] = {
		['name'] = 'Chaser',
		['brand'] = 'Toyota',
		['model'] = 'jzx100',
		['price'] = 127000,
		['category'] = 'toyota',
		['hash'] = 'jzx100',
		['shop'] = 'tuner',
	},
	['toyotasj'] = {
		['name'] = 'Land Cruiser',
		['brand'] = 'Toyota',
		['model'] = 'toyotasj',
		['price'] = 57000,
		['category'] = 'toyota',
		['hash'] = 'toyotasj',
		['shop'] = 'tuner',
	},
	----VOLKSWAGEN
	['golf75r'] = {
		['name'] = 'Golf 75R',
		['brand'] = 'Volkswagen',
		['model'] = 'golf75r',
		['price'] = 97000,
		['category'] = 'volkswagen',
		['hash'] = 'golf75r',
		['shop'] = 'tuner',
	},
	['golfmk1camber'] = {
		['name'] = 'Golf 1',
		['brand'] = 'Volkswagen',
		['model'] = 'golfmk1camber',
		['price'] = 27000,
		['category'] = 'volkswagen',
		['hash'] = 'golfmk1camber',
		['shop'] = 'tuner',
	},
	['golfp'] = {
		['name'] = 'Golf 7 Pandem',
		['brand'] = 'Volkswagen',
		['model'] = 'golfp',
		['price'] = 87000,
		['category'] = 'volkswagen',
		['hash'] = 'golfp',
		['shop'] = 'tuner',
	},
	----VOLVO
	['v242'] = {
		['name'] = 'V242',
		['brand'] = 'Volvo',
		['model'] = 'v242',
		['price'] = 1450000,
		['category'] = 'volvo',
		['hash'] = 'v242',
		['shop'] = 'tuner',
	},
	['s60pole'] = {
		['name'] = 'S60',
		['brand'] = 'Volvo',
		['model'] = 's60pole',
		['price'] = 47000,
		['category'] = 'volvo',
		['hash'] = 's60pole',
		['shop'] = 'tuner',
	},
	['volvo145'] = {
		['name'] = '145',
		['brand'] = 'Volvo',
		['model'] = 'volvo145',
		['price'] = 37000,
		['category'] = 'volvo',
		['hash'] = 'volvo145',
		['shop'] = 'tuner',
	},
	['volvo850r'] = {
		['name'] = '850R',
		['brand'] = 'Volvo',
		['model'] = 'volvo850r',
		['price'] = 57000,
		['category'] = 'volvo',
		['hash'] = 'volvo850r',
		['shop'] = 'tuner',
	},
	['volvoiron'] = {
		['name'] = 'Sport Truck',
		['brand'] = 'Volvo',
		['model'] = 'volvoiron',
		['price'] = 357000,
		['category'] = 'volvo',
		['hash'] = 'volvoiron',
		['shop'] = 'tuner',
	},
	-- NoPixel Vehicles
	['amels200'] = {
		['name'] = 'Luxury Yacht (insane)',
		['brand'] = 'ARP',
		['model'] = 'amels200',
		['price'] = 14500000,
		['category'] = 'water',
		['hash'] = 'amels200',
		['shop'] = 'tuner',
	},
	['yacht2'] = {
		['name'] = 'Luxury Yacht (small)',
		['brand'] = 'ARP',
		['model'] = 'yacht2',
		['price'] = 24500000,
		['category'] = 'water',
		['hash'] = 'yacht2',
		['shop'] = 'tuner',
	},
	['peanut'] = {
		['name'] = 'Peanut',
		['brand'] = 'Weeny',
		['model'] = 'peanut',
		['price'] = 855000,
		['category'] = 'event',
		['hash'] = 'peanut',
		['shop'] = 'tuner',
	},
	['potty'] = {
		['name'] = 'Potty',
		['brand'] = 'Flywheels',
		['model'] = 'potty',
		['price'] = 155000,
		['category'] = 'event',
		['hash'] = 'potty',
		['shop'] = 'tuner',
	},
	['robin'] = {
		['name'] = 'Robin',
		['brand'] = 'Reliant',
		['model'] = 'robin',
		['price'] = 855000,
		['category'] = 'event',
		['hash'] = 'robin',
		['shop'] = 'tuner',
	},
	['snowbike'] = {
		['name'] = 'Snowbike',
		['brand'] = 'Nagasaki',
		['model'] = 'snowbike',
		['price'] = 145000,
		['category'] = 'bikes',
		['hash'] = 'snowbike',
		['shop'] = 'tuner',
	},
	['zr3806str'] = {
		['name'] = 'ZR380 6STR',
		['brand'] = '6STR',
		['model'] = 'zr3806str',
		['price'] = 955000,
		['category'] = '6str',
		['hash'] = 'zr3806str',
		['shop'] = 'tuner',
	},
	['z2879'] = {
		['name'] = 'Z28 Camaro 1979',
		['brand'] = 'Chevrolet',
		['model'] = 'z2879',
		['price'] = 1565000,
		['category'] = 'chevrolet',
		['hash'] = 'z2879',
		['shop'] = 'tuner',
	},
	['z190custom'] = {
		['name'] = '190z',
		['brand'] = 'Karin',
		['model'] = 'z190custom',
		['price'] = 565000,
		['category'] = 'local',
		['hash'] = 'z190custom',
		['shop'] = 'tuner',
	},
	['yosemite6str'] = {
		['name'] = 'Yosemite 6STR',
		['brand'] = '6STR',
		['model'] = 'yosemite6str',
		['price'] = 1565000,
		['category'] = '6str',
		['hash'] = 'yosemite6str',
		['shop'] = 'tuner',
	},
	['vuwashington'] = {
		['name'] = 'VU Washington',
		['brand'] = 'Dundreary',
		['model'] = 'vuwashington',
		['price'] = 250000,
		['category'] = 'local',
		['hash'] = 'vuwashington',
		['shop'] = 'tuner',
	},
	['vustretch'] = {
		['name'] = 'VU Stretch',
		['brand'] = 'Albany',
		['model'] = 'vustretch',
		['price'] = 250000,
		['category'] = 'local',
		['hash'] = 'vustretch',
		['shop'] = 'tuner',
	},
	['emsaw139'] = {
		['name'] = 'EMS Helicopter',
		['brand'] = 'Hospital',
		['model'] = 'emsaw139',
		['price'] = 13850000,
		['category'] = 'air',
		['hash'] = 'emsaw139',
		['shop'] = 'tuner',
	},
	['fpiuk'] = {
		['name'] = 'EMS Explorer',
		['brand'] = 'Ford',
		['model'] = 'fpiuk',
		['price'] = 35000,
		['category'] = 'EMS',
		['hash'] = 'fpiuk',
		['shop'] = 'ambulance',
	},
	['lguardmesa'] = {
		['name'] = 'EMS Jeep',
		['brand'] = 'Ford',
		['model'] = 'lguardmesa',
		['price'] = 35000,
		['category'] = 'EMS',
		['hash'] = 'lguardmesa',
		['shop'] = 'ambulance',
	},
	['emsnspeedo'] = {
		['name'] = 'EMS Vehicle',
		['brand'] = 'Hospital',
		['model'] = 'emsnspeedo',
		['price'] = 35000,
		['category'] = 'EMS',
		['hash'] = 'emsnspeedo',
		['shop'] = 'ambulance',
	},
	['dodgeEMS'] = {
		['name'] = 'EMS Charger',
		['brand'] = 'Hospital',
		['model'] = 'dodgeEMS',
		['price'] = 35000,
		['category'] = 'EMS',
		['hash'] = 'dodgeEMS',
		['shop'] = 'ambulance',
	},
	['polas350'] = {
		['name'] = 'AS350 Heli',
		['brand'] = 'Police',
		['model'] = 'polas350',
		['price'] = 13850000,
		['category'] = 'air',
		['hash'] = 'polas350',
		['shop'] = 'tuner',
	},
	['unicycle'] = {
		['name'] = 'Unicycle',
		['brand'] = 'Yes',
		['model'] = 'unicycle',
		['price'] = 35000,
		['category'] = 'cycles',
		['hash'] = 'unicycle',
		['shop'] = 'pdm',
	},
	['ucwashington'] = {
		['name'] = 'Undercover Washington',
		['brand'] = 'Albany',
		['model'] = 'ucwashington',
		['price'] = 35000,
		['category'] = 'undercover',
		['hash'] = 'ucwashington',
		['shop'] = 'police',
	},
	['ucrancher'] = {
		['name'] = 'Undercover Rancher',
		['brand'] = 'Declasse',
		['model'] = 'ucrancher',
		['price'] = 37000,
		['category'] = 'undercover',
		['hash'] = 'ucrancher',
		['shop'] = 'police',
	},
	['ucprimo'] = {
		['name'] = 'Undercover Primo',
		['brand'] = 'Albany',
		['model'] = 'ucprimo',
		['price'] = 42000,
		['category'] = 'undercover',
		['hash'] = 'ucprimo',
		['shop'] = 'police',
	},
	['uccoquette'] = {
		['name'] = 'Undercover Coquette',
		['brand'] = 'Inveteno',
		['model'] = 'uccoquette',
		['price'] = 170000,
		['category'] = 'undercover',
		['hash'] = 'uccoquette',
		['shop'] = 'police',
	},
	['uccomet'] = {
		['name'] = 'Undercover Comet',
		['brand'] = 'Pfister',
		['model'] = 'uccomet',
		['price'] = 180000,
		['category'] = 'undercover',
		['hash'] = 'uccomet',
		['shop'] = 'police',
	},
	['ucbuffalo'] = {
		['name'] = 'Undercover Buffalo',
		['brand'] = 'Bravado',
		['model'] = 'ucbuffalo',
		['price'] = 110000,
		['category'] = 'undercover',
		['hash'] = 'ucbuffalo',
		['shop'] = 'police',
	},
	['ucbanshee'] = {
		['name'] = 'Undercover Banshee',
		['brand'] = 'Bravado',
		['model'] = 'ucbanshee',
		['price'] = 175000,
		['category'] = 'undercover',
		['hash'] = 'ucbanshee',
		['shop'] = 'police',
	},
	['ucballer'] = {
		['name'] = 'Undercover Baller',
		['brand'] = 'Gallivanter',
		['model'] = 'ucballer',
		['price'] = 130000,
		['category'] = 'undercover',
		['hash'] = 'ucballer',
		['shop'] = 'police',
	},
	['tsgr20'] = {
		['name'] = 'Supra A90',
		['brand'] = 'Toyota',
		['model'] = 'tsgr20',
		['price'] = 2999999,
		['category'] = 'toyota',
		['hash'] = 'tsgr20',
		['shop'] = 'tuner',
	},	
	['tessaoracle'] = {
		['name'] = 'Driving School Oracle',
		['brand'] = 'Ubermacht',
		['model'] = 'tessaoracle',
		['price'] = 22000,
		['category'] = 'work',
		['hash'] = 'tessaoracle',
		['shop'] = 'pdm',
	},
	['tempesta2'] = {
		['name'] = 'Tempesta',
		['brand'] = 'Lamborghini',
		['model'] = 'tempesta2',
		['price'] = 2955000,
		['category'] = 'super',
		['hash'] = 'tempesta2',
		['shop'] = 'luxury',
	},
	['taxirooster'] = {
		['name'] = 'Taxi',
		['brand'] = 'Vapid',
		['model'] = 'taxirooster',
		['price'] = 35000,
		['category'] = 'work',
		['hash'] = 'taxirooster',
		['shop'] = 'pdm',
	},
	['sultanrsv8'] = {
		['name'] = 'Sultan RSV8',
		['brand'] = 'Karin',
		['model'] = 'sultanrsv8',
		['price'] = 1666000,
		['category'] = 'local',
		['hash'] = 'sultanrsv8',
		['shop'] = 'tuner',
	},
	['stratumc'] = {
		['name'] = 'Stratum C',
		['brand'] = 'Zirconium',
		['model'] = 'stratumc',
		['price'] = 655000,
		['category'] = 'local',
		['hash'] = 'stratumc',
		['shop'] = 'tuner',
	},
	['skart'] = {
		['name'] = 'Shopping Kart',
		['brand'] = 'Nagasaki',
		['model'] = 'skart',
		['price'] = 125000,
		['category'] = 'event',
		['hash'] = 'skart',
		['shop'] = 'tuner',
	},
	['sentinelsg4'] = {
		['name'] = 'Sentinel',
		['brand'] = 'Übermacht',
		['model'] = 'sentinelsg4',
		['price'] = 875000,
		['category'] = 'local',
		['hash'] = 'sentinelsg4',
		['shop'] = 'tuner',
	},
	['schwarzer2'] = {
		['name'] = 'Schwartzer 6STR',
		['brand'] = 'Benefactor',
		['model'] = 'schwarzer2',
		['price'] = 870000,
		['category'] = '6str',
		['hash'] = 'schwarzer2',
		['shop'] = 'tuner',
	},
	['savanna'] = {
		['name'] = 'Savanna',
		['brand'] = 'Coil',
		['model'] = 'savanna',
		['price'] = 4200000,
		['category'] = 'event',
		['hash'] = 'savanna',
		['shop'] = 'tuner',
	},
	['ruiner6str'] = {
		['name'] = 'Ruiner 6STR',
		['brand'] = 'Imponte',
		['model'] = 'ruiner6str',
		['price'] = 450000,
		['category'] = '6str',
		['hash'] = 'ruiner6str',
		['shop'] = 'tuner',
	},
	['revolution6str2'] = {
		['name'] = 'Revolution 6STR',
		['brand'] = 'Maibatsu',
		['model'] = 'revolution6str2',
		['price'] = 599000,
		['category'] = 'local',
		['hash'] = 'revolution6str2',
		['shop'] = 'tuner',
	},

	['raid'] = {
		['name'] = 'RAID Challenger',
		['brand'] = 'Dodge',
		['model'] = 'raid',
		['price'] = 1999999,
		['category'] = 'dodge',
		['hash'] = 'raid',
		['shop'] = 'tuner',
	},
	['primoard'] = {
		['name'] = 'Primo ARD',
		['brand'] = 'Albany',
		['model'] = 'primoard',
		['price'] = 855000,
		['category'] = 'local',
		['hash'] = 'primoard',
		['shop'] = 'tuner',
	},
	['polfegway'] = {
		['name'] = 'Fegway',
		['brand'] = 'Nagasaki',
		['model'] = 'polfegway',
		['price'] = 25000,
		['category'] = 'polbike',
		['hash'] = 'polfegway',
		['shop'] = 'police',
	},
	['pigalle6str'] = {
		['name'] = 'Pigalle 6STR',
		['brand'] = 'Lampadati 6STR',
		['model'] = 'pigalle6str',
		['price'] = 555000,
		['category'] = '6str',
		['hash'] = 'pigalle6str',
		['shop'] = 'tuner',
	},
	['penumbra3'] = {
		['name'] = 'Penumbra 3',
		['brand'] = 'Maibatsu',
		['model'] = 'penumbra3',
		['price'] = 655000,
		['category'] = 'local',
		['hash'] = 'penumbra3',
		['shop'] = 'tuner',
	},
	['payneschaf'] = {
		['name'] = 'Schafter 6STR',
		['brand'] = '6STR',
		['model'] = 'payneschaf',
		['price'] = 1595000,
		['category'] = '6str',
		['hash'] = 'payneschaf',
		['shop'] = 'tuner',
	},
	['npwheelchair'] = {
		['name'] = 'Wheelchair',
		['brand'] = 'Pillbox',
		['model'] = 'npwheelchair',
		['price'] = 1500,
		['category'] = 'event',
		['hash'] = 'npwheelchair',
		['shop'] = 'tuner',
	},
	['npolvic'] = {
		['name'] = 'CVPI',
		['brand'] = 'Ford',
		['model'] = 'npolvic',
		['price'] = 15000,
		['category'] = 'standard',
		['hash'] = 'npolvic',
		['shop'] = 'police',
	},
	['pdvj'] = {
		['name'] = "Viper Interceptor",
		['brand'] = "PD",
		['model'] = "pdvj",
		['price'] = 100000,
		['category'] = 'interceptor',
		['hash'] = 'pdvj',
		['shop'] = 'police',
	},
	['2021sil'] = {
		['name'] = "Silverado",
		['brand'] = "PD",
		['model'] = "2021sil",
		['price'] = 100000,
		['category'] = 'standard',
		['hash'] = '2021sil',
		['shop'] = 'police',
	},
	['npolvette'] = { 
		['name'] = 'Corvette Interceptor',
		['brand'] = 'Chevrolet',
		['model'] = 'npolvette',
		['price'] = 105000,
		['category'] = 'interceptor',
		['hash'] = 'npolvette',
		['shop'] = 'police',
	},
	['tahoe71'] = { 
		['name'] = 'Tahoe 71',
		['brand'] = 'Chevrolet',
		['model'] = 'tahoe71',
		['price'] = 35000,
		['category'] = 'standard',
		['hash'] = 'tahoe71',
		['shop'] = 'police',
	},
	['grpd3'] = {
		['name'] = 'F150',
		['brand'] = 'Police',
		['model'] = 'grpd3',
		['price'] = 50000,
		['category'] = 'standard',
		['hash'] = 'grpd3',
		['shop'] = 'police',
	},
	['npolstang'] = {
		['name'] = 'Mustang Interceptor',
		['brand'] = 'Ford',
		['model'] = 'npolstang',
		['price'] = 50000,
		['category'] = 'interceptor',
		['hash'] = 'npolstang',
		['shop'] = 'police',
	},
	['npolretinue'] = {
		['name'] = 'Retinue',
		['brand'] = 'Vapid',
		['model'] = 'npolretinue',
		['price'] = 1200000,
		['category'] = 'interceptor',
		['hash'] = 'npolretinue',
		['shop'] = 'police',
	},
	['npolmm'] = {
		['name'] = 'Highway',
		['brand'] = 'Nagasaki',
		['model'] = 'npolmm',
		['price'] = 35000,
		['category'] = 'polbike',
		['hash'] = 'npolmm',
		['shop'] = 'police',
	},
	['npolexp'] = {
		['name'] = 'Explorer',
		['brand'] = 'Ford',
		['model'] = 'npolexp',
		['price'] = 60000,
		['category'] = 'standard',
		['hash'] = 'npolexp',
		['shop'] = 'police',
	},
	['npolcoach'] = {
		['name'] = 'Dpt. Corrections Coach',
		['brand'] = 'Bus',
		['model'] = 'npolcoach',
		['price'] = 25000,
		['category'] = 'standard',
		['hash'] = 'npolcoach',
		['shop'] = 'police',
	},
	['npolchar'] = {
		['name'] = 'Charger Interceptor',
		['brand'] = 'Dodge',
		['model'] = 'npolchar',
		['price'] = 85000,
		['category'] = 'interceptor',
		['hash'] = 'npolchar',
		['shop'] = 'police',
	},
	['npolchal'] = {
		['name'] = 'Demon Challenger Interceptor',
		['brand'] = 'Dodge',
		['model'] = 'npolchal',
		['price'] = 115000,
		['category'] = 'interceptor',
		['hash'] = 'npolchal',
		['shop'] = 'police',
	},
	['npolblazer'] = {
		['name'] = 'Park Ranger ATV',
		['brand'] = 'Nagasaki',
		['model'] = 'npolblazer',
		['price'] = 1000,
		['category'] = 'polbike',
		['hash'] = 'npolblazer',
		['shop'] = 'police',
	},
	['newsvan'] = {
		['name'] = 'News Van',
		['brand'] = 'Bravado',
		['model'] = 'newsvan',
		['price'] = 10000,
		['category'] = 'work',
		['hash'] = 'newsvan',
		['shop'] = 'pdm',
	},
	['newsmav'] = {
		['name'] = 'News Maverick',
		['brand'] = 'AIR',
		['model'] = 'newsmav',
		['price'] = 2000000,
		['category'] = 'air',
		['hash'] = 'newsmav',
		['shop'] = 'tuner',
	},
	['ladybird6str'] = {
		['name'] = 'Ladybird 6STR',
		['brand'] = '6STR',
		['model'] = 'ladybird6str',
		['price'] = 2625000,
		['category'] = 'local',
		['hash'] = 'ladybird6str',
		['shop'] = 'tuner',
	},
	['kart'] = {
		['name'] = 'Go-Kart',
		['brand'] = '6STR',
		['model'] = 'kart',
		['price'] = 125000,
		['category'] = 'event',
		['hash'] = 'kart',
		['shop'] = 'tuner',
	},
	['hustler6str'] = {
		['name'] = 'Hustler 6STR',
		['brand'] = 'Annis',
		['model'] = 'hustler6str',
		['price'] = 1865000,
		['category'] = '6str',
		['hash'] = 'hustler6str',
		['shop'] = 'tuner',
	},
	['hoabrawler'] = {
		['name'] = 'HOA Brawler',
		['brand'] = 'Coil',
		['model'] = 'hoabrawler',
		['price'] = 1555000,
		['category'] = 'gang',
		['hash'] = 'hoabrawler',
		['shop'] = 'tuner',
	},
	['hellion6str'] = {
		['name'] = 'Hellion 6STR',
		['brand'] = 'Annis',
		['model'] = 'hellion6str',
		['price'] = 1365000,
		['category'] = '6str',
		['hash'] = 'hellion6str',
		['shop'] = 'tuner',
	},
	['gauntlet6str'] = {							
		['name'] = 'Gauntlet 6STR',
		['brand'] = 'Bravado',
		['model'] = 'gauntlet6str',
		['price'] = 739000,
		['category'] = '6str',
		['hash'] = 'gauntlet6str',
		['shop'] = 'tuner',
	},
	['aamx'] = {
		['name'] = 'Javelin AMX',
		['brand'] = 'AMC',
		['model'] = 'aamx',
		['price'] = 1745000,
		['category'] = 'amc',
		['hash'] = 'aamx',
		['shop'] = 'tuner',
	},
	['deluxo6str'] = {
		['name'] = 'Deluxo 6STR',
		['brand'] = 'Imponte',
		['model'] = 'deluxo6str',
		['price'] = 2925000,
		['category'] = '6str',
		['hash'] = 'deluxo6str',
		['shop'] = 'tuner',
	},
	['deluxo2'] = {
		['name'] = 'Deluxo 2',
		['brand'] = 'Imponte',
		['model'] = 'deluxo2',
		['price'] = 1025000,
		['category'] = 'local',
		['hash'] = 'deluxo2',
		['shop'] = 'tuner',
	},
	['dabneon'] = {
		['name'] = 'Neon',
		['brand'] = 'Pfister',
		['model'] = 'dabneon',
		['price'] = 675000,
		['category'] = 'local',
		['hash'] = 'dabneon',
		['shop'] = 'tuner',
	},
	['chillybin'] = {
		['name'] = 'Chillybin',
		['brand'] = 'Housos',
		['model'] = 'chillybin',
		['price'] = 255000,
		['category'] = 'event',
		['hash'] = 'chillybin',
		['shop'] = 'tuner',
	},
	['cargobob2'] = {
		['name'] = 'Cargobob 2',
		['brand'] = 'AIR',
		['model'] = 'cargobob2',
		['price'] = 4000000,
		['category'] = 'air',
		['hash'] = 'cargobob2',
		['shop'] = 'tuner',
	},
	['bt62r'] = {
		['name'] = 'BT62R',
		['brand'] = 'Brabham',
		['model'] = 'bt62r',
		['price'] = 3350000,
		['category'] = 'brabham',
		['hash'] = 'bt62r',
		['shop'] = 'tuner',
	},
	['bluecunt'] = {
		['name'] = 'GTS',
		['brand'] = 'Holden',
		['model'] = 'bluecunt',
		['price'] = 1950000,
		['category'] = 'holden',
		['hash'] = 'bluecunt',
		['shop'] = 'tuner',
	},
	['blimp'] = {
		['name'] = 'Blimp',
		['brand'] = 'AIR',
		['model'] = 'blimp',
		['price'] = 500000,
		['category'] = 'event',
		['hash'] = 'blimp',
		['shop'] = 'tuner',
	},
	['bcat'] = {
		['name'] = 'Bearcat',
		['brand'] = 'Vapid',
		['model'] = 'bcat',
		['price'] = 400000,
		['category'] = 'heavy',
		['hash'] = 'bcat',
		['shop'] = 'police',
	},
	['rhino'] = {
		['name'] = 'Rhino',
		['brand'] = 'M1A1',
		['model'] = 'rhino',
		['price'] = 450000,
		['category'] = 'heavy',
		['hash'] = 'rhino',
		['shop'] = 'police',
	},
	['banshee2fix'] = {
		['name'] = 'Banshee Tuner',
		['brand'] = 'Bravado',
		['model'] = 'banshee2fix',
		['price'] = 865000,
		['category'] = 'local',
		['hash'] = 'banshee2fix',
		['shop'] = 'tuner',
	},
	['asbo2'] = {
		['name'] = 'Asbo Tuner',
		['brand'] = 'Maxwell',
		['model'] = 'asbo2',
		['price'] = 525000,
		['category'] = 'local',
		['hash'] = 'asbo2',
		['shop'] = 'tuner',
	},
	['an225'] = {
		['name'] = 'Antonov 225 Airbus',
		['brand'] = 'Antonov',
		['model'] = 'an225',
		['price'] = 5000000,
		['category'] = 'air',
		['hash'] = 'an225',
		['shop'] = 'tuner',
	},
	----GTA VEHICLES
	['futo3'] = {							
		['name'] = 'Futo 6STR Tuner',
		['brand'] = 'Karin',
		['model'] = 'futo3',
		['price'] = 339000,
		['category'] = '6str',
		['hash'] = 'futo2',
		['shop'] = 'tuner',
	},
	['futope'] = {							
		['name'] = 'Futo Custom',
		['brand'] = 'Karin',
		['model'] = 'futope',
		['price'] = 239000,
		['category'] = '6str',
		['hash'] = 'futope',
		['shop'] = 'tuner',
	},
	['tampa5'] = {
		['name'] = 'Tampa Drift 6STR',
		['brand'] = 'Declasse',
		['model'] = 'tampa5',
		['price'] = 1555000,
		['category'] = 'drift',
		['hash'] = 'tampa5',
		['shop'] = 'tuner',
	},
	['tampax'] = {
		['name'] = 'Tampa Wide Body',
		['brand'] = 'Declasse',
		['model'] = 'tampax',
		['price'] = 1555000,
		['category'] = '6str',
		['hash'] = 'tampax',
		['shop'] = 'tuner',
	},
	['torerod'] = {
		['name'] = 'Torerod',
		['brand'] = 'Pegassi',
		['model'] = 'torerod',
		['price'] = 184000,
		['category'] = '6str',
		['hash'] = 'torerod',
		['shop'] = 'tuner',
	},
	['turismoc'] = {
		['name'] = 'Turismo Custom',
		['brand'] = 'Grotti',
		['model'] = 'turismoc',
		['price'] = 284000,
		['category'] = '6str',
		['hash'] = 'turismoc',
		['shop'] = 'tuner',
	},
	['surferd'] = {
		['name'] = 'SurferD',
		['brand'] = 'BF',
		['model'] = 'surferd',
		['price'] = 14000,
		['category'] = 'vans',
		['hash'] = 'surferd',
		['shop'] = 'pdm',
	},
	['dinghy4'] = {
		['name'] = 'Lifeguard Rescue',
		['brand'] = 'Nagasaki',
		['model'] = 'dinghy4',
		['price'] = 14000,
		['category'] = 'water',
		['hash'] = 'dinghy4',
		['shop'] = 'tuner',
	},
	['asbo'] = {
		['name'] = 'Asbo',
		['brand'] = 'Maxwell',
		['model'] = 'asbo',
		['price'] = 4000,
		['category'] = 'compacts',
		['hash'] = 'asbo',
		['shop'] = 'pdm',
	},
	['blista'] = {
		['name'] = 'Blista',
		['brand'] = 'Dinka',
		['model'] = 'blista',
		['price'] = 13000,
		['category'] = 'compacts',
		['hash'] = 'blista',
		['shop'] = 'pdm',
	},
	['brioso'] = {
		['name'] = 'Brioso R/A',
		['brand'] = 'Grotti',
		['model'] = 'brioso',
		['price'] = 20000,
		['category'] = 'compacts',
		['hash'] = 'brioso',
		['shop'] = 'pdm',
	},
	['club'] = {
		['name'] = 'Club',
		['brand'] = 'BF',
		['model'] = 'club',
		['price'] = 8000,
		['category'] = 'compacts',
		['hash'] = 'club',
		['shop'] = 'pdm',
	},
	['dilettante'] = {
		['name'] = 'Dilettante',
		['brand'] = 'Karin',
		['model'] = 'dilettante',
		['price'] = 9000,
		['category'] = 'compacts',
		['hash'] = 'dilettante',
		['shop'] = 'pdm',
	},
	['dilettante2'] = {
		['name'] = 'Driving School',
		['brand'] = 'Karin',
		['model'] = 'dilettante2',
		['price'] = 12000,
		['category'] = 'work',
		['hash'] = 'dilettante2',
		['shop'] = 'pdm',
	},
	['dilettante3'] = {
		['name'] = 'Abdul Taxi',
		['brand'] = 'Karin',
		['model'] = 'dilettante3',
		['price'] = 12000,
		['category'] = 'work',
		['hash'] = 'dilettante3',
		['shop'] = 'pdm',
	},
	['kanjo'] = {
		['name'] = 'Blista Kanjo',
		['brand'] = 'Dinka',
		['model'] = 'kanjo',
		['price'] = 12000,
		['category'] = 'compacts',
		['hash'] = 'kanjo',
		['shop'] = 'pdm',
	},
	['issi2'] = {
		['name'] = 'Issi',
		['brand'] = 'Weeny',
		['model'] = 'issi2',
		['price'] = 7000,
		['category'] = 'compacts',
		['hash'] = 'issi2',
		['shop'] = 'pdm',
	},
	['issi3'] = {
		['name'] = 'Issi Classic',
		['brand'] = 'Weeny',
		['model'] = 'issi3',
		['price'] = 5000,
		['category'] = 'compacts',
		['hash'] = 'issi3',
		['shop'] = 'pdm',
	},
	['issi4'] = {							--DLC
		['name'] = 'Issi Arena',
		['brand'] = 'Weeny',
		['model'] = 'issi4',
		['price'] = 80000,
		['category'] = 'compacts',
		['hash'] = 'issi4',
		['shop'] = 'pdm',
	},
	['issi5'] = {							--DLC
		['name'] = 'Issi Arena',
		['brand'] = 'Weeny',
		['model'] = 'issi5',
		['price'] = 80000,
		['category'] = 'compacts',
		['hash'] = 'issi5',
		['shop'] = 'pdm',
	},
	['issi6'] = {							--DLC
		['name'] = 'Issi Arena',
		['brand'] = 'Weeny',
		['model'] = 'issi6',
		['price'] = 80000,
		['category'] = 'compacts',
		['hash'] = 'issi6',
		['shop'] = 'pdm',
	},
	['panto'] = {
		['name'] = 'Panto',
		['brand'] = 'Benefactor',
		['model'] = 'panto',
		['price'] = 3200,
		['category'] = 'compacts',
		['hash'] = 'panto',
		['shop'] = 'pdm',
	},
	['prairie'] = {
		['name'] = 'Prairie',
		['brand'] = 'Bollokan',
		['model'] = 'prairie',
		['price'] = 30000,
		['category'] = 'compacts',
		['hash'] = 'prairie',
		['shop'] = 'pdm',
	},
	['rhapsody'] = {
		['name'] = 'Rhapsody',
		['brand'] = 'Declasse',
		['model'] = 'rhapsody',
		['price'] = 10000,
		['category'] = 'compacts',
		['hash'] = 'rhapsody',
		['shop'] = 'pdm',
	},
	['brioso2'] = {
		['name'] = 'Brioso 300',
		['brand'] = 'Grotti',
		['model'] = 'brioso2',
		['price'] = 12000,
		['category'] = 'compacts',
		['hash'] = 'brioso2',
		['shop'] = 'pdm',
	},
	['weevil'] = {
		['name'] = 'Weevil',
		['brand'] = 'BF',
		['model'] = 'weevil',
		['price'] = 9000,
		['category'] = 'compacts',
		['hash'] = 'weevil',
		['shop'] = 'pdm',
	},
	--- Coupes
	['cogcabrio'] = {
		['name'] = 'Cognoscenti Cabrio',
		['brand'] = 'Enus',
		['model'] = 'cogcabrio',
		['price'] = 30000,
		['category'] = 'coupes',
		['hash'] = 'cogcabrio',
		['shop'] = 'pdm',
	},
	['exemplar'] = {
		['name'] = 'Exemplar',
		['brand'] = 'Dewbauchee',
		['model'] = 'exemplar',
		['price'] = 40000,
		['category'] = 'coupes',
		['hash'] = 'exemplar',
		['shop'] = 'pdm',
	},
	['felon'] = {
		['name'] = 'Felon',
		['brand'] = 'Lampadati',
		['model'] = 'felon',
		['price'] = 31000,
		['category'] = 'coupes',
		['hash'] = 'felon',
		['shop'] = 'pdm',
	},
	['felon2'] = {
		['name'] = 'Felon GT',
		['brand'] = 'Lampadati',
		['model'] = 'felon2',
		['price'] = 37000,
		['category'] = 'coupes',
		['hash'] = 'felon2',
		['shop'] = 'pdm',
	},
	['jackal'] = {
		['name'] = 'Jackal',
		['brand'] = 'Ocelot',
		['model'] = 'jackal',
		['price'] = 19000,
		['category'] = 'coupes',
		['hash'] = 'jackal',
		['shop'] = 'pdm',
	},
	['oracle'] = {
		['name'] = 'Oracle',
		['brand'] = 'Ubermacht',
		['model'] = 'oracle',
		['price'] = 22000,
		['category'] = 'sedans',
		['hash'] = 'oracle',
		['shop'] = 'pdm',
	},
	['oracle2'] = {
		['name'] = 'Oracle XS',
		['brand'] = 'Übermacht',
		['model'] = 'oracle2',
		['price'] = 28000,
		['category'] = 'coupes',
		['hash'] = 'oracle2',
		['shop'] = 'pdm',
	},
	['sentinel2'] = {
		['name'] = 'Sentinel',
		['brand'] = 'Übermacht',
		['model'] = 'sentinel2',
		['price'] = 30000,
		['category'] = 'coupes',
		['hash'] = 'sentinel2',
		['shop'] = 'pdm',
	},
	['sentinel'] = {
		['name'] = 'Sentinel XS',
		['brand'] = ' Übermacht',
		['model'] = 'sentinel',
		['price'] = 33000,
		['category'] = 'coupes',
		['hash'] = 'sentinel',
		['shop'] = 'pdm',
	},
	['windsor'] = {
		['name'] = 'Windsor',
		['brand'] = 'Enus',
		['model'] = 'windsor',
		['price'] = 27000,
		['category'] = 'coupes',
		['hash'] = 'windsor',
		['shop'] = 'pdm',
	},
	['windsor2'] = {
		['name'] = 'Windsor Drop',
		['brand'] = 'Enus',
		['model'] = 'windsor2',
		['price'] = 34000,
		['category'] = 'coupes',
		['hash'] = 'windsor2',
		['shop'] = 'pdm',
	},
	['zion'] = {
		['name'] = 'Zion',
		['brand'] = 'Übermacht',
		['model'] = 'zion',
		['price'] = 22000,
		['category'] = 'coupes',
		['hash'] = 'zion',
		['shop'] = 'pdm',
	},
	['zion2'] = {
		['name'] = 'Zion Cabrio',
		['brand'] = 'Übermacht',
		['model'] = 'zion2',
		['price'] = 28000,
		['category'] = 'coupes',
		['hash'] = 'zion2',
		['shop'] = 'pdm',
	},
	--- Muscle
	['blade'] = {
		['name'] = 'Blade',
		['brand'] = 'Vapid',
		['model'] = 'blade',
		['price'] = 23500,
		['category'] = 'muscle',
		['hash'] = 'blade',
		['shop'] = 'pdm',
	},
	['buccaneer'] = {
		['name'] = 'Buccaneer',
		['brand'] = 'Albany',
		['model'] = 'buccaneer',
		['price'] = 22500,
		['category'] = 'muscle',
		['hash'] = 'buccaneer',
		['shop'] = 'pdm',
	},
	['buccaneer2'] = {
		['name'] = 'Buccaneer Rider',
		['brand'] = 'Albany',
		['model'] = 'buccaneer2',
		['price'] = 24500,
		['category'] = 'muscle',
		['hash'] = 'buccaneer2',
		['shop'] = 'pdm',
	},
	['chino'] = {
		['name'] = 'Chino',
		['brand'] = 'Vapid',
		['model'] = 'chino',
		['price'] = 5000,
		['category'] = 'muscle',
		['hash'] = 'chino',
		['shop'] = 'pdm',
	},
	['chino2'] = {
		['name'] = 'Chino Luxe',
		['brand'] = 'Vapid',
		['model'] = 'chino2',
		['price'] = 8000,
		['category'] = 'muscle',
		['hash'] = 'chino2',
		['shop'] = 'pdm',
	},
	['clique'] = {							--DLC
		['name'] = 'Clique',
		['brand'] = 'Vapid',
		['model'] = 'clique',
		['price'] = 20000,
		['category'] = 'muscle',
		['hash'] = 'clique',
		['shop'] = 'pdm',
	},
	['coquette3'] = {
		['name'] = 'Coquette BlackFin',
		['brand'] = 'Invetero',
		['model'] = 'coquette3',
		['price'] = 180000,
		['category'] = 'muscle',
		['hash'] = 'coquette3',
		['shop'] = 'pdm',
	},
	['deviant'] = {							--DLC
		['name'] = 'Deviant',
		['brand'] = 'Schyster',
		['model'] = 'deviant',
		['price'] = 70000,
		['category'] = 'muscle',
		['hash'] = 'deviant',
		['shop'] = 'pdm',
	},
	['dominator'] = {
		['name'] = 'Dominator',
		['brand'] = 'Vapid',
		['model'] = 'dominator',
		['price'] = 62500,
		['category'] = 'muscle',
		['hash'] = 'dominator',
		['shop'] = 'pdm',
	},
	['dominator2'] = {
		['name'] = 'Pißwasser Dominator',
		['brand'] = 'Vapid',
		['model'] = 'dominator2',
		['price'] = 50000,
		['category'] = 'muscle',
		['hash'] = 'dominator2',
		['shop'] = 'pdm',
	},
	['dominator3'] = {
		['name'] = 'Dominator GTX',
		['brand'] = 'Vapid',
		['model'] = 'dominator3',
		['price'] = 70000,
		['category'] = 'muscle',
		['hash'] = 'dominator3',
		['shop'] = 'pdm',
	},
	['dominator7'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Dominator ASP',
		['brand'] = 'Vapid',
		['model'] = 'dominator7',
		['price'] = 110000,
		['category'] = 'muscle',
		['hash'] = 'dominator7',
		['shop'] = 'pdm',
	},
	['dominator8'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Dominator GTT',
		['brand'] = 'Vapid',
		['model'] = 'dominator8',
		['price'] = 80000,
		['category'] = 'muscle',
		['hash'] = 'dominator8',
		['shop'] = 'pdm',
	},
	['dukes'] = {
		['name'] = 'Dukes',
		['brand'] = 'Imponte',
		['model'] = 'dukes',
		['price'] = 23500,
		['category'] = 'muscle',
		['hash'] = 'dukes',
		['shop'] = 'pdm',
	},
	['dukes2'] = {
		['name'] = 'Dukes Nightrider',
		['brand'] = 'Imponte',
		['model'] = 'dukes2',
		['price'] = 60000,
		['category'] = 'muscle',
		['hash'] = 'dukes2',
		['shop'] = 'pdm',
	},
	['dukes3'] = {
		['name'] = 'Beater Dukes',
		['brand'] = 'Imponte',
		['model'] = 'dukes3',
		['price'] = 45000,
		['category'] = 'muscle',
		['hash'] = 'dukes3',
		['shop'] = 'pdm',
	},
	['faction'] = {
		['name'] = 'Faction',
		['brand'] = 'Willard',
		['model'] = 'faction',
		['price'] = 17000,
		['category'] = 'muscle',
		['hash'] = 'faction',
		['shop'] = 'pdm',
	},
	['faction2'] = {
		['name'] = 'Faction Rider',
		['brand'] = 'Willard',
		['model'] = 'faction2',
		['price'] = 19000,
		['category'] = 'muscle',
		['hash'] = 'faction2',
		['shop'] = 'pdm',
	},
	['faction3'] = {
		['name'] = 'Faction Custom Donk',
		['brand'] = 'Willard',
		['model'] = 'faction3',
		['price'] = 35000,
		['category'] = 'muscle',
		['hash'] = 'faction3',
		['shop'] = 'pdm',
	},
	['ellie'] = {
		['name'] = 'Ellie',
		['brand'] = 'Vapid',
		['model'] = 'ellie',
		['price'] = 42250,
		['category'] = 'muscle',
		['hash'] = 'ellie',
		['shop'] = 'pdm',
	},
	['gauntlet'] = {
		['name'] = 'Gauntlet',
		['brand'] = 'Bravado',
		['model'] = 'gauntlet',
		['price'] = 28500,
		['category'] = 'muscle',
		['hash'] = 'gauntlet',
		['shop'] = 'pdm',
	},
	['gauntlet2'] = {
		['name'] = 'Redwood Gauntlet',
		['brand'] = 'Bravado',
		['model'] = 'gauntlet2',
		['price'] = 70000,
		['category'] = 'muscle',
		['hash'] = 'gauntlet2',
		['shop'] = 'pdm',
	},
	['gauntlet3'] = {							--DLC
		['name'] = 'Classic Gauntlet',
		['brand'] = 'Bravado',
		['model'] = 'gauntlet3',
		['price'] = 75000,
		['category'] = 'muscle',
		['hash'] = 'gauntlet3',
		['shop'] = 'pdm',
	},
	['gauntlet4'] = {							--DLC
		['name'] = 'Gauntlet Hellfire',
		['brand'] = 'Bravado',
		['model'] = 'gauntlet4',
		['price'] = 80000,
		['category'] = 'muscle',
		['hash'] = 'gauntlet4',
		['shop'] = 'pdm',
	},
	['gauntlet5'] = {
		['name'] = 'Gauntlet Classic Custom',
		['brand'] = 'Bravado',
		['model'] = 'gauntlet5',
		['price'] = 120000,
		['category'] = 'muscle',
		['hash'] = 'gauntlet5',
		['shop'] = 'pdm',
	},
	['hermes'] = {
		['name'] = 'Hermes',
		['brand'] = 'Albany',
		['model'] = 'hermes',
		['price'] = 535000,
		['category'] = 'muscle',
		['hash'] = 'hermes',
		['shop'] = 'pdm',
	},
	['hotknife'] = {
		['name'] = 'Hotknife',
		['brand'] = 'Vapid',
		['model'] = 'hotknife',
		['price'] = 90000,
		['category'] = 'muscle',
		['hash'] = 'hotknife',
		['shop'] = 'pdm',
	},
	['hustler'] = {
		['name'] = 'Hustler',
		['brand'] = 'Vapid',
		['model'] = 'hustler',
		['price'] = 95000,
		['category'] = 'muscle',
		['hash'] = 'hustler',
		['shop'] = 'pdm',
	},
	['lurcher'] = {
		['name'] = 'Gauntlet Classic Custom',
		['brand'] = 'Bravado',
		['model'] = 'lurcher',
		['price'] = 21000,
		['category'] = 'muscle',
		['hash'] = 'lurcher',
		['shop'] = 'pdm',
	},
	['moonbeam'] = {
		['name'] = 'Moonbeam',
		['brand'] = 'Declasse',
		['model'] = 'moonbeam',
		['price'] = 13000,
		['category'] = 'vans',
		['hash'] = 'moonbeam',
		['shop'] = 'pdm',
	},
	['moonbeam2'] = {
		['name'] = 'Moonbeam Custom',
		['brand'] = 'Declasse',
		['model'] = 'moonbeam2',
		['price'] = 15000,
		['category'] = 'vans',
		['hash'] = 'moonbeam2',
		['shop'] = 'pdm',
	},
	['nightshade'] = {
		['name'] = 'Nightshade',
		['brand'] = 'Imponte',
		['model'] = 'nightshade',
		['price'] = 70000,
		['category'] = 'muscle',
		['hash'] = 'nightshade',
		['shop'] = 'pdm',
	},
	['peyote2'] = {							--DLC
		['name'] = 'Peyote Gasser',
		['brand'] = 'Vapid',
		['model'] = 'peyote2',
		['price'] = 40000,
		['category'] = 'sportsclassic',
		['hash'] = 'peyote2',
		['shop'] = 'pdm',
	},
	['phoenix'] = {
		['name'] = 'Phoenix',
		['brand'] = 'Imponte',
		['model'] = 'phoenix',
		['price'] = 65000,
		['category'] = 'muscle',
		['hash'] = 'phoenix',
		['shop'] = 'pdm',
	},
	['picador'] = {
		['name'] = 'Picador',
		['brand'] = 'Cheval',
		['model'] = 'picador',
		['price'] = 20000,
		['category'] = 'muscle',
		['hash'] = 'picador',
		['shop'] = 'pdm',
	},
	['ratloader2'] = {
		['name'] = 'ratloader2',
		['brand'] = 'Ratloader2',
		['model'] = 'ratloader2',
		['price'] = 20000,
		['category'] = 'muscle',
		['hash'] = 'ratloader2',
		['shop'] = 'pdm',
	},
	['ruiner'] = {
		['name'] = 'Ruiner',
		['brand'] = 'Imponte',
		['model'] = 'ruiner',
		['price'] = 29000,
		['category'] = 'muscle',
		['hash'] = 'ruiner',
		['shop'] = 'pdm',
	},
	['ruiner2'] = {
		['name'] = 'Ruiner 2000',
		['brand'] = 'Imponte',
		['model'] = 'ruiner2',
		['price'] = 50000,
		['category'] = 'muscle',
		['hash'] = 'ruiner2',
		['shop'] = 'pdm',
	},
	['sabregt'] = {
		['name'] = 'Sabre Turbo',
		['brand'] = 'Declasse',
		['model'] = 'sabregt',
		['price'] = 23000,
		['category'] = 'muscle',
		['hash'] = 'sabregt',
		['shop'] = 'pdm',
	},
	['sabregt2'] = {
		['name'] = 'Sabre GT',
		['brand'] = 'Declasse',
		['model'] = 'sabregt2',
		['price'] = 26500,
		['category'] = 'muscle',
		['hash'] = 'sabregt2',
		['shop'] = 'pdm',
	},
	['slamvan'] = {
		['name'] = 'Slam Van',
		['brand'] = 'Vapid',
		['model'] = 'slamvan',
		['price'] = 30000,
		['category'] = 'muscle',
		['hash'] = 'slamvan',
		['shop'] = 'pdm',
	},
	['slamvan2'] = {
		['name'] = 'Lost Slam Van',
		['brand'] = 'Vapid',
		['model'] = 'slamvan2',
		['price'] = 90000,
		['category'] = 'muscle',
		['hash'] = 'slamvan2',
		['shop'] = 'pdm',
	},
	['slamvan3'] = {
		['name'] = 'Slam Van Custom',
		['brand'] = 'Vapid',
		['model'] = 'slamvan3',
		['price'] = 17000,
		['category'] = 'muscle',
		['hash'] = 'slamvan3',
		['shop'] = 'pdm',
	},
	['stalion'] = {
		['name'] = 'Stallion',
		['brand'] = 'Declasse',
		['model'] = 'stalion',
		['price'] = 33000,
		['category'] = 'muscle',
		['hash'] = 'stalion',
		['shop'] = 'pdm',
	},
	['stalion2'] = {
		['name'] = 'Stallion Burgershot',
		['brand'] = 'Declasse',
		['model'] = 'stalion2',
		['price'] = 40000,
		['category'] = 'muscle',
		['hash'] = 'stalion2',
		['shop'] = 'pdm',
	},
	['tampa'] = {
		['name'] = 'Tampa',
		['brand'] = 'Declasse',
		['model'] = 'tampa',
		['price'] = 24500,
		['category'] = 'muscle',
		['hash'] = 'tampa',
		['shop'] = 'pdm',
	},
	['tulip'] = {							--DLC
		['name'] = 'Tulip',
		['brand'] = 'Declasse',
		['model'] = 'tulip',
		['price'] = 80000,
		['category'] = 'muscle',
		['hash'] = 'tulip',
		['shop'] = 'pdm',
	},
	['vamos'] = {							--DLC
		['name'] = 'Vamos',
		['brand'] = 'Declasse',
		['model'] = 'vamos',
		['price'] = 30000,
		['category'] = 'muscle',
		['hash'] = 'vamos',
		['shop'] = 'pdm',
	},
	['vigero'] = {
		['name'] = 'Vigero',
		['brand'] = 'Declasse',
		['model'] = 'vigero',
		['price'] = 39500,
		['category'] = 'muscle',
		['hash'] = 'vigero',
		['shop'] = 'pdm',
	},
	['virgo'] = {
		['name'] = 'Virgo',
		['brand'] = 'Albany',
		['model'] = 'virgo',
		['price'] = 22000,
		['category'] = 'muscle',
		['hash'] = 'virgo',
		['shop'] = 'pdm',
	},
	['virgo2'] = {
		['name'] = 'Virgo Custom Classic',
		['brand'] = 'Dundreary',
		['model'] = 'virgo2',
		['price'] = 21000,
		['category'] = 'muscle',
		['hash'] = 'virgo2',
		['shop'] = 'pdm',
	},
	['virgo3'] = {
		['name'] = 'Virgo Custom Classic',
		['brand'] = 'Dundreary',
		['model'] = 'virgo3',
		['price'] = 21000,
		['category'] = 'muscle',
		['hash'] = 'virgo3',
		['shop'] = 'pdm',
	},
	['voodoo'] = {
		['name'] = 'Voodoo',
		['brand'] = 'Declasse',
		['model'] = 'voodoo',
		['price'] = 13000,
		['category'] = 'muscle',
		['hash'] = 'voodoo',
		['shop'] = 'pdm',
	},
	['yosemite'] = {
		['name'] = 'Yosemite',
		['brand'] = 'Declasse',
		['model'] = 'yosemite',
		['price'] = 19500,
		['category'] = 'muscle',
		['hash'] = 'yosemite',
		['shop'] = 'pdm',
	},
	['yosemite2'] = {
		['name'] = 'Yosemite Drift',
		['brand'] = '6STR',
		['model'] = 'yosemite2',
		['price'] = 55000,
		['category'] = 'drift',
		['hash'] = 'yosemite2',
		['shop'] = 'pdm',
	},
	['yosemite3'] = {
		['name'] = 'Yosemite Rancher',
		['brand'] = 'Declasse',
		['price'] = 425000,
		['category'] = 'offroad',
		['model'] = 'yosemite3',
		['hash'] = 'yosemite3',
		['shop'] = 'pdm',
	},
	['buffalo4'] = { 	 	--DLC +set sv_enforceGameBuild 2545
		['name'] = 'Buffalo STX',
		['brand'] = 'Bravado',
		['model'] = 'buffalo4',
		['price'] = 345000,
		['category'] = 'muscle',
		['hash'] = 'buffalo4',
		['shop'] = 'pdm',
	},
	--- Off-Road
	['bfinjection'] = {
		['name'] = 'Bf Injection',
		['brand'] = 'Annis',
		['price'] = 9000,
		['category'] = 'offroad',
		['model'] = 'bfinjection',
		['hash'] = 'bfinjection',
		['shop'] = 'pdm',
	},
	['bifta'] = {
		['name'] = 'Bifta',
		['brand'] = 'Annis',
		['price'] = 15500,
		['category'] = 'offroad',
		['model'] = 'bifta',
		['hash'] = 'bifta',
		['shop'] = 'pdm',
	},
	['blazer'] = {
		['name'] = 'Blazer',
		['brand'] = 'Annis',
		['price'] = 7500,
		['category'] = 'offroad',
		['model'] = 'blazer',
		['hash'] = 'blazer',
		['shop'] = 'pdm',
	},
	['blazer2'] = {
		['name'] = 'Blazer Lifeguard',
		['brand'] = 'Nagasaki',
		['model'] = 'blazer2',
		['price'] = 7000,
		['category'] = 'offroad',
		['hash'] = 'blazer2',
		['shop'] = 'pdm',
	},
	['blazer3'] = {
		['name'] = 'Blazer Hot Rod',
		['brand'] = 'Nagasaki',
		['model'] = 'blazer3',
		['price'] = 7000,
		['category'] = 'offroad',
		['hash'] = 'blazer3',
		['shop'] = 'pdm',
	},
	['blazer4'] = {
		['name'] = 'Blazer Sport',
		['brand'] = 'Annis',
		['price'] = 9250,
		['category'] = 'offroad',
		['model'] = 'blazer4',
		['hash'] = 'blazer4',
		['shop'] = 'pdm',
	},
	['brawler'] = {
		['name'] = 'Brawler',
		['brand'] = 'Annis',
		['price'] = 40000,
		['category'] = 'offroad',
		['model'] = 'brawler',
		['hash'] = 'brawler',
		['shop'] = 'pdm',
	},
	['caracara2'] = {							--DLC
		['name'] = 'Caracara 4x4',
		['brand'] = 'Vapid',
		['model'] = 'caracara2',
		['price'] = 80000,
		['category'] = 'offroad',
		['hash'] = 'caracara2',
		['shop'] = 'pdm',
	},
	['dubsta3'] = {
		['name'] = 'Dubsta 6x6',
		['brand'] = 'Annis',
		['price'] = 34000,
		['category'] = 'offroad',
		['model'] = 'dubsta3',
		['hash'] = 'dubsta3',
		['shop'] = 'pdm',
	},
	['dune'] = {
		['name'] = 'Dune Buggy',
		['brand'] = 'Annis',
		['price'] = 14000,
		['category'] = 'offroad',
		['model'] = 'dune',
		['hash'] = 'dune',
		['shop'] = 'pdm',
	},
	['everon'] = {
		['name'] = 'Everon',
		['brand'] = 'Karin',
		['model'] = 'everon',
		['price'] = 60000,
		['category'] = 'offroad',
		['hash'] = 'everon',
		['shop'] = 'pdm',
	},
	['freecrawler'] = {							--DLC
		['name'] = 'Freecrawler',
		['brand'] = 'Canis',
		['model'] = 'freecrawler',
		['price'] = 24000,
		['category'] = 'offroad',
		['hash'] = 'freecrawler',
		['shop'] = 'pdm',
	},
	['hellion'] = {							--DLC
		['name'] = 'Hellion',
		['brand'] = 'Annis',
		['model'] = 'hellion',
		['price'] = 38000,
		['category'] = 'offroad',
		['hash'] = 'hellion',
		['shop'] = 'pdm',
	},
	['kalahari'] = {
		['name'] = 'Kalahari',
		['brand'] = 'Canis',
		['model'] = 'kalahari',
		['price'] = 14000,
		['category'] = 'offroad',
		['hash'] = 'kalahari',
		['shop'] = 'pdm',
	},
	['kamacho'] = {
		['name'] = 'Kamacho',
		['brand'] = 'Canis',
		['model'] = 'kamacho',
		['price'] = 50000,
		['category'] = 'offroad',
		['hash'] = 'kamacho',
		['shop'] = 'pdm',
	},
	['mesa3'] = {
		['name'] = 'Mesa Merryweather',
		['brand'] = 'Canis',
		['model'] = 'mesa3',
		['price'] = 400000,
		['category'] = 'offroad',
		['hash'] = 'mesa3',
		['shop'] = 'pdm',
	},
	['outlaw'] = {
		['name'] = 'Outlaw',
		['brand'] = 'Nagasaki',
		['model'] = 'outlaw',
		['price'] = 15000,
		['category'] = 'offroad',
		['hash'] = 'outlaw',
		['shop'] = 'pdm',
	},
	['rancherxl'] = {
		['name'] = 'Rancher XL',
		['brand'] = 'Declasse',
		['model'] = 'rancherxl',
		['price'] = 24000,
		['category'] = 'offroad',
		['hash'] = 'rancherxl',
		['shop'] = 'pdm',
	},
	['rebel2'] = {
		['name'] = 'Rebel',
		['brand'] = 'Annis',
		['model'] = 'rebel2',
		['price'] = 20000,
		['category'] = 'offroad',
		['hash'] = 'rebel2',
		['shop'] = 'pdm',
	},
	['riata'] = {
		['name'] = 'Riata',
		['brand'] = 'Vapid',
		['model'] = 'riata',
		['price'] = 380000,
		['category'] = 'offroad',
		['hash'] = 'riata',
		['shop'] = 'pdm',
	},
	['sandking'] = {
		['name'] = 'Sandking',
		['brand'] = 'Annis',
		['price'] = 25000,
		['category'] = 'offroad',
		['model'] = 'sandking',
		['hash'] = 'sandking',
		['shop'] = 'pdm',
	},
	['sandking2'] = {
		['name'] = 'Sandking SWB',
		['brand'] = 'Annis',
		['price'] = 38000,
		['category'] = 'offroad',
		['model'] = 'sandking2',
		['hash'] = 'sandking2',
		['shop'] = 'pdm',
	},
	['trophytruck'] = {
		['name'] = 'Trophy Truck',
		['brand'] = 'Annis',
		['price'] = 60000,
		['category'] = 'offroad',
		['model'] = 'trophytruck',
		['hash'] = 'trophytruck',
		['shop'] = 'pdm',
	},
	['trophytruck2'] = {
		['name'] = 'Trophy Truck Limited',
		['brand'] = 'Annis',
		['price'] = 80000,
		['category'] = 'offroad',
		['model'] = 'trophytruck2',
		['hash'] = 'trophytruck2',
		['shop'] = 'pdm',
	},
	['vagrant'] = {
		['name'] = 'Vagrant',
		['brand'] = 'Maxwell',
		['price'] = 50000,
		['category'] = 'offroad',
		['model'] = 'vagrant',
		['hash'] = 'vagrant',
		['shop'] = 'pdm',
	},
	['verus'] = {
		['name'] = 'Verus',
		['brand'] = 'Dinka',
		['price'] = 20000,
		['category'] = 'offroad',
		['model'] = 'verus',
		['hash'] = 'verus',
		['shop'] = 'pdm',
	},
	['winky'] = {
		['name'] = 'Winky',
		['brand'] = 'Vapid',
		['price'] = 10000,
		['category'] = 'offroad',
		['model'] = 'winky',
		['hash'] = 'winky',
		['shop'] = 'pdm',
	},
	--- SUVs
	['baller'] = {
		['name'] = 'Baller',
		['brand'] = 'Gallivanter',
		['model'] = 'baller',
		['price'] = 22000,
		['category'] = 'suvs',
		['hash'] = 'baller',
		['shop'] = 'pdm',
	},
	['baller2'] = {
		['name'] = 'Baller',
		['brand'] = 'Gallivanter',
		['model'] = 'baller2',
		['price'] = 15000,
		['category'] = 'suvs',
		['hash'] = 'baller2',
		['shop'] = 'pdm',
	},
	['bjxl'] = {
		['name'] = 'BeeJay XL',
		['brand'] = 'Karin',
		['model'] = 'bjxl',
		['price'] = 19000,
		['category'] = 'suvs',
		['hash'] = 'bjxl',
		['shop'] = 'pdm',
	},
	['cavalcade'] = {
		['name'] = 'Cavalcade',
		['brand'] = 'Albany',
		['model'] = 'cavalcade',
		['price'] = 14000,
		['category'] = 'suvs',
		['hash'] = 'cavalcade',
		['shop'] = 'pdm',
	},
	['cavalcade2'] = {
		['name'] = 'Cavalcade',
		['brand'] = 'Albany',
		['model'] = 'cavalcade2',
		['price'] = 16500,
		['category'] = 'suvs',
		['hash'] = 'cavalcade2',
		['shop'] = 'pdm',
	},
	['contender'] = {
		['name'] = 'Contender',
		['brand'] = 'Vapid',
		['model'] = 'contender',
		['price'] = 35000,
		['category'] = 'suvs',
		['hash'] = 'contender',
		['shop'] = 'pdm',
	},
	['dubsta'] = {
		['name'] = 'Dubsta',
		['brand'] = 'Benefactor',
		['model'] = 'dubsta',
		['price'] = 19000,
		['category'] = 'suvs',
		['hash'] = 'dubsta',
		['shop'] = 'pdm',
	},
	['dubsta2'] = {
		['name'] = 'Dubsta Luxuary',
		['brand'] = 'Benefactor',
		['model'] = 'dubsta2',
		['price'] = 19500,
		['category'] = 'suvs',
		['hash'] = 'dubsta2',
		['shop'] = 'pdm',
	},
	['fq2'] = {
		['name'] = 'FQ2',
		['brand'] = 'Fathom',
		['model'] = 'fq2',
		['price'] = 18500,
		['category'] = 'suvs',
		['hash'] = 'fq2',
		['shop'] = 'pdm',
	},
	['granger'] = {
		['name'] = 'Granger',
		['brand'] = 'Declasse',
		['model'] = 'granger',
		['price'] = 22000,
		['category'] = 'suvs',
		['hash'] = 'granger',
		['shop'] = 'pdm',
	},
	['gresley'] = {
		['name'] = 'Gresley',
		['brand'] = 'Bravado',
		['model'] = 'gresley',
		['price'] = 25000,
		['category'] = 'suvs',
		['hash'] = 'gresley',
		['shop'] = 'pdm',
	},
	['habanero'] = {
		['name'] = 'Habanero',
		['brand'] = 'Emperor',
		['model'] = 'habanero',
		['price'] = 20000,
		['category'] = 'suvs',
		['hash'] = 'habanero',
		['shop'] = 'pdm',
	},
	['huntley'] = {
		['name'] = 'Huntley S',
		['brand'] = 'Enus',
		['model'] = 'huntley',
		['price'] = 24500,
		['category'] = 'suvs',
		['hash'] = 'huntley',
		['shop'] = 'pdm',
	},
	['landstalker'] = {
		['name'] = 'Landstalker',
		['brand'] = 'Dundreary',
		['model'] = 'landstalker',
		['price'] = 12000,
		['category'] = 'suvs',
		['hash'] = 'landstalker',
		['shop'] = 'pdm',
	},
	['landstalker2'] = {
		['name'] = 'Landstalker XL',
		['brand'] = 'Dundreary',
		['model'] = 'landstalker2',
		['price'] = 26000,
		['category'] = 'suvs',
		['hash'] = 'landstalker2',
		['shop'] = 'pdm',
	},
	['mesa'] = {
		['name'] = 'Mesa',
		['brand'] = 'Canis',
		['model'] = 'mesa',
		['price'] = 12000,
		['category'] = 'offroad',
		['hash'] = 'mesa',
		['shop'] = 'pdm',
	},
	['novak'] = {							--DLC
		['name'] = 'Novak',
		['brand'] = 'Lampadati',
		['model'] = 'novak',
		['price'] = 70000,
		['category'] = 'suvs',
		['hash'] = 'novak',
		['shop'] = 'pdm',
	},
	['patriot'] = {
		['name'] = 'Patriot',
		['brand'] = 'Mammoth',
		['model'] = 'patriot',
		['price'] = 21000,
		['category'] = 'suvs',
		['hash'] = 'patriot',
		['shop'] = 'pdm',
	},
	['radi'] = {
		['name'] = 'Radius',
		['brand'] = 'Vapid',
		['model'] = 'radi',
		['price'] = 18000,
		['category'] = 'suvs',
		['hash'] = 'radi',
		['shop'] = 'pdm',
	},
	['rebla'] = {
		['name'] = 'Rebla GTS',
		['brand'] = 'Übermacht',
		['model'] = 'rebla',
		['price'] = 21000,
		['category'] = 'suvs',
		['hash'] = 'rebla',
		['shop'] = 'pdm',
	},
	['rocoto'] = {
		['name'] = 'Rocoto',
		['brand'] = 'Obey',
		['model'] = 'rocoto',
		['price'] = 13000,
		['category'] = 'suvs',
		['hash'] = 'rocoto',
		['shop'] = 'pdm',
	},
	['seminole'] = {
		['name'] = 'Seminole',
		['brand'] = 'Canis',
		['model'] = 'seminole',
		['price'] = 20000,
		['category'] = 'suvs',
		['hash'] = 'seminole',
		['shop'] = 'pdm',
	},
	['seminole2'] = {
		['name'] = 'Seminole Frontier',
		['brand'] = 'Canis',
		['model'] = 'seminole2',
		['price'] = 13000,
		['category'] = 'suvs',
		['hash'] = 'seminole2',
		['shop'] = 'pdm',
	},
	['serrano'] = {
		['name'] = 'Serrano',
		['brand'] = 'Benefactor',
		['model'] = 'serrano',
		['price'] = 48000,
		['category'] = 'suvs',
		['hash'] = 'serrano',
		['shop'] = 'pdm',
	},
	['toros'] = {							--DLC
		['name'] = 'Toros',
		['brand'] = 'Pegassi',
		['model'] = 'toros',
		['price'] = 65000,
		['category'] = 'suvs',
		['hash'] = 'toros',
		['shop'] = 'pdm',
	},
	['xls'] = {
		['name'] = 'XLS',
		['brand'] = 'Benefactor',
		['model'] = 'xls',
		['price'] = 17000,
		['category'] = 'suvs',
		['hash'] = 'xls',
		['shop'] = 'pdm',
	},
	['granger2'] = { 	 	--DLC +set sv_enforceGameBuild 2545
		['name'] = 'Granger 3600LX',
		['brand'] = 'Declasse',
		['model'] = 'granger2',
		['price'] = 221000,
		['category'] = 'suvs',
		['hash'] = 'granger2',
		['shop'] = 'pdm',
	},
	--- Sedans
	['asea'] = {
		['name'] = 'Asea',
		['brand'] = 'Declasse',
		['model'] = 'asea',
		['price'] = 2500,
		['category'] = 'sedans',
		['hash'] = 'asea',
		['shop'] = 'pdm',
	},
	['asterope'] = {
		['name'] = 'Asterope',
		['brand'] = 'Karin',
		['model'] = 'asterope',
		['price'] = 11000,
		['category'] = 'sedans',
		['hash'] = 'asterope',
		['shop'] = 'pdm',
	},
	['cog55'] = {
		['name'] = 'Cognoscenti 55',
		['brand'] = 'Enus',
		['model'] = 'cog55',
		['price'] = 22000,
		['category'] = 'sedans',
		['hash'] = 'cog55',
		['shop'] = 'pdm',
	},
	['cognoscenti'] = {
		['name'] = 'Cognoscenti',
		['brand'] = 'Enus',
		['model'] = 'cognoscenti',
		['price'] = 22500,
		['category'] = 'sedans',
		['hash'] = 'cognoscenti',
		['shop'] = 'pdm',
	},
	['emperor'] = {
		['name'] = 'Emperor',
		['brand'] = 'Albany',
		['model'] = 'emperor',
		['price'] = 4250,
		['category'] = 'sedans',
		['hash'] = 'emperor',
		['shop'] = 'pdm',
	},
	['fugitive'] = {
		['name'] = 'Fugitive',
		['brand'] = 'Cheval',
		['model'] = 'fugitive',
		['price'] = 20000,
		['category'] = 'sedans',
		['hash'] = 'fugitive',
		['shop'] = 'pdm',
	},
	['glendale'] = {
		['name'] = 'Glendale',
		['brand'] = 'Benefactor',
		['model'] = 'glendale',
		['price'] = 3400,
		['category'] = 'sedans',
		['hash'] = 'glendale',
		['shop'] = 'pdm',
	},
	['glendale2'] = {
		['name'] = 'Glendale',
		['brand'] = 'Benefactor',
		['model'] = 'glendale2',
		['price'] = 12000,
		['category'] = 'sedans',
		['hash'] = 'glendale2',
		['shop'] = 'pdm',
	},
	['ingot'] = {
		['name'] = 'Ingot',
		['brand'] = 'Vulcar',
		['model'] = 'ingot',
		['price'] = 4999,
		['category'] = 'sedans',
		['hash'] = 'ingot',
		['shop'] = 'pdm',
	},
	['intruder'] = {
		['name'] = 'Intruder',
		['brand'] = 'Karin',
		['model'] = 'intruder',
		['price'] = 11250,
		['category'] = 'sedans',
		['hash'] = 'intruder',
		['shop'] = 'pdm',
	},
	['premier'] = {
		['name'] = 'Premier',
		['brand'] = 'Declasse',
		['model'] = 'premier',
		['price'] = 12000,
		['category'] = 'sedans',
		['hash'] = 'premier',
		['shop'] = 'pdm',
	},
	['primo'] = {
		['name'] = 'Primo',
		['brand'] = 'Albany',
		['model'] = 'primo',
		['price'] = 5000,
		['category'] = 'sedans',
		['hash'] = 'primo',
		['shop'] = 'pdm',
	},
	['primo2'] = {
		['name'] = 'Primo Custom',
		['brand'] = 'Albany',
		['model'] = 'primo2',
		['price'] = 14500,
		['category'] = 'sedans',
		['hash'] = 'primo2',
		['shop'] = 'pdm',
	},
	['regina'] = {
		['name'] = 'Regina',
		['brand'] = 'Dundreary',
		['model'] = 'regina',
		['price'] = 7000,
		['category'] = 'sedans',
		['hash'] = 'regina',
		['shop'] = 'pdm',
	},
	['stafford'] = {							--DLC
		['name'] = 'Stafford',
		['brand'] = 'Enus',
		['model'] = 'stafford',
		['price'] = 30000,
		['category'] = 'sedans',
		['hash'] = 'stafford',
		['shop'] = 'pdm',
	},
	['stanier'] = {
		['name'] = 'Stanier',
		['brand'] = 'Vapid',
		['model'] = 'stanier',
		['price'] = 19000,
		['category'] = 'sedans',
		['hash'] = 'stanier',
		['shop'] = 'pdm',
	},
	['stratum'] = {
		['name'] = 'Stratum',
		['brand'] = 'Zirconium',
		['model'] = 'stratum',
		['price'] = 15000,
		['category'] = 'sedans',
		['hash'] = 'stratum',
		['shop'] = 'pdm',
	},
	['stretch'] = {
		['name'] = 'Stretch',
		['brand'] = 'Dundreary',
		['model'] = 'stretch',
		['price'] = 19000,
		['category'] = 'sedans',
		['hash'] = 'stretch',
		['shop'] = 'pdm',
	},
	['superd'] = {
		['name'] = 'Super Diamond',
		['brand'] = 'Enus',
		['model'] = 'superd',
		['price'] = 17000,
		['category'] = 'sedans',
		['hash'] = 'superd',
		['shop'] = 'pdm',
	},
	['surge'] = {
		['name'] = 'Surge',
		['brand'] = 'Cheval',
		['model'] = 'surge',
		['price'] = 20000,
		['category'] = 'sedans',
		['hash'] = 'surge',
		['shop'] = 'pdm',
	},
	['tailgater'] = {
		['name'] = 'Tailgater',
		['brand'] = 'Obey',
		['model'] = 'tailgater',
		['price'] = 22000,
		['category'] = 'sedans',
		['hash'] = 'tailgater',
		['shop'] = 'pdm',
	},
	['warrener'] = {
		['name'] = 'Warrener',
		['brand'] = 'Vulcar',
		['model'] = 'warrener',
		['price'] = 4000,
		['category'] = 'sedans',
		['hash'] = 'warrener',
		['shop'] = 'pdm',
	},
	['washington'] = {
		['name'] = 'Washington',
		['brand'] = 'Albany',
		['model'] = 'washington',
		['price'] = 7000,
		['category'] = 'sedans',
		['hash'] = 'washington',
		['shop'] = 'pdm',
	},
	['tailgater2'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Tailgater S',
		['brand'] = 'Obey',
		['model'] = 'tailgater2',
		['price'] = 51000,
		['category'] = 'sedans',
		['hash'] = 'tailgater2',
		['shop'] = 'pdm',
	},
	['cinquemila'] = { 	 	--DLC +set sv_enforceGameBuild 2545
		['name'] = 'Lampadati',
		['brand'] = 'Cinquemila',
		['model'] = 'cinquemila',
		['price'] = 125000,
		['category'] = 'sedans',
		['hash'] = 'cinquemila',
		['shop'] = 'pdm',
	},
	['iwagen'] = { 	 	--DLC +set sv_enforceGameBuild 2545
		['name'] = 'Obey',
		['brand'] = 'I-Wagen',
		['model'] = 'iwagen',
		['price'] = 225000,
		['category'] = 'sedans',
		['hash'] = 'iwagen',
		['shop'] = 'pdm',
	},
	['astron'] = {
		['name'] = 'Pfister',
		['brand'] = 'Astron',
		['model'] = 'astron',
		['price'] = 150000,
		['category'] = 'sedans',
		['hash'] = 'astron',
		['shop'] = 'pdm',
	},
	['baller7'] = {
		['name'] = 'Baller ST',
		['brand'] = 'Gallivanter',
		['model'] = 'baller7',
		['price'] = 145000,
		['category'] = 'sedans',
		['hash'] = 'baller7',
		['shop'] = 'pdm',
	},
	['comet7'] = {
		['name'] = 'Comet',
		['brand'] = 'S2 Cabrio',
		['model'] = 'comet7',
		['price'] = 25000,
		['category'] = 'sedans',
	 	['hash'] = 'comet7',
	 	['shop'] = 'pdm',
	},
	['deity'] = {
		['name'] = 'Deity',
		['brand'] = 'Enus',
		['model'] = 'deity',
		['price'] = 505000,
		['category'] = 'sedans',
		['hash'] = 'deity',
		['shop'] = 'pdm',
	},
	['patriot3'] = {
		['name'] = 'Patriot',
		['brand'] = 'Mil-Spec',
		['model'] = 'patriot3',
		['price'] = 270000,
		['category'] = 'sedans',
		['hash'] = 'patriot3',
		['shop'] = 'pdm',
	},
	--- Sports
	['alpha'] = {
		['name'] = 'Alpha',
		['brand'] = 'Albany',
		['model'] = 'alpha',
		['price'] = 53000,
		['category'] = 'sports',
		['hash'] = 'alpha',
		['shop'] = 'none',
	},
	['banshee'] = {
		['name'] = 'Banshee',
		['brand'] = 'Bravado',
		['model'] = 'banshee',
		['price'] = 56000,
		['category'] = 'sports',
		['hash'] = 'banshee',
		['shop'] = 'luxury',
	},
	['bestiagts'] = {
		['name'] = 'Bestia GTS',
		['brand'] = 'Grotti',
		['model'] = 'bestiagts',
		['price'] = 37000,
		['category'] = 'sports',
		['hash'] = 'bestiagts',
		['shop'] = 'none',
	},
	['blista2'] = {
		['name'] = 'Blista Compact',
		['brand'] = 'Dinka',
		['model'] = 'blista2',
		['price'] = 18950,
		['category'] = 'compacts',
		['hash'] = 'blista2',
		['shop'] = 'pdm',
	},
	['blista3'] = {
		['name'] = 'Blista Go Go Monkey',
		['brand'] = 'Dinka',
		['model'] = 'blista3',
		['price'] = 15000,
		['category'] = 'compacts',
		['hash'] = 'blista3',
		['shop'] = 'pdm',
	},
	['buffalo'] = {
		['name'] = 'Buffalo',
		['brand'] = 'Bravado',
		['model'] = 'buffalo',
		['price'] = 18750,
		['category'] = 'sports',
		['hash'] = 'buffalo',
		['shop'] = 'luxury',
	},
	['buffalo2'] = {
		['name'] = 'Buffalo S',
		['brand'] = 'Bravado',
		['model'] = 'buffalo2',
		['price'] = 24500,
		['category'] = 'sports',
		['hash'] = 'buffalo2',
		['shop'] = 'none',
	},
	['carbonizzare'] = {
		['name'] = 'Carbonizzare',
		['brand'] = 'Grotti',
		['model'] = 'carbonizzare',
		['price'] = 155000,
		['category'] = 'sports',
		['hash'] = 'carbonizzare',
		['shop'] = 'luxury',
	},
	['comet2'] = {
		['name'] = 'Comet',
		['brand'] = 'Pfister',
		['model'] = 'comet2',
		['price'] = 130000,
		['category'] = 'sports',
		['hash'] = 'comet2',
		['shop'] = 'none',
	},
	['comet3'] = {
		['name'] = 'Comet Retro Custom',
		['brand'] = 'Pfister',
		['model'] = 'comet3',
		['price'] = 175000,
		['category'] = 'sports',
		['hash'] = 'comet3',
		['shop'] = 'luxury',
	},
	['comet4'] = {
		['name'] = 'Comet Safari',
		['brand'] = 'Pfister',
		['model'] = 'comet4',
		['price'] = 110000,
		['category'] = 'sports',
		['hash'] = 'comet4',
		['shop'] = 'none',
	},
	['comet5'] = {
		['name'] = 'Comet SR',
		['brand'] = 'Pfister',
		['model'] = 'comet5',
		['price'] = 155000,
		['category'] = 'sports',
		['hash'] = 'comet5',
		['shop'] = 'luxury',
	},
	['coquette'] = {
		['name'] = 'Coquette',
		['brand'] = 'Invetero',
		['model'] = 'coquette',
		['price'] = 145000,
		['category'] = 'sports',
		['hash'] = 'coquette',
		['shop'] = 'none',
	},
	['coquette2'] = {
		['name'] = 'Coquette Classic',
		['brand'] = 'Invetero',
		['model'] = 'coquette2',
		['price'] = 165000,
		['category'] = 'sportsclassics',
		['hash'] = 'coquette2',
		['shop'] = 'pdm',
	},
	['coquette4'] = {
		['name'] = 'Coquette D10',
		['brand'] = 'Invetero',
		['model'] = 'coquette4',
		['price'] = 220000,
		['category'] = 'sports',
		['hash'] = 'coquette4',
		['shop'] = 'luxury',
	},
	['drafter'] = {							--DLC
		['name'] = '8F Drafter',
		['brand'] = 'Obey',
		['model'] = 'drafter',
		['price'] = 80000,
		['category'] = 'sports',
		['hash'] = 'drafter',
		['shop'] = 'none',
	},
	['deveste'] = {							--DLC
		['name'] = 'Deveste',
		['brand'] = 'Principe',
		['model'] = 'deveste',
		['price'] = 234000,
		['category'] = 'super',
		['hash'] = 'deveste',
		['shop'] = 'luxury',
	},
	['elegy'] = {							--DLC
		['name'] = 'Elegy Retro Custom',
		['brand'] = 'Annis',
		['model'] = 'elegy',
		['price'] = 145000,
		['category'] = 'sports',
		['hash'] = 'elegy',
		['shop'] = 'none',
	},
	['elegy2'] = {
		['name'] = 'Elegy RH8',
		['brand'] = 'Annis',
		['model'] = 'elegy2',
		['price'] = 150000,
		['category'] = 'sports',
		['hash'] = 'elegy2',
		['shop'] = 'luxury',
	},
	['feltzer2'] = {
		['name'] = 'Feltzer',
		['brand'] = 'Benefactor',
		['model'] = 'feltzer2',
		['price'] = 97000,
		['category'] = 'sports',
		['hash'] = 'feltzer2',
		['shop'] = 'none',
	},
	['flashgt'] = {
		['name'] = 'Flash GT',
		['brand'] = 'Vapid',
		['model'] = 'flashgt',
		['price'] = 48000,
		['category'] = 'sports',
		['hash'] = 'flashgt',
		['shop'] = 'luxury',
	},
	['furoregt'] = {
		['name'] = 'Furore GT',
		['brand'] = 'Lampadati',
		['model'] = 'furoregt',
		['price'] = 78000,
		['category'] = 'sports',
		['hash'] = 'furoregt',
		['shop'] = 'none',
	},
	['futo'] = {
		['name'] = 'Futo',
		['brand'] = 'Karin',
		['model'] = 'futo',
		['price'] = 17500,
		['category'] = 'coupes',
		['hash'] = 'futo',
		['shop'] = 'pdm',
	},
	['gb200'] = {
		['name'] = 'GB 200',
		['brand'] = 'Vapid',
		['model'] = 'gb200',
		['price'] = 140000,
		['category'] = 'sports',
		['hash'] = 'gb200',
		['shop'] = 'luxury',
	},
	['komoda'] = {
		['name'] = 'Komoda',
		['brand'] = 'Lampadati',
		['model'] = 'komoda',
		['price'] = 55000,
		['category'] = 'sports',
		['hash'] = 'komoda',
		['shop'] = 'none',
	},
	['imorgon'] = {
		['name'] = 'Imorgon',
		['brand'] = 'Overflod',
		['model'] = 'imorgon',
		['price'] = 120000,
		['category'] = 'sports',
		['hash'] = 'imorgon',
		['shop'] = 'luxury',
	},
	['issi7'] = {							--DLC
		['name'] = 'Issi Sport',
		['brand'] = 'Weeny',
		['model'] = 'issi7',
		['price'] = 100000,
		['category'] = 'compacts',
		['hash'] = 'issi7',
		['shop'] = 'pdm',
	},
	['italigto'] = {							--DLC
		['name'] = 'Itali GTO',
		['brand'] = 'Progen',
		['model'] = 'italigto',
		['price'] = 260000,
		['category'] = 'sports',
		['hash'] = 'italigto',
		['shop'] = 'luxury',
	},
	['jugular'] = {							--DLC
		['name'] = 'Jugular',
		['brand'] = 'Ocelot',
		['model'] = 'jugular',
		['price'] = 80000,
		['category'] = 'sports',
		['hash'] = 'jugular',
		['shop'] = 'none',
	},
	['jester'] = {
		['name'] = 'Jester',
		['brand'] = 'Dinka',
		['model'] = 'jester',
		['price'] = 132250,
		['category'] = 'sports',
		['hash'] = 'jester',
		['shop'] = 'luxury',
	},
	['jester2'] = {
		['name'] = 'Jester Racecar',
		['brand'] = 'Dinka',
		['model'] = 'jester2',
		['price'] = 210000,
		['category'] = 'sports',
		['hash'] = 'jester2',
		['shop'] = 'luxury',
	},
	['jester3'] = {
		['name'] = 'Jester Classic',
		['brand'] = 'Dinka',
		['model'] = 'jester3',
		['price'] = 85000,
		['category'] = 'sports',
		['hash'] = 'jester3',
		['shop'] = 'luxury',
	},
	['khamelion'] = {
		['name'] = 'Khamelion',
		['brand'] = 'Hijak',
		['model'] = 'khamelion',
		['price'] = 90000,
		['category'] = 'sports',
		['hash'] = 'khamelion',
		['shop'] = 'none',
	},
	['kuruma'] = {
		['name'] = 'Kuruma',
		['brand'] = 'Karin',
		['model'] = 'kuruma',
		['price'] = 72000,
		['category'] = 'sports',
		['hash'] = 'kuruma',
		['shop'] = 'luxury',
	},
	['kuruma2'] = {
		['name'] = 'kuruma2',
		['brand'] = 'Karin2',
		['model'] = 'kuruma2',
		['price'] = 72000,
		['category'] = 'sports',
		['hash'] = 'kuruma2',
		['shop'] = 'luxury',
	},
	['locust'] = {							--DLC
		['name'] = 'Locust',
		['brand'] = 'Ocelot',
		['model'] = 'locust',
		['price'] = 200000,
		['category'] = 'sports',
		['hash'] = 'locust',
		['shop'] = 'luxury',
	},
	['lynx'] = {
		['name'] = 'Lynx',
		['brand'] = 'Ocelot',
		['model'] = 'lynx',
		['price'] = 150000,
		['category'] = 'sports',
		['hash'] = 'lynx',
		['shop'] = 'none',
	},
	['massacro'] = {
		['name'] = 'Massacro',
		['brand'] = 'Dewbauchee',
		['model'] = 'massacro',
		['price'] = 110000,
		['category'] = 'sports',
		['hash'] = 'massacro',
		['shop'] = 'luxury',
	},
	['massacro2'] = {
		['name'] = 'Massacro Racecar',
		['brand'] = 'Dewbauchee',
		['model'] = 'massacro2',
		['price'] = 80000,
		['category'] = 'sports',
		['hash'] = 'massacro2',
		['shop'] = 'none',
	},
	['neo'] = {							--DLC
		['name'] = 'Neo',
		['brand'] = 'Vysser',
		['model'] = 'neo',
		['price'] = 230000,
		['category'] = 'sports',
		['hash'] = 'neo',
		['shop'] = 'luxury',
	},
	['neon'] = {							--DLC
		['name'] = 'Neon',
		['brand'] = 'Pfister',
		['model'] = 'neon',
		['price'] = 220000,
		['category'] = 'sports',
		['hash'] = 'neon',
		['shop'] = 'luxury',
	},
	['ninef'] = {
		['name'] = '9F',
		['brand'] = 'Obey',
		['model'] = 'ninef',
		['price'] = 95000,
		['category'] = 'sports',
		['hash'] = 'ninef',
		['shop'] = 'luxury',
	},
	['ninef2'] = {
		['name'] = '9F Cabrio',
		['brand'] = 'Obey',
		['model'] = 'ninef2',
		['price'] = 105000,
		['category'] = 'sports',
		['hash'] = 'ninef2',
		['shop'] = 'luxury',
	},
	['omnis'] = {
		['name'] = 'Omnis',
		['brand'] = 'Wow',
		['model'] = 'omnis',
		['price'] = 90000,
		['category'] = 'sports',
		['hash'] = 'omnis',
		['shop'] = 'luxury',
	},
	['paragon'] = {							--DLC
		['name'] = 'Paragon',
		['brand'] = 'Enus',
		['model'] = 'paragon',
		['price'] = 60000,
		['category'] = 'sports',
		['hash'] = 'paragon',
		['shop'] = 'luxury',
	},
	['pariah'] = {
		['name'] = 'Pariah',
		['brand'] = 'Ocelot',
		['model'] = 'pariah',
		['price'] = 90000,
		['category'] = 'sports',
		['hash'] = 'pariah',
		['shop'] = 'luxury',
	},
	['penumbra'] = {
		['name'] = 'Penumbra',
		['brand'] = 'Maibatsu',
		['model'] = 'penumbra',
		['price'] = 22000,
		['category'] = 'sports',
		['hash'] = 'penumbra',
		['shop'] = 'luxury',
	},
	['penumbra2'] = {
		['name'] = 'Penumbra FF',
		['brand'] = 'Maibatsu',
		['model'] = 'penumbra2',
		['price'] = 30000,
		['category'] = 'sports',
		['hash'] = 'penumbra2',
		['shop'] = 'luxury',
	},
	['rapidgt'] = {
		['name'] = 'Rapid GT',
		['brand'] = 'Dewbauchee',
		['model'] = 'rapidgt',
		['price'] = 86000,
		['category'] = 'sports',
		['hash'] = 'rapidgt',
		['shop'] = 'luxury',
	},
	['rapidgt2'] = {
		['name'] = 'Rapid GT Convertible',
		['brand'] = 'Dewbauchee',
		['model'] = 'rapidgt2',
		['price'] = 92000,
		['category'] = 'sports',
		['hash'] = 'rapidgt2',
		['shop'] = 'luxury',
	},
	['raptor'] = {
		['name'] = 'Raptor',
		['brand'] = 'BF',
		['model'] = 'raptor',
		['price'] = 90000,
		['category'] = 'sports',
		['hash'] = 'raptor',
		['shop'] = 'luxury',
	},
	['revolter'] = {
		['name'] = 'Revolter',
		['brand'] = 'Ubermacht',
		['model'] = 'revolter',
		['price'] = 95000,
		['category'] = 'sports',
		['hash'] = 'revolter',
		['shop'] = 'luxury',
	},
	['ruston'] = {
		['name'] = 'Ruston',
		['brand'] = 'Hijak',
		['model'] = 'ruston',
		['price'] = 130000,
		['category'] = 'sports',
		['hash'] = 'ruston',
		['shop'] = 'luxury',
	},
	['schafter2'] = {
		['name'] = 'Schafter',
		['brand'] = 'Benefactor',
		['model'] = 'schafter2',
		['price'] = 16000,
		['category'] = 'sedans',
		['hash'] = 'schafter2',
		['shop'] = 'pdm',
	},
	['schafter3'] = {
		['name'] = 'Schafter V12',
		['brand'] = 'Benefactor',
		['model'] = 'schafter3',
		['price'] = 35000,
		['category'] = 'sports',
		['hash'] = 'schafter3',
		['shop'] = 'luxury',
	},
	['schafter4'] = {
		['name'] = 'Schafter LWB',
		['brand'] = 'Benefactor',
		['model'] = 'schafter4',
		['price'] = 21000,
		['category'] = 'sports',
		['hash'] = 'schafter4',
		['shop'] = 'luxury',
	},
	['schlagen'] = {							--DLC
		['name'] = 'Schlagen GT',
		['brand'] = 'Benefactor',
		['model'] = 'schlagen',
		['price'] = 160000,
		['category'] = 'sports',
		['hash'] = 'schlagen',
		['shop'] = 'luxury',
	},
	['schwarzer'] = {
		['name'] = 'Schwartzer',
		['brand'] = 'Benefactor',
		['model'] = 'schwarzer',
		['price'] = 47000,
		['category'] = 'sports',
		['hash'] = 'schwarzer',
		['shop'] = 'luxury',
	},
	['sentinel3'] = {
		['name'] = 'Sentinel Classic',
		['brand'] = 'Übermacht',
		['model'] = 'sentinel3',
		['price'] = 70000,
		['category'] = 'coupes',
		['hash'] = 'sentinel3',
		['shop'] = 'pdm',
	},
	['seven70'] = {
		['name'] = 'Seven-70',
		['brand'] = 'Dewbauchee',
		['model'] = 'seven70',
		['price'] = 140000,
		['category'] = 'sports',
		['hash'] = 'seven70',
		['shop'] = 'luxury',
	},
	['specter'] = {
		['name'] = 'Specter',
		['brand'] = 'Dewbauchee',
		['model'] = 'specter',
		['price'] = 160000,
		['category'] = 'sports',
		['hash'] = 'specter',
		['shop'] = 'luxury',
	},
	['streiter'] = {
		['name'] = 'Streiter',
		['brand'] = 'Benefactor',
		['model'] = 'streiter',
		['price'] = 40000,
		['category'] = 'sports',
		['hash'] = 'streiter',
		['shop'] = 'luxury',
	},
	['sugoi'] = {
		['name'] = 'Sugoi',
		['brand'] = 'Dinka',
		['model'] = 'sugoi',
		['price'] = 85000,
		['category'] = 'sports',
		['hash'] = 'sugoi',
		['shop'] = 'luxury',
	},
	['sultan'] = {
		['name'] = 'Sultan',
		['brand'] = 'Karin',
		['model'] = 'sultan',
		['price'] = 50000,
		['category'] = 'sports',
		['hash'] = 'sultan',
		['shop'] = 'luxury',
	},
	['sultan2'] = {
		['name'] = 'Sultan Custom',
		['brand'] = 'Karin',
		['model'] = 'sultan2',
		['price'] = 55000,
		['category'] = 'sports',
		['hash'] = 'sultan2',
		['shop'] = 'luxury',
	},
	['surano'] = {
		['name'] = 'Surano',
		['brand'] = ' Benefactor',
		['model'] = 'surano',
		['price'] = 80000,
		['category'] = 'sports',
		['hash'] = 'surano',
		['shop'] = 'luxury',
	},
	['tampa2'] = {
		['name'] = 'Drift Tampa',
		['brand'] = 'Declasse',
		['model'] = 'tampa2',
		['price'] = 80000,
		['category'] = 'muscle',
		['hash'] = 'tampa2',
		['shop'] = 'pdm',
	},
	['tropos'] = {
		['name'] = 'Tropos Rallye',
		['brand'] = 'Lampadati',
		['model'] = 'tropos',
		['price'] = 65000,
		['category'] = 'sports',
		['hash'] = 'tropos',
		['shop'] = 'luxury',
	},
	['verlierer2'] = {
		['name'] = 'Verlierer',
		['brand'] = 'Bravado',
		['model'] = 'verlierer2',
		['price'] = 90500,
		['category'] = 'sports',
		['hash'] = 'verlierer2',
		['shop'] = 'luxury',
	},
	['vstr'] = {
		['name'] = 'V-STR',
		['brand'] = 'Albany',
		['model'] = 'vstr',
		['price'] = 80000,
		['category'] = 'sports',
		['hash'] = 'vstr',
		['shop'] = 'luxury',
	},
	['italirsx'] = {
		['name'] = 'Itali RSX',
		['brand'] = 'Progen',
		['model'] = 'italirsx',
		['price'] = 260000,
		['category'] = 'sports',
		['hash'] = 'italirsx',
		['shop'] = 'luxury',
	},
	['zr350'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'ZR350',
		['brand'] = 'Annis',
		['model'] = 'zr350',
		['price'] = 38000,
		['category'] = 'sports',
		['hash'] = 'zr350',
		['shop'] = 'none',
	},
	['calico'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Calico GTF',
		['brand'] = 'Karin',
		['model'] = 'calico',
		['price'] = 39000,
		['category'] = 'sports',
		['hash'] = 'calico',
		['shop'] = 'none',
	},
	['futo2'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Futo GTX',
		['brand'] = 'Karin',
		['model'] = 'futo2',
		['price'] = 39000,
		['category'] = 'sports',
		['hash'] = 'futo2',
		['shop'] = 'none',
	},
	['euros'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Euros',
		['brand'] = 'Annis',
		['model'] = 'euros',
		['price'] = 80000,
		['category'] = 'sports',
		['hash'] = 'euros',
		['shop'] = 'none',
	},
	['jester4'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Jester RR',
		['brand'] = 'Dinka',
		['model'] = 'jester4',
		['price'] = 240000,
		['category'] = 'sports',
		['hash'] = 'jester4',
		['shop'] = 'none',
	},
	['remus'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Remus',
		['brand'] = 'Annis',
		['model'] = 'remus',
		['price'] = 48000,
		['category'] = 'sports',
		['hash'] = 'remus',
		['shop'] = 'none',
	},
	['comet6'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Comet S2',
		['brand'] = 'Pfister',
		['model'] = 'comet6',
		['price'] = 230000,
		['category'] = 'sports',
		['hash'] = 'comet6',
		['shop'] = 'none',
	},
	['growler'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Growler',
		['brand'] = 'Pfister',
		['model'] = 'growler',
		['price'] = 205000,
		['category'] = 'sports',
		['hash'] = 'growler',
		['shop'] = 'none',
	},
	['vectre'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Emperor Vectre',
		['brand'] = 'Emperor',
		['model'] = 'vectre',
		['price'] = 80000,
		['category'] = 'sports',
		['hash'] = 'vectre',
		['shop'] = 'none',
	},
	['cypher'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'Cypher',
		['brand'] = 'Ubermacht',
		['model'] = 'cypher',
		['price'] = 155000,
		['category'] = 'sports',
		['hash'] = 'cypher',
		['shop'] = 'none',
	},
	['rt3000'] = {							--DLC +set sv_enforceGameBuild 2372
		['name'] = 'RT3000',
		['brand'] = 'Dinka',
		['model'] = 'rt3000',
		['price'] = 65000,
		['category'] = 'sports',
		['hash'] = 'rt3000',
		['shop'] = 'none',
	},
	--- Sports Classic
	['ardent'] = {
		['name'] = 'Ardent',
		['brand'] = 'Ocelot',
		['model'] = 'ardent',
		['price'] = 30000,
		['category'] = 'sportsclassics',
		['hash'] = 'ardent',
		['shop'] = 'pdm',
	},
	['btype'] = {              --meme car that goes pretty fast
		['name'] = 'Roosevelt',
		['brand'] = 'Albany',
		['model'] = 'btype',
		['price'] = 75000,
		['category'] = 'sportsclassics',
		['hash'] = 'btype',
		['shop'] = 'pdm',
	},
	['btype2'] = {
		['name'] = 'Franken Stange',
		['brand'] = 'Albany',
		['model'] = 'btype2',
		['price'] = 87000,
		['category'] = 'sportsclassics',
		['hash'] = 'btype2',
		['shop'] = 'pdm',
	},
	['btype3'] = {
		['name'] = 'Roosevelt Valor',
		['brand'] = 'Albany',
		['model'] = 'btype3',
		['price'] = 63000,
		['category'] = 'sportsclassics',
		['hash'] = 'btype3',
		['shop'] = 'pdm',
	},
	['casco'] = {
		['name'] = 'Casco',
		['brand'] = 'Lampadati',
		['model'] = 'casco',
		['price'] = 100000,
		['category'] = 'sportsclassics',
		['hash'] = 'casco',
		['shop'] = 'pdm',
	},
	['cheetah2'] = {
		['name'] = 'Cheetah Classic',
		['brand'] = 'Grotti',
		['model'] = 'cheetah2',
		['price'] = 195000,
		['category'] = 'sports',
		['hash'] = 'cheetah2',
		['shop'] = 'none',
	},
	['deluxo'] = {
		['name'] = 'Deluxo',
		['brand'] = 'Imponte',
		['model'] = 'deluxo',
		['price'] = 55000,
		['category'] = 'sportsclassic',
		['hash'] = 'deluxo',
		['shop'] = 'pdm',
	},
	['dynasty'] = {							--DLC
		['name'] = 'Dynasty',
		['brand'] = 'Weeny',
		['model'] = 'dynasty',
		['price'] = 25000,
		['category'] = 'sportsclassic',
		['hash'] = 'dynasty',
		['shop'] = 'pdm',
	},
	['fagaloa'] = {
		['name'] = 'Fagaloa',
		['brand'] = 'Vulcar',
		['model'] = 'fagaloa',
		['price'] = 13000,
		['category'] = 'sportsclassics',
		['hash'] = 'fagaloa',
		['shop'] = 'pdm',
	},
	['feltzer3'] = {							--DLC
		['name'] = 'Stirling GT',
		['brand'] = 'Benefactor',
		['model'] = 'feltzer3',
		['price'] = 115000,
		['category'] = 'sportsclassics',
		['hash'] = 'feltzer3',
		['shop'] = 'pdm',
	},
	['gt500'] = {
		['name'] = 'GT500',
		['brand'] = 'Grotti',
		['model'] = 'gt500',
		['price'] = 130000,
		['category'] = 'sportsclassics',
		['hash'] = 'gt500',
		['shop'] = 'pdm',
	},
	['infernus2'] = {
		['name'] = 'Infernus Classic',
		['brand'] = 'Pegassi',
		['model'] = 'infernus2',
		['price'] = 245000,
		['category'] = 'sportsclassics',
		['hash'] = 'infernus2',
		['shop'] = 'pdm',
	},
	['jb700'] = {
		['name'] = 'JB 700',
		['brand'] = 'Dewbauchee',
		['model'] = 'jb700',
		['price'] = 240000,
		['category'] = 'sportsclassic',
		['hash'] = 'jb700',
		['shop'] = 'pdm',
	},
	['jb7002'] = {
		['name'] = 'JB 700W',
		['brand'] = 'Dewbauchee',
		['model'] = 'jb7002',
		['price'] = 40000,
		['category'] = 'sportsclassic',
		['hash'] = 'jb7002',
		['shop'] = 'pdm',
	},
	['mamba'] = {
		['name'] = 'Mamba',
		['brand'] = 'Declasse',
		['model'] = 'mamba',
		['price'] = 140000,
		['category'] = 'sportsclassics',
		['hash'] = 'mamba',
		['shop'] = 'pdm',
	},
	['manana'] = {
		['name'] = 'Manana',
		['brand'] = 'Albany',
		['model'] = 'manana',
		['price'] = 12800,
		['category'] = 'muscle',
		['hash'] = 'manana',
		['shop'] = 'pdm',
	},
	['manana2'] = {
		['name'] = 'Manana Custom',
		['brand'] = 'Albany',
		['model'] = 'manana2',
		['price'] = 24000,
		['category'] = 'muscle',
		['hash'] = 'manana2',
		['shop'] = 'pdm',
	},
	['michelli'] = {
		['name'] = 'Michelli GT',
		['brand'] = 'Lampadati',
		['model'] = 'michelli',
		['price'] = 30000,
		['category'] = 'sportsclassic',
		['hash'] = 'michelli',
		['shop'] = 'pdm',
	},
	['monroe'] = {
		['name'] = 'Monroe',
		['brand'] = 'Pegassi',
		['model'] = 'monroe',
		['price'] = 115000,
		['category'] = 'sportsclassics',
		['hash'] = 'monroe',
		['shop'] = 'pdm',
	},
	['nebula'] = {							--DLC
		['name'] = 'Nebula',
		['brand'] = 'Vulcar',
		['model'] = 'nebula',
		['price'] = 22000,
		['category'] = 'sportsclassic',
		['hash'] = 'nebula',
		['shop'] = 'pdm',
	},
	['peyote'] = {
		['name'] = 'Peyote',
		['brand'] = 'Vapid',
		['model'] = 'peyote',
		['price'] = 23500,
		['category'] = 'sportsclassic',
		['hash'] = 'peyote',
		['shop'] = 'pdm',
	},
	['peyote3'] = {
		['name'] = 'Peyote Custom',
		['brand'] = 'Vapid',
		['model'] = 'peyote3',
		['price'] = 48000,
		['category'] = 'sportsclassic',
		['hash'] = 'peyote3',
		['shop'] = 'pdm',
	},
	['pigalle'] = {
		['name'] = 'Pigalle',
		['brand'] = 'Lampadati',
		['model'] = 'pigalle',
		['price'] = 92000,
		['category'] = 'sportsclassics',
		['hash'] = 'pigalle',
		['shop'] = 'pdm',
	},
	['rapidgt3'] = {
		['name'] = 'Rapid GT',
		['brand'] = 'Dewbauchee',
		['model'] = 'rapidgt3',
		['price'] = 90000,
		['category'] = 'sportsclassics',
		['hash'] = 'rapidgt3',
		['shop'] = 'pdm',
	},
	['retinue'] = {
		['name'] = 'Retinue',
		['brand'] = 'Vapid',
		['model'] = 'retinue',
		['price'] = 32000,
		['category'] = 'sportsclassic',
		['hash'] = 'retinue',
		['shop'] = 'pdm',
	},
	['retinue2'] = {
		['name'] = 'Retinue MKII',
		['brand'] = 'Vapid',
		['model'] = 'retinue2',
		['price'] = 38000,
		['category'] = 'sportsclassic',
		['hash'] = 'retinue2',
		['shop'] = 'pdm',
	},
	['savestra'] = {
		['name'] = 'Savestra',
		['brand'] = 'Annis',
		['model'] = 'savestra',
		['price'] = 67000,
		['category'] = 'sportsclassic',
		['hash'] = 'savestra',
		['shop'] = 'pdm',
	},
	['stinger'] = {
		['name'] = 'Stinger',
		['brand'] = 'Grotti',
		['model'] = 'stinger',
		['price'] = 39500,
		['category'] = 'sportsclassic',
		['hash'] = 'stinger',
		['shop'] = 'pdm',
	},
	['stingergt'] = {
		['name'] = 'Stinger GT',
		['brand'] = 'Grotti',
		['model'] = 'stingergt',
		['price'] = 70000,
		['category'] = 'sportsclassics',
		['hash'] = 'stingergt',
		['shop'] = 'pdm',
	},
	['stromberg'] = {
		['name'] = 'Stromberg',
		['brand'] = 'Ocelot',
		['model'] = 'stromberg',
		['price'] = 80000,
		['category'] = 'sportsclassic',
		['hash'] = 'stromberg',
		['shop'] = 'pdm',
	},
	['swinger'] = {							--DLC
		['name'] = 'Swinger',
		['brand'] = 'Ocelot',
		['model'] = 'swinger',
		['price'] = 221000,
		['category'] = 'sportsclassic',
		['hash'] = 'swinger',
		['shop'] = 'pdm',
	},
	['torero'] = {
		['name'] = 'Torero',
		['brand'] = 'Pegassi',
		['model'] = 'torero',
		['price'] = 84000,
		['category'] = 'sportsclassics',
		['hash'] = 'torero',
		['shop'] = 'pdm',
	},
	['tornado'] = {
		['name'] = 'Tornado',
		['brand'] = 'Declasse',
		['model'] = 'tornado',
		['price'] = 21000,
		['category'] = 'sportsclassic',
		['hash'] = 'tornado',
		['shop'] = 'pdm',
	},
	['tornado2'] = {
		['name'] = 'Tornado Gang',
		['brand'] = 'Declasse',
		['model'] = 'tornado2',
		['price'] = 22000,
		['category'] = 'sportsclassic',
		['hash'] = 'tornado2',
		['shop'] = 'pdm',
	},
	['tornado5'] = {
		['name'] = 'Tornado Custom',
		['brand'] = 'Declasse',
		['model'] = 'tornado5',
		['price'] = 22000,
		['category'] = 'sportsclassic',
		['hash'] = 'tornado5',
		['shop'] = 'pdm',
	},
	['turismo2'] = {
		['name'] = 'Turismo Classic',
		['brand'] = 'Grotti',
		['model'] = 'turismo2',
		['price'] = 170000,
		['category'] = 'sportsclassic',
		['hash'] = 'turismo2',
		['shop'] = 'pdm',
	},
	['viseris'] = {
		['name'] = 'Viseris',
		['brand'] = 'Lampadati',
		['model'] = 'viseris',
		['price'] = 210000,
		['category'] = 'sportsclassic',
		['hash'] = 'viseris',
		['shop'] = 'pdm',
	},
	['z190'] = {
		['name'] = '190Z',
		['brand'] = 'Karin',
		['model'] = 'z190',
		['price'] = 78000,
		['category'] = 'sportsclassics',
		['hash'] = 'z190',
		['shop'] = 'pdm',
	},
	['ztype'] = {
		['name'] = 'Z-Type',
		['brand'] = 'Truffade',
		['model'] = 'ztype',
		['price'] = 270000,
		['category'] = 'sportsclassics',
		['hash'] = 'ztype',
		['shop'] = 'pdm',
	},
	['zion3'] = {							--DLC
		['name'] = 'Zion Classic',
		['brand'] = 'Übermacht',
		['model'] = 'zion3',
		['price'] = 45000,
		['category'] = 'sportsclassic',
		['hash'] = 'zion3',
		['shop'] = 'pdm',
	},
	['cheburek'] = {
		['name'] = 'Cheburek',
		['brand'] = 'Rune',
		['model'] = 'cheburek',
		['price'] = 7000,
		['category'] = 'sportsclassic',
		['hash'] = 'cheburek',
		['shop'] = 'pdm',
	},
	['toreador'] = {
		['name'] = 'Toreador',
		['brand'] = 'Pegassi',
		['model'] = 'toreador',
		['price'] = 50000,
		['category'] = 'sportsclassic',
		['hash'] = 'toreador',
		['shop'] = 'pdm',
	},
	--- Super
	['adder'] = {
		['name'] = 'Adder',
		['brand'] = 'Truffade',
		['model'] = 'adder',
		['price'] = 280000,
		['category'] = 'super',
		['hash'] = 'adder',
		['shop'] = 'luxury',
	},
	['autarch'] = {
		['name'] = 'Autarch',
		['brand'] = 'Överflöd',
		['model'] = 'autarch',
		['price'] = 224000,
		['category'] = 'super',
		['hash'] = 'autarch',
		['shop'] = 'none',
	},
	['banshee2'] = {
		['name'] = 'Banshee 900R',
		['brand'] = 'Bravado',
		['model'] = 'banshee2',
		['price'] = 120000,
		['category'] = 'super',
		['hash'] = 'banshee2',
		['shop'] = 'luxury',
	},
	['bullet'] = {
		['name'] = 'Bullet',
		['brand'] = 'Vapid',
		['model'] = 'bullet',
		['price'] = 120000,
		['category'] = 'super',
		['hash'] = 'bullet',
		['shop'] = 'none',
	},
	['cheetah'] = {
		['name'] = 'Cheetah',
		['brand'] = 'Grotti',
		['model'] = 'cheetah',
		['price'] = 214000,
		['category'] = 'super',
		['hash'] = 'cheetah',
		['shop'] = 'luxury',
	},
	['cyclone'] = {         --might be too overpowered
		['name'] = 'Cyclone',
		['brand'] = 'Coil',
		['model'] = 'cyclone',
		['price'] = 300000,
		['category'] = 'super',
		['hash'] = 'cyclone',
		['shop'] = 'luxury',
	},
	['entity2'] = {
		['name'] = 'Entity XXR',
		['brand'] = 'Överflöd',
		['model'] = 'entity2',
		['price'] = 164000,
		['category'] = 'super',
		['hash'] = 'entity2',
		['shop'] = 'luxury',
	},
	['entityxf'] = {
		['name'] = 'Entity XF',
		['brand'] = 'Överflöd',
		['model'] = 'entityxf',
		['price'] = 180000,
		['category'] = 'super',
		['hash'] = 'entityxf',
		['shop'] = 'luxury',
	},
	['emerus'] = {							--DLC
		['name'] = 'Emerus',
		['brand'] = 'Progen',
		['model'] = 'emerus',
		['price'] = 220000,
		['category'] = 'super',
		['hash'] = 'emerus',
		['shop'] = 'luxury',
	},
	['fmj'] = {
		['name'] = 'FMJ',
		['brand'] = 'Vapid',
		['model'] = 'fmj',
		['price'] = 125000,
		['category'] = 'super',
		['hash'] = 'fmj',
		['shop'] = 'luxury',
	},
	['furia'] = {
		['name'] = 'Furia',
		['brand'] = 'Grotti',
		['model'] = 'furia',
		['price'] = 230000,
		['category'] = 'super',
		['hash'] = 'furia',
		['shop'] = 'luxury',
	},
	['gp1'] = {
		['name'] = 'GP1',
		['brand'] = 'Progen',
		['model'] = 'gp1',
		['price'] = 110000,
		['category'] = 'super',
		['hash'] = 'gp1',
		['shop'] = 'luxury',
	},
	['infernus'] = {
		['name'] = 'Infernus',
		['brand'] = 'Pegassi',
		['model'] = 'infernus',
		['price'] = 235000,
		['category'] = 'super',
		['hash'] = 'infernus',
		['shop'] = 'luxury',
	},
	['italigtb'] = {
		['name'] = 'Itali GTB',
		['brand'] = 'Progen',
		['model'] = 'italigtb',
		['price'] = 170000,
		['category'] = 'super',
		['hash'] = 'italigtb',
		['shop'] = 'luxury',
	},
	['italigtb2'] = {
		['name'] = 'Itali GTB',
		['brand'] = 'Progen',
		['model'] = 'italigtb2',
		['price'] = 250000,
		['category'] = 'super',
		['hash'] = 'italigtb2',
		['shop'] = 'luxury',
	},
	['krieger'] = {							--DLC
		['name'] = 'Krieger',
		['brand'] = 'Benefactor',
		['model'] = 'krieger',
		['price'] = 222000,
		['category'] = 'super',
		['hash'] = 'krieger',
		['shop'] = 'luxury',
	},
	['le7b'] = {
		['name'] = 'RE-7B',
		['brand'] = 'Annis',
		['model'] = 'le7b',
		['price'] = 260000,
		['category'] = 'super',
		['hash'] = 'le7b',
		['shop'] = 'luxury',
	},
	['nero'] = {
		['name'] = 'Nero',
		['brand'] = 'Truffade',
		['model'] = 'nero',
		['price'] = 200000,
		['category'] = 'super',
		['hash'] = 'nero',
		['shop'] = 'luxury',
	},
	['nero2'] = {
		['name'] = 'Nero Custom',
		['brand'] = 'Truffade',
		['model'] = 'nero2',
		['price'] = 260000,
		['category'] = 'super',
		['hash'] = 'nero2',
		['shop'] = 'luxury',
	},
	['osiris'] = {
		['name'] = 'Osiris',
		['brand'] = 'Pegassi',
		['model'] = 'osiris',
		['price'] = 220000,
		['category'] = 'super',
		['hash'] = 'osiris',
		['shop'] = 'luxury',
	},
	['penetrator'] = {
		['name'] = 'Penetrator',
		['brand'] = 'Ocelot',
		['model'] = 'penetrator',
		['price'] = 130000,
		['category'] = 'super',
		['hash'] = 'penetrator',
		['shop'] = 'luxury',
	},
	['pfister811'] = {
		['name'] = '811',
		['brand'] = 'Pfister',
		['model'] = 'pfister811',
		['price'] = 220000,
		['category'] = 'super',
		['hash'] = 'pfister811',
		['shop'] = 'luxury',
	},
	['prototipo'] = {
		['name'] = 'X80 Proto',
		['brand'] = 'Grotti',
		['model'] = 'prototipo',
		['price'] = 235000,
		['category'] = 'super',
		['hash'] = 'prototipo',
		['shop'] = 'luxury',
	},
	['reaper'] = {
		['name'] = 'Reaper',
		['brand'] = 'Pegassi',
		['model'] = 'reaper',
		['price'] = 100000,
		['category'] = 'super',
		['hash'] = 'reaper',
		['shop'] = 'luxury',
	},
	['s80'] = {							--DLC
		['name'] = 'S80RR',
		['brand'] = 'Annis',
		['model'] = 's80',
		['price'] = 205000,
		['category'] = 'super',
		['hash'] = 's80',
		['shop'] = 'luxury',
	},
	['sc1'] = {
		['name'] = 'SC1',
		['brand'] = 'Übermacht',
		['model'] = 'sc1',
		['price'] = 90000,
		['category'] = 'super',
		['hash'] = 'sc1',
		['shop'] = 'luxury',
	},
	['sheava'] = {							--DLC
		['name'] = 'ETR1',
		['brand'] = 'Emperor',
		['model'] = 'sheava',
		['price'] = 220000,
		['category'] = 'super',
		['hash'] = 'sheava',
		['shop'] = 'luxury',
	},
	['sultanrs'] = {
		['name'] = 'Sultan RS',
		['brand'] = 'Karin',
		['model'] = 'sultanrs',
		['price'] = 76500,
		['category'] = 'sports',
		['hash'] = 'sultanrs',
		['shop'] = 'luxury',
	},
	['t20'] = {
		['name'] = 'T20',
		['brand'] = 'Progen',
		['model'] = 't20',
		['price'] = 1650000,
		['category'] = 'super',
		['hash'] = 't20',
		['shop'] = 'luxury',
	},
	['taipan'] = {
		['name'] = 'Taipan',
		['brand'] = 'Cheval',
		['model'] = 'taipan',
		['price'] = 1850000,
		['category'] = 'super',
		['hash'] = 'taipan',
		['shop'] = 'luxury',
	},
	['tempesta'] = {
		['name'] = 'Tempesta',
		['brand'] = 'Pegassi',
		['model'] = 'tempesta',
		['price'] = 120000,
		['category'] = 'super',
		['hash'] = 'tempesta',
		['shop'] = 'luxury',
	},
	['tezeract'] = {
		['name'] = 'Tezeract',
		['brand'] = 'Pegassi',
		['model'] = 'tezeract',
		['price'] = 220000,
		['category'] = 'super',
		['hash'] = 'tezeract',
		['shop'] = 'luxury',
	},
	['thrax'] = {							--DLC
		['name'] = 'Thrax',
		['brand'] = 'Truffade',
		['model'] = 'thrax',
		['price'] = 180000,
		['category'] = 'super',
		['hash'] = 'thrax',
		['shop'] = 'luxury',
	},
	['tigon'] = {
		['name'] = 'Tigon',
		['brand'] = 'Lampadati',
		['model'] = 'tigon',
		['price'] = 240000,
		['category'] = 'super',
		['hash'] = 'tigon',
		['shop'] = 'luxury',
	},
	['turismor'] = {
		['name'] = 'Turismo R',
		['brand'] = 'Grotti',
		['model'] = 'turismor',
		['price'] = 140000,
		['category'] = 'super',
		['hash'] = 'turismor',
		['shop'] = 'luxury',
	},
	['tyrant'] = {
		['name'] = 'Tyrant',
		['brand'] = ' Överflöd',
		['model'] = 'tyrant',
		['price'] = 2100000,
		['category'] = 'super',
		['hash'] = 'tyrant',
		['shop'] = 'luxury',
	},
	['tyrus'] = {
		['name'] = 'Tyrus',
		['brand'] = 'Progen',
		['model'] = 'tyrus',
		['price'] = 230000,
		['category'] = 'super',
		['hash'] = 'tyrus',
		['shop'] = 'luxury',
	},
	['vacca'] = {
		['name'] = 'Vacca',
		['brand'] = 'Pegassi',
		['model'] = 'vacca',
		['price'] = 105000,
		['category'] = 'super',
		['hash'] = 'vacca',
		['shop'] = 'luxury',
	},
	['vagner'] = {
		['name'] = 'Vagner',
		['brand'] = 'Dewbauchee',
		['model'] = 'vagner',
		['price'] = 1660000,
		['category'] = 'super',
		['hash'] = 'vagner',
		['shop'] = 'luxury',
	},
	['visione'] = {
		['name'] = 'Visione',
		['brand'] = 'Grotti',
		['model'] = 'visione',
		['price'] = 750000,
		['category'] = 'sports',
		['hash'] = 'visione',
		['shop'] = 'luxury',
	},
	['voltic'] = {
		['name'] = 'Voltic',
		['brand'] = 'Coil',
		['model'] = 'voltic',
		['price'] = 120000,
		['category'] = 'super',
		['hash'] = 'voltic',
		['shop'] = 'luxury',
	},
	['voltic2'] = {
		['name'] = 'Rocket Voltic',
		['brand'] = 'Coil',
		['model'] = 'voltic2',
		['price'] = 9830400,
		['category'] = 'super',
		['hash'] = 'voltic2',
		['shop'] = 'luxury',
	},
	['xa21'] = {
		['name'] = 'XA-21',
		['brand'] = 'Ocelot',
		['model'] = 'xa21',
		['price'] = 180000,
		['category'] = 'super',
		['hash'] = 'xa21',
		['shop'] = 'luxury',
	},
	['zentorno'] = {
		['name'] = 'Zentorno',
		['brand'] = 'Pegassi',
		['model'] = 'zentorno',
		['price'] = 340000,
		['category'] = 'super',
		['hash'] = 'zentorno',
		['shop'] = 'luxury',
	},
	['zorrusso'] = {							--DLC
		['name'] = 'Zorrusso',
		['brand'] = 'Pegassi',
		['model'] = 'zorrusso',
		['price'] = 277000,
		['category'] = 'super',
		['hash'] = 'zorrusso',
		['shop'] = 'luxury',
	},
	-- Vans
	['bison'] = {
		['name'] = 'Bison',
		['brand'] = 'Bravado',
		['model'] = 'bison',
		['price'] = 18000,
		['category'] = 'vans',
		['hash'] = 'bison',
		['shop'] = 'pdm',
	},
	['bobcatxl'] = {
		['name'] = 'Bobcat XL Open',
		['brand'] = 'Vapid',
		['model'] = 'bobcatxl',
		['price'] = 13500,
		['category'] = 'vans',
		['hash'] = 'bobcatxl',
		['shop'] = 'pdm',
	},
	['burrito3'] = {
		['name'] = 'Burrito',
		['brand'] = 'Declasse',
		['model'] = 'burrito3',
		['price'] = 4000,
		['category'] = 'vans',
		['hash'] = 'burrito3',
		['shop'] = 'pdm',
	},
	['gburrito2'] = {
		['name'] = 'Burrito Custom',
		['brand'] = 'Declasse',
		['model'] = 'gburrito2',
		['price'] = 11500,
		['category'] = 'vans',
		['hash'] = 'gburrito2',
		['shop'] = 'pdm',
	},
	['rumpo'] = {
		['name'] = 'Rumpo',
		['brand'] = 'Bravado',
		['model'] = 'rumpo',
		['price'] = 9000,
		['category'] = 'vans',
		['hash'] = 'rumpo',
		['shop'] = 'pdm',
	},
	['journey'] = {
		['name'] = 'Journey',
		['brand'] = 'Zirconium',
		['model'] = 'journey',
		['price'] = 6500,
		['category'] = 'vans',
		['hash'] = 'journey',
		['shop'] = 'pdm',
	},
	['minivan'] = {
		['name'] = 'Minivan',
		['brand'] = 'Vapid',
		['model'] = 'minivan',
		['price'] = 7000,
		['category'] = 'vans',
		['hash'] = 'minivan',
		['shop'] = 'pdm',
	},
	['minivan2'] = {
		['name'] = 'Minivan Custom',
		['brand'] = 'Vapid',
		['model'] = 'minivan2',
		['price'] = 10000,
		['category'] = 'vans',
		['hash'] = 'minivan2',
		['shop'] = 'pdm',
	},
	['paradise'] = {
		['name'] = 'Paradise',
		['brand'] = 'Bravado',
		['model'] = 'paradise',
		['price'] = 9000,
		['category'] = 'vans',
		['hash'] = 'paradise',
		['shop'] = 'pdm',
	},
	['rumpo3'] = {
		['name'] = 'Rumpo Custom',
		['brand'] = 'Bravado',
		['model'] = 'rumpo3',
		['price'] = 19500,
		['category'] = 'vans',
		['hash'] = 'rumpo3',
		['shop'] = 'pdm',
	},
	['speedo'] = {
		['name'] = 'Speedo',
		['brand'] = 'Vapid',
		['model'] = 'speedo',
		['price'] = 10000,
		['category'] = 'vans',
		['hash'] = 'speedo',
		['shop'] = 'pdm',
	},
	['speedo4'] = {
		['name'] = 'Speedo Custom',
		['brand'] = 'Vapid',
		['model'] = 'speedo4',
		['price'] = 15000,
		['category'] = 'vans',
		['hash'] = 'speedo4',
		['shop'] = 'pdm',
	},
	['surfer'] = {
		['name'] = 'Surfer',
		['brand'] = 'BF',
		['model'] = 'surfer',
		['price'] = 9000,
		['category'] = 'vans',
		['hash'] = 'surfer',
		['shop'] = 'pdm',
	},
	['youga3'] = {
		['name'] = 'Youga Classic 4x4',
		['brand'] = 'Bravado',
		['model'] = 'youga3',
		['price'] = 15000,
		['category'] = 'vans',
		['hash'] = 'youga3',
		['shop'] = 'pdm',
	},
	['youga'] = {
		['name'] = 'Youga',
		['brand'] = 'Bravado',
		['model'] = 'youga',
		['price'] = 8000,
		['category'] = 'vans',
		['hash'] = 'youga',
		['shop'] = 'pdm',
	},
	['youga2'] = {
		['name'] = 'Youga Classic',
		['brand'] = 'Bravado',
		['model'] = 'youga2',
		['price'] = 14500,
		['category'] = 'vans',
		['hash'] = 'youga2',
		['shop'] = 'pdm',
	},
	['youga4'] = { 	 	--DLC +set sv_enforceGameBuild 2545
		['name'] = 'Youga',
		['brand'] = 'Bravado',
		['model'] = 'youga4',
		['price'] = 85000,
		['category'] = 'vans',
		['hash'] = 'youga4',
		['shop'] = 'pdm',
	},
	['mule5'] = { 	 	--DLC +set sv_enforceGameBuild 2545
		['name'] = 'Mule',
		['brand'] = 'Box Truck',
		['model'] = 'mule5',
		['price'] = 221000,
		['category'] = 'vans',
		['hash'] = 'mule5',
		['shop'] = 'pdm',
	},
	----BIKES
	['akuma'] = {
		['name'] = 'Akuma',
		['brand'] = 'Dinka',
		['model'] = 'akuma',
		['price'] = 55000,
		['category'] = 'motorcycles',
		['hash'] = 'akuma',
		['shop'] = 'RowsRides',
	},
	['avarus'] = {
		['name'] = 'Avarus',
		['brand'] = 'LCC',
		['model'] = 'avarus',
		['price'] = 20000,
		['category'] = 'motorcycles',
		['hash'] = 'avarus',
		['shop'] = 'RowsRides',
	},
	['bagger'] = {
		['name'] = 'Bagger',
		['brand'] = 'WMC',
		['model'] = 'bagger',
		['price'] = 13500,
		['category'] = 'motorcycles',
		['hash'] = 'bagger',
		['shop'] = 'RowsRides',
	},
	['bati'] = {
		['name'] = 'Bati 801',
		['brand'] = 'Pegassi',
		['model'] = 'bati',
		['price'] = 24000,
		['category'] = 'motorcycles',
		['hash'] = 'bati',
		['shop'] = 'RowsRides',
	},
	['bati2'] = {
		['name'] = 'Bati 801RR',
		['brand'] = 'Pegassi',
		['model'] = 'bati2',
		['price'] = 19000,
		['category'] = 'motorcycles',
		['hash'] = 'bati2',
		['shop'] = 'RowsRides',
	},
	['bf400'] = {
		['name'] = 'BF400',
		['brand'] = 'Nagasaki',
		['model'] = 'bf400',
		['price'] = 22000,
		['category'] = 'motorcycles',
		['hash'] = 'bf400',
		['shop'] = 'RowsRides',
	},
	['chimera'] = {
		['name'] = 'Chimera',
		['brand'] = 'Nagasaki',
		['model'] = 'chimera',
		['price'] = 21000,
		['category'] = 'motorcycles',
		['hash'] = 'chimera',
		['shop'] = 'RowsRides',
	},
	['cliffhanger'] = {
		['name'] = 'Cliffhanger',
		['brand'] = 'Western',
		['model'] = 'cliffhanger',
		['price'] = 28500,
		['category'] = 'motorcycles',
		['hash'] = 'cliffhanger',
		['shop'] = 'RowsRides',
	},
	['daemon'] = {
		['name'] = 'Daemon',
		['brand'] = 'WMC',
		['model'] = 'daemon',
		['price'] = 14000,
		['category'] = 'motorcycles',
		['hash'] = 'daemon',
		['shop'] = 'RowsRides',
	},
	['daemon2'] = {
		['name'] = 'Daemon Custom',
		['brand'] = 'Western',
		['model'] = 'daemon2',
		['price'] = 23000,
		['category'] = 'motorcycles',
		['hash'] = 'daemon2',
		['shop'] = 'RowsRides',
	},
	['defiler'] = {
		['name'] = 'Defiler',
		['brand'] = 'Shitzu',
		['model'] = 'defiler',
		['price'] = 30000,
		['category'] = 'motorcycles',
		['hash'] = 'defiler',
		['shop'] = 'RowsRides',
	},
	['deathbike'] = {							--DLC
		['name'] = 'deathbike',
		['brand'] = 'deathbike',
		['model'] = 'deathbike',
		['price'] = 200000,
		['category'] = 'motorcycles',
		['hash'] = 'deathbike',
		['shop'] = 'RowsRides',
	},
	['deathbike2'] = {							--DLC
		['name'] = 'deathbike2',
		['brand'] = 'deathbike',
		['model'] = 'deathbike2',
		['price'] = 200000,
		['category'] = 'motorcycles',
		['hash'] = 'deathbike2',
		['shop'] = 'RowsRides',
	},
	['deathbike3'] = {							--DLC
		['name'] = 'deathbike3',
		['brand'] = 'deathbike',
		['model'] = 'deathbike3',
		['price'] = 200000,
		['category'] = 'motorcycles',
		['hash'] = 'deathbike3',
		['shop'] = 'RowsRides',
	},
	['diablous'] = {
		['name'] = 'Diablous',
		['brand'] = 'Principe',
		['model'] = 'diablous',
		['price'] = 30000,
		['category'] = 'motorcycles',
		['hash'] = 'diablous',
		['shop'] = 'RowsRides',
	},
	['diablous2'] = {
		['name'] = 'Diablous Custom',
		['brand'] = 'Principe',
		['model'] = 'diablous2',
		['price'] = 38000,
		['category'] = 'motorcycles',
		['hash'] = 'diablous2',
		['shop'] = 'RowsRides',
	},
	['double'] = {
		['name'] = 'Double-T',
		['brand'] = 'Dinka',
		['model'] = 'double',
		['price'] = 28000,
		['category'] = 'motorcycles',
		['hash'] = 'double',
		['shop'] = 'RowsRides',
	},
	['enduro'] = {
		['name'] = 'Enduro',
		['brand'] = 'Dinka',
		['model'] = 'enduro',
		['price'] = 5500,
		['category'] = 'motorcycles',
		['hash'] = 'enduro',
		['shop'] = 'RowsRides',
	},
	['esskey'] = {
		['name'] = 'Esskey',
		['brand'] = 'Pegassi',
		['model'] = 'esskey',
		['price'] = 12000,
		['category'] = 'motorcycles',
		['hash'] = 'esskey',
		['shop'] = 'RowsRides',
	},
	['faggio'] = {
		['name'] = 'Faggio Sport',
		['brand'] = 'Pegassi',
		['model'] = 'faggio',
		['price'] = 2000,
		['category'] = 'motorcycles',
		['hash'] = 'faggio',
		['shop'] = 'RowsRides',
	},
	['faggio2'] = {
		['name'] = 'Faggio',
		['brand'] = 'Pegassi',
		['model'] = 'faggio2',
		['price'] = 1900,
		['category'] = 'motorcycles',
		['hash'] = 'faggio2',
		['shop'] = 'RowsRides',
	},
	['faggio3'] = {
		['name'] = 'Faggio Mod',
		['brand'] = 'Pegassi',
		['model'] = 'faggio3',
		['price'] = 2500,
		['category'] = 'motorcycles',
		['hash'] = 'faggio3',
		['shop'] = 'RowsRides',
	},
	['fcr'] = {
		['name'] = 'FCR 1000',
		['brand'] = 'Pegassi',
		['model'] = 'fcr',
		['price'] = 5000,
		['category'] = 'motorcycles',
		['hash'] = 'fcr',
		['shop'] = 'RowsRides',
	},
	['fcr2'] = {
		['name'] = 'FCR 1000 Custom',
		['brand'] = 'Pegassi',
		['model'] = 'fcr2',
		['price'] = 19000,
		['category'] = 'motorcycles',
		['hash'] = 'fcr2',
		['shop'] = 'RowsRides',
	},
	['gargoyle'] = {
		['name'] = 'Gargoyle',
		['brand'] = 'Western',
		['model'] = 'gargoyle',
		['price'] = 32000,
		['category'] = 'motorcycles',
		['hash'] = 'gargoyle',
		['shop'] = 'RowsRides',
	},
	['hakuchou'] = {
		['name'] = 'Hakuchou',
		['brand'] = 'Shitzu',
		['model'] = 'hakuchou',
		['price'] = 17000,
		['category'] = 'motorcycles',
		['hash'] = 'hakuchou',
		['shop'] = 'RowsRides',
	},
	['hakuchou2'] = {
		['name'] = 'Hakuchou Drag',
		['brand'] = 'Shitzu',
		['model'] = 'hakuchou2',
		['price'] = 45000,
		['category'] = 'motorcycles',
		['hash'] = 'hakuchou2',
		['shop'] = 'RowsRides',
	},
	['innovation'] = {
		['name'] = 'Innovation',
		['brand'] = 'LLC',
		['model'] = 'innovation',
		['price'] = 33500,
		['category'] = 'motorcycles',
		['hash'] = 'innovation',
		['shop'] = 'RowsRides',
	},
	['lectro'] = {
		['name'] = 'Lectro',
		['brand'] = 'Principe',
		['model'] = 'lectro',
		['price'] = 28000,
		['category'] = 'motorcycles',
		['hash'] = 'lectro',
		['shop'] = 'RowsRides',
	},
	['manchez'] = {
		['name'] = 'Manchez',
		['brand'] = 'Maibatsu',
		['model'] = 'manchez',
		['price'] = 8300,
		['category'] = 'motorcycles',
		['hash'] = 'manchez',
		['shop'] = 'RowsRides',
	},
	['nemesis'] = {
		['name'] = 'Nemesis',
		['brand'] = 'Principe',
		['model'] = 'nemesis',
		['price'] = 20000,
		['category'] = 'motorcycles',
		['hash'] = 'nemesis',
		['shop'] = 'RowsRides',
	},
	['nightblade'] = {
		['name'] = 'Nightblade',
		['brand'] = 'WMC',
		['model'] = 'nightblade',
		['price'] = 23000,
		['category'] = 'bikes',
		['hash'] = 'nightblade',
		['shop'] = 'RowsRides',
	},
	['oppressor'] = {
		['name'] = 'Oppressor',
		['brand'] = 'Pegassi',
		['model'] = 'oppressor',
		['price'] = 9999999,
		['category'] = 'super',
		['hash'] = 'oppressor',
		['shop'] = 'none',
	},
	['pcj'] = {
		['name'] = 'PCJ-600',
		['brand'] = 'Shitzu',
		['model'] = 'pcj',
		['price'] = 15000,
		['category'] = 'motorcycles',
		['hash'] = 'pcj',
		['shop'] = 'RowsRides',
	},
	['ratbike'] = {
		['name'] = 'Rat Bike',
		['brand'] = 'Western',
		['model'] = 'ratbike',
		['price'] = 3000,
		['category'] = 'motorcycles',
		['hash'] = 'ratbike',
		['shop'] = 'RowsRides',
	},
	['ruffian'] = {
		['name'] = 'Ruffian',
		['brand'] = 'Pegassi',
		['model'] = 'ruffian',
		['price'] = 25000,
		['category'] = 'motorcycles',
		['hash'] = 'ruffian',
		['shop'] = 'RowsRides',
	},
	['sanchez'] = {
		['name'] = 'Sanchez Livery',
		['brand'] = 'Maibatsu',
		['model'] = 'sanchez',
		['price'] = 5300,
		['category'] = 'motorcycles',
		['hash'] = 'sanchez',
		['shop'] = 'RowsRides',
	},
	['sanchez2'] = {
		['name'] = 'Sanchez',
		['brand'] = 'Maibatsu',
		['model'] = 'sanchez2',
		['price'] = 5300,
		['category'] = 'motorcycles',
		['hash'] = 'sanchez2',
		['shop'] = 'RowsRides',
	},
	['sanctus'] = {
		['name'] = 'Sanctus',
		['brand'] = 'LCC',
		['model'] = 'sanctus',
		['price'] = 35000,
		['category'] = 'motorcycles',
		['hash'] = 'sanctus',
		['shop'] = 'RowsRides',
	},
	['shotaro'] = {
		['name'] = 'Shotaro Concept',
		['brand'] = 'Nagasaki',
		['model'] = 'shotaro',
		['price'] = 320000,
		['category'] = 'motorcycles',
		['hash'] = 'shotaro',
		['shop'] = 'RowsRides',
	},
	['sovereign'] = {
		['name'] = 'Sovereign',
		['brand'] = 'WMC',
		['model'] = 'sovereign',
		['price'] = 8000,
		['category'] = 'motorcycles',
		['hash'] = 'sovereign',
		['shop'] = 'RowsRides',
	},
	['stryder'] = {
		['name'] = 'Stryder',
		['brand'] = 'Nagasaki',
		['model'] = 'stryder',
		['price'] = 50000,
		['category'] = 'motorcycles',
		['hash'] = 'stryder',
		['shop'] = 'RowsRides',
	},
	['thrust'] = {
		['name'] = 'Thrust',
		['brand'] = 'Dinka',
		['model'] = 'thrust',
		['price'] = 22000,
		['category'] = 'motorcycles',
		['hash'] = 'thrust',
		['shop'] = 'RowsRides',
	},
	['vader'] = {
		['name'] = 'Vader',
		['brand'] = 'Shitzu',
		['model'] = 'vader',
		['price'] = 7200,
		['category'] = 'motorcycles',
		['hash'] = 'vader',
		['shop'] = 'RowsRides',
	},
	['vindicator'] = {
		['name'] = 'Vindicator',
		['brand'] = 'Dinka',
		['model'] = 'vindicator',
		['price'] = 19000,
		['category'] = 'motorcycles',
		['hash'] = 'vindicator',
		['shop'] = 'RowsRides',
	},
	['vortex'] = {
		['name'] = 'Vortex',
		['brand'] = 'Pegassi',
		['model'] = 'vortex',
		['price'] = 31000,
		['category'] = 'motorcycles',
		['hash'] = 'vortex',
		['shop'] = 'RowsRides',
	},
	['wolfsbane'] = {
		['name'] = 'Wolfsbane',
		['brand'] = 'Western',
		['model'] = 'wolfsbane',
		['price'] = 14000,
		['category'] = 'motorcycles',
		['hash'] = 'wolfsbane',
		['shop'] = 'RowsRides',
	},
	['zombiea'] = {
		['name'] = 'Zombie Bobber',
		['brand'] = 'Western',
		['model'] = 'zombiea',
		['price'] = 28000,
		['category'] = 'motorcycles',
		['hash'] = 'zombiea',
		['shop'] = 'RowsRides',
	},
	['zombieb'] = {
		['name'] = 'Zombie Chopper',
		['brand'] = 'Western',
		['model'] = 'zombieb',
		['price'] = 27000,
		['category'] = 'motorcycles',
		['hash'] = 'zombieb',
		['shop'] = 'RowsRides',
	},
	['manchez2'] = {
		['name'] = 'Manchez',
		['brand'] = 'Maibatsu',
		['model'] = 'manchez2',
		['price'] = 14000,
		['category'] = 'motorcycles',
		['hash'] = 'manchez2',
		['shop'] = 'RowsRides',
	},
	['shinobi'] = {		--DLC +set sv_enforceGameBuild 2545
		['name'] = 'Shinobi',
		['brand'] = 'Nagasaki',
		['model'] = 'shinobi',
		['price'] = 25000,
		['category'] = 'motorcycles',
		['hash'] = 'shinobi',
		['shop'] = 'RowsRides',
	},
	['reever'] = {		--DLC +set sv_enforceGameBuild 2545
		['name'] = 'Reever',
		['brand'] = 'Western',
		['model'] = 'reever',
		['price'] = 25000,
		['category'] = 'motorcycles',
		['hash'] = 'reever',
		['shop'] = 'RowsRides',
	},
	['rudiharley'] = {
		['name'] = 'Rudi',
		['brand'] = 'Harley Davidson',
		['model'] = 'rudiharley',
		['price'] = 450000,
		['category'] = 'motorcycles',
		['hash'] = 'rudiharley',
		['shop'] = 'RowsRides',
	},
	['zx10'] = {
		['name'] = 'Ninja ZX10',
		['brand'] = 'Kawasaki',
		['model'] = 'zx10',
		['price'] = 950000,
		['category'] = 'motorcycles',
		['hash'] = 'zx10',
		['shop'] = 'RowsRides',
	},
	['yz450f'] = {
		['name'] = 'YZ450f',
		['brand'] = 'Yamaha',
		['model'] = 'yz450f',
		['price'] = 55000,
		['category'] = 'motorcycles',
		['hash'] = 'yz450f',
		['shop'] = 'RowsRides',
	},
	['yz250f'] = {
		['name'] = 'YZ250f',
		['brand'] = 'Yamaha',
		['model'] = 'yz250f',
		['price'] = 25000,
		['category'] = 'motorcycles',
		['hash'] = 'yz250f',
		['shop'] = 'RowsRides',
	},
	['kx450f'] = {
		['name'] = 'KX450f',
		['brand'] = 'Kawasaki',
		['model'] = 'kx450f',
		['price'] = 55000,
		['category'] = 'motorcycles',
		['hash'] = 'kx450f',
		['shop'] = 'RowsRides',
	},
	['hcbr17'] = {
		['name'] = 'CBR1000 2017',
		['brand'] = 'Honda',
		['model'] = 'hcbr17',
		['price'] = 90000,
		['category'] = 'motorcycles',
		['hash'] = 'hcbr17',
		['shop'] = 'RowsRides',
	},
	['bmwr'] = {
		['name'] = 'R1100S',
		['brand'] = 'BMW',
		['model'] = 'bmwr',
		['price'] = 850000,
		['category'] = 'motorcycles',
		['hash'] = 'bmwr',
		['shop'] = 'RowsRides',
	},
	['eastwood'] = {
		['name'] = 'Eastwood',
		['brand'] = 'Harley Davidson',
		['model'] = 'eastwood',
		['price'] = 75000,
		['category'] = 'motorcycles',
		['hash'] = 'eastwood',
		['shop'] = 'RowsRides',
	},
	['hexer'] = {
		['name'] = 'Hexer',
		['brand'] = 'Harley Davidson',
		['model'] = 'hexer',
		['price'] = 75000,
		['category'] = 'motorcycles',
		['hash'] = 'hexer',
		['shop'] = 'RowsRides',
	},
	['hexer1'] = {
		['name'] = 'Hexer Custom',
		['brand'] = 'Harley Davidson',
		['model'] = 'hexer1',
		['price'] = 75000,
		['category'] = 'motorcycles',
		['hash'] = 'hexer1',
		['shop'] = 'RowsRides',
	},
	['drakkar'] = {
		['name'] = 'Drakkar',
		['brand'] = 'Harley Davidson',
		['model'] = 'drakkar',
		['price'] = 75000,
		['category'] = 'motorcycles',
		['hash'] = 'drakkar',
		['shop'] = 'RowsRides',
	},
	['cr250'] = {
		['name'] = 'CR250',
		['brand'] = 'Honda',
		['model'] = 'cr250',
		['price'] = 35000,
		['category'] = 'motorcycles',
		['hash'] = 'cr250',
		['shop'] = 'RowsRides',
	},
	['86cr250'] = {
		['name'] = 'CR250 1986',
		['brand'] = 'Honda',
		['model'] = '86cr250',
		['price'] = 45000,
		['category'] = 'motorcycles',
		['hash'] = '86cr250',
		['shop'] = 'RowsRides',
	},
	['08rm250'] = {
		['name'] = 'RM250 2008',
		['brand'] = 'Suzuki',
		['model'] = '08rm250',
		['price'] = 38000,
		['category'] = 'motorcycles',
		['hash'] = '08rm250',
		['shop'] = 'RowsRides',
	},
	['spirit1'] = {
		['name'] = 'Spirit',
		['brand'] = 'Custom',
		['model'] = 'spirit1',
		['price'] = 68000,
		['category'] = 'motorcycles',
		['hash'] = 'spirit1',
		['shop'] = 'RowsRides',
	},
	['templar'] = {
		['name'] = 'Templar',
		['brand'] = 'Custom',
		['model'] = 'templar',
		['price'] = 68000,
		['category'] = 'motorcycles',
		['hash'] = 'templar',
		['shop'] = 'RowsRides',
	},
	['slave'] = {
		['name'] = 'Slave',
		['brand'] = 'Custom',
		['model'] = 'slave',
		['price'] = 68000,
		['category'] = 'motorcycles',
		['hash'] = 'slave',
		['shop'] = 'RowsRides',
	},
	['nightblade2'] = {
		['name'] = 'Nightblade Custom',
		['brand'] = 'WMC',
		['model'] = 'nightblade2',
		['price'] = 68000,
		['category'] = 'motorcycles',
		['hash'] = 'nightblade2',
		['shop'] = 'RowsRides',
	},
	['acebike2'] = {
		['name'] = 'AceBike Drag',
		['brand'] = 'Custom',
		['model'] = 'acebike2',
		['price'] = 108000,
		['category'] = 'motorcycles',
		['hash'] = 'acebike2',
		['shop'] = 'RowsRides',
	},
	['m1000rr'] = {
		['name'] = '1000RR',
		['brand'] = 'BMW',
		['model'] = 'm1000rr',
		['price'] = 77000,
		['category'] = 'motorcycles',
		['hash'] = 'm1000rr',
		['shop'] = 'RowsRides',
	},
	['bmws'] = {
		['name'] = 'S',
		['brand'] = 'BMW',
		['model'] = 'bmws',
		['price'] = 57000,
		['category'] = 'motorcycles',
		['hash'] = 'bmws',
		['shop'] = 'RowsRides',
	},
	['g_xlcr'] = {
		['name'] = 'XLCR',
		['brand'] = 'Harley Davidson',
		['model'] = 'g_xlcr',
		['price'] = 77000,
		['category'] = 'motorcycles',
		['hash'] = 'g_xlcr',
		['shop'] = 'RowsRides',
	},
	['r1'] = {
		['name'] = 'R1',
		['brand'] = 'Yamaha',
		['model'] = 'r1',
		['price'] = 1500000,
		['category'] = 'motorcycles',
		['hash'] = 'r1',
		['shop'] = 'RowsRides',
	},
	['r6'] = {
		['name'] = 'R6',
		['brand'] = 'Yamaha',
		['model'] = 'r6',
		['price'] = 58000,
		['category'] = 'motorcycles',
		['hash'] = 'r6',
		['shop'] = 'RowsRides',
	},
	['rmz2'] = {
		['name'] = 'RMZ',
		['brand'] = 'Suzuki',
		['model'] = 'rmz2',
		['price'] = 38000,
		['category'] = 'motorcycles',
		['hash'] = 'rmz2',
		['shop'] = 'RowsRides',
	},
	['bati701'] = {
		['name'] = 'Bati 701',
		['brand'] = 'Pegassi',
		['model'] = 'bati',
		['price'] = 24000,
		['category'] = 'motorcycles',
		['hash'] = 'bati',
		['shop'] = 'RowsRides',
	},
	--- UTILITY
	['sadler'] = {
		['name'] = 'Sadler',
		['brand'] = 'Vapid',
		['model'] = 'sadler',
		['price'] = 20000,
		['category'] = 'offroad',
		['hash'] = 'sadler',
		['shop'] = 'pdm',
	},
	['guardian'] = {
		['name'] = 'Guardian',
		['brand'] = 'Annis',
		['price'] = 21000,
		['category'] = 'offroad',
		['model'] = 'guardian',
		['hash'] = 'guardian',
		['shop'] = 'pdm',
	},
	['slamtruck'] = {
		['name'] = 'Slam Truck',
		['brand'] = 'Vapid',
		['model'] = 'slamtruck',
		['price'] = 100000,
		['category'] = 'muscle',
		['hash'] = 'slamtruck',
		['shop'] = 'pdm',
	},
	['trailersmall'] = {
		['name'] = 'Trailer',
		['brand'] = 'Yes',
		['model'] = 'trailersmall',
		['price'] = 125000,
		['category'] = 'work',
		['hash'] = 'trailersmall',
		['shop'] = 'pdm',
	},
	['tractorcv8'] = {
		['name'] = 'Tractor',
		['brand'] = 'Stanley',
		['model'] = 'tractorcv8',
		['price'] = 333000,
		['category'] = 'work',
		['hash'] = 'tractorcv8',
		['shop'] = 'pdm',
	},
	['tractorc'] = {
		['name'] = 'Tractor',
		['brand'] = 'Stanley',
		['model'] = 'tractorc',
		['price'] = 155000,
		['category'] = 'work',
		['hash'] = 'tractorc',
		['shop'] = 'pdm',
	},
	['flatbedm2'] = {
		['name'] = 'M2',
		['brand'] = 'Flatbed',
		['model'] = 'flatbedm2',
		['price'] = 24000,
		['category'] = 'work',
		['hash'] = 'flatbedm2',
		['shop'] = 'pdm',
	},
	['ramflatbed'] = {
		['name'] = 'Ram',
		['brand'] = 'Flatbed',
		['model'] = 'ramflatbed',
		['price'] = 24000,
		['category'] = 'work',
		['hash'] = 'ramflatbed',
		['shop'] = 'pdm',
	},
	--- TRUCKS
	['actros'] = {
		['name'] = 'Actros',
		['brand'] = 'Mercedes',
		['model'] = 'actros',
		['price'] = 24000,
		['category'] = 'work',
		['hash'] = 'actros',
		['shop'] = 'pdm',
	},
	['daf'] = {
		['name'] = 'XF 510',
		['brand'] = 'Daf',
		['model'] = 'daf',
		['price'] = 24000,
		['category'] = 'work',
		['hash'] = 'daf',
		['shop'] = 'pdm',
	},
	['man'] = {
		['name'] = 'V6',
		['brand'] = 'Man',
		['model'] = 'man',
		['price'] = 24000,
		['category'] = 'work',
		['hash'] = 'man',
		['shop'] = 'pdm',
	},
	-- helicopters
	['buzzard2'] = {
		['name'] = 'Buzzard',
		['brand'] = 'Unknown',
		['model'] = 'buzzard2',
		['price'] = 52000,
		['category'] = 'helicopters',
		['hash'] = 'buzzard2',
		['shop'] = 'air',
	},
	['frogger'] = {
		['name'] = 'Frogger',
		['brand'] = 'Unknown',
		['model'] = 'frogger',
		['price'] = 52000,
		['category'] = 'helicopters',
		['hash'] = 'frogger',
		['shop'] = 'air',
	},
	['frogger2'] = {
		['name'] = 'Frogger',
		['brand'] = 'Unknown',
		['model'] = 'frogger2',
		['price'] = 52000,
		['category'] = 'helicopters',
		['hash'] = 'frogger2',
		['shop'] = 'air',
	},
	['maverick'] = {
		['name'] = 'Maverick',
		['brand'] = 'Unknown',
		['model'] = 'maverick',
		['price'] = 52000,
		['category'] = 'helicopters',
		['hash'] = 'maverick',
		['shop'] = 'air',
	},
	['swift'] = {
		['name'] = 'Swift',
		['brand'] = 'Buckingham',
		['model'] = 'swift',
		['price'] = 52000,
		['category'] = 'helicopters',
		['hash'] = 'swift',
		['shop'] = 'air',
	},
	['swift2'] = {
		['name'] = 'Swift',
		['brand'] = 'Buckingham',
		['model'] = 'swift2',
		['price'] = 52000,
		['category'] = 'helicopters',
		['hash'] = 'swift2',
		['shop'] = 'air',
	},
	['seasparrow'] = {
		['name'] = 'Sea Sparrow',
		['brand'] = 'Unknown',
		['model'] = 'seasparrow',
		['price'] = 52000,
		['category'] = 'helicopters',
		['hash'] = 'seasparrow',
		['shop'] = 'air',
	},
	['seasparrow2'] = {
		['name'] = 'Sparrow',
		['brand'] = 'Unknown',
		['model'] = 'seasparrow2',
		['price'] = 52000,
		['category'] = 'helicopters',
		['hash'] = 'seasparrow2',
		['shop'] = 'air',
	},
	['seasparrow3'] = {
		['name'] = 'Sparrow',
		['brand'] = 'Unknown',
		['model'] = 'seasparrow3',
		['price'] = 52000,
		['category'] = 'helicopters',
		['hash'] = 'seasparrow3',
		['shop'] = 'air',
	},
	['supervolito'] = {
		['name'] = 'SuperVolito',
		['brand'] = 'Buckingham',
		['model'] = 'supervolito',
		['price'] = 52000,
		['category'] = 'helicopters',
		['hash'] = 'supervolito',
		['shop'] = 'air',
	},
	['supervolito2'] = {
		['name'] = 'SuperVolito Carbon',
		['brand'] = 'Buckingham',
		['model'] = 'supervolito2',
		['price'] = 52000,
		['category'] = 'helicopters',
		['hash'] = 'supervolito2',
		['shop'] = 'air',
	},
	['volatus'] = {
		['name'] = 'Volatus',
		['brand'] = 'Buckingham',
		['model'] = 'volatus',
		['price'] = 52000,
		['category'] = 'helicopters',
		['hash'] = 'volatus',
		['shop'] = 'air',
	},
	['havok'] = {
		['name'] = 'Havok',
		['brand'] = 'Nagasaki',
		['model'] = 'havok',
		['price'] = 52000,
		['category'] = 'helicopters',
		['hash'] = 'havok',
		['shop'] = 'air',
	},
	-- Planes
	['duster'] = {
		['name'] = 'Duster',
		['brand'] = 'Unknown',
		['model'] = 'duster',
		['price'] = 45000,
		['category'] = 'planes',
		['hash'] = 'duster',
		['shop'] = 'air',
	},
	['luxor'] = {
		['name'] = 'Luxor',
		['brand'] = 'Buckingham',
		['model'] = 'luxor',
		['price'] = 45000,
		['category'] = 'planes',
		['hash'] = 'luxor',
		['shop'] = 'air',
	},
	['luxor2'] = {
		['name'] = 'Luxor Deluxe',
		['brand'] = 'Buckingham',
		['model'] = 'luxor2',
		['price'] = 45000,
		['category'] = 'planes',
		['hash'] = 'luxor2',
		['shop'] = 'air',
	},
	['stunt'] = {
		['name'] = 'Mallard',
		['brand'] = 'Unknown',
		['model'] = 'stunt',
		['price'] = 45000,
		['category'] = 'planes',
		['hash'] = 'stunt',
		['shop'] = 'air',
	},
	['mammatus'] = {
		['name'] = 'Mammatus',
		['brand'] = 'Unknown',
		['model'] = 'mammatus',
		['price'] = 45000,
		['category'] = 'planes',
		['hash'] = 'mammatus',
		['shop'] = 'air',
	},
	['velum'] = {
		['name'] = 'Velum',
		['brand'] = 'Unknown',
		['model'] = 'velum',
		['price'] = 45000,
		['category'] = 'planes',
		['hash'] = 'velum',
		['shop'] = 'air',
	},
	['velum2'] = {
		['name'] = 'Velum',
		['brand'] = 'Unknown',
		['model'] = 'velum2',
		['price'] = 45000,
		['category'] = 'planes',
		['hash'] = 'velum2',
		['shop'] = 'air',
	},
	['shamal'] = {
		['name'] = 'Shamal',
		['brand'] = 'Buckingham',
		['model'] = 'shamal',
		['price'] = 45000,
		['category'] = 'planes',
		['hash'] = 'shamal',
		['shop'] = 'air',
	},
	['vestra'] = {
		['name'] = 'Vestra',
		['brand'] = 'Buckingham',
		['model'] = 'vestra',
		['price'] = 45000,
		['category'] = 'planes',
		['hash'] = 'vestra',
		['shop'] = 'air',
	},
	['dodo'] = {
		['name'] = 'Dodo',
		['brand'] = 'Mammoth',
		['model'] = 'dodo',
		['price'] = 45000,
		['category'] = 'planes',
		['hash'] = 'dodo',
		['shop'] = 'air',
	},
	['howard'] = {
		['name'] = 'Howard NX-25',
		['brand'] = 'Buckingham',
		['model'] = 'howard',
		['price'] = 45000,
		['category'] = 'planes',
		['hash'] = 'howard',
		['shop'] = 'air',
	},
	['alphaz1'] = {
		['name'] = 'Alpha-Z1',
		['brand'] = 'Buckingham',
		['model'] = 'alphaz1',
		['price'] = 45000,
		['category'] = 'planes',
		['hash'] = 'alphaz1',
		['shop'] = 'air',
	},
	['nimbus'] = {
		['name'] = 'Nimbus',
		['brand'] = 'Buckingham',
		['model'] = 'nimbus',
		['price'] = 45000,
		['category'] = 'planes',
		['hash'] = 'nimbus',
		['shop'] = 'air',
	},
	['brickaderv'] = {
			['name'] = 'MTL Brickade RV/Motorhome/Expedition Vehicle', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'brickaderv',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'brickaderv', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mrtasty'] = {
			['name'] = 'Brute Mr Tasty', --Name of car in city
			['brand'] = 'Brute', --Brand of car in city
			['model'] = 'mrtasty',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mrtasty', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rt70'] = {
			['name'] = 'Doms 1970 Dodge Charger', --Name of car in city
			['brand'] = 'Dodge', --Brand of car in city
			['model'] = 'rt70',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rt70', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['survolt'] = {
			['name'] = 'Citroën Survolt', --Name of car in city
			['brand'] = 'Citroen', --Brand of car in city
			['model'] = 'survolt',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'survolt', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['cczl'] = {
			['name'] = 'Tank Camero (Donked)', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'cczl',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'cczl', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['trans69'] = {
			['name'] = '1969 Pontiac Firebird Trans AM', --Name of car in city
			['brand'] = 'Pontiac', --Brand of car in city
			['model'] = 'trans69',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'trans69', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['turbo33'] = {
			['name'] = '1982 Porsche 911 Turbo 3.3', --Name of car in city
			['brand'] = 'Porsche', --Brand of car in city
			['model'] = 'turbo33',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'turbo33', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['amdb5'] = {
			['name'] = '1964 Aston Martin DB5 Vantage', --Name of car in city
			['brand'] = 'Aston Martin', --Brand of car in city
			['model'] = 'amdb5',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'amdb5', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bnsgtr99'] = {
			['name'] = 'R34 Paul Walker', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = 'bnsgtr99',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bnsgtr99', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['zagatong'] = {
			['name'] = '2012 Alfa Romeo Zagato', --Name of car in city
			['brand'] = 'Alfa Romeo', --Brand of car in city
			['model'] = 'zagatong',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'zagatong', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mustangmach1'] = {
			['name'] = '1971 mutang mach 1', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'mustangmach1',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mustangmach1', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mlbrabus'] = {
			['name'] = 'Mercedes-Benz ML Brabus 2009', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 'mlbrabus',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mlbrabus', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ruiner6str'] = {
			['name'] = '6STR Imponte Ruiner 450 Custom', --Name of car in city
			['brand'] = 'Imponte', --Brand of car in city
			['model'] = 'ruiner6str',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ruiner6str', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['desmo'] = {
			['name'] = 'Ducati Desmodesci', --Name of car in city
			['brand'] = 'Ducati', --Brand of car in city
			['model'] = 'desmo',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'desmo', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['astondbs'] = {
			['name'] = 'Aston Martin DBS', --Name of car in city
			['brand'] = 'Aston Martin', --Brand of car in city
			['model'] = 'astondbs',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'astondbs', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['jeep2012'] = {
			['name'] = '2012 Jeep Wrangler', --Name of car in city
			['brand'] = 'Jeep', --Brand of car in city
			['model'] = 'jeep2012',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'jeep2012', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['sultanrsv8'] = {
			['name'] = 'Sultan RS V8 Mk2', --Name of car in city
			['brand'] = 'Karin', --Brand of car in city
			['model'] = 'sultanrsv8',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'sultanrsv8', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['fd3s'] = {
			['name'] = 'Mazda RX7 Spirit R (FD3S)', --Name of car in city
			['brand'] = 'Mazda', --Brand of car in city
			['model'] = 'fd3s',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'fd3s', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['raptor150'] = {
			['name'] = '2017 Ford Raptor Scorpio', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'raptor150',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'raptor150', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['impalass'] = {
			['name'] = 'Chevrolet Impala SS Hard Top 1?9?6?4?', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'impalass',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'impalass', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['f350drcust'] = {
			['name'] = 'Donked F350', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'f350drcust',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = `f350drcust`, --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['amggt63'] = {
			['name'] = 'Mercedes-Benz AMG GT63 2018', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 'amggt63',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'amggt63', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['tempestax'] = {
			['name'] = 'Pegassi Tempesta Pegasus 1.0', --Name of car in city
			['brand'] = 'Pegassi', --Brand of car in city
			['model'] = 'tempestax',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'tempestax', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['datsun510'] = {
			['name'] = 'Datsun 510', --Name of car in city
			['brand'] = 'Datsun', --Brand of car in city
			['model'] = 'datsun510',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'datsun510', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['cali57'] = {
			['name'] = '1957 Ferrari 250 GT California Spyder', --Name of car in city
			['brand'] = 'Ferrari', --Brand of car in city
			['model'] = 'cali57',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'cali57', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['dragbeast'] = {
			['name'] = '1950s Ford Drag Car', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'dragbeast',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'dragbeast', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['jza70'] = {
			['name'] = '1992 Toyota Supra 2.0 GT Twin Turbo', --Name of car in city
			['brand'] = 'Toyota', --Brand of car in city
			['model'] = 'jza70',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'jza70', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['m3e36t'] = {
			['name'] = 'BMW M3 E36 Touring', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'm3e36t',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'm3e36t', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['londonbus'] = {
			['name'] = 'New Bus for London (Borismaster)', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'londonbus',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'londonbus', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['majsoar'] = {
			['name'] = 'Toyota Soarer', --Name of car in city
			['brand'] = 'Toyota', --Brand of car in city
			['model'] = 'majsoar',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'majsoar', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bentaygam'] = {
			['name'] = '2017 Bentley Bentayga Mansory', --Name of car in city
			['brand'] = 'Bentley', --Brand of car in city
			['model'] = 'bentaygam',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bentaygam', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mr2sw20'] = {
			['name'] = 'Toyota MR-2 GT (SW-20)', --Name of car in city
			['brand'] = 'Toyota', --Brand of car in city
			['model'] = 'mr2sw20',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mr2sw20', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rmodm4'] = {
			['name'] = 'BMW M4 RaijinBodykit', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'rmodm4',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rmodm4', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['2012gtr'] = {
			['name'] = '2012 Nissan GT-R (R35)', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = '2012gtr',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '2012gtr', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rx7fdbn'] = {
			['name'] = 'Mazda RX7 FD BN Sport BLS', --Name of car in city
			['brand'] = 'Mazda', --Brand of car in city
			['model'] = 'rx7fdbn',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rx7fdbn', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rx7fdbnd'] = {
			['name'] = 'Mazda RX7 FD BN Sport BLS (dark)', --Name of car in city
			['brand'] = 'Mazda', --Brand of car in city
			['model'] = 'rx7fdbnd',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rx7fdbnd', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['widewrx'] = {
			['name'] = 'Subaru WRX STi Widebody', --Name of car in city
			['brand'] = 'Subaru', --Brand of car in city
			['model'] = 'widewrx',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'widewrx', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['fiestarbcamber'] = {
			['name'] = '2009 Ford Fiesta - Rocket Bunny', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'fiestarbcamber',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'fiestarbcamber', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['s14'] = {
			['name'] = '1998 Nissan Silvia Ks S14 Kouki', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = 's14',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 's14', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['turismowb'] = {
			['name'] = 'GROTTI Turismo Wide Body', --Name of car in city
			['brand'] = 'Grotti', --Brand of car in city
			['model'] = 'turismowb',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'turismowb', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['agta'] = {
			['name'] = '1965 Alfa Romeo Giulia Sprint', --Name of car in city
			['brand'] = 'Alfa Romeo', --Brand of car in city
			['model'] = 'agta',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'agta', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['na6'] = {
			['name'] = '1994 Mazda MX-5 Miata', --Name of car in city
			['brand'] = 'Mazda', --Brand of car in city
			['model'] = 'na6',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'na6', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['type1'] = {
			['name'] = 'Truffade A-Type', --Name of car in city
			['brand'] = 'Truffade', --Brand of car in city
			['model'] = 'type1',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'type1', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['Torerod'] = {
			['name'] = 'Pegassi Torero Custom', --Name of car in city
			['brand'] = 'Pegassi', --Brand of car in city
			['model'] = 'Torerod',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'Torerod', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['20blazer'] = {
			['name'] = '2020 Chevrolet Blazer', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = '20blazer',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '20blazer', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['dalla1'] = {
			['name'] = 'Dallara FX-17', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'dalla1',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'dalla1', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['contss18'] = {
			['name'] = '2018 Bentley Continental GT Supersports', --Name of car in city
			['brand'] = 'Bentley', --Brand of car in city
			['model'] = 'contss18',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'contss18', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rs7c8'] = {
			['name'] = '2020 Audi RS7 Sportback (C8)', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = 'rs7c8',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rs7c8', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['prelude'] = {
			['name'] = 'Honda Prelude', --Name of car in city
			['brand'] = 'Honda', --Brand of car in city
			['model'] = 'prelude',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'prelude', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['lincvert'] = {
			['name'] = '1970s Lincoln Continental (Donked)', --Name of car in city
			['brand'] = 'Lincoln', --Brand of car in city
			['model'] = 'lincvert',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'lincvert', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gemera'] = {
			['name'] = 'Koenigsegg Gemera', --Name of car in city
			['brand'] = 'Koenigsegg', --Brand of car in city
			['model'] = 'gemera',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gemera', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['vesper'] = {
			['name'] = 'Lamborghini Murcielago Vesper Drag', --Name of car in city
			['brand'] = 'Lamborghini', --Brand of car in city
			['model'] = 'vesper',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'vesper', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['huayrar'] = {
			['name'] = 'Pagani Huayra R', --Name of car in city
			['brand'] = 'Pagani', --Brand of car in city
			['model'] = 'huayrar',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'huayrar', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gm5303'] = {
			['name'] = 'GM TDH-5303', --Name of car in city
			['brand'] = 'GMC', --Brand of car in city
			['model'] = 'gm5303',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gm5303', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['zach375'] = {
			['name'] = '1950 Ferrari 375 F1', --Name of car in city
			['brand'] = 'Ferrari', --Brand of car in city
			['model'] = 'zach375',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'zach375', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bolide'] = {
			['name'] = '2020 Bugatti Bolide', --Name of car in city
			['brand'] = 'Bugatti', --Brand of car in city
			['model'] = 'bolide',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bolide', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['c7r'] = {
			['name'] = 'Chevrolet Corvette C7R GTLM', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'c7r',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'c7r', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['fleet78'] = {
			['name'] = '1978 Cadillac Fleetside (Donked)', --Name of car in city
			['brand'] = 'Cadillac', --Brand of car in city
			['model'] = 'fleet78',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'fleet78', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['fleet78low'] = {
			['name'] = '1978 Cadillac Fleetside (Donked)', --Name of car in city
			['brand'] = 'Cadillac', --Brand of car in city
			['model'] = 'fleet78low',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'fleet78low', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['holden'] = {
			['name'] = '2014 Holden HSV GTS', --Name of car in city
			['brand'] = 'Holden', --Brand of car in city
			['model'] = 'holden',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'holden', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['srt8'] = {
			['name'] = '2015 Jeep SRT 8', --Name of car in city
			['brand'] = 'Jeep', --Brand of car in city
			['model'] = 'srt8',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'srt8', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['kr200'] = {
			['name'] = '1955-63 Kabinenroller Messerschmitt KR 200', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'kr200',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'kr200', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['alfa67'] = {
			['name'] = '1967 Alfa Romeo Stradale 33', --Name of car in city
			['brand'] = 'Alfa Romeo', --Brand of car in city
			['model'] = 'alfa67',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'alfa67', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['eldorado57'] = {
			['name'] = '1957 Cadillac Eldorado Brougham', --Name of car in city
			['brand'] = 'Cadillac', --Brand of car in city
			['model'] = 'eldorado57',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'eldorado57', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['fpace'] = {
			['name'] = '2017 Jaguar F-Pace', --Name of car in city
			['brand'] = 'Jaguar', --Brand of car in city
			['model'] = 'fpace',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'fpace', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['jarama'] = {
			['name'] = '1976 Lamborghini Jarama', --Name of car in city
			['brand'] = 'Lamborghini', --Brand of car in city
			['model'] = 'jarama',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'jarama', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mangusta'] = {
			['name'] = 'De Tomaso Mangusta', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'mangusta',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mangusta', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rimac'] = {
			['name'] = 'Rimac Concept 2/ Nevera', --Name of car in city
			['brand'] = 'Rimac', --Brand of car in city
			['model'] = 'rimac',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rimac', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rmodscg003s'] = {
			['name'] = 'Glickenhaus SCG003s', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'rmodscg003s',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rmodscg003s', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['vivio'] = {
			['name'] = '1994 Subaru Vivio', --Name of car in city
			['brand'] = 'Subaru', --Brand of car in city
			['model'] = 'vivio',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'vivio', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['zephyr41c'] = {
			['name'] = '1941 Lincoln Zephyr Convertible', --Name of car in city
			['brand'] = 'Lincoln', --Brand of car in city
			['model'] = 'zephyr41c',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'zephyr41c', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['intr'] = {
			['name'] = '2001 Acura Integra Type R', --Name of car in city
			['brand'] = 'Acura', --Brand of car in city
			['model'] = 'intr',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'intr', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['124spider'] = {
			['name'] = 'Fiat Abarth Spider', --Name of car in city
			['brand'] = 'Fiat', --Brand of car in city
			['model'] = '124spider',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '124spider', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['lw458s'] = {
			['name'] = 'Liberty Walk Ferrari 458 Spider', --Name of car in city
			['brand'] = 'Ferrari', --Brand of car in city
			['model'] = 'lw458s',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'lw458s', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['13tahoe'] = {
			['name'] = '2013 Chevrolet Tahoe (Offroad)', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = '13tahoe',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '13tahoe', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['exige12'] = {
			['name'] = 'Lotus Exige S 2012', --Name of car in city
			['brand'] = 'Lotus', --Brand of car in city
			['model'] = 'exige12',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'exige12', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['nh2r'] = {
			['name'] = 'Kawasaki Ninja H2/H2R', --Name of car in city
			['brand'] = 'Kawasaki', --Brand of car in city
			['model'] = 'nh2r',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'nh2r', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bluestar'] = {
			['name'] = 'Harley Davidson Street Glide Bluestar', --Name of car in city
			['brand'] = 'Harley Davidson', --Brand of car in city
			['model'] = 'bluestar',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bluestar', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['citrus2'] = {
			['name'] = 'lemanjá Cyber Citrus', --Name of car in city
			['brand'] = 'Lemanja', --Brand of car in city
			['model'] = 'citrus2',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'citrus2', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['scarabee'] = {
			['name'] = 'Scarabee (Land Transport)', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'scarabee',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'scarabee', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['tannen'] = {
			['name'] = 'Vapid Tannen', --Name of car in city
			['brand'] = 'Vapid', --Brand of car in city
			['model'] = 'tannen',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'tannen', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['btsupra94'] = {
			['name'] = 'Brians Toyota Supra 1994', --Name of car in city
			['brand'] = 'Toyota', --Brand of car in city
			['model'] = 'btsupra94',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'btsupra94', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['400z21'] = {
			['name'] = 'nissan 400z 2021', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = '400z21',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '400z21', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['impreza22b'] = {
			['name'] = 'Subaru Impreza 22B', --Name of car in city
			['brand'] = 'Subaru', --Brand of car in city
			['model'] = 'impreza22b',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'impreza22b', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['is350mod'] = {
			['name'] = '2014 Lexus IS350', --Name of car in city
			['brand'] = 'Lexus', --Brand of car in city
			['model'] = 'is350mod',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'is350mod', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ladybird6str'] = {
			['name'] = 'BF Ladybird', --Name of car in city
			['brand'] = 'BF', --Brand of car in city
			['model'] = 'ladybrid6str',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ladybrid6str', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ss69'] = {
			['name'] = '1969 Chevrolet Camaro SS', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'ss69',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ss69', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['z2879'] = {
			['name'] = '1979 Chevrolet Camaro Z28', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'z2879',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'z2879', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['850csi'] = {
			['name'] = '1995 BMW 850 CSI E31', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = '850csi',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '850csi', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mk7'] = {
			['name'] = 'Volkswagen Golf GTI Mk7 Stock', --Name of car in city
			['brand'] = 'Volkswagen', --Brand of car in city
			['model'] = 'mk7',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mk7', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['tdf'] = {
			['name'] = '2016 Ferrari F12 TDF', --Name of car in city
			['brand'] = 'Ferrari', --Brand of car in city
			['model'] = 'tdf',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'tdf', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['monowheel'] = {
			['name'] = 'Monowheel', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'monowheel',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'monowheel', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bchauler'] = {
			['name'] = 'Bagged Customs Peterbilt Show Hauler', --Name of car in city
			['brand'] = 'Peterbilt', --Brand of car in city
			['model'] = 'bchauler',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bchauler', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['hemicuda'] = {
			['name'] = '1971 Plymouth Hemi Cuda', --Name of car in city
			['brand'] = 'Plymouth', --Brand of car in city
			['model'] = 'hemicuda',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'hemicuda', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['shelbym67'] = {
			['name'] = '1967 Shelby Mustang GT500', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'shelbym67',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'shelbym67', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['300srt8'] = {
			['name'] = 'Chrysler 300 SRT8', --Name of car in city
			['brand'] = 'Chrysler', --Brand of car in city
			['model'] = '300srt8',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '300srt8', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['530xd'] = {
			['name'] = 'BMW 530XD', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = '530xd',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '530xd', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['dodura'] = {
			['name'] = '2015 Srt Durango ', --Name of car in city
			['brand'] = 'Dodge', --Brand of car in city
			['model'] = 'dodura',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'dodura', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rc213v'] = {
			['name'] = '2020 Repsol Honda Team (RC213V)', --Name of car in city
			['brand'] = 'Honda', --Brand of car in city
			['model'] = 'rc213v',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rc213v', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['kgc10'] = {
			['name'] = '1971 Nissan Skyline KGC10', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = 'kgc10',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'kgc10', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gtrcw'] = {
			['name'] = '2017 R35 Nissan GTR Convertible', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = 'gtrcw',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gtrcw', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['isetta'] = {
			['name'] = '1957 BMW Isetta 300', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'isetta',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'isetta', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['miataxmas'] = {
			['name'] = 'Mazda Mx5 Devoted Customs', --Name of car in city
			['brand'] = 'Mazda', --Brand of car in city
			['model'] = 'miataxmas',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'miataxmas', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['robin'] = {
			['name'] = 'Reliant Robin Mk.1', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'robin',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'robin', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['lexuswald'] = {
			['name'] = '2009 Lexus IS-F with WALD Bodykit', --Name of car in city
			['brand'] = 'Lexus', --Brand of car in city
			['model'] = 'lexuswald',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'lexuswald', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ts1'] = {
			['name'] = '2018 Zenvo TS1 GT', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'ts1',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ts1', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['furaiub'] = {
			['name'] = 'Mazda Furai', --Name of car in city
			['brand'] = 'Mazda', --Brand of car in city
			['model'] = 'furaiub',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'furaiub', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['megaramcustom'] = {
			['name'] = '2010 Dodge Ram 2500 Megaram Custom', --Name of car in city
			['brand'] = 'Dodge', --Brand of car in city
			['model'] = 'megaramcustom',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'megaramcustom', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['atom'] = {
			['name'] = 'Ariel Atom V8 500', --Name of car in city
			['brand'] = 'Ariel Atom', --Brand of car in city
			['model'] = 'atom',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'atom', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ben17'] = {
			['name'] = '2017 Bentley Supersport', --Name of car in city
			['brand'] = 'Bentley', --Brand of car in city
			['model'] = 'ben17',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ben17', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['firecast'] = {
			['name'] = 'Imponte Firecast Phoenix', --Name of car in city
			['brand'] = 'Imponte', --Brand of car in city
			['model'] = 'firecast',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'firecast', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gt63samg'] = {
			['name'] = 'Mercedes-Benz GT63 S AMG', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 'gt63samg',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gt63samg', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['panamera21'] = {
			['name'] = 'Porsche Panamera Turbo S Sport Turismo 2021', --Name of car in city
			['brand'] = 'Porsche', --Brand of car in city
			['model'] = 'panamera21',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'panamera21', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['yosemite6str'] = {
			['name'] = '6STR Declasse Drift Yosemite', --Name of car in city
			['brand'] = 'Declasse', --Brand of car in city
			['model'] = 'yosemite6str',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'yosemite6str', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['s30'] = {
			['name'] = '1969 Nissan Fairlady Z (S30)', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = 's30',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 's30', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['celisupra'] = {
			['name'] = 'Toyota Celica-Supra (MKII)', --Name of car in city
			['brand'] = 'Toyota', --Brand of car in city
			['model'] = 'celisupra',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'celisupra', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ps13'] = {
			['name'] = '1990 Nissan Silvia S13', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = 'ps13',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ps13', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ae86gts'] = {
			['name'] = '1985 Toyota Sprinter Trueno GT Apex (AE86)', --Name of car in city
			['brand'] = 'Toyota', --Brand of car in city
			['model'] = 'ae86gts',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ae86gts', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['apexgt'] = {
			['name'] = 'Apex GT85', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'apexgt',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'apexgt', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['civic'] = {
			['name'] = 'Honda Civic Si 99', --Name of car in city
			['brand'] = 'Honda', --Brand of car in city
			['model'] = 'civic',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'civic', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['drags2k'] = {
			['name'] = 'Honda S2000 - Drag Variant', --Name of car in city
			['brand'] = 'Honda', --Brand of car in city
			['model'] = 'drags2k',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'drags2k', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gto65'] = {
			['name'] = '1965 Pontiac Tempest Le Mans GTO', --Name of car in city
			['brand'] = 'Pontiac', --Brand of car in city
			['model'] = 'gto65',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gto65', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['pgto'] = {
			['name'] = '1965 Pontiac Tempest Le Mans GTO', --Name of car in city
			['brand'] = 'Pontiac', --Brand of car in city
			['model'] = 'pgto',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'pgto', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['zx6r'] = {
			['name'] = 'Kawasaki ZX6R Drag', --Name of car in city
			['brand'] = 'Kawasaki', --Brand of car in city
			['model'] = 'zx6r',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'zx6r', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['2018transam'] = {
			['name'] = '2018 Pontiac Firebird Trans Am', --Name of car in city
			['brand'] = 'Pontiac', --Brand of car in city
			['model'] = '2018transam',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '2018transam', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['coqvr'] = {
			['name'] = 'Invetero Coquette VR1', --Name of car in city
			['brand'] = 'Invetero', --Brand of car in city
			['model'] = 'coqvr',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'coqvr', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['elegysa'] = {
			['name'] = 'Annis Elegy from GTASA', --Name of car in city
			['brand'] = 'Annis', --Brand of car in city
			['model'] = 'elegysa',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'elegysa', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['jeepff'] = {
			['name'] = '2013 Jeep Wrangler Unlimited F&F Edition', --Name of car in city
			['brand'] = 'Jeep', --Brand of car in city
			['model'] = 'jeepff',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'jeepff', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['reagpr'] = {
			['name'] = 'Pegassi Reaper Custom', --Name of car in city
			['brand'] = 'Pegassi', --Brand of car in city
			['model'] = 'reagpr',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'reagpr', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['superleggera'] = {
			['name'] = '2018 Aston Martin DBS Superleggera', --Name of car in city
			['brand'] = 'Aston Martin', --Brand of car in city
			['model'] = 'superleggera',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'superleggera', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['tampar'] = {
			['name'] = 'Declasse Restomod Tampa', --Name of car in city
			['brand'] = 'Declasse', --Brand of car in city
			['model'] = 'tampar',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'tampar', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['brabus800mj'] = {
			['name'] = 'Mercedes-Benz GT800 Brabus', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 'brabus800mj',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'brabus800mj', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['corvettezr1'] = {
			['name'] = '2019 Chevrolet Corvette ZR1 (Widebody)', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'corvettezr1',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'corvettezr1', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['x6m'] = {
			['name'] = '2012 BMW X6 Hamann', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'x6m',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'x6m', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['elva'] = {
			['name'] = 'McLaren Elva', --Name of car in city
			['brand'] = 'McLaren', --Brand of car in city
			['model'] = 'elva',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'elva', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['22g63'] = {
			['name'] = 'Mercedes AMG G63', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = '22g63',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '22g63', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['650s'] = {
			['name'] = 'McLaren 650s GT3', --Name of car in city
			['brand'] = 'McLaren', --Brand of car in city
			['model'] = '650s',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '650s', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['911gt3r'] = {
			['name'] = '911 GT3 R', --Name of car in city
			['brand'] = 'Porsche', --Brand of car in city
			['model'] = '911gt3r',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '911gt3r', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['debertijeep'] = {
			['name'] = 'Jeep Wranger (Deberti Build)', --Name of car in city
			['brand'] = 'Jeep', --Brand of car in city
			['model'] = 'debertijeep',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'debertijeep', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['divo'] = {
			['name'] = '2019 Bugatti Divo', --Name of car in city
			['brand'] = 'Bugatti', --Brand of car in city
			['model'] = 'divo',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'divo', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ep9'] = {
			['name'] = '2017 NIO EP9', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'ep9',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ep9', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ksd'] = {
			['name'] = 'KTM Super Duke R 1290', --Name of car in city
			['brand'] = 'KTM', --Brand of car in city
			['model'] = 'ksd',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ksd', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['majm6'] = {
			['name'] = '2016 BMW M6 GTLM', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'majm6',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'majm6', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mgt17'] = {
			['name'] = 'Ford GT (Mansory Edition)', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'mgt17',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mgt17', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rimac2'] = {
			['name'] = 'Rimac Concept one', --Name of car in city
			['brand'] = 'Rimac', --Brand of car in city
			['model'] = 'rimac2',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rimac2', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rmodmi8lb'] = {
			['name'] = 'BMW i8 Liberty Walk', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'rmodmi8lb',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rmodmi8lb', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rmodp1gtr'] = {
			['name'] = 'Mclaren P1 GTR', --Name of car in city
			['brand'] = 'McLaren', --Brand of car in city
			['model'] = 'rmodp1gtr',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rmodp1gtr', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rmodpagani'] = {
			['name'] = '2018 Pagani Huayra Roadster ', --Name of car in city
			['brand'] = 'Pagani', --Brand of car in city
			['model'] = 'rmodpagani',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rmodpagani', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rmodr8alpil'] = {
			['name'] = 'Audi R8 Alpil RSR', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = 'rmodr8alpil',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rmodr8alpil', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['stanierdrift'] = {
			['name'] = 'V8 Drift Stanier', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'stanierdrift',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'stanierdrift', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ts040'] = {
			['name'] = 'Toyota TS040 Hybrid 2014', --Name of car in city
			['brand'] = 'Toyota', --Brand of car in city
			['model'] = 'ts040',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ts040', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['lpchopper2'] = {
			['name'] = 'LCC T-Rod', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'lpchopper2',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'lpchopper2', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['cr727'] = {
			['name'] = 'Dinka CR727', --Name of car in city
			['brand'] = 'Dinka', --Brand of car in city
			['model'] = 'cr727',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'cr727', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ma45'] = {
			['name'] = '2012 Mercedes-Benz A45 AMG', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 'ma45',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ma45', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['starone'] = {
			['name'] = 'Polestar One (Polstar 1) 2020', --Name of car in city
			['brand'] = 'Polestar', --Brand of car in city
			['model'] = 'starone',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = `starone`, --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['superduty'] = {
			['name'] = '2008 Ford F350 Superduty', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'superduty',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'superduty', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['radiantvff'] = {
			['name'] = 'Radiant VFF', --Name of car in city
			['brand'] = 'Radiant', --Brand of car in city
			['model'] = 'radiantvff',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'radiantvff', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['elcamino70'] = {
			['name'] = '1970 Chevrolet El Camino', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'elcamino70',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'elcamino70', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['00f350d'] = {
			['name'] = '2000 Ford F-350 Super Duty Dually', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = '00f350d',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '00f350d', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mustang65'] = {
			['name'] = '1965 Ford Mustang GT Mk.1', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'mustang65',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mustang65', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['svt00'] = {
			['name'] = '2000 Ford Mustang SVT Cobra R ', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'svt00',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'svt00', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bc5506d'] = {
			['name'] = '2009 Ford F-550 6 Door Truck Slammed', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'bc5506d',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bc5506d', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['fordeh2'] = {
			['name'] = 'Ford Escort MK1 Hoonigan', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'fordeh2',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'fordeh2', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['fd'] = {
			['name'] = 'Mazda RX7 FD3S', --Name of car in city
			['brand'] = 'Mazda', --Brand of car in city
			['model'] = 'fd',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'fd', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['fexpedition'] = {
			['name'] = '2020 Ford Expedition MAX', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'fexpedition',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'fexpedition', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['fordkhana'] = {
			['name'] = 'Gymkhana 8 Ford Fiesta', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'fordkhana',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'fordkhana', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['jalpa'] = {
			['name'] = '1988 Lamborghini Jalpa', --Name of car in city
			['brand'] = 'Lamborghini', --Brand of car in city
			['model'] = 'jalpa',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'jalpa', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['r8lms2'] = {
			['name'] = 'Audi R8 LMS Ultra Racecar', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = 'r8lms2',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'r8lms2', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['regalia'] = {
			['name'] = 'Quartz Regalia 723', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'regalia',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'regalia', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['levante'] = {
			['name'] = 'Maserati Levante', --Name of car in city
			['brand'] = 'Maserati', --Brand of car in city
			['model'] = 'levante',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'levante', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['vgt12'] = {
			['name'] = '2015 Aston Martin GT12', --Name of car in city
			['brand'] = 'Aston Martin', --Brand of car in city
			['model'] = 'vgt12',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'vgt12', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['hdiron883'] = {
			['name'] = 'Harley-Davidson XL883N Sportster Iron 883 2017', --Name of car in city
			['brand'] = 'Harley Davidson', --Brand of car in city
			['model'] = 'hdiron883',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'hdiron883', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['hmsx'] = {
			['name'] = 'Honda Msx 125SF/Grom 125SF', --Name of car in city
			['brand'] = 'Honda', --Brand of car in city
			['model'] = 'hmsx',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'hmsx', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['x5om'] = {
			['name'] = '2014 BMW X5', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'x5om',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'x5om', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['northfpv'] = {
			['name'] = 'NorthFPV Party Bus', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'northfpv',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'northfpv', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mv720'] = {
			['name'] = 'McLaren 720S Vorsteiner 2018', --Name of car in city
			['brand'] = 'McLaren', --Brand of car in city
			['model'] = 'mv720',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mv720', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['3000gt'] = {
			['name'] = '1999 Mitsubishi 3000gt', --Name of car in city
			['brand'] = 'Mitsubishi', --Brand of car in city
			['model'] = '3000gt',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '3000gt', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mitsugto'] = {
			['name'] = '1999 Mitsubishi GTO (3000GT)', --Name of car in city
			['brand'] = 'Mitsubishi', --Brand of car in city
			['model'] = 'mitsugto',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mitsugto', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['02rsx'] = {
			['name'] = 'Acura RSX', --Name of car in city
			['brand'] = 'Acura', --Brand of car in city
			['model'] = '02rsx',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '02rsx', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rapidgt'] = {
			['name'] = '2012 Mercedes-Benz SLK 55 AMG R172', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 'rapidgt',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rapidgt', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['wrx19'] = {
			['name'] = '2019 Subaru WRX', --Name of car in city
			['brand'] = 'Subaru', --Brand of car in city
			['model'] = 'wrx19',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'wrx19', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['1m2011'] = {
			['name'] = 'BMW 1M', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = '1m2011',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '1m2011', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['16m5'] = {
			['name'] = '2016 BMW M5 Touring', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = '16m5',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '16m5', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['b63s'] = {
			['name'] = 'Brabus B63S Widestar', --Name of car in city
			['brand'] = 'Brabus', --Brand of car in city
			['model'] = 'b63s',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'b63s', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['porrs73'] = {
			['name'] = 'Porsche 911 Carrera RS 1973', --Name of car in city
			['brand'] = 'Porsche', --Brand of car in city
			['model'] = 'porrs73',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'porrs73', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['urus12'] = {
			['name'] = 'Lamborghini Urus concept 2012', --Name of car in city
			['brand'] = 'Lamborghini', --Brand of car in city
			['model'] = 'urus12',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'urus12', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gz20'] = {
			['name'] = 'Toyota Soarer GZ20', --Name of car in city
			['brand'] = 'Toyota', --Brand of car in city
			['model'] = 'gz20',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gz20', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['brz'] = {
			['name'] = 'Subaru Rocket Bunny V3 BRZ', --Name of car in city
			['brand'] = 'Subaru', --Brand of car in city
			['model'] = 'brz',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'brz', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gcmimola'] = {
			['name'] = 'Pagani Imola 2021', --Name of car in city
			['brand'] = 'Pagani', --Brand of car in city
			['model'] = 'gcmimola',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gcmimola', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['nightblade2'] = {
			['name'] = 'Western Nightblade Classic', --Name of car in city
			['brand'] = 'Western Motorcycle Company', --Brand of car in city
			['model'] = 'nightblade2',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'nightblade2', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['sentineldm'] = {
			['name'] = 'Ubermacht Sentinel SG4 Drift Missile', --Name of car in city
			['brand'] = 'Ubermacht', --Brand of car in city
			['model'] = 'sentineldm',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'sentineldm', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['millennial'] = {
			['name'] = 'Dinka Millennial', --Name of car in city
			['brand'] = 'Dinka', --Brand of car in city
			['model'] = 'millennial',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'millennial', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['wildtrak'] = {
			['name'] = '2021 Ford Bronco Wildtrak', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'wildtrak',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'wildtrak', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ninja300'] = {
			['name'] = '2017 Kawasaki Ninja300', --Name of car in city
			['brand'] = 'Kawasaki', --Brand of car in city
			['model'] = 'ninja300',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ninja300', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['tr22'] = {
			['name'] = 'Tesla Roadster 2020', --Name of car in city
			['brand'] = 'Tesla', --Brand of car in city
			['model'] = 'tr22',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'tr22', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['dragb'] = {
			['name'] = 'Dragrace Bike Thai Style', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'dragb',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'dragb', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['drags10'] = {
			['name'] = 'Chevy S10 Drag Edition', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'drags10',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'drags10', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bigbrat'] = {
			['name'] = 'Declasse Bigbrat', --Name of car in city
			['brand'] = 'Declasse', --Brand of car in city
			['model'] = 'bigbrat',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bigbrat', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['fordhv2'] = {
			['name'] = 'Ford Mustang 1965 RTR Hoonicorn V2', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'fordhv2',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'fordhv2', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['00excursion'] = {
			['name'] = '2000 Ford Excursion XLT (UW137)', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = '00excursion',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '00excursion', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['pm19'] = {
			['name'] = '2019 Porsche Macan Turbo', --Name of car in city
			['brand'] = 'Porsche', --Brand of car in city
			['model'] = 'pm19',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'pm19', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['smithrod'] = {
			['name'] = 'Smith 34 Hot-Rod', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'smithrod',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'smithrod', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['19sclass'] = {
			['name'] = '2019 Mercedes-Benz S650 Maybach', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = '19sclass',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '19sclass', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['kitt'] = {
			['name'] = 'Knight Rider - Kitt', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'kitt',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'kitt', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['apache58'] = {
			['name'] = '1958 Chevrolet Apache Pickup', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'apache58',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'apache58', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['98crownvic'] = {
			['name'] = '1998 Ford Crown Victoria Civilian Sedan', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = '98crownvic',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '98crownvic', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bg700w'] = {
			['name'] = '2019 Brabus G700 Widestar', --Name of car in city
			['brand'] = 'Brabus', --Brand of car in city
			['model'] = 'bg700w',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bg700w', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['taycan'] = {
			['name'] = '2020 Porsche Taycan Turbo S', --Name of car in city
			['brand'] = 'Porsche', --Brand of car in city
			['model'] = 'taycan',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'taycan', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['zr3806str'] = {
			['name'] = '6STR Annis ZR380 Custom', --Name of car in city
			['brand'] = 'Annis', --Brand of car in city
			['model'] = 'zr3806str',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'zr3806str', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['tahoeLTZ'] = {
			['name'] = '2014 Chevrolet Tahoe LTZ (Donked)', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'tahoeLTZ',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'tahoeLTZ', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['indiancdh'] = {
			['name'] = '2019 Indian Chief Dark Horse', --Name of car in city
			['brand'] = 'Indian', --Brand of car in city
			['model'] = 'indiancdh',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'indiancdh', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['supermower'] = {
			['name'] = 'Lawn Mower-Super Sport', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'supermower',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'supermower', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['judge'] = {
			['name'] = '1969 Pontiac GTO Judge', --Name of car in city
			['brand'] = 'Pontiac', --Brand of car in city
			['model'] = 'judge',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'judge', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['v4sf'] = {
			['name'] = '2021 Ducati V4S StreetFighter', --Name of car in city
			['brand'] = 'Ducati', --Brand of car in city
			['model'] = 'v4sf',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'v4sf', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['vesta'] = {
			['name'] = '2016 Lada Vesta', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'vesta',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'vesta', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['z800'] = {
			['name'] = 'Kawasaki Z800', --Name of car in city
			['brand'] = 'Kawasaki', --Brand of car in city
			['model'] = 'z800',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'z800', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['flhxs'] = {
			['name'] = 'Harley-Davidson FLHXS - Street Glide Special 2018', --Name of car in city
			['brand'] = 'Harley Davidson', --Brand of car in city
			['model'] = 'flhxs',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'flhxs', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['denali18'] = {
			['name'] = '2018 GMC Sierra Denali 1500', --Name of car in city
			['brand'] = 'GMC', --Brand of car in city
			['model'] = 'denali18',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'denali18', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['m3gtr'] = {
			['name'] = 'BMW M3 GTR ', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'm3gtr',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'm3gtr', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['victor'] = {
			['name'] = 'Aston Martin Victor', --Name of car in city
			['brand'] = 'Aston Martin', --Brand of car in city
			['model'] = 'victor',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'victor', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['r1'] = {
			['name'] = '2018 Yamaha YZF-R1/R1M', --Name of car in city
			['brand'] = 'Yamaha', --Brand of car in city
			['model'] = 'r1',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'r1', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['r8spyder20'] = {
			['name'] = '2020 Audi R8 Spyder', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = 'r8spyder20',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'r8spyder20', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['chevell'] = {
			['name'] = 'Donked Chevelle', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'chevell',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'chevell', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['silv17r'] = {
			['name'] = '2017 Chevrolet Silverado', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'silv17r',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'silv17r', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['vw16'] = {
			['name'] = '2016 Volkswagen XL Sport Concept', --Name of car in city
			['brand'] = 'Volkswagen', --Brand of car in city
			['model'] = 'vw16',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'vw16', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gr1'] = {
			['name'] = 'SRT Tomahawk Vision Gran Turismo Gr.1', --Name of car in city
			['brand'] = 'SRT', --Brand of car in city
			['model'] = 'gr1',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gr1', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bsupersport'] = {
			['name'] = 'Bugatti Veyron Super Sport', --Name of car in city
			['brand'] = 'Bugatti', --Brand of car in city
			['model'] = 'bsupersport',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bsupersport', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['eg6'] = {
			['name'] = 'Spoon Sports Honda Civic SIR (EG6)', --Name of car in city
			['brand'] = 'Honda', --Brand of car in city
			['model'] = 'eg6',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'eg6', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['exor'] = {
			['name'] = '2017 Hennessey Camaro Exorcist ZL1', --Name of car in city
			['brand'] = 'Hennessey', --Brand of car in city
			['model'] = 'exor',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'exor', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['f488pista'] = {
			['name'] = '2019 Ferrari 488 Pista', --Name of car in city
			['brand'] = 'Ferrari', --Brand of car in city
			['model'] = 'f488pista',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'f488pista', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['f80'] = {
			['name'] = '2016 Ferrari F80', --Name of car in city
			['brand'] = 'Ferrari', --Brand of car in city
			['model'] = 'f80',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'f80', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['f812'] = {
			['name'] = '2018 Ferrari 812 Superfast', --Name of car in city
			['brand'] = 'Ferrari', --Brand of car in city
			['model'] = 'f812',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'f812', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['jagftype'] = {
			['name'] = 'Jaguar F-Type', --Name of car in city
			['brand'] = 'Jaguar', --Brand of car in city
			['model'] = 'jagftype',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'jagftype', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['m5e39'] = {
			['name'] = '2005 BMW M5 E39', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'm5e39',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'm5e39', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mansm8'] = {
			['name'] = '2020 Mansung BMW M8 ', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'mansm8',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mansm8', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['r8aud'] = {
			['name'] = 'Audi R8 2020', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = 'r8aud',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'r8aud', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rmodm4gts'] = {
			['name'] = 'BMW M4 LibertyWalk Bodykit', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'rmodm4gts',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rmodm4gts', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['s63amg18'] = {
			['name'] = '2021 Mercedes-Benz AMG S63 Coupe 4MATIC+', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 's63amg18',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 's63amg18', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['softail1'] = {
			['name'] = 'Harley-Davidson Softail Deluxe', --Name of car in city
			['brand'] = 'Harley Davidson', --Brand of car in city
			['model'] = 'softail1',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'softail1', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['zagatosb'] = {
			['name'] = 'Aston Martin Vanquish Zagato Shooting Brake', --Name of car in city
			['brand'] = 'Zagato', --Brand of car in city
			['model'] = 'zagatosb',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'zagatosb', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['75impala'] = {
			['name'] = '1975 Impala (Donked)', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = '75impala',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '75impala', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['na1'] = {
			['name'] = '1992 Honda NSX-R', --Name of car in city
			['brand'] = 'Honda', --Brand of car in city
			['model'] = 'na1',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'na1', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ctsv'] = {
			['name'] = '2009 Cadillac CTS-V', --Name of car in city
			['brand'] = 'Cadillac', --Brand of car in city
			['model'] = 'ctsv',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ctsv', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['91E30'] = {
			['name'] = '1991 BMW M3 E30', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = '91E30',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '91E30', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['cu2'] = {
			['name'] = '2010 Honda Accord Mugen (CU2)', --Name of car in city
			['brand'] = 'Honda', --Brand of car in city
			['model'] = 'cu2',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'cu2', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['er34'] = {
			['name'] = 'URAS-SKYLINE ER34 D1-Spec/Type-GT', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = 'er34',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'er34', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['saleen'] = {
			['name'] = '2000 Ford Mustang Saleen', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'saleen',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'saleen', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rx811'] = {
			['name'] = 'Mazda RX8 R3 2011', --Name of car in city
			['brand'] = 'Mazda', --Brand of car in city
			['model'] = 'rx811',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rx811', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ss7'] = {
			['name'] = '2004 Saleen S7', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'ss7',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ss7', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['62linc'] = {
			['name'] = '1962 Lincoln Continental Sedan', --Name of car in city
			['brand'] = 'Lincoln', --Brand of car in city
			['model'] = '62linc',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '62linc', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['dvcbox'] = {
			['name'] = 'Box Chevy Caprice Donk', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'dvcbox',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'dvcbox', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['silv86'] = {
			['name'] = 'Chevrolet Silverado 1986 Donk Style (2nd style)', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'silv86',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'silv86', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['msls'] = {
			['name'] = '2011 Mercedes-Benz SLS AMG', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 'msls',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'msls', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['nisr32'] = {
			['name'] = 'Nissan Skyline R32', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = 'nisr32',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'nisr32', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['evija'] = {
			['name'] = '2020 Lotus Evija', --Name of car in city
			['brand'] = 'Lotus', --Brand of car in city
			['model'] = 'evija',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'evija', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['monza'] = {
			['name'] = '2020 Ferrari Monza SP2', --Name of car in city
			['brand'] = 'Ferrari', --Brand of car in city
			['model'] = 'monza',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'monza', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['harms'] = {
			['name'] = 'Harmony Bike', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'harms',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'harms', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['z419'] = {
			['name'] = '2019 BMW Z4 M40i', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'z419',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'z419', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ram35'] = {
			['name'] = '1999 Dodge Ram 3500', --Name of car in city
			['brand'] = 'Dodge', --Brand of car in city
			['model'] = 'ram35',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ram35', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['g50019'] = {
			['name'] = 'Mercedes Benz G63 Gronos Mansory', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 'g50019',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'g50019', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['brz13'] = {
			['name'] = '2013 Subaru BRZ', --Name of car in city
			['brand'] = 'Subaru', --Brand of car in city
			['model'] = 'brz13',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'brz13', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['cont88'] = {
			['name'] = 'Lamborghini Countach 1988', --Name of car in city
			['brand'] = 'Lamborghini', --Brand of car in city
			['model'] = 'cont88',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'cont88', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['veneno'] = {
			['name'] = '2013 Lamborghini Veneno LP750-4', --Name of car in city
			['brand'] = 'Lamborghini', --Brand of car in city
			['model'] = 'veneno',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'veneno', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['a6'] = {
			['name'] = '2019 Audi A6 55 TFSI Quattro S-Line', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = 'a6',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'a6', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gt63crip'] = {
			['name'] = 'Mercedes-AMG GT63 S Coupe (Crip Variant)', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 'gt63crip',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gt63crip', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['holein6'] = {
			['name'] = 'Volkswagen Golf MK6', --Name of car in city
			['brand'] = 'Volkswagen', --Brand of car in city
			['model'] = 'holein6',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'holein6', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['tr87'] = {
			['name'] = '1987 Ferrari Testarossa', --Name of car in city
			['brand'] = 'Ferrari', --Brand of car in city
			['model'] = 'tr87',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'tr87', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['sianr'] = {
			['name'] = 'Lamborghini Sian Roadster', --Name of car in city
			['brand'] = 'Lamborghini', --Brand of car in city
			['model'] = 'sianr',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'sianr', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['1016urus'] = {
			['name'] = 'Lamborghini Urus', --Name of car in city
			['brand'] = 'Lamborghini', --Brand of car in city
			['model'] = '1016urus',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '1016urus', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['hachurac'] = {
			['name'] = 'Vulcar Hachura R Custom', --Name of car in city
			['brand'] = 'Vulcar', --Brand of car in city
			['model'] = 'hachurac',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'hachurac', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['hachurac2'] = {
			['name'] = 'Vulcar Hachura R Custom', --Name of car in city
			['brand'] = 'Vulcar', --Brand of car in city
			['model'] = 'hachurac2',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'hachurac2', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['sjtoyota13'] = {
			['name'] = '2013 Toyota Land Cruiser 200', --Name of car in city
			['brand'] = 'Toyota', --Brand of car in city
			['model'] = 'sjtoyota13',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'sjtoyota13', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['cam8tun'] = {
			['name'] = '2018 Toyota Camry XSE (Crazy Exterior)', --Name of car in city
			['brand'] = 'Toyota', --Brand of car in city
			['model'] = 'cam8tun',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'cam8tun', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mbslr'] = {
			['name'] = '2005 Mercedes-Benz SLR McLaren', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 'mbslr',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mbslr', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['jesko2020'] = {
			['name'] = '2020 Koenigsegg Jesko', --Name of car in city
			['brand'] = 'Koenigsegg', --Brand of car in city
			['model'] = 'jesko2020',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'jesko2020', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bmwhommage'] = {
			['name'] = 'BMW 3.0 CSL Hommage R Concept', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'bmwhommage',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bmwhommage', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['tuatara'] = {
			['name'] = 'SSC Tuatara', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'tuatara',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'tuatara', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['evora'] = {
			['name'] = '2011 Lotus Evora GTE', --Name of car in city
			['brand'] = 'Lotus', --Brand of car in city
			['model'] = 'evora',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'evora', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mercedesbenz'] = {
			['name'] = 'Mercedes-Benz E55 AMG W210', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 'mercedesbenz',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mercedesbenz', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gcmm52021'] = {
			['name'] = '2021 BMW M5 Competition', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'gcmm52021',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gcmm52021', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gtam21'] = {
			['name'] = '2021 Alfa Romeo Giulia GTAm', --Name of car in city
			['brand'] = 'Alfa Romeo', --Brand of car in city
			['model'] = 'gtam21',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gtam21', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rmodmustang'] = {
			['name'] = 'Ford Mustang GT', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'rmodmustang',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rmodmustang', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['sf90'] = {
			['name'] = '2020 Ferrari SF90 Stradale', --Name of car in city
			['brand'] = 'Ferrari', --Brand of car in city
			['model'] = 'sf90',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'sf90', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['deville95'] = {
			['name'] = '1995 Cadillac Deville Minipack', --Name of car in city
			['brand'] = 'Cadillac', --Brand of car in city
			['model'] = 'deville95',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'deville95', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['prius'] = {
			['name'] = 'Prius', --Name of car in city
			['brand'] = 'Toyota', --Brand of car in city
			['model'] = 'prius',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = `prius`, --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ats'] = {
			['name'] = '2018 ATS GT', --Name of car in city
			['brand'] = 'ATS', --Brand of car in city
			['model'] = 'ats',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ats', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['lx470'] = {
			['name'] = 'Lexus LX470', --Name of car in city
			['brand'] = 'Lexus', --Brand of car in city
			['model'] = 'lx470',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'lx470', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rs4avantcmbr'] = {
			['name'] = 'Audi RS4 [Stanced / Camber]', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = 'rs4avantcmbr',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rs4avantcmbr', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['wycalt'] = {
			['name'] = 'Bugatti Atlantic', --Name of car in city
			['brand'] = 'Bugatti', --Brand of car in city
			['model'] = 'wycalt',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'wycalt', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['hyabusadrag'] = {
			['name'] = 'Suzuki Hyabusa Drag Bike', --Name of car in city
			['brand'] = 'Suzuki', --Brand of car in city
			['model'] = 'hyabusadrag',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'hyabusadrag', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['21sierra'] = {
			['name'] = '2021 GMC Sierra 1500', --Name of car in city
			['brand'] = 'GMC', --Brand of car in city
			['model'] = '21sierra',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '21sierra', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['infinitig35'] = {
			['name'] = 'Infiniti G35 (V35) Coupe 03', --Name of car in city
			['brand'] = 'Infiniti', --Brand of car in city
			['model'] = 'infinitig35',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'infinitig35', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['cc1'] = {
			['name'] = '1960 Chevorlet Corvette C1', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'cc1',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'cc1', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['c2017'] = {
			['name'] = 'Cadillac CTS V 2017', --Name of car in city
			['brand'] = 'Cadillac', --Brand of car in city
			['model'] = 'c2017',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'c2017', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['m422'] = {
			['name'] = '2022 BMW M4 Competition', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'm422',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'm422', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['675lt'] = {
			['name'] = '2016 McLaren 675LT', --Name of car in city
			['brand'] = 'McLaren', --Brand of car in city
			['model'] = '675lt',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '675lt', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['73venom'] = {
			['name'] = '1973 Custom Impala', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = '73venom',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '73venom', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['84rx7k'] = {
			['name'] = '1984 Mazda RX7 Stanced Version', --Name of car in city
			['brand'] = 'Mazda', --Brand of car in city
			['model'] = '84rx7k',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '84rx7k', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['caddys'] = {
			['name'] = 'The Caddys', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'caddys',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'caddys', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['g_vmax'] = {
			['name'] = 'YAMAHA VMAX', --Name of car in city
			['brand'] = 'Yamaha', --Brand of car in city
			['model'] = 'g_vmax',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'g_vmax', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gtr2020'] = {
			['name'] = '2020 Nissan Concept Vision GT', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = 'gtr2020',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gtr2020', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['it18'] = {
			['name'] = '2017 italdesign Zerouno', --Name of car in city
			['brand'] = 'Italdesign', --Brand of car in city
			['model'] = 'it18',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'it18', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rcf'] = {
			['name'] = '2015 Lexus RCF', --Name of car in city
			['brand'] = 'Lexus', --Brand of car in city
			['model'] = 'rcf',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rcf', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rmodrs7'] = {
			['name'] = 'Audi RS7 Sportback Widebody Kit', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = 'rmodrs7',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rmodrs7', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['roma20'] = {
			['name'] = '2020 Ferrari Roma', --Name of car in city
			['brand'] = 'Ferrari', --Brand of car in city
			['model'] = 'roma20',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'roma20', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['s63coupe'] = {
			['name'] = '2020 Mercedes Benz S63 AMG Coupe', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 's63coupe',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 's63coupe', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bmdrift'] = {
			['name'] = '1991 BMW E30 Drift Edition', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'bmdrift',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bmdrift', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['duradonk'] = {
			['name'] = 'Dodge Durango (Donked)', --Name of car in city
			['brand'] = 'Dodge', --Brand of car in city
			['model'] = 'duradonk',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'duradonk', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['paragono'] = {
			['name'] = 'Enus Paragon Offroad', --Name of car in city
			['brand'] = 'Enus', --Brand of car in city
			['model'] = 'paragono',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'paragono', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gsxr19'] = {
			['name'] = '2019 Suzuki GSX-R1000R', --Name of car in city
			['brand'] = 'Suzuki', --Brand of car in city
			['model'] = 'gsxr19',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gsxr19', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['570s'] = {
			['name'] = 'Mclaren 570s', --Name of car in city
			['brand'] = 'McLaren', --Brand of car in city
			['model'] = '570s',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '570s', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['67chevelle'] = {
			['name'] = '1967 Chevrolet Chevelle Super Sport 396', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = '67chevelle',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '67chevelle', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['750il'] = {
			['name'] = 'BMW 750il e38', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = '750il',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '750il', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['a8fsi'] = {
			['name'] = '2010 Audi A8 4.2 FSI (D4)', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = 'a8fsi',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'a8fsi', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['apollo'] = {
			['name'] = 'Apollo Intensa Emozione', --Name of car in city
			['brand'] = 'Apollo', --Brand of car in city
			['model'] = 'apollo',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'apollo', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['apollos'] = {
			['name'] = 'Gumpert Apollo S', --Name of car in city
			['brand'] = 'Apollo', --Brand of car in city
			['model'] = 'apollos',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'apollos', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['aventsvjr'] = {
			['name'] = 'Lamborghini Aventador SVJ / SVJ 63 Anniversary Edition', --Name of car in city
			['brand'] = 'Lamborghini', --Brand of car in city
			['model'] = 'aventsvjr',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'aventsvjr', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bac2'] = {
			['name'] = 'BAC Mono', --Name of car in city
			['brand'] = 'BAC', --Brand of car in city
			['model'] = 'bac2',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bac2', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bcps'] = {
			['name'] = '2021 Bugatti Chiron Pur Sport', --Name of car in city
			['brand'] = 'Bugatti', --Brand of car in city
			['model'] = 'bcps',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bcps', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['benito2020'] = {
			['name'] = 'BF Benito 2020', --Name of car in city
			['brand'] = 'BF', --Brand of car in city
			['model'] = 'benito2020',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'benito2020', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bmws'] = {
			['name'] = 'BMW S1000 RR 2014', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'bmws',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bmws', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bmws1'] = {
			['name'] = 'BMW Series 1', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'bmws1',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bmws1', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bronco82'] = {
			['name'] = '1982-1986 Ford Bronco', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'bronco82',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bronco82', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['c10'] = {
			['name'] = '1966 Chevrolet C10 Custom', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'c10',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'c10', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['c7rs6'] = {
			['name'] = 'Audi RS6 C7', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = 'c7rs6',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'c7rs6', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['caprice89'] = {
			['name'] = '1989 Chevrolet Caprice Sedan', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'caprice89',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'caprice89', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ccrv69'] = {
			['name'] = 'Chevrolet Camaro Ringbrothers Valkyrja 1969', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'ccrv69',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ccrv69', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['celicasuper'] = {
			['name'] = '2003 Toyota Celica', --Name of car in city
			['brand'] = 'Toyota', --Brand of car in city
			['model'] = 'celicasuper',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'celicasuper', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['chry300'] = {
			['name'] = '2008 Chrysler 300c SRT8', --Name of car in city
			['brand'] = 'Chrysler', --Brand of car in city
			['model'] = 'chry300',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'chry300', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['cuba70'] = {
			['name'] = '1970 Plymouth Cuba Torc', --Name of car in city
			['brand'] = 'Plymouth', --Brand of car in city
			['model'] = 'cuba70',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'cuba70', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['cx75'] = {
			['name'] = 'Jaguar C-X75 ', --Name of car in city
			['brand'] = 'Jaguar', --Brand of car in city
			['model'] = 'cx75',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'cx75', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['develsix'] = {
			['name'] = 'Devel Sixteen', --Name of car in city
			['brand'] = 'Devel', --Brand of car in city
			['model'] = 'develsix',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'develsix', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['elegyute'] = {
			['name'] = 'Annis Elegy Retro Ute', --Name of car in city
			['brand'] = 'Annis', --Brand of car in city
			['model'] = 'elegyute',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'elegyute', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['emerusgtr'] = {
			['name'] = 'Progen Emerus GTR', --Name of car in city
			['brand'] = 'Progen', --Brand of car in city
			['model'] = 'emerusgtr',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'emerusgtr', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['escortrscos'] = {
			['name'] = 'Ford Escort RS Cosworth', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'escortrscos',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'escortrscos', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['etype'] = {
			['name'] = 'Jaguar E-Type Stock', --Name of car in city
			['brand'] = 'Jaguar', --Brand of car in city
			['model'] = 'etype',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'etype', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['fairladyz'] = {
			['name'] = 'Nissan FairladyZ Z31 BOSOZOKU Edition', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = 'fairladyz',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'fairladyz', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ffrs'] = {
			['name'] = '2009 Ford Focus RS', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'ffrs',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ffrs', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['fj40'] = {
			['name'] = '1978 Toyota FJ40 Land Cruiser', --Name of car in city
			['brand'] = 'Toyota', --Brand of car in city
			['model'] = 'fj40',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'fj40', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ford30t'] = {
			['name'] = '930 Ford Tudor Hot Rod', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'ford30t',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ford30t', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['fordrat'] = {
			['name'] = 'Ford V8 Rat/Hot Rod', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'fordrat',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'fordrat', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gauntlet6str'] = {
			['name'] = '6STR Bravado Gauntlet Custom', --Name of car in city
			['brand'] = 'Bravado', --Brand of car in city
			['model'] = 'gauntlet6str',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gauntlet6str', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gt1'] = {
			['name'] = 'Porsche GT1 1998 Straßenversion', --Name of car in city
			['brand'] = 'Porsche', --Brand of car in city
			['model'] = 'gt1',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gt1', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gt401'] = {
			['name'] = 'Ford GT40 MK I 1964', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'gt401',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gt401', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gt86lb'] = {
			['name'] = 'Toyota GT86 Liberty Walk', --Name of car in city
			['brand'] = 'Toyota', --Brand of car in city
			['model'] = 'gt86lb',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gt86lb', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gtrgt3'] = {
			['name'] = 'Nissan GTR - GT3', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = 'gtrgt3',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gtrgt3', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gxg700'] = {
			['name'] = 'Brabus G700', --Name of car in city
			['brand'] = 'Brabus', --Brand of car in city
			['model'] = 'gxg700',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gxg700', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gxsnake'] = {
			['name'] = '2019 Shelby Super Snake', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'gxsnake',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gxsnake', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['h6'] = {
			['name'] = 'Hummer H6', --Name of car in city
			['brand'] = 'Hummer', --Brand of car in city
			['model'] = 'h6',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'h6', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['hellaphant'] = {
			['name'] = 'Dodge Hellaphant', --Name of car in city
			['brand'] = 'Dodge', --Brand of car in city
			['model'] = 'hellaphant',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'hellaphant', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['imprezasti'] = {
			['name'] = '2008 Subaru Impreza WRX STi Series V', --Name of car in city
			['brand'] = 'Subaru', --Brand of car in city
			['model'] = 'imprezasti',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'imprezasti', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['imprezawrx'] = {
			['name'] = 'Subaru Impreza WRX STI', --Name of car in city
			['brand'] = 'Subaru', --Brand of car in city
			['model'] = 'imprezawrx',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'imprezawrx', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['intrudertuned'] = {
			['name'] = 'Karin Intruder Tuned', --Name of car in city
			['brand'] = 'Karin', --Brand of car in city
			['model'] = 'intrudertuned',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'intrudertuned', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['italigton'] = {
			['name'] = 'Grotti Itali GTO Spider', --Name of car in city
			['brand'] = 'Grotti', --Brand of car in city
			['model'] = 'italigton',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'italigton', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ja_demonboi'] = {
			['name'] = 'LS Swap Dodge Demon', --Name of car in city
			['brand'] = 'Dodge', --Brand of car in city
			['model'] = 'ja_demonboi',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ja_demonboi', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['kazama'] = {
			['name'] = 'Mazda FD3S RX-7 - Kazama Auto', --Name of car in city
			['brand'] = 'Mazda', --Brand of car in city
			['model'] = 'kazama',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'kazama', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['kiagt'] = {
			['name'] = 'Kia Stringer GT (Donked)', --Name of car in city
			['brand'] = 'Kia', --Brand of car in city
			['model'] = 'kiagt',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'kiagt', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['lariat'] = {
			['name'] = '2018 Ford F-150 Lariat SuperCrew', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'lariat',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'lariat', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['lp670sv'] = {
			['name'] = '2009 Lamborghini Murcielago LP 670-4 SV', --Name of car in city
			['brand'] = 'Lamborghini', --Brand of car in city
			['model'] = 'lp670sv',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'lp670sv', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['lykan'] = {
			['name'] = '2014 WMotors Lykan Hypersport', --Name of car in city
			['brand'] = 'W Motors', --Brand of car in city
			['model'] = 'lykan',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'lykan', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['lynxgpr'] = {
			['name'] = 'Ocelot Lynx Custom', --Name of car in city
			['brand'] = 'Ocelet', --Brand of car in city
			['model'] = 'lynxgpr',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'lynxgpr', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['m1procar'] = {
			['name'] = 'BMW M1 ProCar E26 1981', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'm1procar',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'm1procar', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['m3e46'] = {
			['name'] = '2005 BMW M3 E46', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'm3e46',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'm3e46', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['m5e34'] = {
			['name'] = '1995 BMW M5 E34', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'm5e34',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'm5e34', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['m82020'] = {
			['name'] = '2020 bmw m8', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'm82020',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'm82020', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['maj3zx'] = {
			['name'] = 'Nissan 300zx Z32', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = 'maj3zx',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'maj3zx', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['maxima'] = {
			['name'] = '2002 Nissan Maxima', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = 'maxima',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'maxima', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mc12'] = {
			['name'] = 'Maserati MC12', --Name of car in city
			['brand'] = 'Maserati', --Brand of car in city
			['model'] = 'mc12',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mc12', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mcst'] = {
			['name'] = '2020 McLaren Speedtail', --Name of car in city
			['brand'] = 'McLaren', --Brand of car in city
			['model'] = 'mcst',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mcst', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['modena'] = {
			['name'] = '1999 Ferrari 360 Modena', --Name of car in city
			['brand'] = 'FErrari', --Brand of car in city
			['model'] = 'modena',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'modena', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['modhotknife'] = {
			['name'] = 'Vapid Street Mod Hotknife', --Name of car in city
			['brand'] = 'Vapid', --Brand of car in city
			['model'] = 'modhotknife',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'modhotknife', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['monalisaff3'] = {
			['name'] = '1999 Nissan Silvia S15 Spec-S Mona Lisa', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = 'monalisaff3',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'monalisaff3', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mrx7'] = {
			['name'] = 'Mazda RX7 FC3S', --Name of car in city
			['brand'] = 'Mazda', --Brand of car in city
			['model'] = 'mrx7',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mrx7', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mt900s'] = {
			['name'] = '2010 Mosler MT900S', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'mt900s',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mt900s', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['neross'] = {
			['name'] = 'Truffade Nero Supersport', --Name of car in city
			['brand'] = 'Truffade', --Brand of car in city
			['model'] = 'neross',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'neross', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['nsx2'] = {
			['name'] = 'Honda NSX Rocket Bunny', --Name of car in city
			['brand'] = 'Honda', --Brand of car in city
			['model'] = 'nsx2',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'nsx2', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['osirisr'] = {
			['name'] = 'Pegassi Osiris Roadster', --Name of car in city
			['brand'] = 'Pagassi', --Brand of car in city
			['model'] = 'osirisr',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'osirisr', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['p944'] = {
			['name'] = 'Porsche 944 Turbo 1989', --Name of car in city
			['brand'] = 'Porsche', --Brand of car in city
			['model'] = 'p944',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'p944', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['packer3'] = {
			['name'] = 'MTL Packer (Racecar)', --Name of car in city
			['brand'] = 'MTL', --Brand of car in city
			['model'] = 'packer3',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'packer3', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['pgtc4'] = {
			['name'] = '2016 Porsche Cayman GT4', --Name of car in city
			['brand'] = 'Porsche', --Brand of car in city
			['model'] = 'pgtc4',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'pgtc4', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['primoard'] = {
			['name'] = 'Albany Primo ARD', --Name of car in city
			['brand'] = 'Albany', --Brand of car in city
			['model'] = 'primoard',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'primoard', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['r8lms'] = {
			['name'] = '2016 Audi R8 LMS (Typ 4S)', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = 'r8lms',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'r8lms', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['radical'] = {
			['name'] = 'Radical RXC Turbo', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'radical',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'radical', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rebeld'] = {
			['name'] = 'Karin Drift Rebel', --Name of car in city
			['brand'] = 'Karin', --Brand of car in city
			['model'] = 'rebeld',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rebeld', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['renaultm'] = {
			['name'] = 'Renault Megane Trophy', --Name of car in city
			['brand'] = 'Renault', --Brand of car in city
			['model'] = 'renaultm',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'renaultm', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rmodbmwi8'] = {
			['name'] = 'BMW I8 Roadster AC Schnitzer', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'rmodbmwi8',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rmodbmwi8', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rmodi8mlb'] = {
			['name'] = 'BMW I8 Liberty Walk', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'rmodi8mlb',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rmodi8mlb', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rubi3d'] = {
			['name'] = 'Jeep Wrangler Unlimited 3 Door JK 2013', --Name of car in city
			['brand'] = 'Jeep', --Brand of car in city
			['model'] = 'rubi3d',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rubi3d', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['scheisser'] = {
			['name'] = 'Benefactor Scheisser', --Name of car in city
			['brand'] = 'Benefactor', --Brand of car in city
			['model'] = 'scheisser',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'scheisser', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['semi'] = {
			['name'] = 'Tesla Semi', --Name of car in city
			['brand'] = 'Tesla', --Brand of car in city
			['model'] = 'semi',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'semi', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['sienna'] = {
			['name'] = '2017 Toyota Sienna XLE Preium ', --Name of car in city
			['brand'] = 'Toyota', --Brand of car in city
			['model'] = 'sienna',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'sienna', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['silv86'] = {
			['name'] = 'Chevrolet Silverado 1986 Donk Style', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'silv86',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'silv86', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['sjgenesis'] = {
			['name'] = '2013 Hyundai Genesis Coupe Rocket Bunny', --Name of car in city
			['brand'] = 'Hyundai', --Brand of car in city
			['model'] = 'sjgenesis',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'sjgenesis', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['srtday20'] = {
			['name'] = '2020 Dodge Charger SRT Hellcat Daytona 50th Ann.', --Name of car in city
			['brand'] = 'Dodge', --Brand of car in city
			['model'] = 'srtday20',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'srtday20', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['sti'] = {
			['name'] = '2011 Subaru Impreza STI', --Name of car in city
			['brand'] = 'Subaru', --Brand of car in city
			['model'] = 'sti',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'sti', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['stratumc'] = {
			['name'] = 'Zircoflow Stratum', --Name of car in city
			['brand'] = 'Zircoflow', --Brand of car in city
			['model'] = 'stratumc',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'stratumc', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['sunrise1'] = {
			['name'] = 'Maibatsu Sunrise R', --Name of car in city
			['brand'] = 'Maibatsu', --Brand of car in city
			['model'] = 'sunrise1',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'sunrise1', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['superbird'] = {
			['name'] = 'Plymouth Roadrunner Superbird (RM23) 1970', --Name of car in city
			['brand'] = 'Plymouth', --Brand of car in city
			['model'] = 'superbird',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'superbird', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['taki428'] = {
			['name'] = '1969 Shelby GT500 428CJ', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'taki428',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'taki428', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['transvan'] = {
			['name'] = 'Ford Transit Supervan 3', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'transvan',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'transvan', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['tricolore'] = {
			['name'] = 'Pagani Zonda Tricolore 2010', --Name of car in city
			['brand'] = 'Pagani', --Brand of car in city
			['model'] = 'tricolore',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'tricolore', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['tsgr20'] = {
			['name'] = 'Toyota Supra GR 2020', --Name of car in city
			['brand'] = 'Toyota', --Brand of car in city
			['model'] = 'tsgr20',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'tsgr20', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['turismoc'] = {
			['name'] = 'Grotti Turismo Classic Custom', --Name of car in city
			['brand'] = 'Grotti', --Brand of car in city
			['model'] = 'turismoc',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'turismoc', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['turismorrod'] = {
			['name'] = 'Grotti Turismo R Roadster', --Name of car in city
			['brand'] = 'Grotti', --Brand of car in city
			['model'] = 'turismorrod',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'turismorrod', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['vagner2'] = {
			['name'] = 'Dewbauchee Vagner GT1', --Name of car in city
			['brand'] = 'Dewbauchee', --Brand of car in city
			['model'] = 'vagner2',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'vagner2', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['vorstand'] = {
			['name'] = 'Ubermacht Vorstand', --Name of car in city
			['brand'] = 'Ubermacht', --Brand of car in city
			['model'] = 'vorstand',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'vorstand', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['xkrs'] = {
			['name'] = '2013 Jaguar XKR-S GT ', --Name of car in city
			['brand'] = 'Jaguar', --Brand of car in city
			['model'] = 'xkrs',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'xkrs', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['zr390'] = {
			['name'] = 'Annis ZR390', --Name of car in city
			['brand'] = 'Annis', --Brand of car in city
			['model'] = 'zr390',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'zr390', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['zrgpr'] = {
			['name'] = 'Annis ZR350 reMaul', --Name of car in city
			['brand'] = 'Annis', --Brand of car in city
			['model'] = 'zrgpr',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'zrgpr', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['zx10r'] = {
			['name'] = 'Kawasaki ZX10R', --Name of car in city
			['brand'] = 'Kawasaki', --Brand of car in city
			['model'] = 'zx10r',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'zx10r', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['720ss'] = {
			['name'] = 'Mclaren 720S Spider', --Name of car in city
			['brand'] = 'McLaren', --Brand of car in city
			['model'] = '720ss',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '720ss', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['lpi8004'] = {
			['name'] = '2022 Lamborghini Countach LPI800-4', --Name of car in city
			['brand'] = 'Lamborghini', --Brand of car in city
			['model'] = 'lpi8004',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'lpi8004', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['f8spider'] = {
			['name'] = '2021 Ferrari F8 Spider', --Name of car in city
			['brand'] = 'Ferrari', --Brand of car in city
			['model'] = 'f8spider',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'f8spider', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bme6tun'] = {
			['name'] = 'BMW M5 E60 Crazy exterior', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'bme6tun',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bme6tun', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['fordh'] = {
			['name'] = '1965 Hoonigan Ford Hoonicorn Mustang', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'fordh',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'fordh', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['nexus'] = {
			['name'] = 'Dinka Nexus', --Name of car in city
			['brand'] = 'Dinka', --Brand of car in city
			['model'] = 'nexus',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'nexus', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['firebird87'] = {
			['name'] = '1987 Pontiac Firebird Trans Am', --Name of car in city
			['brand'] = 'Pontiac', --Brand of car in city
			['model'] = 'firebird87',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'firebird87', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['srt2018'] = {
			['name'] = '2018 Dodge Durango SRT', --Name of car in city
			['brand'] = 'Dodge', --Brand of car in city
			['model'] = 'srt2018',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'srt2018', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['fto'] = {
			['name'] = 'Mitsubishi FTO GP Version-R', --Name of car in city
			['brand'] = 'Mitsubishi', --Brand of car in city
			['model'] = 'fto',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'fto', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['lanciad'] = {
			['name'] = 'Lancia Delta Integral Evo1', --Name of car in city
			['brand'] = 'Lancia', --Brand of car in city
			['model'] = 'lanciad',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'lanciad', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['aone'] = {
			['name'] = '2010 Aston Martin One-77', --Name of car in city
			['brand'] = 'Aston Martin', --Brand of car in city
			['model'] = 'aone',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'aone', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['850csi'] = {
			['name'] = '1995 BMW 850 CSI E31', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = '850csi',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '850csi', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['auds5'] = {
			['name'] = 'Audi S5 2017', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = 'auds5',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'auds5', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bmwx7'] = {
			['name'] = '2021 BMW X7 Manhart MHX7', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'bmwx7',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bmwx7', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mcgt4'] = {
			['name'] = 'Maserati MC-GT4', --Name of car in city
			['brand'] = 'Maserati', --Brand of car in city
			['model'] = 'mcgt4',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mcgt4', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['720s'] = {
			['name'] = '2017 McLaren 720S', --Name of car in city
			['brand'] = 'McLaren', --Brand of car in city
			['model'] = '720s',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '720s', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['arrow'] = {
			['name'] = 'Mercedes-Benz Silver Lightning', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 'arrow',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'arrow', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['sphere'] = {
			['name'] = 'Gyrophere', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'sphere',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'sphere', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['sierra06'] = {
			['name'] = '2006 GMC Sierra', --Name of car in city
			['brand'] = 'GMC', --Brand of car in city
			['model'] = 'sierra06',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'sierra06', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mustangwb'] = {
			['name'] = 'Ford Mustang GT [RocketB & Wide Body]', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'mustangwb',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mustangwb', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ghis2'] = {
			['name'] = 'Maserati Ghibli S', --Name of car in city
			['brand'] = 'Maserati', --Brand of car in city
			['model'] = 'ghis2',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ghis2', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rdmstr96'] = {
			['name'] = '1996 Buick Roadmaster Donk', --Name of car in city
			['brand'] = 'Buick', --Brand of car in city
			['model'] = 'rdmstr96',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rdmstr96', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bugatticentodieci'] = {
			['name'] = 'Bugatti Centodieci 2020', --Name of car in city
			['brand'] = 'Bugatti', --Brand of car in city
			['model'] = 'bugatticentodieci',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bugatticentodieci', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bcgt2014'] = {
			['name'] = '2014 Bentley Continental GT', --Name of car in city
			['brand'] = 'Bentley', --Brand of car in city
			['model'] = 'bcgt2014',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bcgt2014', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['hog'] = {
			['name'] = 'AMG Transport Dynamics M12S Warthog CST', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'hog',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'hog', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['89ls400'] = {
			['name'] = '1989 Lexus LS400', --Name of car in city
			['brand'] = 'Lexus', --Brand of car in city
			['model'] = '89ls400',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '89ls400', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bc94silv'] = {
			['name'] = '1994 Chevrolet Silverado / Slammed', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'bc94silv',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bc94silv', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['camaro90'] = {
			['name'] = '1990 Chevrolet Camaro Z28 IROC-Z', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'camaro90',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'camaro90', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['chevelle1970'] = {
			['name'] = '1970 Chevrolet Chevelle SS', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'chevelle1970',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'chevelle1970', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['cp9a'] = {
			['name'] = 'Mitsubishi Lancer Evo VI T.M.E (CP9A)', --Name of car in city
			['brand'] = 'Mitsubishi', --Brand of car in city
			['model'] = 'cp9a',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'cp9a', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rx7veilside'] = {
			['name'] = 'Mazda RX7 Veilside Fortune', --Name of car in city
			['brand'] = 'Mazda', --Brand of car in city
			['model'] = 'rx7veilside',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rx7veilside', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['f100'] = {
			['name'] = 'Ford F100 1970', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'f100',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'f100', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['impala67'] = {
			['name'] = '1967 Chevrolet Impala Sport Sedan 396 Turbo-Jet', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'impala67',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'impala67', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['patriotc'] = {
			['name'] = 'Patriot Classic', --Name of car in city
			['brand'] = 'Patriot', --Brand of car in city
			['model'] = 'patriotc',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'patriotc', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['tstanced'] = {
			['name'] = 'Jobuilt Phantom Stance Street Edit', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'tstanced',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'tstanced', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['93mustang'] = {
			['name'] = '1993 Ford SVT Cobra R', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = '93mustang',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '93mustang', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['markiv72'] = {
			['name'] = '1972 Lincoln Continental Mark 4', --Name of car in city
			['brand'] = 'Lincoln', --Brand of car in city
			['model'] = 'markiv72',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'markiv72', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['artura22wb'] = {
			['name'] = '2022 McLaren Artura Wide Body', --Name of car in city
			['brand'] = 'McLaren', --Brand of car in city
			['model'] = 'artura22wb',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'artura22wb', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['devilz'] = {
			['name'] = 'Nissan S30Z Wangan Midnight Devil Z', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = 'devilz',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'devilz', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['razor'] = {
			['name'] = 'BMW M3 GTR E46 HERO  RAZOR', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'razor',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'razor', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['r31'] = {
			['name'] = '1987 Nissan Skyline GTS-R (R31)', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = 'r31',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'r31', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['aamx'] = {
			['name'] = '1971 AMC Javelin-AMX', --Name of car in city
			['brand'] = 'AMC', --Brand of car in city
			['model'] = 'aamx',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'aamx', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rs6avant20'] = {
			['name'] = '2020 Audi RS6 C8 Avant', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = 'rs6avant20',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rs6avant20', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['italigtr'] = {
			['name'] = 'Grotti Itali GTR', --Name of car in city
			['brand'] = 'Grotti', --Brand of car in city
			['model'] = 'italigtr',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'italigtr', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['manx71'] = {
			['name'] = '1971 Meyers Manx', --Name of car in city
			['brand'] = 'Meyers Manx', --Brand of car in city
			['model'] = 'manx71',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'manx71', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rapx'] = {
			['name'] = '2015 Polaris Slingshot', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'rapx',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rapx', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['huracangt3evo'] = {
			['name'] = 'Lamborghini Huracan GT3 EVO', --Name of car in city
			['brand'] = 'Lamborghini', --Brand of car in city
			['model'] = 'huracangt3evo',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'huracangt3evo', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['a90pit'] = {
			['name'] = 'Toyota Supra A90 Pandem', --Name of car in city
			['brand'] = 'Toyota', --Brand of car in city
			['model'] = 'a90pit',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'a90pit', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rx7cwest'] = {
			['name'] = 'Mazda RX7 C-West', --Name of car in city
			['brand'] = 'Mazda', --Brand of car in city
			['model'] = 'rx7cwest',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rx7cwest', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['96impala'] = {
			['name'] = '1996 Chevrolet Impala SS', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = '96impala',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '96impala', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gmcyd'] = {
			['name'] = '2015 GMC Yukon Denali', --Name of car in city
			['brand'] = 'GMC', --Brand of car in city
			['model'] = 'gmcyd',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gmcyd', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bt62r'] = {
			['name'] = 'Brabham BT62-R', --Name of car in city
			['brand'] = 'Brabham', --Brand of car in city
			['model'] = 'bt62r',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bt62r', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['amgdtm'] = {
			['name'] = '2013 Mercedes-Benz AMG DTM C204', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 'amgdtm',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'amgdtm', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['911gt2'] = {
			['name'] = 'Porsche 911 GT2', --Name of car in city
			['brand'] = 'Porsche', --Brand of car in city
			['model'] = '911gt2',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '911gt2', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['m190e'] = {
			['name'] = '1990 Mercedes-Benz 190E Evolution II', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 'm190e',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'm190e', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gxrx7'] = {
			['name'] = '2002 Mazda RX-7 Spirit R', --Name of car in city
			['brand'] = 'Mazda', --Brand of car in city
			['model'] = 'gxrx7',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gxrx7', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['f82'] = {
			['name'] = '2015 BMW F82 M4', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'f82',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'f82', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['vintage18sb'] = {
			['name'] = '18 Vintage Car', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'vintage18sb',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'vintage18sb', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bexp'] = {
			['name'] = 'Bentley EXP-10 Speed 6', --Name of car in city
			['brand'] = 'Bentley', --Brand of car in city
			['model'] = 'bexp',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bexp', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['pgt322'] = {
			['name'] = '2022 Porsche 911 Gt3', --Name of car in city
			['brand'] = 'Porsche', --Brand of car in city
			['model'] = 'pgt322',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'pgt322', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['pgt322'] = {
			['name'] = '2022 Porsche 911 GT3', --Name of car in city
			['brand'] = 'Porsche', --Brand of car in city
			['model'] = 'pgt322',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'pgt322', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bc'] = {
			['name'] = 'Pagani Huayra BC Ohasis', --Name of car in city
			['brand'] = 'Pagani', --Brand of car in city
			['model'] = 'bc',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bc', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['cls63s'] = {
			['name'] = 'Mercedes-Benz CLS63 AMG Shooting', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 'cls63s',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'cls63s', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['g63amg'] = {
			['name'] = 'Mercedes Benz G63 AMG 6x6', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 'g63amg',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'g63amg', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mcgt20'] = {
			['name'] = '2020 McLaren GT', --Name of car in city
			['brand'] = 'McLaren', --Brand of car in city
			['model'] = 'mcgt20',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mcgt20', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['sc18'] = {
			['name'] = 'Lamborghini SC18 Alston 2019', --Name of car in city
			['brand'] = 'Lamborghini', --Brand of car in city
			['model'] = 'sc18',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'sc18', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['venom'] = {
			['name'] = '2010 Hennessey Venom GT', --Name of car in city
			['brand'] = 'Hennessey', --Brand of car in city
			['model'] = 'venom',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'venom', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['voyager96'] = {
			['name'] = '1996 Plymouth Voyager', --Name of car in city
			['brand'] = 'Plymouth', --Brand of car in city
			['model'] = 'voyager96',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'voyager96', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['xchair'] = {
			['name'] = 'X-Men Professor X Wheelchair', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'xchair',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'xchair', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gdaq50'] = {
			['name'] = '2014 Infiniti Q50 VIP', --Name of car in city
			['brand'] = 'Infiniti', --Brand of car in city
			['model'] = 'gdaq50',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gdaq50', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['inf'] = {
			['name'] = '2020 Infiniti Q60 Project Black', --Name of car in city
			['brand'] = 'Infiniti', --Brand of car in city
			['model'] = 'inf',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'inf', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['qx80'] = {
			['name'] = 'Infiniti QX80 + larte kits', --Name of car in city
			['brand'] = 'Infiniti', --Brand of car in city
			['model'] = 'qx80',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'qx80', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['zionv10'] = {
			['name'] = 'Übermacht Zion V10', --Name of car in city
			['brand'] = 'Ubermacht', --Brand of car in city
			['model'] = 'zionv10',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'zionv10', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bnr32'] = {
			['name'] = 'Nissan Skyline GT-R R32', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = 'bnr32',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bnr32', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['jitney'] = {
			['name'] = 'Disneyland Jitney', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'jitney',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'jitney', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['senna'] = {
			['name'] = '2019 McLaren Senna', --Name of car in city
			['brand'] = 'McLaren', --Brand of car in city
			['model'] = 'senna',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'senna', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['camaross'] = {
			['name'] = '1969 Chevrolet Camaro SS', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'camaross',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'camaross', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['kia'] = {
			['name'] = '2018 Kia Stinger GT', --Name of car in city
			['brand'] = 'Kia', --Brand of car in city
			['model'] = 'kia',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'kia', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mxpan'] = {
			['name'] = '2016 MX5 Pandem', --Name of car in city
			['brand'] = 'Mazda', --Brand of car in city
			['model'] = 'mxpan',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = `mxpan`, --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rs4avant'] = {
			['name'] = 'Audi RS4 Avant (Liberty Walk)', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = 'rs4avant',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rs4avant', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['zn20'] = {
			['name'] = '2019 Zenvo TSR-S', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'zn20',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'zn20', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['180sx'] = {
			['name'] = 'Nissan 180sx ', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = '180sx',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '180sx', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['dc5'] = {
			['name'] = 'Honda Integra Type-R (DC5)', --Name of car in city
			['brand'] = 'Honda', --Brand of car in city
			['model'] = 'dc5',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'dc5', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['evantram'] = {
			['name'] = 'Mazzanti Evantra Millecavalli', --Name of car in city
			['brand'] = 'Mazzanti', --Brand of car in city
			['model'] = 'evantram',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'evantram', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['valkyrietp'] = {
			['name'] = 'Aston Martin Valkyrie Track Pack', --Name of car in city
			['brand'] = 'Aston Martin', --Brand of car in city
			['model'] = 'valkyrietp',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'valkyrietp', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['firebird77'] = {
			['name'] = '1977 Pontiac Firebird Trans Am', --Name of car in city
			['brand'] = 'Pontiac', --Brand of car in city
			['model'] = 'firebird77',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'firebird77', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['yzfr6'] = {
			['name'] = '2015 Yamaha YZF-R6', --Name of car in city
			['brand'] = 'Yamaha', --Brand of car in city
			['model'] = 'yzfr6',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'yzfr6', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['m4com'] = {
			['name'] = '2021 BMW M4 Competition ', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'm4com',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'm4com', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['thraxd'] = {
			['name'] = 'Truffade Thrax Drop', --Name of car in city
			['brand'] = 'Truffade', --Brand of car in city
			['model'] = 'thraxd',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'thraxd', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rrvogue'] = {
			['name'] = '2014 Range Rover Vogue SC 3.0 V6', --Name of car in city
			['brand'] = 'Range Rover', --Brand of car in city
			['model'] = 'rrvogue',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rrvogue', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['2013rs7'] = {
			['name'] = '2013 Audi RS7', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = '2013rs7',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '2013rs7', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ls430'] = {
			['name'] = 'Lexus LS430', --Name of car in city
			['brand'] = 'Lexus', --Brand of car in city
			['model'] = 'ls430',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ls430', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['s8plus'] = {
			['name'] = '2016 Audi S8 plus', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = 's8plus',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 's8plus', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['sentinel6'] = {
			['name'] = '6STR Ubermacht Sentinel Classic Custom', --Name of car in city
			['brand'] = 'Ubermacht', --Brand of car in city
			['model'] = 'sentinel6',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'sentinel6', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['scirocco'] = {
			['name'] = '2011 Volkswagen Scirocco R III Typ 13', --Name of car in city
			['brand'] = 'Volkswagen', --Brand of car in city
			['model'] = 'scirocco',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'scirocco', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['z15clean'] = {
			['name'] = 'Zlayworks Nissan Silvia S15 Z15', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = 'z15clean',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'z15clean', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['458mishadesign'] = {
			['name'] = 'Ferrari 458 Misha Design', --Name of car in city
			['brand'] = 'Ferrari', --Brand of car in city
			['model'] = '458mishadesign',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '458mishadesign', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['elisegt1'] = {
			['name'] = 'Lotus Elise GT1', --Name of car in city
			['brand'] = 'Lotus', --Brand of car in city
			['model'] = 'elisegt1',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'elisegt1', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['castella'] = {
			['name'] = 'Shitzu Castella', --Name of car in city
			['brand'] = 'Shitzu', --Brand of car in city
			['model'] = 'castella',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'castella', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['xj220'] = {
			['name'] = '1992 Jaguar XJ220', --Name of car in city
			['brand'] = 'Jaguar', --Brand of car in city
			['model'] = 'xj220',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'xj220', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rs3lms'] = {
			['name'] = 'Audi RS3 LMS', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = 'rs3lms',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rs3lms', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['sprinterbs'] = {
			['name'] = 'Mercedes-Benz Sprinter 2011', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 'sprinterbs',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'sprinterbs', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['italirsxrod'] = {
			['name'] = 'Grotti Itali RSX Roadster', --Name of car in city
			['brand'] = 'Grotti', --Brand of car in city
			['model'] = 'italirsxrod',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'italirsxrod', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rx7rb'] = {
			['name'] = 'Mazda RX7 Rocket Bunny', --Name of car in city
			['brand'] = 'Mazda', --Brand of car in city
			['model'] = 'rx7rb',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rx7rb', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rs4avantn'] = {
			['name'] = '2013 Audi RS4 Avant', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = 'rs4avantn',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rs4avantn', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['scijo'] = {
			['name'] = '2010 Volkswagen scirocco', --Name of car in city
			['brand'] = 'Volkswagen', --Brand of car in city
			['model'] = 'scijo',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'scijo', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['fc3s'] = {
			['name'] = 'Mazda RX7 FC', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = 'fc3s',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'fc3s', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['fc3s2'] = {
			['name'] = 'Mazda RX7 FC', --Name of car in city
			['brand'] = 'Mazda', --Brand of car in city
			['model'] = 'fc3s2',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'fc3s2', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['nlargo'] = {
			['name'] = 'Ferrari F12 N-Largo Rosso DTD Edition', --Name of car in city
			['brand'] = 'Ferrari', --Brand of car in city
			['model'] = 'nlargo',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'nlargo', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['argiulia'] = {
			['name'] = 'Alfa Romeo Giulia Quadrifoglio 2017', --Name of car in city
			['brand'] = 'Alfa Romeo', --Brand of car in city
			['model'] = 'argiulia',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'argiulia', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gcmlambosc20'] = {
			['name'] = 'Lamborghini SC20', --Name of car in city
			['brand'] = 'Lamborghini', --Brand of car in city
			['model'] = 'gcmlambosc20',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gcmlambosc20', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['r390'] = {
			['name'] = 'Nissan R390 Roadcar 98', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = 'r390',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'r390', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['komodafr'] = {
			['name'] = 'Lampadati Komoda FR-Works', --Name of car in city
			['brand'] = 'Lampadati', --Brand of car in city
			['model'] = 'komodafr',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'komodafr', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['al1'] = {
			['name'] = '2018 Alpine A110', --Name of car in city
			['brand'] = 'Alpine', --Brand of car in city
			['model'] = 'al1',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'al1', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['apple'] = {
			['name'] = 'Apple Car', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'apple',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'apple', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['spyker'] = {
			['name'] = 'Spyker C8 Aileron', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'spyker',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'spyker', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ipl'] = {
			['name'] = '2012 Infiniti IPL G Coupe', --Name of car in city
			['brand'] = 'Infiniti', --Brand of car in city
			['model'] = 'ipl',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ipl', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['amish'] = {
			['name'] = 'Horse Drawn Cart', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'amish',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'amish', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gs350'] = {
			['name'] = 'Lexus GS350', --Name of car in city
			['brand'] = 'Lexus', --Brand of car in city
			['model'] = 'gs350',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gs350', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['m235'] = {
			['name'] = 'BMW M235i 69Works Design ft. REBORN Team', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'm235',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'm235', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['r8'] = {
			['name'] = 'Audi R8', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = 'r8',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'r8', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['nissan2000'] = {
			['name'] = 'Nissan Skyline 2000GT', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = 'nissan2000',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'nissan2000', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['karl'] = {
			['name'] = 'Karlmann King SUV', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'karl',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'karl', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['sciroccos81'] = {
			['name'] = '1981 Volkswagen Scirocco Mk1 Vr6', --Name of car in city
			['brand'] = 'Volkswagen', --Brand of car in city
			['model'] = 'sciroccos81',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'sciroccos81', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['tuktuk'] = {
			['name'] = 'Tuk Tuk', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'tuktuk',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'tuktuk', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['acuransx'] = {
			['name'] = 'Acura NSX 2002', --Name of car in city
			['brand'] = 'Acura', --Brand of car in city
			['model'] = 'acuransx',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'acuransx', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ctssw10'] = {
			['name'] = '2010 Cadillac CTS Sport Wagon', --Name of car in city
			['brand'] = 'Cadillac', --Brand of car in city
			['model'] = 'ctssw10',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ctssw10', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['dodge440'] = {
			['name'] = '1967 Dodge Coronet 440', --Name of car in city
			['brand'] = 'Dodge', --Brand of car in city
			['model'] = 'dodge440',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'dodge440', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['draftgpr'] = {
			['name'] = 'Obey 8F D-Street', --Name of car in city
			['brand'] = 'Obey', --Brand of car in city
			['model'] = 'draftgpr',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'draftgpr', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['monterey72'] = {
			['name'] = 'Mercury Monterey 1972', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'monterey72',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'monterey72', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rt440'] = {
			['name'] = '1970 Dodge Challenger RT 440', --Name of car in city
			['brand'] = 'Dodge', --Brand of car in city
			['model'] = 'rt440',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rt440', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['taxi2'] = {
			['name'] = 'Peugeot 406 Taxi 2', --Name of car in city
			['brand'] = 'Peugeot', --Brand of car in city
			['model'] = 'taxi2',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'taxi2', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['xmpacker'] = {
			['name'] = 'eCola Packer (Belongs with eCola Trailer)', --Name of car in city
			['brand'] = 'MTL', --Brand of car in city
			['model'] = 'xmpacker',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'xmpacker', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['xmtrailer'] = {
			['name'] = 'eCola Trailer (Belongs with eCola Packer)', --Name of car in city
			['brand'] = 'MTL', --Brand of car in city
			['model'] = 'xmtrailer',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'xmtrailer', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ford32hulagirl'] = {
			['name'] = 'Ford 1932 Roadster hulagirl', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'ford32hulagirl',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ford32hulagirl', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['celebrity 82'] = {
			['name'] = '1982 Chevrolet Celebrity', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'celebrity 82',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'celebrity 82', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['m9395'] = {
			['name'] = 'M939 5-Ton Truck (Weapon Transport Truck)', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'm9395',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'm9395', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['tyrusgtr'] = {
			['name'] = 'Progen Tyrus GTR', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'tyrusgtr',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'tyrusgtr', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['1000rr'] = {
			['name'] = 'Honda CBR 1000', --Name of car in city
			['brand'] = 'Honda', --Brand of car in city
			['model'] = '1000rr',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '1000rr', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['150rap'] = {
			['name'] = 'Ford F150 (Donked)', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = '150rap',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '150rap', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['56f100'] = {
			['name'] = '1956 Ford F100', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = '56f100',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '56f100', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bgnx'] = {
			['name'] = '1987 Buick GNX', --Name of car in city
			['brand'] = 'Buick', --Brand of car in city
			['model'] = 'bgnx',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bgnx', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ecto1'] = {
			['name'] = 'Ecto1 From Ghostbusters', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'ecto1',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ecto1', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['eleanor'] = {
			['name'] = 'Shelby GT500 Eleanor', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'eleanor',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'eleanor', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gmcsav04'] = {
			['name'] = '2004 GMC Savana Box Truck', --Name of car in city
			['brand'] = 'GMC', --Brand of car in city
			['model'] = 'gmcsav04',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gmcsav04', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mvisiongt'] = {
			['name'] = 'Mercedes-Benz AMG Vision GT', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 'mvisiongt',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mvisiongt', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rmodpagani'] = {
			['name'] = 'Pagani Huayra Roadster 2018', --Name of car in city
			['brand'] = 'Pagani', --Brand of car in city
			['model'] = 'rmodpagani',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rmodpagani', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['supraa90'] = {
			['name'] = '2020 Toyota Supra GR A90', --Name of car in city
			['brand'] = 'Toyota', --Brand of car in city
			['model'] = 'supraa90',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'supraa90', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['trailcat'] = {
			['name'] = '2016 Jeep Wrangler Trailcat Concept', --Name of car in city
			['brand'] = 'Jeep', --Brand of car in city
			['model'] = 'trailcat',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'trailcat', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['sjbenz'] = {
			['name'] = '2009 Mercedes Benz S-Class w221 Black Bison Edition', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 'sjbenz',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'sjbenz', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['2020copov2'] = {
			['name'] = '2020Camaro Copo Drag', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = '2020copov2',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = `2020copov2`, --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['vip8'] = {
			['name'] = '2008 Dodge Viper', --Name of car in city
			['brand'] = 'Dodge', --Brand of car in city
			['model'] = 'vip8',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'vip8', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['13fmb302'] = {
			['name'] = 'Ford Mustang Boss 302 2013', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = '13fmb302',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '13fmb302', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['regera16'] = {
			['name'] = '2016 Koenigsegg Regera', --Name of car in city
			['brand'] = 'Koenigsegg', --Brand of car in city
			['model'] = 'regera16',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'regera16', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['m6coupe'] = {
			['name'] = '2013 BMW M6 Coupe', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'm6coupe',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'm6coupe', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['startechrr1'] = {
			['name'] = 'Land Rover Range Rover Startech', --Name of car in city
			['brand'] = 'Land Rover', --Brand of car in city
			['model'] = 'startechrr1',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'startechrr1', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['clkgtr'] = {
			['name'] = 'Mercedes-Benz CLK GTR 1998', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 'clkgtr',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'clkgtr', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gxa90'] = {
			['name'] = '2020 Toyota Supra A90', --Name of car in city
			['brand'] = 'Toyota', --Brand of car in city
			['model'] = 'gxa90',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gxa90', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['koenig'] = {
			['name'] = 'Koenigsegg CCX Elite', --Name of car in city
			['brand'] = 'Koenigsegg', --Brand of car in city
			['model'] = 'koenig',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'koenig', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ctsv16'] = {
			['name'] = '2016 Cadillac CTS-V', --Name of car in city
			['brand'] = 'Cadillac', --Brand of car in city
			['model'] = 'ctsv16',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ctsv16', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['m3e46_2'] = {
			['name'] = 'BMW M3 E46 GTR', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'm3e46_2',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'm3e46_2', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['corvette63'] = {
			['name'] = '1963 Corvette Split Window', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'corvette63',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'corvette63', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['17altima'] = {
			['name'] = '2017 Nissan Altima', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = '17altima',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '17altima', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['requiemzr1'] = {
			['name'] = 'Annis Requiem ZR', --Name of car in city
			['brand'] = 'Annis', --Brand of car in city
			['model'] = 'requiemzr1',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'requiemzr1', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bcfs'] = {
			['name'] = '2010 Bentley Continental Flying Spur', --Name of car in city
			['brand'] = 'Bentley', --Brand of car in city
			['model'] = 'bcfs',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bcfs', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bertone'] = {
			['name'] = '2010 Italy Bertone Mantide', --Name of car in city
			['brand'] = 'Gruppo Bertone', --Brand of car in city
			['model'] = 'bertone',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bertone', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['dawnonyx'] = {
			['name'] = '2016 Rolls-Royce Dawn Onyx Concept', --Name of car in city
			['brand'] = 'Rolls Royce', --Brand of car in city
			['model'] = 'dawnonyx',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'dawnonyx', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bcgt2012'] = {
			['name'] = '2012 Bentley Continental GT', --Name of car in city
			['brand'] = 'Bentley', --Brand of car in city
			['model'] = 'bcgt2012',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bcgt2012', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['cgts'] = {
			['name'] = 'Bentley Continental GT Convertible 2020', --Name of car in city
			['brand'] = 'Bentley', --Brand of car in city
			['model'] = 'cgts',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'cgts', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['vsrx7'] = {
			['name'] = 'Veilside Mazda RX7 FD3S', --Name of car in city
			['brand'] = 'Mazda', --Brand of car in city
			['model'] = 'vsrx7',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'vsrx7', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['599xxevo'] = {
			['name'] = '2011 Ferrari 599XX Evoluzione', --Name of car in city
			['brand'] = 'Ferrari', --Brand of car in city
			['model'] = '599xxevo',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '599xxevo', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['cnty'] = {
			['name'] = '1986 Buick Century Limited', --Name of car in city
			['brand'] = 'Buick', --Brand of car in city
			['model'] = 'cnty',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'cnty', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['MustangCSRFF3'] = {
			['name'] = 'Ford Mustang Fastback 67 (Tokyo Drift)', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'MustangCSRFF3',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'MustangCSRFF3', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['audiq7'] = {
			['name'] = 'Audi Q7 (Donked)', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = 'audiq7',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'audiq7', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['117'] = {
			['name'] = '1994 Harley sportster Adams Bike', --Name of car in city
			['brand'] = 'Harley Davidson', --Brand of car in city
			['model'] = '117',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '117', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['77monte'] = {
			['name'] = '1977 Chevrolet Monte Carlo Custom Style', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = '77monte',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '77monte', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['86monte'] = {
			['name'] = '1986 Chevrolet Monte Carlo', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = '86monte',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '86monte', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['capricedonk'] = {
			['name'] = '1992 Caprice Donk', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'capricedonk',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'capricedonk', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['cb750'] = {
			['name'] = 'Honda CB750 Chopper', --Name of car in city
			['brand'] = 'Honda', --Brand of car in city
			['model'] = 'cb750',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'cb750', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['DZSB'] = {
			['name'] = '2014 rolls Royce Phantom', --Name of car in city
			['brand'] = 'Rolls Royce', --Brand of car in city
			['model'] = 'DZSB',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'DZSB', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['goldwing'] = {
			['name'] = '2018 Honda Goldwing Touring', --Name of car in city
			['brand'] = 'Honda', --Brand of car in city
			['model'] = 'goldwing',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'goldwing', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['hayabusa'] = {
			['name'] = 'Suzuki Hayabusa GSX1300 2015', --Name of car in city
			['brand'] = 'Suzuki', --Brand of car in city
			['model'] = 'hayabusa',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'hayabusa', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mustangdonk'] = {
			['name'] = '2015 Ford Mustang (Donked)', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'mustangdonk',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mustangdonk', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['skylark'] = {
			['name'] = '1968 Buick Skylark Donk On Dub Floaters', --Name of car in city
			['brand'] = 'Buick', --Brand of car in city
			['model'] = 'skylark',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'skylark', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['bronco2021'] = {
			['name'] = '2021 Ford Bronco', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'bronco2021',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'bronco2021', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['wrangler86'] = {
			['name'] = '1986 Jeep Wrangler', --Name of car in city
			['brand'] = 'Jeep', --Brand of car in city
			['model'] = 'wrangler86',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'wrangler86', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['cat_car'] = {
			['name'] = 'Cat Car', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'cat_car',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'cat_car', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['330p4'] = {
			['name'] = 'Ferrari 330 P4', --Name of car in city
			['brand'] = 'Ferrari', --Brand of car in city
			['model'] = '330p4',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '330p4', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ageraone'] = {
			['name'] = '2015 Koenigsegg Agera One:1', --Name of car in city
			['brand'] = 'Koenigsegg', --Brand of car in city
			['model'] = 'ageraone',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ageraone', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['atsvme'] = {
			['name'] = '2016 Cadillac ATS-V', --Name of car in city
			['brand'] = 'Cadillac', --Brand of car in city
			['model'] = 'atsvme',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'atsvme', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['auditts'] = {
			['name'] = 'Audi TTS 2015', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = 'auditts',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'auditts', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['beck'] = {
			['name'] = 'F132 by Beck Kustoms', --Name of car in city
			['brand'] = 'Misc', --Brand of car in city
			['model'] = 'beck',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'beck', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['c8r'] = {
			['name'] = 'Corvette C8-R', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'c8r',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'c8r', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['can'] = {
			['name'] = '2018 Can Am Maverick', --Name of car in city
			['brand'] = 'Can Am', --Brand of car in city
			['model'] = 'can',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'can', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['cc8s'] = {
			['name'] = 'Koenigsegg CC8S 2002', --Name of car in city
			['brand'] = 'Koenigsegg', --Brand of car in city
			['model'] = 'cc8s',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'cc8s', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['dm1200'] = {
			['name'] = 'Ducati Multistrada 2015', --Name of car in city
			['brand'] = 'Ducati', --Brand of car in city
			['model'] = 'dm1200',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'dm1200', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['e89'] = {
			['name'] = 'BMW Z4 GT3 (E89)', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'e89',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'e89', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ft1c'] = {
			['name'] = 'Toyotal FT1', --Name of car in city
			['brand'] = 'Toyota', --Brand of car in city
			['model'] = 'ft1c',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ft1c', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['fxxk'] = {
			['name'] = 'Ferrari FXX-K Hybrid Hypercar', --Name of car in city
			['brand'] = 'Ferrari', --Brand of car in city
			['model'] = 'fxxk',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'fxxk', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['grif'] = {
			['name'] = '2019 TVR Griffith', --Name of car in city
			['brand'] = 'TVR', --Brand of car in city
			['model'] = 'grif',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'grif', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['hs'] = {
			['name'] = 'Chevrolet HS Customs 1969 Camaro', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'hs',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'hs', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['is350'] = {
			['name'] = '2016 Lexus IS350 Widebody', --Name of car in city
			['brand'] = 'Lexus', --Brand of car in city
			['model'] = 'is350',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'is350', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['miata3'] = {
			['name'] = '1989 Miata NA', --Name of car in city
			['brand'] = 'Mazda', --Brand of car in city
			['model'] = 'miata3',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'miata3', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mst'] = {
			['name'] = 'Ford Mustang GT NFS + GT500 2013', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'mst',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mst', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['r8ppi'] = {
			['name'] = '2013 Audi R8 V10 & PPI Razor Tuning', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = 'r8ppi',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'r8ppi', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['raptor17'] = {
			['name'] = '2017 F150 Raptor', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'raptor17',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'raptor17', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rm3e36'] = {
			['name'] = 'BMW M3 E36 Rocket Bunny', --Name of car in city
			['brand'] = 'BMW', --Brand of car in city
			['model'] = 'rm3e36',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rm3e36', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rmodgt63'] = {
			['name'] = 'Mercedes-AMG GT63 S Coupe', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 'rmodgt63',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rmodgt63', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rmodlp570'] = {
			['name'] = 'Lamborghini Gallardo LP570-4 Superleggera', --Name of car in city
			['brand'] = 'Lamborghini', --Brand of car in city
			['model'] = 'rmodlp570',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rmodlp570', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['sesto'] = {
			['name'] = '2010 Lamborghini Sesto Elemento', --Name of car in city
			['brand'] = 'Lamborghini', --Brand of car in city
			['model'] = 'sesto',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'sesto', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['sl65bs'] = {
			['name'] = '2009 Mercedes-Benz SL65 Black Series', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 'sl65bs',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'sl65bs', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['trx'] = {
			['name'] = '2017 Dodge RAM 1500 Rebel TRX Concept', --Name of car in city
			['brand'] = 'Dodge', --Brand of car in city
			['model'] = 'trx',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'trx', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['tts'] = {
			['name'] = 'Audi TTS 2015', --Name of car in city
			['brand'] = 'Audi', --Brand of car in city
			['model'] = 'tts',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'tts', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['urus'] = {
			['name'] = 'Lamborghini Urus TOPCAR Design', --Name of car in city
			['brand'] = 'Lamborghini', --Brand of car in city
			['model'] = 'urus',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'urus', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['velociraptor'] = {
			['name'] = '2017 Hennessey Velociraptor 6x6', --Name of car in city
			['brand'] = 'Hennessey', --Brand of car in city
			['model'] = 'velociraptor',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'velociraptor', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['wmfenyr'] = {
			['name'] = 'W Motors Fenyr Super Sport', --Name of car in city
			['brand'] = 'W Motors', --Brand of car in city
			['model'] = 'wmfenyr',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'wmfenyr', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['zondar'] = {
			['name'] = 'Pagani Zonda R / Revolucion', --Name of car in city
			['brand'] = 'Pagani', --Brand of car in city
			['model'] = 'zondar',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'zondar', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mazlex'] = {
			['name'] = '1989 Mazda MX-5 Miata (Stanced)', --Name of car in city
			['brand'] = 'Mazda', --Brand of car in city
			['model'] = 'mazlex',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mazlex', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['scaldarsi'] = {
			['name'] = 'Maybach Emperor', --Name of car in city
			['brand'] = 'Maybach', --Brand of car in city
			['model'] = 'scaldarsi',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'scaldarsi', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['80elcamino'] = {
			['name'] = '1980 El Camino (Donked)', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = '80elcamino',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '80elcamino', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['esc21'] = {
			['name'] = 'Cadillac Escalade 2021', --Name of car in city
			['brand'] = 'Cadillac', --Brand of car in city
			['model'] = 'esc21',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'esc21', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ford40d'] = {
			['name'] = '1940 Ford Deluxe Coupe', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'ford40d',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ford40d', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['17powerwagon'] = {
			['name'] = 'Ram Powerwagon', --Name of car in city
			['brand'] = 'Ram', --Brand of car in city
			['model'] = '17powerwagon',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '17powerwagon', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['19gt500'] = {
			['name'] = '2019 Shelby Gt500', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = '19gt500',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '19gt500', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['gto06'] = {
			['name'] = 'Pontiac GTO 2006', --Name of car in city
			['brand'] = 'Pontiac', --Brand of car in city
			['model'] = 'gto06',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'gto06', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['lamtmc'] = {
			['name'] = '2017 Lamborghini Terzo Millennio', --Name of car in city
			['brand'] = 'Lamborghini', --Brand of car in city
			['model'] = 'lamtmc',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'lamtmc', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mach1'] = {
			['name'] = '2021 Ford Mustang MACH 1', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'mach1',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mach1', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mgtcobra'] = {
			['name'] = '2004 Mustang Cobra', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'mgtcobra',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mgtcobra', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mustangfox'] = {
			['name'] = 'Ford Mustang Fox Body', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'mustangfox',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mustangfox', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['mustangspec5'] = {
			['name'] = '2015 Ford Mustang GT (RTR Spec5)', --Name of car in city
			['brand'] = 'Ford', --Brand of car in city
			['model'] = 'mustangspec5',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'mustangspec5', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['600sel'] = {
			['name'] = 'Mercedes-Benz 600 SEL (W140)', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = '600sel',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '600sel', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['w140'] = {
			['name'] = 'Mercedes-Benz 600 SEL (W140)', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = 'w140',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'w140', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['454'] = {
			['name'] = 'Dragrace Chevy 454 Pickup', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = '454',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = '454', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['forgiec7'] = {
			['name'] = 'Forgiato Widebody Corvette', --Name of car in city
			['brand'] = 'Chevrolet', --Brand of car in city
			['model'] = 'forgiec7',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'forgiec7', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['v877'] = {
			['name'] = '1977 Aston Martin Vantage V8', --Name of car in city
			['brand'] = 'Aston Martin', --Brand of car in city
			['model'] = 'v877',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'v877', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['paragonxr'] = {
			['name'] = 'Enus Paragon FR-Works', --Name of car in city
			['brand'] = 'Enus', --Brand of car in city
			['model'] = 'paragonxr',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'paragonxr', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['hondacrx'] = {
			['name'] = 'Honda CR-X Del Sol', --Name of car in city
			['brand'] = 'Honda', --Brand of car in city
			['model'] = 'hondacrx',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'hondacrx', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ellie6str'] = {
			['name'] = '6STR Vapid Drift Ellie Custom', --Name of car in city
			['brand'] = 'Vapid', --Brand of car in city
			['model'] = 'ellie6str',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'ellie6str', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['sportrs'] = {
			['name'] = 'Renault Sport RS', --Name of car in city
			['brand'] = 'Renault', --Brand of car in city
			['model'] = 'sportrs',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = `sportrs`, --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['z32'] = {
			['name'] = 'Nissan 300ZX Z32', --Name of car in city
			['brand'] = 'Nissan', --Brand of car in city
			['model'] = 'z32',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = `z32`, --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['190e'] = {
			['name'] = 'Mercedes-Benz 190E Evolution II', --Name of car in city
			['brand'] = 'Mercedes', --Brand of car in city
			['model'] = '190e',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = `190e`, --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['p1gtr'] = {
			['name'] = 'McLaren P1 GTR Road Legal', --Name of car in city
			['brand'] = 'McLaren', --Brand of car in city
			['model'] = 'p1gtr',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = `p1gtr`, --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['458it'] = {
			['name'] = '2010 Ferrari 458 Italia', --Name of car in city
			['brand'] = 'Ferrari', --Brand of car in city
			['model'] = '458it',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = `458it`, --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['488speed'] = {
			['name'] = 'Ferrari 488 Spider', --Name of car in city
			['brand'] = 'Ferrari', --Brand of car in city
			['model'] = '488speed',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = `488speed`, --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['huralbnormal'] = {
			['name'] = 'Lamborghini Huracan Lp610-4 Libertywalk Stance', --Name of car in city
			['brand'] = 'Lamborghini', --Brand of car in city
			['model'] = 'huralbnormal',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = `huralbnormal`, --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['zoom'] = {
			['name'] = '2021 Bentley Mulliner', --Name of car in city
			['brand'] = 'Bentley', --Brand of car in city
			['model'] = 'zoom',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = `zoom`, --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rmodsian'] = {
			['name'] = 'Lamborghini Sián FKP 37', --Name of car in city
			['brand'] = 'Lamborghini', --Brand of car in city
			['model'] = 'rmodsian',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = `rmodsian`, --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['z1000a1'] = {
			['name'] = 'Kawasaki Z1000A', --Name of car in city
			['brand'] = 'Kawasaki', --Brand of car in city
			['model'] = 'z1000a1',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = `z1000a1`, --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['zl400b'] = {
			['name'] = 'Kawasaki Eliminator 400SE', --Name of car in city
			['brand'] = 'Kawasaki', --Brand of car in city
			['model'] = 'zl400b',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = `zl400b`, --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ocnrrvn100'] = {
			['name'] = 'Rolls Royce Concept', --Name of car in city
			['brand'] = 'Rolls Royce', --Brand of car in city
			['model'] = 'ocnrrvn100',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = `ocnrrvn100`, --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['ramsrt10'] = {
			['name'] = '2006 Dodge Ram SRT 10', --Name of car in city
			['brand'] = 'Dodge', --Brand of car in city
			['model'] = 'ramsrt10',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = `ramsrt10`, --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['rrphantom'] = {
			['name'] = '2018 Rolls-Royce Phantom VIII', --Name of car in city
			['brand'] = 'Rolls Royce', --Brand of car in city
			['model'] = 'rrphantom',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = 'rrphantom', --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['cullinan2'] = {
			['name'] = 'Rolls Royce Cullinan 2.0', --Name of car in city
			['brand'] = 'Rolls Royce', --Brand of car in city
			['model'] = 'cullinan2',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = `cullinan2`, --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['italigton'] = {
			['name'] = 'Grotti Itali GTO N-Larga Custom', --Name of car in city
			['brand'] = 'Grotti', --Brand of car in city
			['model'] = 'italigton',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = `italigton`, --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
		},
	['spano2016'] = {
			['name'] = 'Spano', --Name of car in city
			['brand'] = 'Spano', --Brand of car in city
			['model'] = 'spano2016',
			['price'] = 0, --price of car in city
			['category'] = 'none', --Category of car in shop
			['hash'] = `spano2016`, --Spawn Code
			['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
	}, 
	['stagea34'] = {
		['name'] = 'Stagea R35', --Name of car in city
		['brand'] = 'Nissan', --Brand of car in city
		['model'] = 'stagea34',
		['price'] = 0, --price of car in city
		['category'] = 'none', --Category of car in shop
		['hash'] = `stagea34`, --Spawn Code
		['shop'] = 'custom', --Ottos, police, ambulance, luxury, tuner
	},
	['hellephantdurango'] = {
        ['name'] = 'Dodge Durango Hellcat', -- Name it will show as in city
        ['brand'] = 'Dodge', -- Brand will show before name
        ['model'] = 'hellephantdurango',
        ['price'] = 0, --0 because of One-Off
        ['category'] = 'none',
        ['hash'] = 'hellephantdurango',
        ['shop'] = 'custom', --Shop does not exist// Car won't be placed anywhere to be bought
    },
	['cookies'] = {
        ['name'] = 'Cookies', -- Name it will show as in city
        ['brand'] = 'Mercadez', -- Brand will show before name
        ['model'] = 'cookies',
        ['price'] = 0, --0 because of One-Off
        ['category'] = 'none',
        ['hash'] = 'cookies',
        ['shop'] = 'custom', --Shop does not exist// Car won't be placed anywhere to be bought
    },
	['pandeme36'] = {
		['name'] = 'Pandeme 36', -- Name it will show as in city
        ['brand'] = 'BMW', -- Brand will show before name
        ['model'] = 'pandeme36',
        ['price'] = 0, --0 because of One-Off
        ['category'] = 'none',
        ['hash'] = 'pandeme36',
        ['shop'] = 'custom', --Shop does not exist// Car won't be placed anywhere to be bought
    },
	['pvm6f13'] = {
		['name'] = 'Crip Car', -- Name it will show as in city
        ['brand'] = 'BMW', -- Brand will show before name
        ['model'] = 'pvm6f13',
        ['price'] = 0, --0 because of One-Off
        ['category'] = 'none',
        ['hash'] = `pvm6f13`,
        ['shop'] = 'custom', --Shop does not exist// Car won't be placed anywhere to be bought
    },
	["gtraimgain"] = {
		['name'] = 'Giveaway GTR', -- Name it will show as in city
        ['brand'] = 'Nissan', -- Brand will show before name
        ['model'] = 'gtraimgain',
        ['price'] = 0, --0 because of One-Off
        ['category'] = 'none',
        ['hash'] = 'gtraimgain',
        ['shop'] = 'custom', --Shop does not exist// Car won't be placed anywhere to be bought
    }, 
	["x3beetle67"] = {
		['name'] = 'Giveaway Bettlte', -- Name it will show as in city
        ['brand'] = 'X3', -- Brand will show before name
        ['model'] = 'x3beetle67',
        ['price'] = 0, --0 because of One-Off
        ['category'] = 'none',
        ['hash'] = 'x3beetle67',
        ['shop'] = 'custom', --Shop does not exist// Car won't be placed anywhere to be bought
    }, 
	["glowd"] = {
		['name'] = 'DOW Hellcat', -- Name it will show as in city
        ['brand'] = 'Dodge', -- Brand will show before name
        ['model'] = 'glowd',
        ['price'] = 0, --0 because of One-Off
        ['category'] = 'none',
        ['hash'] = 'glowd',
        ['shop'] = 'custom', --Shop does not exist// Car won't be placed anywhere to be bought
    }, -- Added 10 16 2022
	['19ramdonk'] = {
        ['name'] = '2019 Ram Donk',
        ['brand'] = 'ram',
        ['model'] = '19ramdonk',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `19ramdonk`,
        ['shop'] = 'custom',
    },
['19sclass'] = {
        ['name'] = '2019 Mercedes S Class',
        ['brand'] = 'mercedes',
        ['model'] = '19sclass',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `19sclass`,
        ['shop'] = 'custom',
    },
['2019cobrajet'] = {
        ['name'] = 'Mustang Cobra Jet',
        ['brand'] = 'ford',
        ['model'] = '2019cobrajet',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `2019cobrajet`,
        ['shop'] = 'custom',
    },
['488gt3'] = {
        ['name'] = 'Glow Ferrari 488',
        ['brand'] = 'ferrari',
        ['model'] = '488gt3',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `488gt3`,
        ['shop'] = 'custom',
    },
['64ford'] = {
        ['name'] = '1964 Ford Fairline',
        ['brand'] = 'ford',
        ['model'] = '64ford',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `64ford`,
        ['shop'] = 'custom',
    },
['6door'] = {
        ['name'] = 'GMC Savana Donk',
        ['brand'] = 'gmc',
        ['model'] = '6door',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `6door`,
        ['shop'] = 'custom',
    },
['70cut30s'] = {
        ['name'] = '1970 Cutlass Donk',
        ['brand'] = 'oldsmobile',
        ['model'] = '70cut30s',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `70cut30s`,
        ['shop'] = 'custom',
    },
['740i'] = {
        ['name'] = 'BMW 740i',
        ['brand'] = 'bmw',
        ['model'] = '740i',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `740i`,
        ['shop'] = 'custom',
    },
['765ltmso'] = {
        ['name'] = 'Lux 765',
        ['brand'] = 'mclaren',
        ['model'] = '765ltmso',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `765ltmso`,
        ['shop'] = 'custom',
    },
['amggtrlight'] = {
        ['name'] = 'Glow AMG GT',
        ['brand'] = 'mercedes',
        ['model'] = 'amggtrlight',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `amggtrlight`,
        ['shop'] = 'custom',
    },
['apertos'] = {
        ['name'] = 'Lamborghini apertos',
        ['brand'] = 'lamborghini',
        ['model'] = 'apertos',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `apertos`,
        ['shop'] = 'custom',
    },
['bbdawn'] = {
        ['name'] = 'Bentley Glow Car',
        ['brand'] = 'bentley',
        ['model'] = 'bbdawn',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `bbdawn`,
        ['shop'] = 'custom',
    },
['bm66'] = {
        ['name'] = '1966 Batmobile',
        ['brand'] = 'misc',
        ['model'] = 'bm66',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `bm66`,
        ['shop'] = 'custom',
    },
	['c8'] = {
        ['name'] = 'Chevrolet C8 Donk',
        ['brand'] = 'chevrolet',
        ['model'] = 'c8',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `c8`,
        ['shop'] = 'custom',
    },
['caddydts'] = {
        ['name'] = 'Cadillac DTS Donk',
        ['brand'] = 'cadillac',
        ['model'] = 'caddydts',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `caddydts`,
        ['shop'] = 'custom',
    },
['caliburn'] = {
        ['name'] = 'Rayfield Caliburn',
        ['brand'] = 'misc',
        ['model'] = 'caliburn',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `caliburn`,
        ['shop'] = 'custom',
    },
['carnivalhi'] = {
        ['name'] = 'Kia Carnival',
        ['brand'] = 'kia',
        ['model'] = 'carnivalhi',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `carnivalhi`,
        ['shop'] = 'custom',
    },
['che1950ez'] = {
        ['name'] = '1950 Chevrolet Pickup',
        ['brand'] = 'chevrolet',
        ['model'] = 'che1950ez',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `che1950ez`,
        ['shop'] = 'custom',
    },
['conceptr'] = {
        ['name'] = 'Ford Bronco R Prototype',
        ['brand'] = 'ford',
        ['model'] = 'conceptr',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `conceptr`,
        ['shop'] = 'custom',
    },
['cont'] = {
        ['name'] = '1990s Lincoln Continental Donk',
        ['brand'] = 'lincoln',
        ['model'] = 'cont',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `cont`,
        ['shop'] = 'custom',
    },
['contgt2011'] = {
        ['name'] = '2011 bentley continental gt widebody',
        ['brand'] = 'bentley',
        ['model'] = 'contgt2011',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `contgt2011`,
        ['shop'] = 'custom',
    },
['coreyoldchrg'] = {
        ['name'] = 'Dodge Charger Donked',
        ['brand'] = 'dodge',
        ['model'] = 'coreyoldchrg',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `coreyoldchrg`,
        ['shop'] = 'custom',
    },
['csi850'] = {
        ['name'] = 'BMW csi850',
        ['brand'] = 'bmw',
        ['model'] = 'csi850',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `csi850`,
        ['shop'] = 'custom',
    },
['dmy'] = {
        ['name'] = 'dodge demon',
        ['brand'] = 'dodge',
        ['model'] = 'dmy',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `dmy`,
        ['shop'] = 'custom',
    },
['ebmw92'] = {
        ['name'] = 'bmw E92 Drag',
        ['brand'] = 'bmw',
        ['model'] = 'ebmw92',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `ebmw92`,
        ['shop'] = 'custom',
    },
['flatbed3'] = {
        ['name'] = 'Mercedes Flatbed',
        ['brand'] = 'mercedes',
        ['model'] = 'flatbed3',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `flatbed3`,
        ['shop'] = 'custom',
    },
['fmss'] = {
        ['name'] = 'Mustang Go Cart',
        ['brand'] = 'ford',
        ['model'] = 'fmss',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `fmss`,
        ['shop'] = 'custom',
    },
['gen90g'] = {
        ['name'] = 'Aston martin genesis',
        ['brand'] = 'aston martin',
        ['model'] = 'gen90g',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `gen90g`,
        ['shop'] = 'custom',
    },
['givepd'] = {
        ['name'] = 'souped Ferrrari',
        ['brand'] = 'ferrari',
        ['model'] = 'givepd',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `givepd`,
        ['shop'] = 'custom',
    },
['glow8'] = {
        ['name'] = 'Glow BMW i8',
        ['brand'] = 'bmw',
        ['model'] = 'glow8',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `glow8`,
        ['shop'] = 'custom',
    },
['glow86'] = {
        ['name'] = 'Glow Toyota GT86',
        ['brand'] = 'toyota',
        ['model'] = 'glow86',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `glow86`,
        ['shop'] = 'custom',
    },
['goldbox'] = {
        ['name'] = 'Donked Chevy Caprice gold',
        ['brand'] = 'chevrolet',
        ['model'] = 'goldbox',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `goldbox`,
        ['shop'] = 'custom',
    },
['gtr35kreamc'] = {
        ['name'] = 'convertible GTR',
        ['brand'] = 'nissan',
        ['model'] = 'gtr35kreamc',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `gtr35kreamc`,
        ['shop'] = 'custom',
    },
['gtrnismo17'] = {
        ['name'] = '2017 Nissan GTR Glow',
        ['brand'] = 'nissan',
        ['model'] = 'gtrnismo17',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `gtrnismo17`,
        ['shop'] = 'custom',
    },
['helldonk'] = {
        ['name'] = 'Donked hellephant',
        ['brand'] = 'dodge',
        ['model'] = 'helldonk',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `helldonk`,
        ['shop'] = 'custom',
    },
['hprel'] = {
        ['name'] = 'Stanced Widebody Honda Prelude',
        ['brand'] = 'honda',
        ['model'] = 'hprel',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `hprel`,
        ['shop'] = 'custom',
    },
['huracandy'] = {
        ['name'] = 'Huracan Glow',
        ['brand'] = 'Lamborghini',
        ['model'] = 'huracandy',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `huracandy`,
        ['shop'] = 'custom',
    },
['ikx3166mm'] = {
        ['name'] = 'Old school racing Ferrari',
        ['brand'] = 'ferrari',
        ['model'] = 'ikx3166mm',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `ikx3166mm`,
        ['shop'] = 'custom',
    },
['impala96'] = {
        ['name'] = 'Donked Impala',
        ['brand'] = 'chevrolet',
        ['model'] = 'impala96',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `impala96`,
        ['shop'] = 'custom',
    },
['ipace'] = {
        ['name'] = 'Jaguar IPace',
        ['brand'] = 'dodge',
        ['model'] = 'ipace',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `ipace`,
        ['shop'] = 'custom',
    },
['jlsandbansheebusa'] = {
        ['name'] = 'extended offroader',
        ['brand'] = 'misc',
        ['model'] = 'jlsandbansheebusa',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `jlsandbansheebusa`,
        ['shop'] = 'custom',
    },
['lada2'] = {
        ['name'] = 'Lada Wagon',
        ['brand'] = 'lada',
        ['model'] = 'lada2',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `lada2`,
        ['shop'] = 'custom',
    },
['lambolb'] = {
        ['name'] = 'Widebody Glow Huracan',
        ['brand'] = 'Lamborghini',
        ['model'] = 'lambolb',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `lambolb`,
        ['shop'] = 'custom',
    },
['lc100'] = {
        ['name'] = 'Landcruiser 100',
        ['brand'] = 'toyota',
        ['model'] = 'lc100',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `lc100`,
        ['shop'] = 'custom',
    },
['lcs62'] = {
        ['name'] = '1962 Lincoln Continental',
        ['brand'] = 'lincoln',
        ['model'] = 'lcs62',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `lcs62`,
        ['shop'] = 'custom',
    },
['lpchopper'] = {
        ['name'] = 'Long Pipe Chopper',
        ['brand'] = 'misc',
        ['model'] = 'lpchopper',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `lpchopper`,
        ['shop'] = 'custom',
    },
['lxct200h'] = {
        ['name'] = 'Lexus CT200H',
        ['brand'] = 'lexus',
        ['model'] = 'lxct200h',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `lxct200h`,
        ['shop'] = 'custom',
    },
['m3bodydr'] = {
        ['name'] = 'Widebody BWM M3',
        ['brand'] = 'bmw',
        ['model'] = 'm3bodydr',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `m3bodydr`,
        ['shop'] = 'custom',
    },
['m999'] = {
        ['name'] = 'BMW M999',
        ['brand'] = 'bmw',
        ['model'] = 'm999',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `m999`,
        ['shop'] = 'custom',
    },
['mansc8'] = {
        ['name'] = 'Mansory C8 (landons)',
        ['brand'] = 'chevrolet',
        ['model'] = 'mansc8',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `mansc8`,
        ['shop'] = 'custom',
    },
['mfc'] = {
        ['name'] = 'RX-7 FC',
        ['brand'] = 'mazda',
        ['model'] = 'mfc',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `mfc`,
        ['shop'] = 'custom',
    },
['Monti'] = {
        ['name'] = 'Donked Chevy SS monti',
        ['brand'] = 'chevrolet',
        ['model'] = 'Monti',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `Monti`,
        ['shop'] = 'custom',
    },
['msgtr19'] = {
        ['name'] = '2019 Mclaren P1 GTR',
        ['brand'] = 'mclaren',
        ['model'] = 'msgtr19',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `msgtr19`,
        ['shop'] = 'custom',
    },
['ncc'] = {
        ['name'] = 'Big wheel Chevy SS',
        ['brand'] = 'chevrolet',
        ['model'] = 'ncc',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `ncc`,
        ['shop'] = 'custom',
    },
['ocnlamtmc'] = {
        ['name'] = 'Not spawning',
        ['brand'] = 'misc',
        ['model'] = 'ocnlamtmc',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `ocnlamtmc`,
        ['shop'] = 'custom',
    },
['ody18'] = {
        ['name'] = '2018 Honda Odyssey',
        ['brand'] = 'honda',
        ['model'] = 'ody18',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `ody18`,
        ['shop'] = 'custom',
    },
['polbbmw'] = {
        ['name'] = 'BMW Police Bike',
        ['brand'] = 'bmw',
        ['model'] = 'polbbmw',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `polbbmw`,
        ['shop'] = 'custom',
    },
['poldemonbb'] = {
        ['name'] = 'Police Dodge Demon',
        ['brand'] = 'dodge',
        ['model'] = 'poldemonbb',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `poldemonbb`,
        ['shop'] = 'custom',
    },
['polkawa'] = {
        ['name'] = 'Kawasaki Police Bike',
        ['brand'] = 'kawasaki',
        ['model'] = 'polkawa',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `polkawa`,
        ['shop'] = 'custom',
    },
['protoz'] = {
        ['name'] = 'Nissan Proto Z',
        ['brand'] = 'nissan',
        ['model'] = 'protoz',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `protoz`,
        ['shop'] = 'custom',
    },
['ptram02'] = {
        ['name'] = '2002 Pontiac Trans Am',
        ['brand'] = 'pontiac',
        ['model'] = 'ptram02',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `ptram02`,
        ['shop'] = 'custom',
    },
['rmodzl1'] = {
        ['name'] = 'Chevrolet Camaro Glow',
        ['brand'] = 'chevrolet',
        ['model'] = 'rmodzl1',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `rmodzl1`,
        ['shop'] = 'custom',
    },
['rrdo'] = {
        ['name'] = 'Roll Royce',
        ['brand'] = 'rolls royce',
        ['model'] = 'rrdo',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `rrdo`,
        ['shop'] = 'custom',
    },
['svjroadster20'] = {
        ['name'] = 'Lamborghini Aventador Glow',
        ['brand'] = 'lamborghini',
        ['model'] = 'svjroadster20',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `svjroadster20`,
        ['shop'] = 'custom',
    },
['svt00sc'] = {
        ['name'] = '2000 Ford Mustang ',
        ['brand'] = 'ford',
        ['model'] = 'svt00sc',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `svt00sc`,
        ['shop'] = 'custom',
    },
['tbird'] = {
        ['name'] = '1957 Ford Thunderbird',
        ['brand'] = 'ford',
        ['model'] = 'tbird',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `tbird`,
        ['shop'] = 'custom',
    },
['tveno'] = {
        ['name'] = 'Audi TT RS Glow Car',
        ['brand'] = 'audi',
        ['model'] = 'tveno',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `tveno`,
        ['shop'] = 'custom',
    },
['victorhirot'] = {
        ['name'] = 'Aston Martin Victor Glow',
        ['brand'] = 'aston martin',
        ['model'] = 'victorhirot',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `victorhirot`,
        ['shop'] = 'custom',
    },
['rygbus'] = {
        ['name'] = 'Volkswagen Bus Glow Widebody',
        ['brand'] = 'volkswagen',
        ['model'] = 'rygbus',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `rygbus`,
        ['shop'] = 'custom',
    },
['f288gto'] = {
        ['name'] = '1984 Ferrari 288 GTO',
        ['brand'] = 'ferrari',
        ['model'] = 'f288gto',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `f288gto`,
        ['shop'] = 'custom',
    },
['corolla'] = {
        ['name'] = 'Toyota Corolla Formula Drift',
        ['brand'] = 'toyota',
        ['model'] = 'corolla',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `corolla`,
        ['shop'] = 'custom',
    },
['evo2'] = {
        ['name'] = '2022 Lamborghini Huracan Evo 2',
        ['brand'] = 'lamborghini',
        ['model'] = 'evo2',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `evo2`,
        ['shop'] = 'custom',
    },
['volt2'] = {
        ['name'] = '2012 Chevrolet Volt',
        ['brand'] = 'chevrolet',
        ['model'] = 'volt2',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `volt2`,
        ['shop'] = 'custom',
    },
['x3mache21'] = {
        ['name'] = '2021 Ford Mustange Mach E',
        ['brand'] = 'Ford',
        ['model'] = 'x3mache21',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = 'x3mache21',
        ['shop'] = 'custom',
    },
['22bengt'] = {
        ['name'] = '2022 Bentley Continental GT',
        ['brand'] = 'bentley',
        ['model'] = '22bengt',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = `22bengt`,
        ['shop'] = 'custom',
    },
['lrover110'] = {
        ['name'] = 'Land Rover 110',
        ['brand'] = 'Land Rover',
        ['model'] = 'lrover110',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = 'lrover110',
        ['shop'] = 'custom',
    },
	['frankie'] = {
        ['name'] = 'BNJ Gang Bike',
        ['brand'] = 'Denver Choppers',
        ['model'] = 'frankie',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = 'frankie',
        ['shop'] = 'custom',
    },
	['chevyhearse'] = {
        ['name'] = '1989 Caprice Hearse',
        ['brand'] = 'Chevrolet',
        ['model'] = 'chevyhearse',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = 'chevyhearse',
        ['shop'] = 'custom',
    },
	['gt86'] = {
        ['name'] = '2016 GT86',
        ['brand'] = 'Toyota',
        ['model'] = 'gt86',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = 'gt86',
        ['shop'] = 'custom',
    },
	['sspur'] = {
        ['name'] = '1981 Silver Spur',
        ['brand'] = 'Rolls Royce',
        ['model'] = 'sspur',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = 'sspur',
        ['shop'] = 'custom',
    },
	['fnfcivic'] = {
        ['name'] = '1993 Civic EJ1',
        ['brand'] = 'Honda',
        ['model'] = 'fnfcivic',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = 'fnfcivic',
        ['shop'] = 'custom',
    },
	['rmodessenza'] = {
        ['name'] = 'Essenza Animated',
        ['brand'] = 'Lamborghini',
        ['model'] = 'rmodessenza',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = 'rmodessenza',
        ['shop'] = 'custom',
    },
	['r34'] = {
        ['name'] = 'R34 GTR Animated',
        ['brand'] = 'Nissan',
        ['model'] = 'r34',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = 'r34',
        ['shop'] = 'custom',
    },
	['sf90custom'] = {
        ['name'] = 'SF90 Custom',
        ['brand'] = 'Ferrari',
        ['model'] = 'sf90custom',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = 'sf90custom',
        ['shop'] = 'custom',
    },
	['sjamg'] = {
        ['name'] = '2011 E63 AMG ',
        ['brand'] = 'Mercedes',
        ['model'] = 'sjamg',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = 'sjamg',
        ['shop'] = 'custom',
    },
	['m3e36'] = {
        ['name'] = '1997 M3 E36',
        ['brand'] = 'BMW',
        ['model'] = 'm3e36',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = 'm3e36',
        ['shop'] = 'custom',
    },
	['fordcapri'] = {
        ['name'] = '1981 Capri MK 3',
        ['brand'] = 'Ford',
        ['model'] = 'fordcapri',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = 'fordcapri',
        ['shop'] = 'custom',
    },
	['g37'] = {
        ['name'] = 'G37',
        ['brand'] = 'Infinit',
        ['model'] = 'g37',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = 'g37',
        ['shop'] = 'custom',
    },
	['mobm23'] = {
        ['name'] = '2023 X7',
        ['brand'] = 'BMW',
        ['model'] = 'mobm23',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = 'mobm23',
        ['shop'] = 'custom',
    },
	['imsa90'] = {
        ['name'] = '90 IMSA GTO',
        ['brand'] = 'Audi',
        ['model'] = 'imsa90',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = 'imsa90',
        ['shop'] = 'custom',
    },
	['750li'] = {
        ['name'] = '2011 750li',
        ['brand'] = 'BMW',
        ['model'] = '750li',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = '750li',
        ['shop'] = 'custom',
    },
	['ikx3duke911'] = {
        ['name'] = '911 Duke Dynamics',
        ['brand'] = 'Porsche',
        ['model'] = 'ikx3duke911',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = 'ikx3duke911',
        ['shop'] = 'custom',
    },
	-- Romoy Cars
	['XSIGIr34'] = {
        ['name'] = 'Venture Special',
        ['brand'] = 'Nissan GTR',
        ['model'] = 'XSIGIr34',
        ['price'] = 1000000000,
        ['category'] = 'none',
        ['hash'] = 'XSIGIr34',
        ['shop'] = 'custom',
    },
	-- fixed cars
	['shogun'] = {
        ['name'] = 'Shogun',
        ['brand'] = 'Shogun',
        ['model'] = 'shogun',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = 'shogun',
        ['shop'] = 'custom',
    },
	['mongoose'] = {
        ['name'] = 'mongoose',
        ['brand'] = 'mongoose',
        ['model'] = 'mongoose',
        ['price'] = 0,
        ['category'] = 'none',
        ['hash'] = 'mongoose',
        ['shop'] = 'custom',
    },
}

for _, v in pairs(QBShared.Vehicles) do
	QBShared.VehicleHashes[v.hash] = v
end