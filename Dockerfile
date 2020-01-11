FROM scratch
ADD main /
ADD app /app
Add demo.db /
CMD ["/main"]