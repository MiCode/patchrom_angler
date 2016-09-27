.class public Lcom/android/server/backup/SystemBackupAgent;
.super Landroid/app/backup/BackupAgentHelper;
.source "SystemBackupAgent.java"


# static fields
.field private static final NOTIFICATION_HELPER:Ljava/lang/String; = "notifications"

.field private static final PREFERRED_HELPER:Ljava/lang/String; = "preferred_activities"

.field private static final SYNC_SETTINGS_HELPER:Ljava/lang/String; = "account_sync_settings"

.field private static final TAG:Ljava/lang/String; = "SystemBackupAgent"

.field private static final WALLPAPER_HELPER:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_IMAGE:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_DIR:Ljava/lang/String;

.field private static final WALLPAPER_IMAGE_FILENAME:Ljava/lang/String; = "wallpaper"

.field private static final WALLPAPER_IMAGE_KEY:Ljava/lang/String; = "/data/data/com.android.settings/files/wallpaper"

.field private static final WALLPAPER_INFO:Ljava/lang/String;

.field private static final WALLPAPER_INFO_DIR:Ljava/lang/String;

.field private static final WALLPAPER_INFO_FILENAME:Ljava/lang/String; = "wallpaper_info.xml"

.field private static final WALLPAPER_INFO_KEY:Ljava/lang/String; = "/data/system/wallpaper_info.xml"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 57
    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE_DIR:Ljava/lang/String;

    .line 59
    sget-object v0, Landroid/app/backup/WallpaperBackupHelper;->WALLPAPER_IMAGE:Ljava/lang/String;

    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    .line 63
    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 62
    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO_DIR:Ljava/lang/String;

    .line 64
    sget-object v0, Landroid/app/backup/WallpaperBackupHelper;->WALLPAPER_INFO:Ljava/lang/String;

    sput-object v0, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method

.method private fullWallpaperBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 6
    .param p1, "output"    # Landroid/app/backup/FullBackupDataOutput;

    .prologue
    const/4 v2, 0x0

    .line 110
    invoke-virtual {p0}, Lcom/android/server/backup/SystemBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "r"

    .line 111
    sget-object v3, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO_DIR:Ljava/lang/String;

    sget-object v4, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    move-object v5, p1

    .line 110
    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 112
    invoke-virtual {p0}, Lcom/android/server/backup/SystemBackupAgent;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "r"

    .line 113
    sget-object v3, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE_DIR:Ljava/lang/String;

    sget-object v4, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    move-object v5, p1

    .line 112
    invoke-static/range {v0 .. v5}, Landroid/app/backup/FullBackup;->backupToTar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/backup/FullBackupDataOutput;)I

    .line 105
    return-void
.end method


# virtual methods
.method public onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 11
    .param p1, "oldState"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "data"    # Landroid/app/backup/BackupDataOutput;
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 74
    const-string/jumbo v7, "wallpaper"

    .line 73
    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/app/IWallpaperManager;

    .line 75
    .local v5, "wallpaper":Landroid/app/IWallpaperManager;
    new-array v0, v10, [Ljava/lang/String;

    sget-object v7, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    aput-object v7, v0, v8

    sget-object v7, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    aput-object v7, v0, v9

    .line 76
    .local v0, "files":[Ljava/lang/String;
    new-array v2, v10, [Ljava/lang/String;

    const-string/jumbo v7, "/data/data/com.android.settings/files/wallpaper"

    aput-object v7, v2, v8

    const-string/jumbo v7, "/data/system/wallpaper_info.xml"

    aput-object v7, v2, v9

    .line 77
    .local v2, "keys":[Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 79
    :try_start_0
    invoke-interface {v5}, Landroid/app/IWallpaperManager;->getName()Ljava/lang/String;

    move-result-object v6

    .line 80
    .local v6, "wallpaperName":Ljava/lang/String;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 84
    const/4 v7, 0x1

    new-array v1, v7, [Ljava/lang/String;

    sget-object v7, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v7, v1, v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .end local v0    # "files":[Ljava/lang/String;
    .local v1, "files":[Ljava/lang/String;
    const/4 v7, 0x1

    :try_start_1
    new-array v3, v7, [Ljava/lang/String;

    const-string/jumbo v7, "/data/system/wallpaper_info.xml"

    const/4 v8, 0x0

    aput-object v7, v3, v8
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v2    # "keys":[Ljava/lang/String;
    .local v3, "keys":[Ljava/lang/String;
    move-object v2, v3

    .end local v3    # "keys":[Ljava/lang/String;
    .restart local v2    # "keys":[Ljava/lang/String;
    move-object v0, v1

    .line 91
    .end local v1    # "files":[Ljava/lang/String;
    .end local v6    # "wallpaperName":Ljava/lang/String;
    .restart local v0    # "files":[Ljava/lang/String;
    :cond_0
    :goto_0
    const-string/jumbo v7, "wallpaper"

    new-instance v8, Landroid/app/backup/WallpaperBackupHelper;

    invoke-direct {v8, p0, v0, v2}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v7, v8}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 92
    const-string/jumbo v7, "account_sync_settings"

    new-instance v8, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    invoke-direct {v8, p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v7, v8}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 93
    const-string/jumbo v7, "preferred_activities"

    new-instance v8, Lcom/android/server/backup/PreferredActivityBackupHelper;

    invoke-direct {v8}, Lcom/android/server/backup/PreferredActivityBackupHelper;-><init>()V

    invoke-virtual {p0, v7, v8}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 94
    const-string/jumbo v7, "notifications"

    new-instance v8, Lcom/android/server/backup/NotificationBackupHelper;

    invoke-direct {v8, p0}, Lcom/android/server/backup/NotificationBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v7, v8}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 96
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V

    .line 71
    return-void

    .line 87
    :catch_0
    move-exception v4

    .line 88
    .local v4, "re":Landroid/os/RemoteException;
    :goto_1
    const-string/jumbo v7, "SystemBackupAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Couldn\'t get wallpaper name\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    .end local v0    # "files":[Ljava/lang/String;
    .end local v4    # "re":Landroid/os/RemoteException;
    .restart local v1    # "files":[Ljava/lang/String;
    .restart local v6    # "wallpaperName":Ljava/lang/String;
    :catch_1
    move-exception v4

    .restart local v4    # "re":Landroid/os/RemoteException;
    move-object v0, v1

    .end local v1    # "files":[Ljava/lang/String;
    .restart local v0    # "files":[Ljava/lang/String;
    goto :goto_1
.end method

.method public onFullBackup(Landroid/app/backup/FullBackupDataOutput;)V
    .locals 0
    .param p1, "data"    # Landroid/app/backup/FullBackupDataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    invoke-direct {p0, p1}, Lcom/android/server/backup/SystemBackupAgent;->fullWallpaperBackup(Landroid/app/backup/FullBackupDataOutput;)V

    .line 100
    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 10
    .param p1, "data"    # Landroid/app/backup/BackupDataInput;
    .param p2, "appVersionCode"    # I
    .param p3, "newState"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 120
    const-string/jumbo v3, "wallpaper"

    new-instance v4, Landroid/app/backup/WallpaperBackupHelper;

    .line 121
    new-array v5, v7, [Ljava/lang/String;

    sget-object v6, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    aput-object v6, v5, v8

    sget-object v6, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    aput-object v6, v5, v9

    .line 122
    new-array v6, v7, [Ljava/lang/String;

    const-string/jumbo v7, "/data/data/com.android.settings/files/wallpaper"

    aput-object v7, v6, v8

    const-string/jumbo v7, "/data/system/wallpaper_info.xml"

    aput-object v7, v6, v9

    .line 120
    invoke-direct {v4, p0, v5, v6}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 123
    const-string/jumbo v3, "system_files"

    new-instance v4, Landroid/app/backup/WallpaperBackupHelper;

    .line 124
    new-array v5, v9, [Ljava/lang/String;

    sget-object v6, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    aput-object v6, v5, v8

    .line 125
    new-array v6, v9, [Ljava/lang/String;

    const-string/jumbo v7, "/data/data/com.android.settings/files/wallpaper"

    aput-object v7, v6, v8

    .line 123
    invoke-direct {v4, p0, v5, v6}, Landroid/app/backup/WallpaperBackupHelper;-><init>(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 126
    const-string/jumbo v3, "account_sync_settings"

    new-instance v4, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;

    invoke-direct {v4, p0}, Lcom/android/server/backup/AccountSyncSettingsBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 127
    const-string/jumbo v3, "preferred_activities"

    new-instance v4, Lcom/android/server/backup/PreferredActivityBackupHelper;

    invoke-direct {v4}, Lcom/android/server/backup/PreferredActivityBackupHelper;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 128
    const-string/jumbo v3, "notifications"

    new-instance v4, Lcom/android/server/backup/NotificationBackupHelper;

    invoke-direct {v4, p0}, Lcom/android/server/backup/NotificationBackupHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/server/backup/SystemBackupAgent;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    .line 131
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    .line 134
    const-string/jumbo v3, "wallpaper"

    .line 133
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    check-cast v2, Landroid/app/IWallpaperManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    .local v2, "wallpaper":Landroid/app/IWallpaperManager;
    if-eqz v2, :cond_0

    .line 137
    :try_start_1
    invoke-interface {v2}, Landroid/app/IWallpaperManager;->settingsRestored()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 118
    .end local v2    # "wallpaper":Landroid/app/IWallpaperManager;
    :cond_0
    :goto_0
    return-void

    .line 138
    .restart local v2    # "wallpaper":Landroid/app/IWallpaperManager;
    :catch_0
    move-exception v1

    .line 139
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v3, "SystemBackupAgent"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Couldn\'t restore settings\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 142
    .end local v1    # "re":Landroid/os/RemoteException;
    .end local v2    # "wallpaper":Landroid/app/IWallpaperManager;
    :catch_1
    move-exception v0

    .line 145
    .local v0, "ex":Ljava/io/IOException;
    const-string/jumbo v3, "SystemBackupAgent"

    const-string/jumbo v4, "restore failed"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 147
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public onRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJ)V
    .locals 15
    .param p1, "data"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "size"    # J
    .param p4, "type"    # I
    .param p5, "domain"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "mode"    # J
    .param p9, "mtime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 155
    const-string/jumbo v2, "SystemBackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Restoring file domain="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v13, 0x0

    .line 160
    .local v13, "restoredWallpaper":Z
    const/4 v10, 0x0

    .line 162
    .local v10, "outFile":Ljava/io/File;
    const-string/jumbo v2, "r"

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    const-string/jumbo v2, "wallpaper_info.xml"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 164
    new-instance v10, Ljava/io/File;

    .end local v10    # "outFile":Ljava/io/File;
    sget-object v2, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v10, "outFile":Ljava/io/File;
    const/4 v13, 0x1

    .line 173
    .end local v10    # "outFile":Ljava/io/File;
    :cond_0
    :goto_0
    if-nez v10, :cond_1

    .line 174
    :try_start_0
    const-string/jumbo v2, "SystemBackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Skipping unrecognized system file: [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    move-wide/from16 v6, p7

    move-wide/from16 v8, p9

    .line 176
    invoke-static/range {v2 .. v10}, Landroid/app/backup/FullBackup;->restoreFile(Landroid/os/ParcelFileDescriptor;JIJJLjava/io/File;)V

    .line 178
    if-eqz v13, :cond_2

    .line 181
    const-string/jumbo v2, "wallpaper"

    .line 180
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    check-cast v14, Landroid/app/IWallpaperManager;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 182
    .local v14, "wallpaper":Landroid/app/IWallpaperManager;
    if-eqz v14, :cond_2

    .line 184
    :try_start_1
    invoke-interface {v14}, Landroid/app/IWallpaperManager;->settingsRestored()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 154
    .end local v14    # "wallpaper":Landroid/app/IWallpaperManager;
    :cond_2
    :goto_1
    return-void

    .line 166
    .local v10, "outFile":Ljava/io/File;
    :cond_3
    const-string/jumbo v2, "wallpaper"

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 167
    new-instance v10, Ljava/io/File;

    .end local v10    # "outFile":Ljava/io/File;
    sget-object v2, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v10, "outFile":Ljava/io/File;
    const/4 v13, 0x1

    goto :goto_0

    .line 185
    .end local v10    # "outFile":Ljava/io/File;
    .restart local v14    # "wallpaper":Landroid/app/IWallpaperManager;
    :catch_0
    move-exception v12

    .line 186
    .local v12, "re":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v2, "SystemBackupAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Couldn\'t restore settings\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 190
    .end local v12    # "re":Landroid/os/RemoteException;
    .end local v14    # "wallpaper":Landroid/app/IWallpaperManager;
    :catch_1
    move-exception v11

    .line 191
    .local v11, "e":Ljava/io/IOException;
    if-eqz v13, :cond_2

    .line 193
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_IMAGE:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 194
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/backup/SystemBackupAgent;->WALLPAPER_INFO:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_1
.end method
