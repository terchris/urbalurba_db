DO $$ 
BEGIN
    -- Try to create the database
    CREATE DATABASE urbalurba_db;
    RAISE NOTICE 'Database created successfully';
    
    -- Try to create the user
    CREATE USER strapi WITH ENCRYPTED PASSWORD 'Smartbygutta01';
    RAISE NOTICE 'User created successfully';
EXCEPTION
    -- If there is an error, display a message
    WHEN others THEN
        RAISE NOTICE 'Error: %', SQLERRM;
END $$;
