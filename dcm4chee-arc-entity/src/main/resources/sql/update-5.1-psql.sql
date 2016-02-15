alter table study add access_time timestamp, add scattered_storage boolean;
update study set access_time = updated_time, scattered_storage = false, access_control_id = '*';
alter table study alter access_time set not null, alter scattered_storage set not null, alter access_control_id set not null;
create index UK_q8k2sl3kjl18qg1nr19l47tl1 on study (access_time);
create index UK_24av2ewa70e7cykl340n63aqd on study (access_control_id);
alter table code drop constraint UK_sb4oc9lkns36wswku831c33w6;
alter table code add constraint UK_l01jou0o1rohy7a9p933ndrxg  unique (code_value, code_designator);
