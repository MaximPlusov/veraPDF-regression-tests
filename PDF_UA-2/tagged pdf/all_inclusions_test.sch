<?xml version="1.0" encoding="utf-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
            xsi:schemaLocation="http://purl.oclc.org/dsdl/schematron ">

    <!-- File: all_inclusions_test.pdf -->

    <sch:pattern name = "Checking the validationReport: document is not compliant">
        <sch:rule context="/report/jobs/job/validationReport">
            <sch:assert test="(@isCompliant = 'false')">Failed check, Expected: isCompliant=false</sch:assert>
        </sch:rule>
    </sch:pattern>

    <sch:pattern name = "Checking the validationReport: rules">
        <sch:rule context="/report/jobs/job/validationReport/details">
            <sch:assert test="(@failedRules = '1590')">Failed check, Expected: 1590</sch:assert>	
        </sch:rule>

        <sch:rule context="/report/jobs/job/validationReport/details/rule">
            <sch:assert test="object != 'SETFoot' or
            (@clause = 'Annot-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Art-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Aside-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BibEntry-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'BlockQuote-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Caption-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Code-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Document-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'DocumentFragment-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Em-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'FENote-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Figure-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Form-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Formula-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'H-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Hn-TFoot' and @testNumber = '1' and @failedChecks = '12') or 
            (@clause = 'Index-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'L-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LBody-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'LI-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Lbl-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Link-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Note-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'P-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Quote-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RB-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RP-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'RT-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Reference-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Ruby-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sect-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Span-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Strong-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'StructTreeRoot-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Sub-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TBody-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TD-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TFoot-content' and @testNumber = '1' and @failedChecks = '1') or 
            (@clause = 'TH-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'THead-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOC-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TOCI-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'TR-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Title-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WP-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'WT-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
            (@clause = 'Warichu-TFoot' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
            Annot-TFoot-1, 2 checks, or 
            Art-TFoot-1, 2 checks, or 
            Aside-TFoot-1, 2 checks, or 
            BibEntry-TFoot-1, 2 checks, or 
            BlockQuote-TFoot-1, 2 checks, or 
            Caption-TFoot-1, 2 checks, or 
            Code-TFoot-1, 2 checks, or 
            Document-TFoot-1, 2 checks, or 
            DocumentFragment-TFoot-1, 2 checks, or 
            Em-TFoot-1, 2 checks, or 
            FENote-TFoot-1, 2 checks, or 
            Figure-TFoot-1, 2 checks, or 
            Form-TFoot-1, 2 checks, or 
            Formula-TFoot-1, 2 checks, or 
            H-TFoot-1, 2 checks, or 
            Hn-TFoot-1, 12 checks, or 
            Index-TFoot-1, 2 checks, or 
            L-TFoot-1, 2 checks, or 
            LBody-TFoot-1, 2 checks, or 
            LI-TFoot-1, 2 checks, or 
            Lbl-TFoot-1, 2 checks, or 
            Link-TFoot-1, 2 checks, or 
            Note-TFoot-1, 2 checks, or 
            P-TFoot-1, 2 checks, or 
            Quote-TFoot-1, 2 checks, or 
            RB-TFoot-1, 2 checks, or 
            RP-TFoot-1, 2 checks, or 
            RT-TFoot-1, 2 checks, or 
            Reference-TFoot-1, 2 checks, or 
            Ruby-TFoot-1, 2 checks, or 
            Sect-TFoot-1, 2 checks, or 
            Span-TFoot-1, 2 checks, or 
            Strong-TFoot-1, 2 checks, or 
            StructTreeRoot-TFoot-1, 2 checks, or 
            Sub-TFoot-1, 2 checks, or 
            TBody-TFoot-1, 2 checks, or 
            TD-TFoot-1, 2 checks, or 
            TFoot-TFoot-1, 2 checks, or 
            TFoot-content-1, 1 check, or 
            TH-TFoot-1, 2 checks, or 
            THead-TFoot-1, 2 checks, or 
            TOC-TFoot-1, 2 checks, or 
            TOCI-TFoot-1, 2 checks, or 
            TR-TFoot-1, 2 checks, or 
            Title-TFoot-1, 2 checks, or 
            WP-TFoot-1, 2 checks, or 
            WT-TFoot-1, 2 checks, or 
            Warichu-TFoot-1, 2 checks</sch:assert>
        </sch:rule>
        
                <sch:rule context="/report/jobs/job/validationReport/details/rule">
                    <sch:assert test="object != 'SETFoot' or
                    (@clause = 'Annot-TFoot' and @testNumber = '1' and @failedChecks = '3') or 
                    (@clause = 'Art-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'Aside-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'BibEntry-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'BlockQuote-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'Caption-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'Code-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'Document-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'DocumentFragment-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'Em-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'FENote-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'Figure-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'Form-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'Formula-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'H-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'Hn-TFoot' and @testNumber = '1' and @failedChecks = '12') or 
                    (@clause = 'Index-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'L-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'LBody-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'LI-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'Lbl-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'Link-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'Note-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'P-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'Quote-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'RB-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'RP-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'RT-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'Reference-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'Ruby-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'Sect-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'Span-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'Strong-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'StructTreeRoot-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'Sub-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'TBody-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'TD-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'TFoot-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'TFoot-content' and @testNumber = '1' and @failedChecks = '1') or 
                    (@clause = 'TH-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'THead-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'TOC-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'TOCI-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'TR-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'Title-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'WP-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'WT-TFoot' and @testNumber = '1' and @failedChecks = '2') or 
                    (@clause = 'Warichu-TFoot' and @testNumber = '1' and @failedChecks = '2')">Failed rules, Expected: 
                    Annot-TFoot-1, 2 checks, or 
                    Art-TFoot-1, 2 checks, or 
                    Aside-TFoot-1, 2 checks, or 
                    BibEntry-TFoot-1, 2 checks, or 
                    BlockQuote-TFoot-1, 2 checks, or 
                    Caption-TFoot-1, 2 checks, or 
                    Code-TFoot-1, 2 checks, or 
                    Document-TFoot-1, 2 checks, or 
                    DocumentFragment-TFoot-1, 2 checks, or 
                    Em-TFoot-1, 2 checks, or 
                    FENote-TFoot-1, 2 checks, or 
                    Figure-TFoot-1, 2 checks, or 
                    Form-TFoot-1, 2 checks, or 
                    Formula-TFoot-1, 2 checks, or 
                    H-TFoot-1, 2 checks, or 
                    Hn-TFoot-1, 12 checks, or 
                    Index-TFoot-1, 2 checks, or 
                    L-TFoot-1, 2 checks, or 
                    LBody-TFoot-1, 2 checks, or 
                    LI-TFoot-1, 2 checks, or 
                    Lbl-TFoot-1, 2 checks, or 
                    Link-TFoot-1, 2 checks, or 
                    Note-TFoot-1, 2 checks, or 
                    P-TFoot-1, 2 checks, or 
                    Quote-TFoot-1, 2 checks, or 
                    RB-TFoot-1, 2 checks, or 
                    RP-TFoot-1, 2 checks, or 
                    RT-TFoot-1, 2 checks, or 
                    Reference-TFoot-1, 2 checks, or 
                    Ruby-TFoot-1, 2 checks, or 
                    Sect-TFoot-1, 2 checks, or 
                    Span-TFoot-1, 2 checks, or 
                    Strong-TFoot-1, 2 checks, or 
                    StructTreeRoot-TFoot-1, 2 checks, or 
                    Sub-TFoot-1, 2 checks, or 
                    TBody-TFoot-1, 2 checks, or 
                    TD-TFoot-1, 2 checks, or 
                    TFoot-TFoot-1, 2 checks, or 
                    TFoot-content-1, 1 check, or 
                    TH-TFoot-1, 2 checks, or 
                    THead-TFoot-1, 2 checks, or 
                    TOC-TFoot-1, 2 checks, or 
                    TOCI-TFoot-1, 2 checks, or 
                    TR-TFoot-1, 2 checks, or 
                    Title-TFoot-1, 2 checks, or 
                    WP-TFoot-1, 2 checks, or 
                    WT-TFoot-1, 2 checks, or 
                    Warichu-TFoot-1, 2 checks</sch:assert>
                </sch:rule>

    </sch:pattern>

    <sch:pattern name = "Checking for the absence of logs">
        <sch:rule context="/report/jobs/job">
            <sch:assert test="not(logs)">Failed check, Expected: no logs</sch:assert>
        </sch:rule>
    </sch:pattern>

</sch:schema>
