CREATE STREAM TEST (NAME STRING KEY, ID int, VALUE double) WITH (kafka_topic='test_topic', value_format='DELIMITED');
INSERT INTO TEST VALUES ('abc', 101, 13.54);
INSERT INTO TEST VALUES ('foo', 30, 4.5);
INSERT INTO TEST (ID, NAME) VALUES (123, 'bar');
INSERT INTO TEST (ID, NAME, VALUE) VALUES (123, 'far', 10.56);
INSERT INTO TEST (NAME, ID, ROWTIME) VALUES ('near', 55501, 100000);
CREATE STREAM S1 as SELECT name, value FROM test where id > 100;