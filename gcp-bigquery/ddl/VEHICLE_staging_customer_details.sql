CREATE OR REPLACE TABLE bqdataset.staging_customer_details AS
SELECT 101 as id,'John Doe' AS customer_name, 'john.doe@example.com' AS email, '123-456-7890' AS phone_number, '123 Main St, Springfield, IL' AS address,CURRENT_DATE AS src_upd_dt
UNION ALL
SELECT 102 ,'Jane Smith', 'jane.smith@example.com', '987-654-3210', '456 Elm St, Springfield, IL',CURRENT_DATE
UNION ALL
SELECT 103,'Alice Johnson', 'alice.johnson@example.com', '555-123-4567', '789 Oak St, Springfield, IL',CURRENT_DATE
UNION ALL
-- Updated row (Bob Brown's phone number is updated)
SELECT 104,'Bob Brown', 'bob.brown@example.com', '777-888-9999', '101 Pine St, Springfield, IL',CURRENT_DATE
UNION ALL
-- New row added
SELECT 106,'Eve White', 'eve.white@example.com', '222-333-4444', '303 Birch St, Springfield, IL',CURRENT_DATE
-- Removed: Original row for Charlie Davis is not included
-- The new row for Eve White replaces this one.
