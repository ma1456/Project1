@echo off
@rem
@rem Blaze Advisor
@rem Set the classpath for the Blaze Advisor RuleService Precompile.

rem 
rem Set JAVA_HOME
rem
@call D:\Installations\\Blaze75\\Advisor75\\bin\\setenv.bat
echo step1
set JAVA_HOME=F:\Installations\Java\jdk1.8.0_45
echo step2
set ADVISOR_HOME=D:\Installations\Blaze75\Advisor75

set BASE_JAR_HOME=C:\Blaze\Workspaces\Jars
echo step3
@set CLASSPATH=""
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\antlr-2.7.6.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\cglib-2.1.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\commons-collections-3.1.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\commons-logging-1.1.1.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\dom4j-1.6.1.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\hibernate3.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\hibernate-annotations-3.3.1.GA.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\hibernate-commons-annotations.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\hibernate-custom.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\hibernate-entitymanager-3.3.2.GA.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\hibernate-validator.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\javassist-3.4.GA.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\jta-1.1.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\slf4j-api-1.5.8.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\slf4j-ext-1.5.8.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\slf4j-log4j12-1.5.8.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\slf4j-nop-1.5.8-sources.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\Dev.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\dmcom.jar


@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\jaxen-1.1.4.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\json.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\ojdbc8.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\sqljdbc4_jre16_2008.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\il-common-support.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\il-common-support72.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\il-common-support82.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\il-common-config.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\il-common-config - Latest.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\com.ibm.ws.prereq.soap.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\collections.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\poi-3.6-20091214.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\poi-contrib-3.6-20091214.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\motorProviders.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\CHIProviders.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\FireAgentRate.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\Providers.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\QMSCustomProviders.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\javax.persistence.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\weatherProviders.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\weatherQMSCustomProviders.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\GenericCoverRate.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\util.jar

@set CLASSPATH==%CLASSPATH%;%BASE_JAR_HOME%\hibernate-validator-3.1.0.GA.jar;

@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\batik-css-1.9.jar;
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\batik-ext-1.9.jar;
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\batik-util-1.9.jar;
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\castor-core.jar;
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\castor-xml.jar;
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\castor-xml-schema.jar;
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\cglib-2.2.jar;
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\common.jar;

@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\commons-csv-1.4.jar;
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\commons-io-2.4.jar;
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\commons-lang3-3.4.jar;
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\ct.api.converters.jar;
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\ct.api.evaluator.jar;
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\ct.api.model.jar;
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\InnovatorRT.jar;
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\jkitgo.jar;
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\NdJdbcDev.jar;
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\soap-1.1.jar;
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\tomcat60.jar;
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\jpa-2.0-api-1.0.1.jar
@set CLASSPATH=%CLASSPATH%;%BASE_JAR_HOME%\ehcache-1.6.2.jar

@set CLASSPATH=%CLASSPATH%;%ADVISOR_CLASSES%