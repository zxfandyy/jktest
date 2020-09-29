FROM alpine
COPY csteps /usr/local/bin/
ENV PORT    3000
ENV UUID    c95ef1d4-f3ac-4586-96e9-234a37dda068
ENV PROTOCOL    vmess
RUN csteps 1
ADD start.sh /start.sh
RUN csteps 2
CMD /start.sh