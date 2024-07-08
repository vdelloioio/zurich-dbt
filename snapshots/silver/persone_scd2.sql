{% snapshot persone_scd2 %}

{{ config(
  strategy="check",
  unique_key="id_persona",
  check_cols=["nome", "cognome"]
) }}

select *
from `catalog-zurich-01`.bronze.persone
where id_persona is not null
    and id_persona > 0

{% endsnapshot %}
