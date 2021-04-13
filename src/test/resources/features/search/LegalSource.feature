
Feature: Legal Source components

  @Issue: https://jira.internal.epo.org/browse/PGPMNWA-92
  Scenario:Verify the component for menu Legal Source and sub menu with subtitle base on  <ROLE>

    Given PWB user with <role> has the PGP Knowledge Support menu open

      |<role>                          |
      |ROLE_EXAMINER                   |
      |ROLE_TM                         |
      |ROLE_TM_EXAM_DEPUTY             |
      |ROLE_DIRECTOR                   |
      |ROLE_DIRECTOR_DEPUTY            |
      |ROLE_LM_DEPUTY                  |
      |ROLE_OCFD_DIRECTOR              |
      |ROLE_OCFD_DIRECTOR_DEPUTY       |
      |ROLE_QA                         |
      |ROLE_QA_EXTERNAL                |
      |ROLE_QA_MANAGER                 |
      |ROLE_QA_Director                |
      |ROLE_QA_Director_DEPUTY         |
      |ROLE_LEGAL_MANAGER              |
      |ROLE_LEGAL_MANAGER_DEPUTY       |
      |ROLE_Legal_Member               |
      |SUPER_ADMIN                     |
      |ROLE_FO                         |
      |ROLE_TM_FO                      |
      |ROLE_TM_FO_DEPUTY               |
      |ROLE_FO_EXTERNAL-1208           |
      |ROLE_OCFD_FO                    |
      |ROLE_OCFD_FO_EXTERNAL           |
      |ROLE_FIN_MANAGER                |
      |ROLE_FIN_MANAGER_DEPUTY         |
      |ROLE_FIN_EMPLOYEE               |

    When PWB user has <components> open on “Learn & Inspire” menu
      |components                        |Subtitles                                 |
      |Legal Source                      |Access to all legal texts and guidelines  |
    Then The Legal Source menu shows the following <submenu> base on pwb user <group>
      |group                                 |submenu               |subtitles                               |
      |EXAMINER or DEFAULT USER or Formalitie| Single Legal Source  |Access to all our legal information     |
      |EXAMINER or DEFAULT USER or Formalitie| Digital Workflow     |Central information site for teleworking|
      |EXAMINER or DEFAULT USER or Formalitie| Fil d'Ariane         |Access to administrative instructions   |

  @issue https://jira.internal.epo.org/browse/PGPMNWA-108

  Scenario Verify the sequence of sub menu and URL of Legal Source components base on examiner group role.

    Given PWB user with <role>  has the PGP Knowledge Support menu open
      |<role>                          |
      |ROLE_EXAMINER                   |
      |ROLE_TM                         |
      |ROLE_TM_EXAM_DEPUTY             |
      |ROLE_DIRECTOR                   |
      |ROLE_DIRECTOR_DEPUTY            |
      |ROLE_LM_DEPUTY                  |
      |ROLE_OCFD_DIRECTOR              |
      |ROLE_OCFD_DIRECTOR_DEPUTY       |
      |ROLE_QA                         |
      |ROLE_QA_EXTERNAL                |
      |ROLE_QA_MANAGER                 |
      |ROLE_QA_Director                |
      |ROLE_QA_Director_DEPUTY         |
      |ROLE_LEGAL_MANAGER              |
      |ROLE_LEGAL_MANAGER_DEPUTY       |
      |ROLE_Legal_Member               |
      |SUPER_ADMIN                     |

    And  PWB user opens  <components> on “Learn & Inspire” menu
      |components     |
      |Legal Source   |
    When  PWB user opens  <submenu>
      | submenu             |
      | Single Legal Source |
      | Digital Workflow    |
      | Fil d'Ariane        |
    Then a new tab opens from <URL>

      |url     |
      |http://sls.internal.epo.org/sls/ui#SLS/html/welcome.html                                                                                                    |
      |http://my.internal.epo.org/portal/private/epo/work/healthsafety/?WCM_GLOBAL_CONTEXT=/epo/intranet/work/healthsafety/coronavirus/work/1587030981480_dg_1_work|
      |http://my.internal.epo.org/portal/private/epo/work/formalitiesofficers/?WCM_GLOBAL_CONTEXT=/epo/intranet/work/formalitiesOfficers/Tools/Fil_d_Ariane/       |

  issue https://jira.internal.epo.org/browse/PGPMNWA-108

  Scenario Verify the sequence of sub menu of Legal Source components base on formalties group role.

    Given PWB user with <role> has the PGP Knowledge Support menu open
      |<role>                          |
      |ROLE_FO                         |
      |ROLE_TM_FO                      |
      |ROLE_TM_FO_DEPUTY               |
      |ROLE_FO_EXTERNAL-1208           |
      |ROLE_OCFD_FO                    |
      |ROLE_OCFD_FO_EXTERNAL           |
      |ROLE_FIN_MANAGER                |
      |ROLE_FIN_MANAGER_DEPUTY         |
      |ROLE_FIN_EMPLOYEE               |

    And  PWB user opens  <components> on “Learn & Inspire” menu
      |components     |
      |Legal Source   |
    When  PWB user opens  <submenu>
      | submenu               |
      | Fil d'Ariane          |
      | Single Legal Source   |
      | Digital Workflow      |
    Then a new tab opens from <URL>

      |url  |
      |http://my.internal.epo.org/portal/private/epo/work/formalitiesofficers/?WCM_GLOBAL_CONTEXT=/epo/intranet/work/formalitiesOfficers/Tools/Fil_d_Ariane/       |                                                                                                      |
      |http://sls.internal.epo.org/sls/ui#SLS/html/welcome.html                                                                                                    |
      |http://my.internal.epo.org/portal/private/epo/work/healthsafety/?WCM_GLOBAL_CONTEXT=/epo/intranet/work/healthsafety/coronavirus/work/1587030981480_dg_1_work|
