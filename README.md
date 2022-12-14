# Data Lake Strategy for Data Science Workflows

This repository details the research and development strategy carried out to implement a Data Lake framework for the Data Science Laboratory, using open-source technologies, which is generated by many information entities in different formats, combined in a unified storage environment (temporary or permanent), which allows to carry out advanced analytical processes and data science methodologies.

Repository components by container stack:

- MLflow: tool for managing machine learning projects, with which experiments can be registered, packaged, distributed, and consulted, to obtain reproducible and robust models.

- Kedro: is a framework for creating data flows. Adopt best practices in software engineering to create data science code that is reproducible, maintainable, and modular.

- Jupyter Lab – Notebook: It is an interactive web development environment, with support for different languages, in which Python stands out. It allows you to combine code execution with documentation and visualizations in a single file, thus facilitating prototyping and dissemination of results.

- Python: It is an open-source object-oriented programming language. Its simple syntax and the number of its libraries facilitate the rapid creation of programs and information flows.

- MinIO: a software for distributed storage servers complaint with “S3” protocol called, which allows the creation of high-performance private data clouds. It also performs standardized interaction with other services, to access your files in any format.

- Trino: Distributed SQL query engine that allows to connect to other data sources, such as relational database managers. In this way, it allows interaction between them within a single transparent and standardized interface.

- Hive: This software allows you to read, write and manage data sets in distributed storage, using standard SQL language. It allows determining the structure of existing files, with which it is possible to make information queries.

- SuperSet: is a data exploration and visualization platform that can connect to any SQL-based data source through the component called SQLAlchemy, supporting large volumes of information, based on a petabyte scale. It has various graphs and maps, which are chosen according to the needs. It is configured through selectors that are presented in a control panel, based on web technology, thus allowing controlled access by users.
