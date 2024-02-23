PRAGMA foreign_keys = true;
CREATE TABLE IF NOT EXISTS INSTALLATIONS  (
    INSTALLATIONID INTEGER PRIMARY KEY,
    INSTALLATIONNAME TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS LABORCODES  (
    LABORCODEID INTEGER PRIMARY KEY,
    LABORCODENAME TEXT NOT NULL
);
CREATE TABLE IF NOT EXISTS BILLINGCODES (
    BILLINGCODEID TEXT PRIMARY KEY,
    BILLINGCODE TEXT NOT NULL
); 
CREATE TABLE IF NOT EXISTS TICKETS  (
    TICKETID INTEGER PRIMARY KEY AUTOINCREMENT,
    TICKETNUMBER INTEGER NOT NULL,
    TICKETDESC TEXT NOT NULL,
    LABORCODE INTEGER NOT NULL,
    DATEOFCREATION DATE NOT NULL,
    INSTALLATION INTEGER NOT NULL,
    ISCLOSED BOOLEAN NOT NULL DEFAULT FALSE,
    FOREIGN KEY (INSTALLATION) REFERENCES INSTALLATIONS(INSTALLATIONID),
    FOREIGN KEY (LABORCODE) REFERENCES LABORCODES(LABORCODEID)
);

CREATE TABLE IF NOT EXISTS REPORTS  (
    REPORTID INTEGER PRIMARY KEY AUTOINCREMENT,
    DATEOFREPORT DATE NOT NULL DEFAULT (date('now')),
    BILLINGCODE TEXT NOT NULL DEFAULT 'B05',
    TICKETID INTEGER NOT NULL,
    ARRIVALTIME TIME NOT NULL,
    EXITTIME TIME NOT NULL,
    ACTIVITY INTEGER NOT NULL,
    FOREIGN KEY (BILLINGCODE) REFERENCES BILLINGCODES(BILLINGCODEID),
    FOREIGN KEY (TICKETID) REFERENCES TICKETS(TICKETID)
);

CREATE TABLE IF NOT EXISTS shell ( 
    component TEXT,
    title TEXT, 
    icon TEXT, 
    menu_item TEXT,
    theme TEXT
 ); 