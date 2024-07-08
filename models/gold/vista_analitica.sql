with src as (
    select concat(nome, '_', cognome) nome_cognome, importo
    from {{ ref('ordini_ripulita') }} ord
        join {{ ref('persone_ripulita') }} pers
            on ord.id_persona = pers.id_persona
)

select nome_cognome, sum(importo) importo
from src
group by nome_cognome