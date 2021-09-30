# Overview
Repository contains scripts and queries to run some demonstration queries
against ``Allegro Graph`` and ``Apache Jena Fuseki`` triple stores.
Every query has embedded results and comment, so in fact there is no need
to launch databases in order to see results of queries.
Scripts to launch databases are placed in [scripts directory](scripts).

# How to import
Data can be imported into databases using their web GUI:
1. ``Allegro Graph``: [localhost:10035](http://localhost:10035)
1. ``Apache Jena Fuseki``: [localhost:3030](http://localhost:3030)

## Credentials
- user: ``admin``
- password: ``lodtest``

Queries for ``Allegro Graph`` demonstrates usage of ``FROM`` and ``FROM NAMED`` inside single repository and queries for ``Apache Jena Fuseki``
demonstrates federated queries (separated datasets). In order to import
data correctly, please follow below instructions:

## Allegro Graph queries
Import files into same repository (e.g. ``repo``).
While importing ``a.nt`` and ``b.nt``, its URIs should be provided
(in the **Context** field).
Data for following queries are imported in following way:

| file | dataset | graph |
| - | - | - |
| a.nt | repo |  <http://graph1#> |
| b.nt | repo |  <http://graph2#> |
| c.nt | repo |  default graph |


## Jena Fuseki
Import every file into separated dataset, with name derived from file
name. Inside the dataset, import data into default graph (don't specify
name for graph).

| file | dataset | graph |
| - | - | - |
| a.nt | a |  default graph |
| b.nt | b |  default graph |
| c.nt | c |  default graph |

Note: **Dataset** in ``Apache Jena Fuseki`` is equivalent to
**repository** in ``AllegroGraph``.
