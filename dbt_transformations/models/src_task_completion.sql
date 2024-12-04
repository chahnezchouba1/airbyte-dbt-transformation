{{
config(
materialized = 'table',
)
}}
WITH src_task_completion AS (SELECT *
                             FROM {{ source('labelstudio_source', 'task_completion') }})

SELECT id as completed_task_id,
       result,
       was_cancelled,
       created_at,
       updated_at,
       task_id,
       lead_time,
       completed_by_id
FROM src_task_completion