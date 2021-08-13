FROM gradle:7.1.1-jre11-hotspot

ARG project_id

WORKDIR /workspace/apps/$project_id

COPY . /workspace/apps/$project_id

ENV GRADLE_USER_HOME /workspace/apps/$project_id

RUN gradle test

COPY /workspace/apps/$project_id/build/ ./build


