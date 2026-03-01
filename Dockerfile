FROM nginx:alpine

# Copy nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copy game files
COPY herding-paws.html /usr/share/nginx/html/
COPY herding-paws.js /usr/share/nginx/html/
COPY herding-paws.wasm /usr/share/nginx/html/
COPY herding-paws.pck /usr/share/nginx/html/
COPY herding-paws.png /usr/share/nginx/html/
COPY herding-paws.icon.png /usr/share/nginx/html/
COPY herding-paws.apple-touch-icon.png /usr/share/nginx/html/
COPY herding-paws.audio.worklet.js /usr/share/nginx/html/
COPY herding-paws.audio.position.worklet.js /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
