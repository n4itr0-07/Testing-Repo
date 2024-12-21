Bug bounty hunting involves a vast array of terms and concepts that are essential for navigating platforms, communicating with triage teams, and understanding the lifecycle of vulnerability reports. Below is an exhaustive list of terminologies commonly encountered in bug bounty programs:


---

Bug Bounty Basic Terminologies

1. General Terms

Bug Bounty Program: A program offered by organizations to allow security researchers to report security vulnerabilities in their applications, systems, or infrastructure in exchange for monetary rewards or recognition.

Triage: The process of reviewing, validating, and prioritizing vulnerability reports submitted by security researchers. The triage team determines whether the report is valid and actionable.

Scope: The defined boundaries of systems, applications, or endpoints that are included in the bug bounty program. Anything outside the scope will not be considered for rewards.

Example: A company may include its website but exclude its internal admin panel.


Out of Scope (OOS): Assets, vulnerabilities, or attack vectors that are explicitly excluded from the scope of the bug bounty program.

Valid Issue: A confirmed vulnerability that meets the program's criteria and is within scope.

Invalid/N/A (Not Applicable): A submitted report that does not qualify as a vulnerability or is not considered a risk by the program.



---

2. Vulnerability Types

Account Takeover (ATO): Exploiting a vulnerability to gain unauthorized access to a user’s account.

Example: Resetting a user's password by manipulating the forgot password flow.


Cross-Site Scripting (XSS): Injecting malicious JavaScript into a website, enabling attackers to steal cookies, perform actions on behalf of users, or deface the site.

SQL Injection (SQLi): Manipulating SQL queries to read, modify, or delete sensitive data from a database.

Server-Side Request Forgery (SSRF): Exploiting a server to make unauthorized internal network or external service requests.

Insecure Direct Object Reference (IDOR): Gaining unauthorized access to resources by modifying references like object IDs in the URL or request.

Cross-Site Request Forgery (CSRF): Forcing a user to execute unwanted actions on a web application in which they are authenticated.


---

3. Report Statuses

Open: The report has been submitted and is under review.

Triaged: The report has been validated and is confirmed as a legitimate vulnerability. It will now be assessed for priority and remediation.

Duplicate: The submitted report identifies an issue that has already been reported by another researcher.

Informative: The report provides useful information but does not describe a valid vulnerability.

Resolved: The vulnerability has been fixed or mitigated by the company.

Closed: The report has been reviewed and is no longer active. It could be resolved, invalid, or a duplicate.

Not Applicable (N/A): The report is considered invalid or out of scope.



---

4. Rewards and Impact

Payout/Bounty: The monetary reward given for a valid vulnerability report. Higher-impact bugs generally receive larger payouts.

Severity Levels:

Low: Minor issues that pose a minimal security risk.

Medium: Vulnerabilities that have a noticeable impact but are not critical.

High: Significant vulnerabilities that could lead to substantial damage.

Critical: Severe vulnerabilities that can cause catastrophic consequences, such as full system compromise.


CVSS (Common Vulnerability Scoring System): A standardized framework used to evaluate the severity of a vulnerability based on factors like exploitability and impact.


---

5. Bug Submission Terms

Proof of Concept (PoC): A detailed demonstration of how the vulnerability can be exploited. It often includes steps to reproduce the issue and supporting screenshots, videos, or payloads.

Impact Statement: A description of the potential consequences of exploiting the vulnerability.

Exploit: A working script or payload used to actively exploit the vulnerability.



---

6. Attack Terminologies

Reconnaissance (Recon): The initial phase of bug hunting where you gather information about the target, such as subdomains, endpoints, or technologies in use.

Tools: Amass, Sublist3r, nmap.


Payload: The data or script injected into a vulnerable system to trigger the vulnerability.

Privilege Escalation: Exploiting a vulnerability to gain higher permissions within the system or application.

Zero-Day: A vulnerability that is unknown to the vendor and has no existing patch.

Chain Exploit: Combining multiple vulnerabilities to achieve a higher impact than any single vulnerability alone.



---

7. Tools and Platforms

HackerOne: A popular bug bounty platform connecting organizations with security researchers.

Bugcrowd: Another leading bug bounty platform offering programs for companies.

Burp Suite: A web application security testing tool widely used for discovering vulnerabilities.

OWASP ZAP: An open-source penetration testing tool for finding vulnerabilities in web applications.



---

8. Legal and Ethical Terms

Responsible Disclosure: The practice of reporting vulnerabilities to the organization in a way that gives them a chance to fix the issue before publicizing it.

Safe Harbor: Legal protection provided by some bug bounty programs to researchers who follow the program rules in good faith.



---

9. Common Abbreviations

PoC: Proof of Concept.

IDOR: Insecure Direct Object Reference.

XSS: Cross-Site Scripting.

SQLi: SQL Injection.

SSRF: Server-Side Request Forgery.

RCE: Remote Code Execution.

LFI/RFI: Local File Inclusion / Remote File Inclusion.



---

10. Workflow Concepts

Submission: Reporting the bug through the program platform with all necessary details.

Reproduction: The company or triage team verifies the vulnerability using the provided PoC steps.

Remediation: The organization fixes the vulnerability, typically by patching or reconfiguring.

Disclosure: Some programs allow researchers to disclose their findings publicly after a certain period.



---

Common Missteps and Learning Points

Submitting reports without proper PoC or detailed steps.

Reporting "out-of-scope" or invalid issues like missing SPF records or HTTP-only cookies.

Not reading the program’s rules of engagement or scope details before hunting.


By familiarizing yourself with these terminologies, you’ll navigate bug bounty platforms more effectively and communicate with program managers and triage teams like a professional. Let me know if you’d like examples or resources to dive deeper into any of these areas!

