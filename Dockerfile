FROM nginx:1.27-alpine

# Build context: /opt/data/diandianpos/
# dist/ holds the static site:
#   dist/index.html          (official website)
#   dist/privacy/index.html  (privacy policy)
#   dist/styles.css

COPY dist/ /usr/share/nginx/html/
COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=5s --start-period=5s --retries=3 \
  CMD wget -qO- http://127.0.0.1:80/ >/dev/null 2>&1 || exit 1

CMD ["nginx", "-g", "daemon off;"]
