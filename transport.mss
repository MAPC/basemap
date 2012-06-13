
/* Contents:
 * - Roads
 * - Transit
 * - Offroad trails
 */

/* Color Definitions */

@road_outline:  #939598;
@road_color:    #fff;
@commuter_rail: #ccc;
@rapid_transit: #BFBFBF;

/* Roads */

.roads{
    ::outline{
        [class = 4]{
          [zoom>12]{
            line-color: @road_outline;
            line-width: 2;
          }
          [zoom > 13]{
            line-width: 5;
          }
          [zoom > 15]{
             line-width: 7;
           }
          [zoom > 16]{
             line-width: 9;
           }
        }
        [class = 3]{
          [zoom > 10]{
            line-color: @road_outline;
            line-width: 2.5;
          }
          [zoom > 13]{
            line-width: 5.5;
          }
          [zoom > 15]{
             line-width: 7.5;
          }
          [zoom > 16]{
             line-width: 9.5;
           }
        }
        [class = 2]{
          [zoom > 10]{
            line-color: @road_outline;
            line-width: 2.5;
          }
          [zoom > 13]{
            line-width: 5.5;
          }
          [zoom > 15]{
             line-width: 7.5;
           }
          [zoom > 16]{
             line-width: 9.5;
           }
        }
        [class = 1]{
          [zoom > 10]{
            #roads_tunnels{ line-dasharray: 5,5; }
            line-color: @road_outline;
            line-width: 3;
          }
          [zoom > 13]{
            line-width: 5.5;
          }
          [zoom > 15]{
             line-width: 7.5;
          }
          [zoom > 16]{
             line-width: 9.5;
           }
        }
    }
  
    ::stroke{
        [class = 5]{
          [zoom > 11]{
            line-cap: round;
            line-color: @road_color;
            line-width: 0.5;
          }
          [zoom>12]{
            line-width: 1;
          }
          [zoom>14]{
            line-width: 3;  
          }
          [zoom > 15]{
             line-width: 4;
           }
          [zoom > 16]{
             line-width: 6;
           }
        }
        [class = 4]{
          [zoom > 11]{
            line-cap: round;
            line-color: @road_color;
            line-width: 0.5;
          }
          [zoom>12]{
            line-width: 1.5;
          }
          [zoom > 13]{
             line-width: 4.5;
          }
          [zoom > 15]{
             line-width: 6.5;
          }
          [zoom > 16]{
             line-width: 8.5;
           }
        }
        [class = 3]{
          [zoom > 7]{
            line-cap: round;
             line-color: @road_color;
             line-width: 0.5;
           } 
          [zoom > 8]{
             line-width: 1;
           }
           [zoom > 10]{
             line-width: 2;
           }
           [zoom > 13]{
             line-width: 5;
           }
           [zoom > 15]{
             line-width: 7;
           }
          [zoom > 16]{
             line-width: 9;
           }
        }
        [class = 2]{
           [zoom > 7]{
            line-cap: round;
             line-color: @road_color;
             line-width: .5;
           }
           [zoom > 8]{
             line-width: 1;
           }
           [zoom > 10]{
             line-width: 2;
           }
           [zoom > 13]{
             line-width: 5;
           }
           [zoom > 15]{
             line-width: 7;
           }
           [zoom > 16]{
             line-width: 9;
           }
        }
        [class = 1]{
           line-cap: round;
           line-color: @road_color;
           #roads_tunnels{ line-color: darken(@road_color,5%); }
           [zoom > 7]{
             line-width: 1.5; 
           }
           [zoom > 8]{
             line-width: 2;
           }
           [zoom > 10]{
             line-width: 2.5;
           }
           [zoom > 13]{
             line-width: 5;
           }
           [zoom > 15]{
             line-width: 7;
           }
           [zoom > 16]{
             line-width: 9;
           }
         }
    }
}

/* Transit */

#commuterline [zoom>10] {
    line-width: 0.75;
    line-color: @commuter_rail;
    ::ticks{
      line-color:@commuter_rail;
      line-width: 3.5;
      line-dasharray: 1,4;
    }
}

#rapidtransit {
  [zoom > 12]{
    line-width: 1;
    line-color: @rapid_transit;
  }
  [zoom > 14]{
      line-width: 2;
  }
}

#commrailstation [zoom>12]{
  point-file: url('icons/commRail_small_light.png');
  point-allow-overlap: true;
}

#mbtarapidstation [line != 'SILVER'][zoom>13]{
  point-file: url('icons/mbta_icon_xtraSmall_light.png');
  point-allow-overlap: true;
}

/* Offroad Trails */

#trails[zoom>14]{
  line-color: @road_color;
  line-width: 0.5;
}