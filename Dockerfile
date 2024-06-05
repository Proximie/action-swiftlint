FROM ghcr.io/realm/swiftlint:0.54.0

COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
