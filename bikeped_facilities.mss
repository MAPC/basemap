/* Regional Networks */
@walking: #cade6f;
@biking: #ffdb48;

/* On-Road Bicycle Facilities */
@bikelane: #0874b9;
@sharedlane: #82c5ec;
@cycletrack: #7f3193;
@onroadroute: #9dce6b;

/* Paths and Trails */
@improved: #229848;
@unimproved: #845723;
@path: #db813f;
@water: #49c9f5;

@baseline: 1.4;
@sans: "Franklin Gothic Book Regular","Helvetica Neue Regular","Arial Regular","DejaVu Sans Book";

/* Hubway */

#hubway [zoom>12]{
  point-file: url('icons/hubway.png');
  point-allow-overlap: true;
}


/* Paths and Trails */

.paths {
  
  line-width: @baseline;
  
  [zoom < 12] { line-width: @baseline * 1; }
  [zoom < 16] { line-width: @baseline * 2; }
  
  [path_type='E'], [path_type='PP'] { 
    line-color: @improved;
    ::label {
      [path_type='E'] {
        text-face-name: @sans;
        text-placement: line;
        text-name: '[name]';
        text-size: 11;
        text-halo-fill: #fff;
        text-halo-radius: 1.5;
        text-fill: darken(@improved, 20%);
        text-min-distance: 80;
      }
    }
  }
  
  [path_type='U'], { line-color: @unimproved;}
  [path_type='T'], [path_type='TP'] { 
    line-color: @path;
    line-width: @baseline / 2;
    [zoom < 12] { line-width: @baseline * 1/3; }
    [zoom < 16] { line-width: @baseline * 2/3; }
    [category='water'] { 
      ::outline { 
        line-color: @water; 
        [zoom < 12] { line-width: @baseline * 2; }
        [zoom < 16] { line-width: @baseline * 4; }
      }
      ::stroke { line-color: @path; }
    }

  }
  
  /* Proposed facilities */
  
  [path_type='PP'], [path_type='TP']
    { 
      line-dasharray: 4,3; 
      line-opacity: 0.8;
    }

}

/* On-Road Bicycle Facilities */

.onroad {
  
  line-width: @baseline * 1 ;
  
  [zoom < 12] { line-width: @baseline * 1; }
  [zoom < 16] { line-width: @baseline * 2; }
  
  [path_type='BL'], [path_type='BLP'] { line-color: @bikelane;}
  [path_type='SL'], [path_type='SLP'] { line-color: @sharedlane;}
  [path_type='CT'], [path_type='CTP'] { line-color: @cycletrack;}
  
  [path_type='OR'][route='local'] { line-color: @onroadroute; }
  [path_type='OR'][route='greenway'] { line-color: @onroadroute; }
  
  /* Proposed facilities */
  
  [path_type='BLP'], [path_type='SLP'], [path_type='CTP']
    { 
      line-dasharray: 4,3; 
      line-opacity: 0.8;
    }
  
}

/* Regional Networks */

.regional {
  
  line-width: @baseline * 6;
  line-opacity: 0.8;
  line-join: round; 
  
  [zoom < 12] { line-width: @baseline * 2; }
  [zoom < 16] { line-width: @baseline * 4; }
  
  [category='hiking'], [category='shared-use'] { 
    line-color: @walking; 
    ::label {
      text-face-name: @sans;
      text-placement: line;
      text-name: '[name]';
      text-size: 16;
      text-fill: darken(@walking, 30%);
      text-halo-radius: 1.5;
      text-halo-fill: #fff;
    }
  }
  [category='on-road'] { 
    line-color: @biking;
    ::label {
      text-face-name: @sans;
      text-placement: line;
      text-name: '[name]';
      text-size: 16;
      text-fill: darken(@biking, 30%);
      text-halo-radius: 1.5;
      text-halo-fill: #fff;
    }
  }
}

#aqueducts {
  line-width: @baseline * 6;
  line-color: @walking;
  line-opacity: 0.8;
  line-join: round; 
  line-dasharray: 8,6;
  
  [zoom < 12] { line-width: @baseline * 2; }
  [zoom < 16] { line-width: @baseline * 4; }
  
}