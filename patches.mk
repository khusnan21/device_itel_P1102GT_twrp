
RECOVERY_REPO_DATE := $(shell git --git-dir=$$TOP/.repo/projects/bootable/recovery.git show -s --date=format:'%y%m%d' --format=%cd HEAD)
$(warning RECOVERY_REPO_DATE = $(RECOVERY_REPO_DATE))

X_CURRENT_DATE := $(shell date '+%y%m%d')
$(warning X_CURRENT_DATE = $(X_CURRENT_DATE))

X_BUILD_VERSION_SUFFIX := unan

X_BUILD_VERSION := $(RECOVERY_REPO_DATE)-$(X_CURRENT_DATE)-$(X_BUILD_VERSION_SUFFIX)

# Change build version
$(shell sed -i 's/^#define TW_DEVICE_VERSION.*/#define TW_DEVICE_VERSION   PB_MAIN_VERSION "-$(X_BUILD_VERSION)"/g' $(TOP)/bootable/recovery/variables.h)
$(shell sed -i 's/^#define PB_BUILD.*/#define PB_BUILD                     PB_MAIN_VERSION "-$(X_BUILD_VERSION)"/g' $(TOP)/bootable/recovery/variables.h)
$(shell sed -i 's/^#define TW_VERSION_STR.*/#define TW_VERSION_STR     TW_MAIN_VERSION_STR "-$(X_BUILD_VERSION)"/g' $(TOP)/bootable/recovery/variables.h)
