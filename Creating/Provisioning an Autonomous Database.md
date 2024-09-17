# Autonomous Database(ADB)

An Autonomous Database allows us to very easily scale both OCPUs and storage independently of one another, we can also set the system up to automatically scale up three times the base limit.

For example – If we increase the OCPU count to 11 and if the auto scaling is enabled so in that case when needed it can go up to 33 OCPUs.

An Autonomous Database in Oracle Cloud Infrastructure (OCI) is a cloud-based database service that automates key database management tasks using machine learning and artificial intelligence. 

Oracle Autonomous Database on OCI simplifies database management by automating routine tasks, enhancing security, ensuring high performance, and providing scalability.

Here's a detailed overview of its features and benefits:

## Key Features

### Self-Driving

 Automates database tuning, patching, updating, and security, freeing up database administrators (DBAs) from routine maintenance tasks.

### Self-Securing 

Automatically protects against both external attacks and malicious internal users. It applies security updates with no downtime and encrypts all data by default.

### Self-Repairing

Provides automated protection from downtime, including performing automatic backups and applying necessary patches.

## Types of Autonomous Databases

### Autonomous Transaction Processing (ATP)

Optimized for transactional workloads, such as online transaction processing (OLTP) applications. It is designed to handle a high volume of transactions and offers high performance for transactional applications.

### Autonomous Data Warehouse (ADW)

Optimized for analytical workloads. It provides high performance for complex queries and analytics, making it suitable for data warehousing and business intelligence applications.

## Benefits

### Cost Efficiency

Reduces the cost of database management through automation, lowering the need for manual intervention and the risk of human error.

### Scalability

Offers flexible scaling options, allowing users to adjust compute and storage resources independently based on their workload demands.

### Performance

Provides high performance with features like automatic indexing and adaptive query optimization.

### Security

Ensures data security with always-on encryption, automated threat detection, and comprehensive auditing.

### High Availability

Offers built-in high availability and disaster recovery options, ensuring minimal downtime and business continuity.

## Use Cases

### Transactional Applications

For applications requiring fast and reliable transaction processing, such as e-commerce platforms, financial systems, and online booking systems.

### Data Warehousing and Analytics

For organizations needing robust data analytics, business intelligence, and reporting capabilities.

### Development and Testing

For development teams needing quick and easy access to a database environment for application development and testing purposes.

### Mixed Workloads

Capable of handling both transactional and analytical workloads within the same database instance.

## Working

### Provisioning

Users can quickly provision an Autonomous Database instance through the OCI console, API, or CLI.

### Management

The service manages all aspects of database operations, including patching, backups, and scaling.

### Access

Users can connect to the database using standard SQL and database tools. It supports a wide range of application development frameworks and integration options.

# Autonomous Database Management Tools

## Oracle Cloud Infrastructure Console

Provides a graphical user interface to manage Autonomous Databases.

### Oracle SQL Developer

A tool for database development and management.

### REST APIs

Allow for programmatic control and management of Autonomous Databases.

## Auto Scaling ADB

Auto-scaling in Oracle Autonomous Database (ADB) allows the database to automatically adjust its compute and storage resources based on workload demands. This ensures optimal performance and cost-efficiency without manual interference. 

Here’s an in-depth look at auto-scaling for Oracle Autonomous Database:

## Features of Auto Scaling

### Automatic Compute Scaling

Automatically scales up or down the compute resources (CPU and memory) based on the workload. When the workload increases, additional compute resources are provisioned, and when the workload decreases, the resources are scaled back down.

### Automatic Storage Scaling

Automatically adjusts storage capacity as data grows. There’s no need to manually allocate storage; it expands seamlessly as needed.

### Cost Efficiency

Only pay for the resources you use. Auto-scaling helps to optimize costs by scaling down resources during low-demand periods.

### Performance Optimization

Ensures consistent performance by providing additional resources during peak times, preventing bottlenecks and maintaining service levels.

## How Auto Scaling Works

### Enable Auto Scaling

Auto-scaling can be enabled or disabled through the Oracle Cloud Infrastructure (OCI) console, API, or CLI.

### Monitoring Workload

The Autonomous Database continuously monitors the workload and resource utilization.
### Scaling Decisions

Based on predefined policies and thresholds, the database automatically scales resources. For example, if CPU utilization consistently exceeds a certain threshold, additional compute resources are allocated.

### Dynamic Adjustment

The adjustments are dynamic and happen in real-time without any downtime or manual intervention.

## Benefits of Auto Scaling

### Simplified Management

Eliminates the need for manual resource management, allowing DBAs to focus on more strategic tasks.

### Improved Performance

Maintains high performance by dynamically adjusting resources to meet workload demands.

### Cost Savings

Optimizes resource usage, ensuring you only pay for what you need. Reduces over-provisioning and associated costs.

### Flexibility

Supports varying workloads, making it ideal for applications with fluctuating demands, such as seasonal spikes or periodic reporting.

## Enabling Auto Scaling

To enable auto-scaling for an Autonomous Database, follow these steps:

Access the OCI Console  Log in to your Oracle Cloud account and navigate to the Autonomous Database instance you want to configure.

Edit Instance  Click on the "Edit" button for the instance.

Enable Auto Scaling  Toggle the auto-scaling option to "Enabled".

Save Changes  Save the configuration to apply the changes.

## Monitoring and Managing Auto Scaling

### OCI Console

Use the console to monitor resource usage and scaling events.

### Metrics and Alerts

Set up metrics and alerts to get notified of scaling events and resource utilization.

### Detailed Reports

Access detailed reports and logs to understand scaling decisions and their impact on performance and cost(Resource Utilization Reports, Scaling Event Reports, Performance Metrics, Cost Reports).

### Setting Up Alerts and Notifications

Threshold Alerts  Set up alerts for specific metrics (e.g., CPU utilization exceeds 80%) to receive notifications when thresholds are crossed.

Scaling Events Alerts  Get notified when scaling events occur to stay informed about changes in resource allocation.

Cost Alerts  Set up alerts for budget thresholds to avoid unexpected expenses.

For managing auto scaling we can go inside the autonomous database we created then  Manage Scaling  Select the OCPU count and enable auto scaling.

![Untitled design (21)](https://github.com/user-attachments/assets/485b3c38-d8a4-406f-8d3e-073b0df0ef19)

Once we make the changes in the OCPU count, at that time the instance status will be “Scaling in progress” but it will be up and running and it will still allow the users is session to connect and perform their normal workload.

Lifecycle state will also be in “scaling in progress”.

Once the scaling is updated, the OCPU count will show the updated count as 6.

## Creating/Provisioning an Autonomous Database

We have to go to the OCI console and navigate to  Oracle Database  Autonomous Database.

![6th july (78)](https://github.com/user-attachments/assets/9817f4dd-6537-40b1-b99e-7e22a2934786)

We have to fill all the details and create the Autonomous Database

![Untitled design (23)](https://github.com/user-attachments/assets/0026c8b4-a20a-4872-9879-cdb6dbaa2490)

![Untitled design (24)](https://github.com/user-attachments/assets/7662afcd-bf8d-4696-aaeb-c76163dcbe3e)

![Untitled design (25)](https://github.com/user-attachments/assets/8363bb56-3671-4461-b638-4646639b892c)

## Starting and Stopping and Autonomous Database

We have to go to the OCI console and navigate to  Oracle Database  Autonomous Database  Go inside the ABD created  More Actions  Stop/Start Autonomous Database.

![Untitled design (26)](https://github.com/user-attachments/assets/bb68139b-701c-4baf-91c9-c63568b5a3dd)

It’s very easy to start, stop as well as to scale the autonomous database using the cloud console, oracle provides the ability to just point and click to do that effectively.

Stopping/Pausing a database from running can pause the billing for that CPU cycle and when it is required we can start it to make the database available again.























