/// GMSRewind by matharoo

gml_pragma("global", "scrGMSRewind()");

// Macro
#macro GMSREWIND_ENABLED	true

if (!GMSREWIND_ENABLED) exit;

// Create instance
room_instance_add(room_first, 0, 0, oGMSRewind);