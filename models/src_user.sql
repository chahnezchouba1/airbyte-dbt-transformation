WITH src_user AS (SELECT *
                  FROM {{ source('labelstudio_source', 'htx_user') }})

SELECT id as user_id,
       is_superuser,
       email,
       first_name,
       last_name,
       phone,
       date_joined,
       last_login,
       last_activity,
       active_organization_id as organization_id
FROM src_user