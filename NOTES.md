Working Notes

Models:
    Record (belongs to User)
        reading - integer
        dose - integer
        date - string
        time - integer

    User (has many records)
        name - string
        email - string
        password_digest - string

Add Devise for authentication