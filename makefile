#
## Makefile for nexus 6P
#
#
## The original zip file, MUST be specified by each product
local-zip-file     := stockrom.zip

# All vendor apks needed
local-phone-apps := NfcNci PrintSpooler PacProcessor CertInstaller GoogleCamera KeyChain \
	Stk qcrilmsgtunnel TimeService UserDictionaryProvider talkback Bluetooth BluetoothMidiService \

local-phone-priv-apps := Shell FusedLocation ProxyHandler ExternalStorageProvider TagGoogle \
	SharedStorageBackup DMService ConnMO DiagMon DCMO InputDevices CellBroadcastReceiver \
	BackupRestoreConfirmation

local-density := XXXHDPI
local-target-bit := 64

include $(PORT_BUILD)/porting.mk

pre-zip-misc:
