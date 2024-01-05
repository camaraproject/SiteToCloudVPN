# Site To Cloud (S2C) VPN

This API aims to provide multi-site, multi-cloud network connection for customers, and provide virtual private network services for industries and applications such as education, medical, Internet of things, cloud desktop, cloud conference, cloud recording and etc.

## Use cases and requirements

#### Data storage scenarios

- Overview

  There are two typical application scenarios:

  1. For backup and storage scenarios of cold data that has not been used for a long time, the data needs to be backed up and stored on a cloud with reliable network connectivity.
  1.  When the distributed cloud resources usage rate is unbalanced, local video streams are scheduled to cloud nodes with sufficient resources for storage

- Requirements:

  - For data storage applications(such as video, voice, and images storage), it is needed to create the stable data transmission network to access  cloud resources that meet the storage and network requirements of the application/capability invokers by S2C VPN API.  For example, for cloud court application that demands to deliver trial video materials to the central cloud, the network delay is required to lower than 50ms and bandwidth is higher than 20Mbps , so cloud court application is suitable to call S2C VPN API to achieve elastic, private and secure data delivery and storage.