FROM oraclelinux:7-slim

WORKDIR /oracle

ARG release=19
ARG update=3

RUN  yum -y install oracle-release-el7 && yum-config-manager --enable ol7_oracle_instantclient && \
     yum -y install oracle-instantclient${release}.${update}-basic oracle-instantclient${release}.${update}-devel oracle-instantclient${release}.${update}-sqlplus && \
     rm -rf /var/cache/yum

ENV PATH=$PATH:/usr/lib/oracle/${release}.${update}/client64/bin

CMD ["bash"]
#docker run -ti --rm docker.totvs.io/henrique.luiz/instantclient bash "echo exit | sqlplus -S USER/PASSWD@HOST/INSTANCE @file > return-file.log"
