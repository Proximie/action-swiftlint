FROM ghcr.io/realm/swiftlint:0.56.1

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
