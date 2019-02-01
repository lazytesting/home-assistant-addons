FROM marcelmaatkamp/freeradius

RUN apk update && apk upgrade && \
    apk add --update jq

CMD [ "/init.sh" ]
