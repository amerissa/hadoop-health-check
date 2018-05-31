# Hadoop Health Check From An Application Perspective
Get insights from an application perspective to your Hadoop cluster. Get live and historical graphical dashboards for representing YARN and HDFS. The project is docker based and has support for Kerberos.
  - HDFS: The entire FSImage is indexed you can aggregate on based directory level and search for specific files including metadata and access time
  - YARN: historical data is indexed and live data is aggregated on a per minute basis in a live dashboard
  - Ambari: Index and search Ambari Alerts to discover which errors are reoccuring


### Usage and Requirements:
#### Requirements:
  - Docker installed.
  - API access to YARN Resource Manager and Ambari
  - FSImage from HDFS

#### Usage:
  - `git clone git@github.com:amerissa/hadoop-health-check.git`
  - Edit `logstash/utls/yarn.ini` and input the cluster settings
  - Place the FSImage as `logstash/data/fsimage`
  - Start up the project as `startup.sh`

### Dashboards:
Dashboards will come up on port 5601 on the host's IP. Navigate to the Dashboards section in Kibana to view prebuilt dashboards. Indexed data is avaliable under Discover
