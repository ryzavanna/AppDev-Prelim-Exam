CREATE TABLE Members (
    member_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    favorite_genre VARCHAR(50),
    join_date DATE,
    loyalty_tier VARCHAR(50)
);

CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    author VARCHAR(100),
    genre VARCHAR(50),
    publication_year INT
);

CREATE TABLE ClubMeetings (
    meeting_id INT PRIMARY KEY,
    book_id INT,
    meeting_date DATE,
    theme_or_topic VARCHAR(100),
    location VARCHAR(100),
    FOREIGN KEY (book_id) REFERENCES Books(book_id)
);

CREATE TABLE MeetingAttendees (
    attendee_id INT PRIMARY KEY,
    meeting_id INT,
    member_id INT,
    rating_given INT,
    notes TEXT,
    FOREIGN KEY (meeting_id) REFERENCES ClubMeetings(meeting_id),
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);

CREATE TABLE CafeOrders (
    order_id INT PRIMARY KEY,
    member_id INT,
    drink_or_snack VARCHAR(100),
    amount DECIMAL(5,2),
    order_date DATE,
    FOREIGN KEY (member_id) REFERENCES Members(member_id)
);
