create table PERSON_v15 (
    ID int not null,
    NAME varchar(100) not null
);


create or replace function update_w_blnc_slip_mgt_hist() returns trigger as $eof$
  begin
    insert into w_blnc_slip_mgt_hist(slip_no,stat,adttrl_upd_timestamp,adttrl_upd_user_id,adttrl_upd_pgm_id,mode)
    values(NEW.slip_no, NEW.stat, NEW.adttrl_upd_timestamp, NEW.adttrl_upd_user_id, NEW.adttrl_upd_pgm_id, substr(TG_OP,1,1));
    return NEW;
  return null;
  end;
$eof$ LANGUAGE plpgsql;