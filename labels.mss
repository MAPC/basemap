
/* Contents:
 * - Town labels
 * - Natural labels
 * - Transit labels
 * - Road labels
 */

/* Color Definitions */

@town_label_color: #777;
@road_label_color: #777;
@halo_color: #fff;

/* Font Definitions */

@font_regular: "Franklin Gothic Book Regular","Helvetica Neue Regular","Arial Regular","DejaVu Sans Book";
@font_italic: "Franklin Gothic Book Italic","Helvetica Neue Italic","Arial Italic","DejaVu Sans Oblique";
@font_medium: "Franklin Gothic Medium Regular","Helvetica Neue Medium","Arial Bold","DejaVu Sans Bold";

/* Towns and Neighborhoods */

#mapc_label_points[zoom < 10]{
  ::boston{
      [town='Boston']{
        text-name: "[town]";
        text-face-name: @font_regular;
        text-size: 12;
        text-fill: @town_label_color;
        text-halo-fill: @land_bg;
        text-halo-radius: 1;
        text-allow-overlap: false;
      }
  }
  ::notboston{
    [zoom > 6]{
      text-name: "[town]";
      text-face-name: @font_regular;
      text-size: 10;
      text-allow-overlap: false;
      text-fill: @town_label_color;
      text-halo-fill: @land_bg;
      text-halo-radius: 1;
      text-allow-overlap: false;
    }
  }    
} 

#non_mapc_town_label[zoom > 6][zoom < 10]{
    /* just make sure the bigger cities get labeled */
    text-name: "[town]";
    text-face-name: @font_regular;
    text-transform: capitalize;
    text-allow-overlap: false;
    text-size: 10;
    text-fill: @town_label_color;
    text-halo-fill: @land_bg;
    text-halo-radius: 1;
}
 
#mapc_labels[zoom > 9], #non_mapc_town_label[zoom > 9]{
    text-name: "[town]";
    text-face-name: @font_regular;
    text-allow-overlap: false;
    text-size: 10;
    text-fill: @town_label_color;
    text-halo-fill: @land_bg;
    text-halo-radius: 1;
    text-transform: capitalize;
    [zoom>10]{
      text-face-name: @font_medium;
      text-size: 12;
      text-halo-radius: 0;
      text-opacity: .75;
    }
    [zoom>11]{
      text-size: 16;
      text-opacity: .5;
      text-allow-overlap: true;
    }
    [zoom>12]{
      text-size: 20;
      text-opacity: .35;
      text-character-spacing: 4;
    }
    [zoom>13]{
      text-size: 24;
      text-character-spacing: 6;
    }
    [zoom>15]{
      text-size: 28;
      text-opacity: .2;
      text-character-spacing: 8;
    }
    [zoom>16]{
      text-size: 32;
      text-character-spacing: 20;
    }
}

#bostonneighborhood[zoom > 12]{
    text-name: "[name]";
    text-face-name: @font_regular;
    text-allow-overlap: false;
    text-size: 14;
    text-character-spacing: 2;
    text-opacity: .5;
    text-placement: interior;
    text-wrap-width: 50;
    text-line-spacing: 5;
    text-fill: @town_label_color;
    text-halo-fill: @land_bg;
    [zoom>13]{
      text-size: 16;
      text-character-spacing: 6;
    }
    [zoom>15]{
      text-size: 18;
      text-opacity: .2;
      text-character-spacing: 8;
    }
    [zoom>16]{
      text-size: 24;
      text-character-spacing: 20;
    }
}

/* Natural */

#openspace_labels[zoom>14]{
  text-name: "[site_name]";
  text-face-name: @font_italic;
  text-size: 11;
  text-character-spacing: 3;
  text-min-distance: 70;
  text-wrap-width: 50;
  text-min-path-length: 100;
  text-fill: @town_label_color;
  text-transform: capitalize;
  text-line-spacing: 5;
}
#hydrolabels[zoom>14]{
  text-name: "[name]";
  text-face-name: @font_italic;
  text-size: 11;
  text-character-spacing: 3;
  text-placement: interior;
  text-min-padding: 5;
  text-wrap-width: 100;
  text-min-path-length: 100;
  text-fill: @town_label_color;
  text-transform: capitalize;
  text-line-spacing: 5;
}

/* Transit Stations */

#commrailstation [zoom>12]{
  text-vertical-alignment: top;
  text-align: left;
  text-dx: 5;
  text-dy: -5;
  text-fill: @road_label_color;
  text-halo-fill: @halo_color;
  text-halo-radius: 1.5;
  text-name: "[station]";
  text-face-name: @font_italic;
}

#mbtarapidstation [line != 'SILVER'][zoom>14]{
  text-vertical-alignment: top;
  text-align: left;
  text-dx: 6;
  text-dy: -6;
  text-min-padding: 5;
  text-fill: @road_label_color;
  text-halo-fill: @halo_color;
  text-halo-radius: 1.5;
  text-name: "[station]";
  text-face-name: @font_italic;
}

/* Roads */

#road_shields{
  [admin_type = 1][class=1]{
    shield-name: "[rt_number]";
    shield-face-name: @font_regular;
    shield-size: 9;
    shield-fill: @road_label_color;
    shield-file: url('icons/interstateShield_narrow.png');
    shield-min-distance: 40;
    shield-text-dx: 0.5;
    shield-placement: line;
    [length > 2]{
      shield-file: url('icons/interstateShield_wide.png');
    }
    [zoom > 11]{ shield-min-distance: 80; }
    [zoom > 13]{ shield-min-distance: 120; }
    [zoom > 15]{ shield-min-distance: 400; }
  }
 
  [admin_type = 2]{
    shield-name: "[rt_number]";
    shield-face-name: @font_regular;
    shield-size: 9;
    shield-fill: @road_label_color;
    shield-file: url('icons/usHighwayShield_narrow.png');
    shield-min-distance: 40;
    shield-text-dx: 0.5;
    shield-text-dy: -1;
    shield-placement: line;
    [length > 2]{
      shield-file: url('icons/usHighwayShield_wide.png');
    }
    [zoom > 11]{ shield-min-distance: 80; }
    [zoom > 13]{ shield-min-distance: 120; }
    [zoom > 15]{ shield-min-distance: 400; }
  }

  [admin_type = 3][class=1],
  [admin_type = 3][class=2][zoom>8],
  [admin_type = 3][class=3][zoom>8],
  [admin_type = 3][class=4][zoom>8],
  [admin_type = 3][class=5][zoom>8]{
    shield-name: "[rt_number]";
    shield-face-name: @font_regular;
    shield-size: 9;
    shield-fill: @road_label_color;
    shield-file: url('icons/state_shield.png');
    shield-min-distance: 40;
    shield-text-dx: .5;
    shield-placement: line;
    [length > 2]{
      shield-file: url('icons/state_shield_wide.png');
    }
    [zoom > 11]{ shield-min-distance: 80; }
    [zoom > 13]{ shield-min-distance: 120; }
    [zoom > 15]{ shield-min-distance: 400; }
  }
}

#road_labels{
  [class = 1][admin_type = 0][zoom > 12],
  [class = 2][zoom > 12],
  [class = 3][zoom > 12],
  [class = 4][zoom > 13],
  [class = 5][zoom > 14]{
    text-name: "[map_label_txt]";
    text-face-name: @font_regular;
    text-placement: line;
    text-fill: @road_label_color;
    text-halo-fill: #fff;
    text-halo-radius: 1.5;
    text-size: 10;
    text-min-distance: 100;
    text-min-padding: 20;
    text-allow-overlap: false;
    [zoom > 13] { text-min-distance: 250; }
    [zoom = 16]{ text-size: 11; }
    [zoom > 16]{
      text-size: 12;
      text-min-distance: 200;
    }
  }
}
