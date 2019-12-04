| Title                | Date             | Modified         | Category          |
|:--------------------:|:----------------:|:----------------:|:-----------------:|
| mongodb              | 2019-08-23 12:00 | 2019-08-23 12:00 | db            |



# Data Models

mongodb 中的数据具有灵活的模式。默认情况下，集合不强制文档结构。这种灵活性提供了数据建模选择，以匹配应用程序及其性能要求。


## Data Modeling Introduction

### Flexible Schema

### Document Structure


### Atomicity of Write Operations


### Data Use and Performance


## Schema Validation
mongodb提供了在更新和插入期间进行模式验证的功能。



### Specify Validation Rules

### JSON Schema

### Other Query Expressions


### Behavior


### Restrictions


### Bypass Document Validation


### Additional Information





## Data Modeling Concepts

核心文档详细说明了在确定数据模型时必须做出的决定，并讨论了应该考虑的因素。

### Data Model Design

#### Embedded Data Models

### Normalized Data Models


### Operational Factors and Data Models

#### Atomicity

#### Sharding

#### Indexes

#### Large Number of Collections

#### Collection Contains Large Number of Small Documents


#### Storage Optimization for Small Documents


#### Data Lifecycle Management






## Data Model Examples and Patterns

### Model Relationships Between Documents

#### Model One-to-One Relationships with Embedded Documents
#### Model One-to-Many Relationships with Embedded Documents
#### Model One-to-Many Relationships with Document References


### Model Tree Structures

#### Model Tree Structures with Parent References
#### Model Tree Structures with Child References
#### Model Tree Structures with an Array of Ancestors
#### Model Tree Structures with Materialized Paths
#### Model Tree Structures with Materialized Paths
#### Model Tree Structures with Nested Sets


### Model Specific Application Contexts

#### Model Data for Atomic Operations
#### Model Data to Support Keyword Search
#### Model Monetary Data
#### Model Time Data


## Data Model Reference

