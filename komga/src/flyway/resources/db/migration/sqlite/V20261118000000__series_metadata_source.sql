alter table series_metadata
    add column SOURCE_TYPE varchar NULL;
alter table series_metadata
    add column SOURCE_ID varchar NULL;

create index idx__series_metadata__source
    on series_metadata (SOURCE_TYPE, SOURCE_ID);
