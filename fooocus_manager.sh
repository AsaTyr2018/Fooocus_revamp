#!/bin/bash
set -e

INSTALL_DIR="/opt/fooocus-rev"
REPO_SOURCE="$(dirname "$(readlink -f "$0")")"

if [ "$(id -u)" -ne 0 ]; then
    SUDO="sudo"
else
    SUDO=""
fi

install_app() {
    $SUDO mkdir -p "$INSTALL_DIR"
    $SUDO rsync -a "$REPO_SOURCE/" "$INSTALL_DIR/"
    if [ ! -d "$INSTALL_DIR/venv" ]; then
        $SUDO python3 -m venv "$INSTALL_DIR/venv"
    fi
    $SUDO "$INSTALL_DIR/venv/bin/pip" install --upgrade pip
    $SUDO "$INSTALL_DIR/venv/bin/pip" install -r "$INSTALL_DIR/requirements_versions.txt"
}

update_app() {
    cd "$INSTALL_DIR"
    $SUDO git pull
    $SUDO "$INSTALL_DIR/venv/bin/pip" install -r requirements_versions.txt
}

remove_app() {
    $SUDO rm -rf "$INSTALL_DIR"
}

start_app() {
    cd "$INSTALL_DIR"
    source venv/bin/activate
    python entry_with_update.py "$@"
}

case "$1" in
    install)
        install_app
        ;;
    update)
        update_app
        ;;
    remove)
        remove_app
        ;;
    start)
        shift
        start_app "$@"
        ;;
    *)
        echo "Usage: $0 {install|update|remove|start}"
        exit 1
        ;;
esac


