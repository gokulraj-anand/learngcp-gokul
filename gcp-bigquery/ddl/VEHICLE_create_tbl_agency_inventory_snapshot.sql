CREATE OR REPLACE TABLE bqdataset.tbl_agency_inventory_snapshot
(
  snapshot_date DATE,
  agency_id STRING,
  vehicle_id STRING,
  agency_inventory INT64
);


ALTER TABLE bqdataset.tbl_agency_inventory_snapshot ADD COLUMN modified_dt TIMESTAMP;
