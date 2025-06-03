CREATE DATABASE IF NOT EXISTS usuarios_db;
USE usuarios_db;

CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    telefono VARCHAR(20) NOT NULL,
    email VARCHAR(100) NOT NULL,

    -- Validar que el teléfono comience con uno de los prefijos permitidos
    CONSTRAINT chk_telefono CHECK (
        telefono LIKE '+595%' OR
        telefono LIKE '+54%' OR
        telefono LIKE '+56%' OR
        telefono LIKE '+55%' OR
        telefono LIKE '+598%'
    ),

    -- Validar que el email sea Gmail
    CONSTRAINT chk_gmail CHECK (
        email LIKE '%@gmail.com'
    )
);
