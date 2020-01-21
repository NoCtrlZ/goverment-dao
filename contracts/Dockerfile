FROM trufflesuite/ganache-cli:latest

RUN npm install -g ganache-cli truffle &&\
    mkdir -p /var/ganache

ENV DOCKER true
ENV DATADIR /var/ganache
ENV MNEMONIC give us a power to change fucking piece of shit government yo
ENV NETWORKID 5777
ENV PORT 7545

EXPOSE 7545

ENTRYPOINT ["sh", "-c", "ganache-cli --host=0.0.0.0 --db=${DATADIR} --mnemonic=\"${MNEMONIC}\" --networkId=${NETWORKID} --port=${PORT}"]
