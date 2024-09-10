-- Primeiro, remova a restrição de chave estrangeira existente
ALTER TABLE participants
DROP CONSTRAINT participants_trip_id_fkey;

-- Em seguida, adicione a nova restrição de chave estrangeira com ON DELETE CASCADE
ALTER TABLE participants
ADD CONSTRAINT participants_trip_id_fkey
FOREIGN KEY (trip_id) REFERENCES trips(id) ON DELETE CASCADE;