.class public Landroid/app/backup/BackupTransport;
.super Ljava/lang/Object;
.source "BackupTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/backup/BackupTransport$TransportImpl;
    }
.end annotation


# static fields
.field public static final AGENT_ERROR:I = -0x3eb

.field public static final AGENT_UNKNOWN:I = -0x3ec

.field public static final NO_MORE_DATA:I = -0x1

.field public static final TRANSPORT_ERROR:I = -0x3e8

.field public static final TRANSPORT_NOT_INITIALIZED:I = -0x3e9

.field public static final TRANSPORT_OK:I = 0x0

.field public static final TRANSPORT_PACKAGE_REJECTED:I = -0x3ea


# instance fields
.field mBinderImpl:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/app/backup/BackupTransport$TransportImpl;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupTransport$TransportImpl;-><init>(Landroid/app/backup/BackupTransport;)V

    iput-object v0, p0, Landroid/app/backup/BackupTransport;->mBinderImpl:Lcom/android/internal/backup/IBackupTransport;

    .line 35
    return-void
.end method


# virtual methods
.method public abortFullRestore()I
    .locals 1

    .prologue
    .line 519
    const/4 v0, 0x0

    return v0
.end method

.method public cancelFullBackup()V
    .locals 2

    .prologue
    .line 462
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 463
    const-string/jumbo v1, "Transport cancelFullBackup() not implemented"

    .line 462
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public checkFullBackupSize(J)I
    .locals 1
    .param p1, "size"    # J

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public clearBackupData(Landroid/content/pm/PackageInfo;)I
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 190
    const/16 v0, -0x3e8

    return v0
.end method

.method public configurationIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public currentDestinationString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 99
    const-string/jumbo v1, "Transport currentDestinationString() not implemented"

    .line 98
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dataManagementIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    return-object v0
.end method

.method public dataManagementLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 135
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 136
    const-string/jumbo v1, "Transport dataManagementLabel() not implemented"

    .line 135
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public finishBackup()I
    .locals 1

    .prologue
    .line 202
    const/16 v0, -0x3e8

    return v0
.end method

.method public finishRestore()V
    .locals 2

    .prologue
    .line 340
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 341
    const-string/jumbo v1, "Transport finishRestore() not implemented"

    .line 340
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAvailableRestoreSets()[Landroid/app/backup/RestoreSet;
    .locals 1

    .prologue
    .line 259
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Landroid/app/backup/BackupTransport;->mBinderImpl:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v0}, Lcom/android/internal/backup/IBackupTransport;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentRestoreSet()J
    .locals 2

    .prologue
    .line 271
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getNextFullRestoreDataChunk(Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .param p1, "socket"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 502
    const/4 v0, 0x0

    return v0
.end method

.method public getRestoreData(Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .param p1, "outFd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 332
    const/16 v0, -0x3e8

    return v0
.end method

.method public initializeDevice()I
    .locals 1

    .prologue
    .line 178
    const/16 v0, -0x3e8

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Transport name() not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextRestorePackage()Landroid/app/backup/RestoreDescription;
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    return-object v0
.end method

.method public performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .param p1, "packageInfo"    # Landroid/content/pm/PackageInfo;
    .param p2, "inFd"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 246
    const/16 v0, -0x3e8

    return v0
.end method

.method public performFullBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I
    .locals 1
    .param p1, "targetPackage"    # Landroid/content/pm/PackageInfo;
    .param p2, "socket"    # Landroid/os/ParcelFileDescriptor;

    .prologue
    .line 401
    const/16 v0, -0x3ea

    return v0
.end method

.method public requestBackupTime()J
    .locals 2

    .prologue
    .line 220
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public requestFullBackupTime()J
    .locals 2

    .prologue
    .line 361
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public sendBackupData(I)I
    .locals 1
    .param p1, "numBytes"    # I

    .prologue
    .line 444
    const/16 v0, -0x3e8

    return v0
.end method

.method public startRestore(J[Landroid/content/pm/PackageInfo;)I
    .locals 1
    .param p1, "token"    # J
    .param p3, "packages"    # [Landroid/content/pm/PackageInfo;

    .prologue
    .line 288
    const/16 v0, -0x3e8

    return v0
.end method

.method public transportDirName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 153
    const-string/jumbo v1, "Transport transportDirName() not implemented"

    .line 152
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
