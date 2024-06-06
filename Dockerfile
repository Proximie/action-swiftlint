FROM ghcr.io/realm/swiftlint:0.55.1

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
