FROM ubuntu:xenial

RUN apt-get update && apt-get install --yes software-properties-common
RUN apt-get install --yes curl

# bitcoind PPA is unmaintained, so we download it from the bitcoincore website.
# This can sometimes stall, which can be fixed by killing and restarting the
# build.
RUN curl HTTP... 

RUN chmod +x electrad
RUN chmod +x electra-cli

COPY Electra.conf /root/.electra/
COPY run.sh /root/
RUN chmod +x /root/run.sh

# Regtest network RPC port
EXPOSE 15788

ENTRYPOINT ["./root/run.sh"]