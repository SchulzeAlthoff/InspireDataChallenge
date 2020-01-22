CREATE TABLE bikemap
(
  highw_type character varying(30),
  usability integer
)
WITH (
  OIDS=TRUE
);
insert into bikemap (highw_type, usability) values ('cycleway', 1);
insert into bikemap (highw_type, usability) values ('path', 2);
insert into bikemap (highw_type, usability) values ('primary', 3);
insert into bikemap (highw_type, usability) values ('primary_link', 3);
insert into bikemap (highw_type, usability) values ('residential', 1);
insert into bikemap (highw_type, usability) values ('road', 2);
insert into bikemap (highw_type, usability) values ('secondary', 3);
insert into bikemap (highw_type, usability) values ('secondary_link', 3);
insert into bikemap (highw_type, usability) values ('service', 2);
insert into bikemap (highw_type, usability) values ('tertiary', 2);
insert into bikemap (highw_type, usability) values ('tertiary_link', 2);
insert into bikemap (highw_type, usability) values ('track', 2);
insert into bikemap (highw_type, usability) values ('trail', 2);
insert into bikemap (highw_type, usability) values ('unclassified', 2);
insert into bikemap (highw_type, usability) values ('abandoned', 0);
insert into bikemap (highw_type, usability) values ('access', 0);
insert into bikemap (highw_type, usability) values ('bridleway', 0);
insert into bikemap (highw_type, usability) values ('bus_stop', 0);
insert into bikemap (highw_type, usability) values ('construction', 0);
insert into bikemap (highw_type, usability) values ('construction_cycleway', 0);
insert into bikemap (highw_type, usability) values ('corridor', 0);
insert into bikemap (highw_type, usability) values ('elevator', 0);
insert into bikemap (highw_type, usability) values ('escalator', 0);
insert into bikemap (highw_type, usability) values ('footway', 0);
insert into bikemap (highw_type, usability) values ('motorway', 0);
insert into bikemap (highw_type, usability) values ('motorway_link', 0);
insert into bikemap (highw_type, usability) values ('none', 0);
insert into bikemap (highw_type, usability) values ('pedestrian', 0);
insert into bikemap (highw_type, usability) values ('planned', 0);
insert into bikemap (highw_type, usability) values ('platform', 0);
insert into bikemap (highw_type, usability) values ('proposed', 0);
insert into bikemap (highw_type, usability) values ('raceway', 0);
insert into bikemap (highw_type, usability) values ('seasonal', 0);
insert into bikemap (highw_type, usability) values ('steps', 0);
insert into bikemap (highw_type, usability) values ('trunk', 0);
insert into bikemap (highw_type, usability) values ('trunk_link', 0);
insert into bikemap (highw_type, usability) values ('virtual', 0);