CREATE TABLE IF NOT EXISTS todos (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    contenuto TEXT NOT NULL,
    data TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    stato INTEGER NOT NULL DEFAULT 0
);

CREATE TABLE IF NOT EXISTS tags (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    nome TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS todos_tags (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    todo_id INTEGER,
    tag_id INTEGER,
    FOREIGN KEY (todo_id) REFERENCES todos(id),
    FOREIGN KEY (tag_id) REFERENCES tags(id)
);