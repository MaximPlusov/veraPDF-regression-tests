<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- Issue# 972 -->
    <!-- https://github.com/veraPDF/veraPDF-library/issues/972 -->
    <!-- File: veraPDF-Testdocument.pdf -->


    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '4')">Failed check, Expected: 4</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="(@clause = '6.6.2.1' and @testNumber = '4' and @failedChecks = '1') or 
            (@clause = '6.6.2.1' and @testNumber = '5' and @failedChecks = '1') or 
            (@clause = '6.6.2.3.1' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = '6.6.2.3.1' and @testNumber = '2' and @failedChecks = '5')">Failed rules, Expected: 
            6.6.2.1-4, 1 check, or 
            6.6.2.1-5, 1 check, or 
            6.6.2.3.1-1, 2 checks, or 
            6.6.2.3.1-2, 5 checks</sch:assert>
        </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking the logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="count(logs) = 1">Failed check, Expected: contains logs</sch:assert>
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs">
            <sch:assert test="@logsCount = '2'">Failed check, Expected: 2</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/logs/logMessage">
            <sch:assert test='(contains(., "Dictionary/Stream contains duplicated key /CIDToGIDMap(object key = 111 0 obj, offset = 74751)") and @occurrences = "1" and @level = "WARNING") or 
            (contains(., "Problems with parsing metadata. XML parsing failure") and @occurrences = "1" and @level = "WARNING")'>Invalid logs, Expected: 
            'WARNING: Dictionary/Stream contains duplicated key /CIDToGIDMap(object key = 111 0 obj, offset = 74751)' with 1 occurrences, or 
            'WARNING: Problems with parsing metadata. XML parsing failure' with 1 occurrences</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
