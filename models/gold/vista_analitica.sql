with pers (
    select id_persona, concat(nome, '_', cognome) nome_cognome
    from {{ ref('persone_scd2') }}
    where dbt_valid_to is null
),
src as (
    select nome_cognome, importo
    from {{ ref('ordini_ripulita') }} ord
        join pers
            on ord.id_persona = pers.id_persona
)

select nome_cognome, sum(importo) importo
from src
group by nome_cognome