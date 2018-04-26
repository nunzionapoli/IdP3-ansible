// Java 7
// importPackage(Packages.org.slf4j);
// logger = LoggerFactory.getLogger("net.shibboleth.idp.attribute");

// Java 8
logger = Java.type("org.slf4j.LoggerFactory").getLogger("net.shibboleth.idp.attribute")

addM.addValue("foo@bar.com");
addM.addValue("bar@bar.bar");
 
logger.info("Values of scriptTest were: {} ", addM.getValues());

