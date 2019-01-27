FROM marcelmaatkamp/freeradius

RUN apk update && apk upgrade && \
    apk add --update jq && \
    rm /var/cache/apk/*

CMD [ "/init.sh" ]