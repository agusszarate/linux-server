-- Crear la tabla vuelos para almacenar información de vuelos
CREATE TABLE IF NOT EXISTS vuelos (
    id SERIAL PRIMARY KEY,
    itinerary_id TEXT NOT NULL,
    share_id TEXT,
    provider VARCHAR(100),
    price_number NUMERIC(10, 2),
    currency VARCHAR(10),
    fetched_at TIMESTAMP,
    booking_url TEXT,
    min_price NUMERIC(10, 2),
    max_price NUMERIC(10, 2),
    trend VARCHAR(50),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Crear índice en itinerary_id para optimizar consultas
CREATE INDEX IF NOT EXISTS idx_vuelos_itinerary_id ON vuelos(itinerary_id);

-- Crear índice en fetched_at para consultas temporales
CREATE INDEX IF NOT EXISTS idx_vuelos_fetched_at ON vuelos(fetched_at);

-- Crear índice en price_number para consultas de precios
CREATE INDEX IF NOT EXISTS idx_vuelos_price_number ON vuelos(price_number);