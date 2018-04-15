/*
 *  The scanner definition for COOL.
 */

/*
 *  Stuff enclosed in %{ %} in the first section is copied verbatim to the
 *  output, so headers and global definitions are placed here to be visible
 * to the code in the file.  Don't remove anything that was here initially
 */

%option noyywrap


%{
#include "cool-parse.h"
#include "stringtab.h"
#include "utilities.h"

/* The compiler assumes these identifiers. */
#define yylval cool_yylval
#define yylex  cool_yylex

/* Max size of string constants */
#define MAX_STR_CONST 1025
#define YY_NO_UNPUT   /* keep g++ happy */

extern FILE *fin; /* we read from this file */

/* define YY_INPUT so we read from the FILE fin:
 * This change makes it possible to use this scanner in
 * the Cool compiler.
 */
#undef YY_INPUT
#define YY_INPUT(buf,result,max_size) \
  if ( (result = fread( (char*)buf, sizeof(char), max_size, fin)) < 0) \
    YY_FATAL_ERROR( "read() in flex scanner failed");

char string_buf[MAX_STR_CONST]; /* to assemble string constants */
char *string_buf_ptr;

extern int curr_lineno;
extern int verbose_flag;

extern YYSTYPE cool_yylval;

/*
 *  Add Your own definitions here
 */

int comment_level = 0;

%}
%option  yylineno


%x COMMENT COMMENT_DASH STRING STRERROR


/*
 * Define names for regular expressions here.
 */
CLASS          ?i:class
ELSE           ?i:else
FI             ?i:fi
IF             (?i:if)
IN             ?i:in
INHERITS       ?i:inherits
LET            ?i:let
LOOP           ?i:loop
POOL           ?i:pool
THEN           ?i:then
CASE           ?i:case
WHILE          ?i:while
ESAC           ?i:esac
OF             ?i:of
NEW            ?i:new
ISVOID         ?i:isvoid
NOT            ?i:not
TRUE           (?-i:t)(?i:rue)
FALSE          (?-i:f)(?i:alse)
DARROW          =>
BOOL           {TRUE}|{FALSE}
CHAR           [A-Za-z]
DIGIT          [0-9]

INTEGER        {DIGIT}+
NEWLINE        "\n"

CAPITAL        [A-Z]
LOWER          [a-z]
WHITESPACE     [ \n\f\r\t\v]

OBJECTID       {LOWER}({CHAR}|{DIGIT}|"_")*
TYPEID         {CAPITAL}({CHAR}|{DIGIT}|"_")*
SELFID         "self"
SELF_TYPEID    "SELF_TYPE"

%%

 /*
  *  Nested comments
  */
--                      {
                          BEGIN(COMMENT_DASH);
                        }
<COMMENT_DASH><<EOF>>   {
                          curr_lineno = yylineno;
                          yyterminate();
                        }
<COMMENT_DASH>[\n]      {
                          curr_lineno = yylineno;
                          BEGIN(INITIAL);
                        }
<COMMENT_DASH>[^\n]     {}
"(*"                    {
                          BEGIN(COMMENT);
                          comment_level++;
                        }
"*)"                    {
                          curr_lineno = yylineno;
                          cool_yylval.error_msg = "Unmatched *)";
                          return ERROR;
                        }
<COMMENT>"("+"*"        {  comment_level++; }
<COMMENT>"*"+")"        {  comment_level--;
                           if (comment_level==0)
                           {
                              BEGIN(INITIAL);
                           }
                        }
<COMMENT>[^*(]|"("[^*]|"*"[^)] {}
<COMMENT><<EOF>>        {
                            curr_lineno = yylineno;
                            cool_yylval.error_msg = "EOF in comment";
                            BEGIN(INITIAL);
                            return ERROR;
                        }

 /*
  * Keywords are case-insensitive except for the values true and false,
  * which must begin with a lower-case letter.
  */
{CLASS}           { curr_lineno = yylineno;  return CLASS; }
{ELSE}            { curr_lineno = yylineno;  return ELSE; }
{FI}              { curr_lineno = yylineno;  return FI; }
{IF}              { curr_lineno = yylineno;  return IF; }
{IN}              { curr_lineno = yylineno;  return IN; }
{INHERITS}        { curr_lineno = yylineno;  return INHERITS; }
{LET}             { curr_lineno = yylineno;  return LET; }
{LOOP}            { curr_lineno = yylineno;  return LOOP; }
{POOL}            { curr_lineno = yylineno;  return POOL; }
{THEN}            { curr_lineno = yylineno;  return THEN; }
{WHILE}           { curr_lineno = yylineno;  return WHILE;}
{CASE}            { curr_lineno = yylineno;  return CASE; }
{ESAC}            { curr_lineno = yylineno;  return ESAC; }
{NEW}             { curr_lineno = yylineno;  return NEW; }
{ISVOID}          { curr_lineno = yylineno;  return ISVOID; }
{OF}              { curr_lineno = yylineno;  return OF; }
{NOT}             { curr_lineno = yylineno;  return NOT; }
{FALSE}           {
                    cool_yylval.boolean = false;
                    curr_lineno = yylineno;
                    return BOOL_CONST;
                  }
{TRUE}            {
                    cool_yylval.boolean = true;
                    curr_lineno = yylineno;
                    return BOOL_CONST;
                  }
{DARROW}          { curr_lineno = yylineno;  return DARROW; }
"<-"              { curr_lineno = yylineno;  return ASSIGN; }
"+"               { curr_lineno = yylineno;  return int('+'); }
"/"               { curr_lineno = yylineno;  return int('/'); }
"-"               { curr_lineno = yylineno;  return int('-'); }
"*"               { curr_lineno = yylineno;  return int('*'); }
"="               { curr_lineno = yylineno;  return int('='); }
"<"               { curr_lineno = yylineno;  return int('<'); }
"<="              { curr_lineno = yylineno;  return LE; }
"."               { curr_lineno = yylineno;  return int('.'); }
"~"               { curr_lineno = yylineno;  return int('~'); }
","               { curr_lineno = yylineno;  return int(','); }
";"               { curr_lineno = yylineno;  return int(';'); }
":"               { curr_lineno = yylineno;  return int(':'); }
"("               { curr_lineno = yylineno;  return int('('); }
")"               { curr_lineno = yylineno;  return int(')'); }
"@"               { curr_lineno = yylineno;  return int('@'); }
"{"               { curr_lineno = yylineno;  return int('{'); }
"}"               { curr_lineno = yylineno;  return int('}'); }
{DIGIT}+          {
                    cool_yylval.symbol = inttable.add_string(yytext);
                    curr_lineno = yylineno;
                    return INT_CONST;
                  }

 /*
  *  String constants (C syntax)
  *  Escape sequence \c is accepted for all characters c. Except for
  *  \n \t \b \f, the result is c.
  *
  */

\"              {
                    strcpy(string_buf, "");
                    BEGIN(STRING);
                }
<STRING>\"      {
                    BEGIN(INITIAL);
                    curr_lineno=yylineno;
                    cool_yylval.symbol = stringtable.add_string(string_buf);
                    return STR_CONST;
                }

<STRING>\\b     {
                    curr_lineno=yylineno;
                    if(strlen(string_buf) + 1 + 1 > MAX_STR_CONST)
                    {
                        cool_yylval.error_msg = "String constant too long";
                        BEGIN(STRERROR);
                        return ERROR;
                    }
                    strcat(string_buf, "\b");
                }
<STRING>\\t     {
                    curr_lineno=yylineno;
                    if(strlen(string_buf) + 1 + 1 > MAX_STR_CONST)
                    {
                        cool_yylval.error_msg = "String constant too long";
                        BEGIN(STRERROR);
                        return ERROR;
                    }
                    strcat(string_buf, "\t");
                }
<STRING>\\n     {
                    curr_lineno=yylineno;
                    if(strlen(string_buf) + 1 + 1 > MAX_STR_CONST)
                    {
                        cool_yylval.error_msg = "String constant too long";
                        BEGIN(STRERROR);
                        return ERROR;
                    }
                    strcat(string_buf, "\n");
                }
<STRING>\\f     {
                    curr_lineno=yylineno;
                    if(strlen(string_buf) + 1 + 1 > MAX_STR_CONST)
                    {
                        cool_yylval.error_msg = "String constant too long";
                        BEGIN(STRERROR);
                        return ERROR;
                    }
                    strcat(string_buf, "\f");
                }
<STRING>\\\x00  {
                    BEGIN(STRERROR);
                    curr_lineno=yylineno;
                    cool_yylval.error_msg = "String contains escaped null character.";
                    return ERROR;
                }
<STRING>\\.     {
                    curr_lineno=yylineno;
                    if(strlen(string_buf) + 1 + 1 > MAX_STR_CONST)
                    {
                        cool_yylval.error_msg = "String constant too long";
                        BEGIN(STRERROR);
                        return ERROR;
                    }
                    strcat(string_buf, yytext+1);
                }

<STRING>\\\n    {
                    curr_lineno=yylineno;
                    if(strlen(string_buf) + 1 + 1 > MAX_STR_CONST)
                    {
                        cool_yylval.error_msg = "String constant too long";
                        BEGIN(STRERROR);
                        return ERROR;
                    }
                    strcat(string_buf, "\n");
                }
<STRING>\n      {
                    BEGIN(INITIAL);
                    curr_lineno=yylineno;
                    cool_yylval.error_msg = "Unterminated string constant";
                    return ERROR;
                }

<STRING>\x00    {
                    BEGIN(STRERROR);
                    curr_lineno=yylineno;
                    cool_yylval.error_msg = "String contains null character.";
                    return ERROR;
                }


<STRING>([^"\\\n\x00])+     {
                                curr_lineno=yylineno;
                                if(strlen(string_buf) + strlen(yytext) + 1 > MAX_STR_CONST)
                                {
                                    cool_yylval.error_msg = "String constant too long";
                                    BEGIN(STRERROR);
                                    return (ERROR);
                                }
                                strcat(string_buf, yytext);
                            }
<STRERROR>[^\\]\n    {BEGIN(INITIAL);}
<STRERROR>\"         {BEGIN(INITIAL);}
<STRERROR>.     {}
<STRERROR>\n    {}
<STRING><<EOF>> {
                    curr_lineno = yylineno;
                    cool_yylval.error_msg = "EOF in string constant";
                    BEGIN(INITIAL);
                    return ERROR;
                }

{TYPEID}        {
                  cool_yylval.symbol = stringtable.add_string(yytext);
                  curr_lineno = yylineno;
                  return TYPEID;
                }
{OBJECTID}      {
                  cool_yylval.symbol = stringtable.add_string(yytext);
                  curr_lineno = yylineno;
                  return OBJECTID;
                }

{NEWLINE}       {}
{WHITESPACE}    {}

.               {
                  curr_lineno = yylineno;
                  cool_yylval.error_msg = yytext;
                  return ERROR;
                }

%%
