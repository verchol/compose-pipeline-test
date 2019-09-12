FROM dmitry7887/alpine-node-git
RUN npm install -g jest
RUN npm install -g  @knapsack-pro/jest
COPY . /src
WORKDIR /src

CMD ["sh",  "setup-knapsack.sh"]