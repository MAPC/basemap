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


/* Regional Network Labels */

.regionallabel {
  ::label {
    text-face-name: @sans;
    text-placement: line;
    text-name: '[regionalname]';
    text-size: 14;
    text-halo-radius: 1;
    text-halo-fill: #fff;
    [regionalgreenroutestype='WT'] { text-fill: darken(@walking, 30%); }
    [regionalgreenroutestype='GR'] { text-fill: darken(@biking, 30%); }
  }
}


/* Shared Use */

.shareduse {
  
  line-width: @baseline;
  
  [zoom < 12] { line-width: @baseline * 1; }
  [zoom < 16] { line-width: @baseline * 2; }
  
  line-color: @improved;
  ::label {
    text-face-name: @sans;
    text-placement: line;
    text-name: '[localname]';
    text-size: 11;
    text-halo-fill: #fff;
    text-halo-radius: 1.5;
    text-fill: darken(@improved, 20%);
    text-min-distance: 80;
  }
  
  [surfacetype=1] { 
    line-color: @unimproved; 
    ::label {
  	  text-fill: darken(@unimproved, 20%);
    }
  }
  
  /* Proposed Projects */
  [bikefacilitystatus=5] { 
    line-dasharray: 4,3; 
    line-opacity: 0.8;
  }
}


/* Walking Facilities */

.walking {
  
  line-color: @path;
  line-width: @baseline / 2;
  
  [zoom < 12] { line-width: @baseline * 1/3; }
  [zoom < 16] { line-width: @baseline * 2/3; }
  
  /* Proposed Projects */
  [walkfacilitystatus=5] { 
    line-dasharray: 4,3; 
    line-opacity: 0.8;
  }
}


/* On-Road Bicycle Facilities */

.onroad {
  
  line-width: @baseline * 1 ;
  
  [zoom < 12] { line-width: @baseline * 1; }
  [zoom < 16] { line-width: @baseline * 2; }
  
  [bikefacilitytype=1] { line-color: @bikelane; }
  [bikefacilitytype=9] { line-color: @sharedlane; }
  [bikefacilitytype=2] { line-color: @cycletrack; }
  [bikefacilitytype=6] { line-color: @onroadroute; }
  
  /* Proposed Facilities */
  [bikefacilitystatus=5] { 
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

  [regionalgreenroutestype='WT'] { line-color: @walking; }
  
  [regionalgreenroutestype='GR'] { line-color: @biking; }
}
