#!/bin/sh
set -e
URL="https://files.pythonhosted.org/packages/5b/92/4a1eac715fe99b87bab13c4564e18a33cc9cadafa312460251e6a2dceb10/pyprland-2.4.3-py3-none-any.whl"
SUDO=sudo
PROGRAM=/usr/local/bin/pypr
CACHEDIR=/var/cache/pypr
WHEEL=package.whl

if [ -e "$PROGRAM" ]; then
    echo "$PROGRAM exists, do you really want to continue [y/n] ?"
    read answer
    if [ "$answer" != "y" ]; then
        exit 1
    fi
fi

[ ! -d $CACHEDIR ] && ${SUDO} mkdir $CACHEDIR
cd $CACHEDIR
${SUDO} curl -o $WHEEL $URL

append() {
    echo $@ | ${SUDO} tee -a $PROGRAM
}

${SUDO} rm -fr ${PROGRAM}
${SUDO} touch ${PROGRAM}
${SUDO} chmod 755 ${PROGRAM}
${SUDO} chmod 755 $CACHEDIR
${SUDO} chmod 644 $CACHEDIR/$WHEEL

append "#!/bin/sh"
append "export PYTHONPATH='$CACHEDIR/$WHEEL'"
append 'exec python -m pyprland.command $@'

echo "Installed successfully."

