CREATE DATABASE IF NOT EXISTS TokenStore;

USE TokenStore;

CREATE TABLE IF NOT EXISTS Tokens(
    sequenceNum int NOT NULL,
    tokenIdentifier varbinary(255) NOT NULL,
    tokenInfo varbinary(255) NOT NULL,
    modifiedTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(sequenceNum, tokenIdentifier)
);

CREATE TABLE IF NOT EXISTS DelegationKeys(
    keyId int NOT NULL,
    delegationKey varbinary(255) NOT NULL,
    modifiedTime timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY(keyId)
);

CREATE TABLE IF NOT EXISTS LastSequenceNum(
    sequenceNum int NOT NULL
);

INSERT IGNORE INTO LastSequenceNum (sequenceNum) VALUES (0);

CREATE TABLE IF NOT EXISTS LastDelegationKeyId(
    keyId int NOT NULL
);

INSERT IGNORE INTO LastDelegationKeyId (keyId) VALUES (0);

