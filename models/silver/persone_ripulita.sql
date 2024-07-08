select *
from `catalog-zurich-01`.bronze.persone
where id_persona is not null
    and id_persona > '0'
