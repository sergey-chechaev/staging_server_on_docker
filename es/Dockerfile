# docker build -t xco/es .

FROM barnybug/elasticsearch:1.2.1

# Config section
ADD support/elasticsearch.yml /elasticsearch-1.2.1/config/elasticsearch.yml
ADD support/cpl_search.jar /elasticsearch-1.2.1/lib/cpl_search.jar
ADD support/cpl_wide_search.jar /elasticsearch-1.2.1/lib/cpl_wide_search.jar

# Plugins section
RUN cd /elasticsearch-1.2.1 && bin/plugin -install analysis-morphology -url http://dl.bintray.com/content/imotov/elasticsearch-plugins/org/elasticsearch/elasticsearch-analysis-morphology/1.2.0/elasticsearch-analysis-morphology-1.2.0.zip

RUN mkdir /es_data