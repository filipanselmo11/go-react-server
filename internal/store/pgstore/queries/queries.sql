-- name: GetRoom :one
SELECT
    "id", "theme"
FROM rooms
WHERE id = $1;

-- name: GetRooms :many
SELECT
    "id", "themes"
FROM rooms;

--name: InsertRoom :one
INSERT INTO rooms
    ("theme") VALUES
    ( $1 )
RETURN id=$1