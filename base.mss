
/* Contents:
 * - Boundaries
 * - Hydrography
 * - Open Space
 * - Building Footprints
 */

/* Color Definitions */

@land_bg:    #EDECE2;
@water_bg:   #C2C8CC;
@open_space: #00DC00;
@boundaries: #C4C0B1;

Map {
  background-color: @water_bg;
}

.land {
  polygon-fill: @land_bg;
}

/* Natural */

#hydro_arc[zoom>11][arc_code=4] {
  line-width: 0.5;
  line-color: darken(@water_bg,10%);
}

#hydropoly {
  polygon-opacity: 1;
  polygon-fill: @water_bg;
}

#openspace {
  polygon-opacity:1;
  polygon-fill:@open_space;
}

/* Buildings */

#buildings [zoom>15] {
  line-color: darken(@land_bg, 15%);
  line-width: 0.5;
  polygon-opacity: 1;
  polygon-fill: lighten(@land_bg, 5%);
}

/* Boundaries */

.boundary [zoom > 9] {
  line-color: @boundaries;
  line-width: 0.5;
  [zoom > 10]{
     line-width: 1;
  }
  [zoom > 12]{
     line-width: 2;
  }
}

#bostonneighborhood[zoom>12]{
    line-color:@boundaries;
    line-width: 1;
    line-opacity: 0.5;
}





