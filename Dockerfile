FROM public.ecr.aws/aquasecurity/trivy:latest
COPY entrypoint.sh /
RUN apk --no-cache add bash curl npm
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

ENV TRIVY_DB_REPOSITORY=public.ecr.aws/aquasecurity/trivy-db:latest
ENV TRIVY_JAVA_DB_REPOSITORY=public.ecr.aws/aquasecurity/trivy-java-db:1
