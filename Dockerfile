FROM sentry

RUN pip install https://github.com/getsentry/sentry-jira/archive/master.zip
RUN pip install https://github.com/getsentry/sentry-slack/archive/master.zip
RUN pip install https://github.com/getsentry/sentry-auth-google/archive/master.zip

COPY sentry.conf.py /etc/sentry/
COPY server.py /usr/local/lib/python2.7/site-packages/sentry/conf/

CMD ["run", "web"]
