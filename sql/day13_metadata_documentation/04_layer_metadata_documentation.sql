SELECT
  'raw' AS layer_name,
  'Stores source-aligned data loaded from files and APIs' AS layer_purpose,
  'Minimal transformation only' AS transformation_level,
  'Used as the starting point for staging models' AS downstream_usage

UNION ALL

SELECT
  'staging',
  'Stores cleaned and standardised source tables',
  'Column renaming, type casting, and basic standardisation',
  'Used by intermediate and mart models'

UNION ALL

SELECT
  'intermediate',
  'Stores reusable business logic models',
  'Joins, enrichment, and reusable transformation logic',
  'Used by final marts'

UNION ALL

SELECT
  'marts',
  'Stores business-ready reporting tables',
  'Final fact and dimension models',
  'Used by BI dashboards, reporting, and AI/RAG assistant layer';