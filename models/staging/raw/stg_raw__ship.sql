with 

source as (

    select * from {{ source('raw', 'ship') }}

),

renamed as (

    select
        orders_id,
        shipping_fee,
        logcost,
        cast(ship_cost as int) as ship_cost

    from source
Where shipping_fee = shipping_fee_1
)

select * from renamed
