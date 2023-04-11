FROM registry.access.redhat.com/ubi8/openjdk-17
ENV TEST_ENV_VAR test_env_var_value
EXPOSE 8080
WORKDIR /home/jboss
COPY target/*.jar /home/jboss/
CMD java -jar *.jar