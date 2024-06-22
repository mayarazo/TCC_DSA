USE master;
GO

CREATE DATABASE bd_susep ON
(NAME = bd_susep,
    FILENAME = 'C:\bd_susep.mdf',
    SIZE = 10,
    MAXSIZE = 50,
    FILEGROWTH = 5)
LOG ON
(NAME = bd_susep_log,
    FILENAME = 'C:\bd_susep_log.ldf',
    SIZE = 5 MB,
    MAXSIZE = 25 MB,
    FILEGROWTH = 5 MB);
GO