 Postmortem Report: Web Stack Debugging Task (Nginx Load Failure)
Date of Issue:12 March 2025
Prepared by: THokozane Tshabalala
Duration: 1 hour, from 14:00 to 15:00 UTC+2

Issue Summary
At 14:00 UTC+2, the Nginx web server experienced significant performance issues under load, resulting in 943 out of 2000 requests failing. ApacheBench was used to simulate a load of 100 concurrent requests, revealing a high failure rate. The issue primarily impacted users trying to access the service, and approximately 47% of requests were dropped, affecting the overall user experience. The root cause was identified as insufficient file descriptor limits, preventing Nginx from handling the number of simultaneous connections required during the test.

Timeline
14:00: Load test begins using ApacheBench with 2000 total requests (100 concurrent requests).

14:10: Monitoring tools show an abnormal number of failed requests (943 out of 2000).

14:15: The issue is first noticed by the engineer monitoring the load test, who investigates the server logs and system resource limits.

14:20: Assumption: The issue might be related to resource limits, specifically file descriptors (open files), preventing Nginx from processing all connections.

14:30: Investigation reveals low nofile limits for user processes in /etc/security/limits.conf, leading to failure in handling multiple simultaneous connections.

14:40: Puppet manifests applied to increase file limits to 100 to allow for more open files, ensuring Nginx can handle the load.

14:50: Load test re-executed successfully with no failed requests.

15:00: Incident fully resolved, and the test runs without issue.

Root Cause and Resolution
Root Cause: The issue was caused by inadequate file descriptor limits (nofile) configured for user processes. Nginx and associated services could not open enough files to handle the volume of concurrent connections during the ApacheBench test, leading to failed requests. The nofile limits were set too low in /etc/security/limits.conf (5 and 4), which restricted the number of simultaneous connections Nginx could manage.

Resolution: To resolve the issue, the file descriptor limits for user processes were increased by modifying the /etc/security/limits.conf file. Specifically, the limits were changed to allow up to 100 open files per process instead of the default 5 and 4. This change enabled Nginx to handle a larger number of simultaneous connections, allowing the load test to complete without failed requests. A re-test confirmed that the issue was resolved.

Corrective and Preventative Measures
Improvements Needed:

Ensure all system configurations, including file descriptor limits, are optimized for high traffic in staging and production environments.

Implement proper monitoring and alerting for resource limits to detect issues before they impact service availability.

Perform regular stress testing in staging to identify potential configuration bottlenecks before scaling to production.

Specific Tasks:

Patch Nginx configuration: Review and increase file descriptor limits to avoid future connection issues.

Update system limits: Modify /etc/security/limits.conf to set nofile limits to 100 or higher.

Re-test after patch: Perform load tests after modifying configuration to ensure the system can handle expected traffic levels.

Implement monitoring: Set up resource utilization alerts for file descriptors, memory, and CPU usage to detect potential issues early.

Document configuration changes: Update internal documentation to reflect best practices for system configuration and resource limits.
