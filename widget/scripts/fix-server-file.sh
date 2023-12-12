SOURCE_FILE="${PWD}/lib/eapearsonWidgetDemo3/eapearsonWidgetDemo3Server.py" && \
SERVICE_IMPORT_SNIPPET="${PWD}/widget/scripts/service-server-snippet-0.txt" && \
SERVICE_PATH_HANDLER_SNIPPET="${PWD}/widget/scripts/service-server-snippet-1.txt" && \
echo "Fixing ${SOURCE_FILE} using ${SERVICE_IMPORT_SNIPPET} and ${SERVICE_PATH_HANDLER_SNIPPET}" &&  \
sed -i.bak-$(date "+%Y-%m-%d-%H-%M-%S") \
    -e "/from configparser import ConfigParser/ r ${SERVICE_IMPORT_SNIPPET}" \
    -e "/def __call__/ r ${SERVICE_PATH_HANDLER_SNIPPET}" \
    ${SOURCE_FILE}