select *
from `catalog-zurich-01`.bronze.ordini_validated
where id_ordine is not null
    and id_ordine > '0'
    and id_persona is not null
    and id_persona > '0'
