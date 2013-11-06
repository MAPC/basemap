# MAPC Basemap

To use Basemap tiles in Leaflet:

```js
var tiles = L.tileLayer('http://tiles.mapc.org/basemap/{z}/{x}/{y}.png', {
	      attribution: 'Tiles by <a href="http://www.mapc.org/">Metropolitan Area Planning Council</a>.'
            }).addTo(map);

```


The TileMill Project used to design [MAPC's Basemap](http://tiles.mapc.org/basemap.html).

MAPC Project team: Christian Spanring  
Consultants: [Axis Maps LLC](http://www.axismaps.com/)

## Dependencies

* All Basemap data is provided as PostgreSQL dumpfile and requires a PostgreSQL database server (version 9.0) with PostGIS (version 1.5).
* [TileMill](http://mapbox.com/tilemill/)

### Preparing the database

In order to load our database dump you need to create the `mapc` user 
 
    $ su - postgres  
    $ createuser mapc
        Shall the new role be a superuser? (y/n) n  
		Shall the new role be allowed to create databases? (y/n) y  
		Shall the new role be allowed to create more new roles? (y/n) n  
	$ psql  
        # ALTER ROLE mapc WITH password 'mapc';  
		ALTER ROLE  
		# \q  

download the dump file, 

    $ wget http://tiles.mapc.org/data/basemap.dump

create new database `basemap`, owned by the user `mapc`, 

    $ createdb -T template0 -O mapc basemap 

and finally import the dumpfile into the `basemap` database.

    $ pg_restore -d basemap -O basemap.dump


---

Copyright 2012 MAPC
