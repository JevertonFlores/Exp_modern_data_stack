{{ config(materialized='view')}}

with src_subscriptions as (
    select
    *
    from {{ source('raw', 'subscriptions') }}
)

select
    sb.user_id,
    sb.plan,
    sb.status,
    sb.payment_term,
    sb.payment_method,
    sb.subscription_term
from src_subscriptions sb