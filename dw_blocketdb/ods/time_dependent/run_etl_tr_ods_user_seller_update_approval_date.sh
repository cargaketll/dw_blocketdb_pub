#!/bin/bash

export KETTLE_FLDR=/opt/pentaho/data-integration
export KETTLE_HOME=/opt/dw_schibsted/bomnegocio_bi/dw_blocketdb

log_file="/opt/dw_schibsted/bomnegocio_bi/dw_blocketdb/logs/`date '+%y.%m.%d.%H.%M.%S'`_tr_ods_user_seller_update_approval_date.log"

cp $KETTLE_HOME/.kettle/kettle_br.properties $KETTLE_HOME/.kettle/kettle.properties

cd $KETTLE_FLDR

echo ""
echo "log file: $log_file"
echo ""

./pan.sh -file=$KETTLE_HOME/ods/time_dependent/tr_ods_user_seller_update_approval_date.ktr -level=Basic > $log_file
