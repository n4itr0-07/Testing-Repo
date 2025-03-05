# ER Diagram Representation

## Entities and Relationships

+------------------+        (Has)        +------------------+
|   Student       |-------------------->|     Result       |
|-----------------|  (1:M)              |------------------|
| *RollNo* (PK)   |                     | *RollNo* (PK, FK)|
| Student Name    |                     | *Sub-code* (PK, FK) |
+-----------------+                     | Marks           |
                                         +------------------+

+------------------+        (Appears in)  +------------------+
|   Subject       |-------------------->|     Result       |
|-----------------|  (1:M)               |------------------|
| *Sub-code* (PK) |                      | *RollNo* (PK, FK)|
| Title          |                      | *Sub-code* (PK, FK) |
| Semester       |                      | Marks           |
+-----------------+                      +------------------+

+------------------+       (Teaches)      +------------------+
|   Faculty       |-------------------->|  Subject Offered |
|-----------------|  (1:M)               |------------------|
| *Fac-code* (PK) |                      | *Fac-code* (PK, FK)|
| Fac-name       |                      | *Sub-code* (PK, FK)|
| D-name (FK)    |                      +------------------+
+-----------------+

+------------------+       (Is Offered)   +------------------+
|   Subject       |-------------------->|  Subject Offered |
|-----------------|  (1:M)               |------------------|
| *Sub-code* (PK) |                      | *Fac-code* (PK, FK)|
| Title          |                      | *Sub-code* (PK, FK)|
| Semester       |                      +------------------+
+-----------------+

+------------------+        (Has)        +------------------+
|   Department    |-------------------->|     Faculty      |
|-----------------|  (1:M)              |------------------|
| *D-name* (PK)   |                     | *Fac-code* (PK)  |
| HOD            |                     | Fac-name         |
+-----------------+                     | D-name (FK)      |
                                         +------------------+