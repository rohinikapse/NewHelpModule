
Feature:Access PGP Knowledge Support menu with various profile

  @Issue: https://jira.internal.epo.org/browse/PGPMNWA-91

  Rule : Access Help menu with various profile

    Background:
      Given When user has access to the PWB with <ROLE> Examiner Group
        |<ROLE>                          |
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


    Scenario: PWB User wants to open the PGP Knowledge Support menu
      Given PWB user with <ROLE> is working in the PWB
      When  PWB access to the PGP Knowledge Support menu
      Then  “Learn & Inspire” menu opens and shows <components> and <related subtitles>
        |components                      |subtitles                                  |
        |People & Communities            |Enjoy support from your peers              |
        |Legal Sources                   |Access to all legal texts and guidelines   |
        |Training & Personal Development |Upskill yourself by e-learning             |
        |Get Help                        |Access Legal and Tool support              |
        |What's New                      |Find out more about the latest release     |

