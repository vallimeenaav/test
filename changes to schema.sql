ALTER TABLE driver
DROP COLUMN total_salaries_paid;

ALTER TABLE trip_manager
DROP COLUMN total_salaries_paid;

ALTER TABLE warehouse_incharge
DROP COLUMN total_salaries_paid;

ALTER TABLE labour
DROP COLUMN total_salaries_paid;

DELETE FROM 