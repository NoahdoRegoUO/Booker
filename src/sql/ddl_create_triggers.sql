-- Command for setting search path
SET SEARCH_PATH = 'ehotels_db';

-- RUN THESE CREATE/REPLACE FUNCTIONS FIRST

CREATE OR REPLACE FUNCTION update_hotelchain_add()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE hotelchain
    SET numberhotels = numberhotels + 1
    WHERE chainname = NEW.chainname;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION update_hotelchain_subtract()
RETURNS TRIGGER AS $$
BEGIN
    UPDATE hotelchain
    SET numberhotels = numberhotels - 1
    WHERE chainname = OLD.chainname;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION delete_booking_function()
RETURNS TRIGGER AS $$
BEGIN
    DELETE FROM booking
    WHERE startdate = NEW.startdate
    AND enddate = NEW.enddate
    AND specialrequests = NEW.specialrequests
    AND hotelid = NEW.hotelid
    AND roomnumber = NEW.roomnumber
    AND customerid = NEW.customerid;

    UPDATE room
    SET occupied = true
    WHERE roomnumber = NEW.roomnumber;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;



-- RUN THESE SECOND
CREATE TRIGGER hotel_insert_trigger
AFTER INSERT ON hotel
FOR EACH ROW
EXECUTE FUNCTION update_hotelchain_add();

CREATE TRIGGER hotel_delete_trigger
AFTER DELETE ON hotel
FOR EACH ROW
EXECUTE FUNCTION update_hotelchain_subtract();

CREATE TRIGGER delete_booking_trigger
AFTER INSERT ON renting
FOR EACH ROW
EXECUTE FUNCTION delete_booking_function();