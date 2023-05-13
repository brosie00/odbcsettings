isql -v MSSQL_test_18 sa Wart9405

isql -v MSSQL_test_17 sa Wart9405















*********************************************
* unixODBC - isql and iusql                  *
**********************************************
* Syntax                                     *
*                                            *
*      isql DSN [UID [PWD]] [options]        *
*                                            *
*      iusql DSN [UID [PWD]] [options]       *
*                                            *
* Options                                    *
*                                            *
* -b         batch.(no prompting etc)        *
* -dx        delimit columns with x          *
* -x0xXX     delimit columns with XX, where  *
*            x is in hex, ie 0x09 is tab     *
* -w         wrap results in an HTML table   *
* -c         column names on first row.      *
*            (only used when -d)             *
* -mn        limit column display width to n *
* -v         verbose.                        *
* -lx        set locale to x                 *
* -q         wrap char fields in dquotes     *
* -3         Use ODBC 3 calls                *
* -n         Use new line processing         *
* -e         Use SQLExecDirect not Prepare   *
* -k         Use SQLDriverConnect            *
* -L         Length of col display (def:300) *
* --version  version                         *
*                                            *
* Commands                                   *
*                                            *
* help - list tables                         *
* help table - list columns in table         *
* help help - list all help options          *
*                                            *
* Examples                                   *
*                                            *
*      iusql -v WebDB MyID MyPWD -w < My.sql *
*                                            *
*      Each line in My.sql must contain      *
*      exactly 1 SQL command except for the  *
*      last line which must be blank (unless *
*      -n option specified).                 *
*                                            *
* Datasources, drivers, etc:                 *
*                                            *
*      See "man 1 isql"                    *
*                                            *
* Please visit;                              *
*                                            *
*      http://www.unixodbc.org               *
*      nick@lurcher.org                      *
*      pharvey@codebydesign.com              *
**********************************************
