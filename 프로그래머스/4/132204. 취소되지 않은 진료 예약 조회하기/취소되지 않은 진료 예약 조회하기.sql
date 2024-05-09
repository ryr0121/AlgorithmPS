select apnt_no, pt_name, a.pt_no, a.mcdp_cd, dr_name, apnt_ymd
    from appointment a, patient p, doctor d
    where a.pt_no = p.pt_no and a.mddr_id = d.dr_id
    and date_format(apnt_ymd,'%Y-%m-%d') = '2022-04-13'
    and a.mcdp_cd = 'cs'
    and apnt_cncl_yn = 'n'
    order by apnt_ymd