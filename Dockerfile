FROM fusuf/whatsasena:latest

RUN git clone https://github.com/nabuhandbz/RubyMowl /root/WhatsAbu
WORKDIR /root/WhatsAbu/
ENV TZ=Asia/Kolkata
RUN npm install supervisor -g
RUN yarn install --no-audit
RUN git clone https://github.com/nabuhandbz/mode

CMD ["node", "bot.js"]
