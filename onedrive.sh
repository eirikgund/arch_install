onedrive --synchronize --sync-shared-folders --verbose

# If you prefer to use your local files as stored in /home/eirik/OneDrive as the "source of truth" use command:
# onedrive --synchronize --local-first


# In some cases it may be desirable to 'download only' from OneDrive. To do this use the following command:
# onedrive --synchronize --download-only

# In some cases it may be desirable to 'upload only' to OneDrive. To do this use the following command:
# onedrive --synchronize --upload-only


# Note: If a file or folder is present on OneDrive, that was previously synced and now does not exist locally, that item it will be removed from OneDrive.
# If the data on OneDrive should be kept, the following should be used:
# onedrive --synchronize --upload-only --no-remote-delete


# --resync
# The use of --resync will remove your local 'onedrive' client state, thus no record will exist regarding your current 'sync status'
# This has the potential to overwrite local versions of files with potentially older versions downloaded from OneDrive which can lead to data loss
# If in-doubt, backup your local data first before proceeding with --resync

# --display-sync-status
