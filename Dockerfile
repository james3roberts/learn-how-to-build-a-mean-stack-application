# # using Node v10

# FROM node:10

# # Create app directory

# WORKDIR /usr/src/lafs

# # Install app dependencies

# # A wildcard is used to ensure both package.json AND package-lock.json are copied

# # where available (npm@5+)

# COPY package*.json ./

# RUN npm install

# # If you are building your code for production

# # RUN npm ci --only=production

# # Bundle app source

# COPY . .

# # Expose port 3000 outside container

# EXPOSE 3000

# # Command used to start application

# CMD node . "0.0.0.0"


# using Node v10
FROM node:10

# Create app directory
WORKDIR /usr/src/lafs

# Install app dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Expose port 3000 outside the container
EXPOSE 3000

# Command used to start the application
#CMD ["node", ".", "0.0.0.0"]
#this was the change from the general discussion
CMD ["node", "server/server.js"] 

#ming need to add the line below
#CMD npm run start