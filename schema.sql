-- Schema definition
CREATE TABLE Brukere (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    navn VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    rolle VARCHAR(50) NOT NULL DEFAULT 'kandidat'
);

CREATE TABLE Rom (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    navn VARCHAR(100) UNIQUE NOT NULL,
    antall_plasser INTEGER NOT NULL
);

CREATE TABLE Bookinger (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    bruker_id UUID REFERENCES Brukere(id) ON DELETE CASCADE,
    rom_id UUID REFERENCES Rom(id) ON DELETE CASCADE,
    dato DATE NOT NULL,
    tid VARCHAR(50) NOT NULL
);

CREATE UNIQUE INDEX idx_prevent_overlapping_bookings ON Bookinger (rom_id, dato, tid);
