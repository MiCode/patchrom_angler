.class Lcom/android/server/LockSettingsStorage;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsStorage$CredentialHash;,
        Lcom/android/server/LockSettingsStorage$Callback;,
        Lcom/android/server/LockSettingsStorage$DatabaseHelper;,
        Lcom/android/server/LockSettingsStorage$Cache;
    }
.end annotation


# static fields
.field private static final BASE_ZERO_LOCK_PATTERN_FILE:Ljava/lang/String; = "gatekeeper.gesture.key"

.field private static final COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

.field private static final COLUMNS_FOR_QUERY:[Ljava/lang/String;

.field private static final COLUMN_KEY:Ljava/lang/String; = "name"

.field private static final COLUMN_USERID:Ljava/lang/String; = "user"

.field private static final COLUMN_VALUE:Ljava/lang/String; = "value"

.field private static final DEFAULT:Ljava/lang/Object;

.field private static final LEGACY_LOCK_PASSWORD_FILE:Ljava/lang/String; = "password.key"

.field private static final LEGACY_LOCK_PATTERN_FILE:Ljava/lang/String; = "gesture.key"

.field private static final LOCK_PASSWORD_FILE:Ljava/lang/String; = "gatekeeper.password.key"

.field private static final LOCK_PATTERN_FILE:Ljava/lang/String; = "gatekeeper.pattern.key"

.field private static final SYSTEM_DIRECTORY:Ljava/lang/String; = "/system/"

.field private static final TABLE:Ljava/lang/String; = "locksettings"

.field private static final TAG:Ljava/lang/String; = "LockSettingsStorage"


# instance fields
.field private final mCache:Lcom/android/server/LockSettingsStorage$Cache;

.field private final mContext:Landroid/content/Context;

.field private final mFileWriteLock:Ljava/lang/Object;

.field private final mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

.field private mStoredCredentialType:I


# direct methods
.method static synthetic -get0()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 51
    new-array v0, v3, [Ljava/lang/String;

    .line 52
    const-string/jumbo v1, "value"

    aput-object v1, v0, v2

    .line 51
    sput-object v0, Lcom/android/server/LockSettingsStorage;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 55
    const-string/jumbo v1, "name"

    aput-object v1, v0, v2

    const-string/jumbo v1, "value"

    aput-object v1, v0, v3

    .line 54
    sput-object v0, Lcom/android/server/LockSettingsStorage;->COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/LockSettingsStorage$Callback;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Lcom/android/server/LockSettingsStorage$Cache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsStorage$Cache;-><init>(Lcom/android/server/LockSettingsStorage$Cache;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    .line 100
    iput-object p1, p0, Lcom/android/server/LockSettingsStorage;->mContext:Landroid/content/Context;

    .line 101
    new-instance v0, Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;-><init>(Lcom/android/server/LockSettingsStorage;Landroid/content/Context;Lcom/android/server/LockSettingsStorage$Callback;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsStorage;->mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    .line 99
    return-void
.end method

.method private clearPasswordHash(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 348
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    .line 347
    return-void
.end method

.method private clearPatternHash(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 336
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    .line 335
    return-void
.end method

.method private deleteFile(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 321
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 320
    :cond_0
    return-void
.end method

.method private getBaseZeroLockPatternFilename(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 372
    const-string/jumbo v0, "gatekeeper.gesture.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I
    .param p2, "basename"    # Ljava/lang/String;

    .prologue
    .line 376
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStorage;->getUserParentOrSelfId(I)I

    move-result p1

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 379
    const-string/jumbo v2, "/system/"

    .line 378
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "dataSystemDirectory":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 384
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-static {p1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getUserParentOrSelfId(I)I
    .locals 4
    .param p1, "userId"    # I

    .prologue
    .line 389
    if-eqz p1, :cond_0

    .line 390
    iget-object v2, p0, Lcom/android/server/LockSettingsStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    .line 391
    .local v1, "um":Landroid/os/UserManager;
    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 392
    .local v0, "pi":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    .line 393
    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    return v2

    .line 396
    .end local v0    # "pi":Landroid/content/pm/UserInfo;
    .end local v1    # "um":Landroid/os/UserManager;
    :cond_0
    return p1
.end method

.method private hasFile(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 257
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 258
    .local v0, "contents":[B
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private readFile(Ljava/lang/String;)[B
    .locals 9
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 263
    iget-object v6, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    monitor-enter v6

    .line 264
    :try_start_0
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v5, p1}, Lcom/android/server/LockSettingsStorage$Cache;->hasFile(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 265
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v5, p1}, Lcom/android/server/LockSettingsStorage$Cache;->peekFile(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    monitor-exit v6

    return-object v5

    .line 267
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-static {v5}, Lcom/android/server/LockSettingsStorage$Cache;->-wrap0(Lcom/android/server/LockSettingsStorage$Cache;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .local v4, "version":I
    monitor-exit v6

    .line 270
    const/4 v1, 0x0

    .line 271
    .local v1, "raf":Ljava/io/RandomAccessFile;
    const/4 v3, 0x0

    .line 273
    .local v3, "stored":[B
    :try_start_2
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v2, p1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 274
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .local v2, "raf":Ljava/io/RandomAccessFile;
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v6

    long-to-int v5, v6

    new-array v3, v5, [B

    .line 275
    .local v3, "stored":[B
    array-length v5, v3

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6, v5}, Ljava/io/RandomAccessFile;->readFully([BII)V

    .line 276
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 280
    if-eqz v2, :cond_1

    .line 282
    :try_start_4
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    :goto_0
    move-object v1, v2

    .line 288
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .end local v3    # "stored":[B
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v5, p1, v3, v4}, Lcom/android/server/LockSettingsStorage$Cache;->putFileIfUnchanged(Ljava/lang/String;[BI)V

    .line 289
    return-object v3

    .line 263
    .end local v4    # "version":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 283
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v3    # "stored":[B
    .restart local v4    # "version":I
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v5, "LockSettingsStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error closing file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 277
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    .local v3, "stored":[B
    :catch_1
    move-exception v0

    .line 278
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .end local v3    # "stored":[B
    .restart local v0    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string/jumbo v5, "LockSettingsStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Cannot read file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 280
    if-eqz v1, :cond_2

    .line 282
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 283
    :catch_2
    move-exception v0

    .line 284
    const-string/jumbo v5, "LockSettingsStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error closing file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 279
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v5

    .line 280
    :goto_3
    if-eqz v1, :cond_3

    .line 282
    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 279
    :cond_3
    :goto_4
    throw v5

    .line 283
    :catch_3
    move-exception v0

    .line 284
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "LockSettingsStorage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error closing file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 279
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v5

    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v1, "raf":Ljava/io/RandomAccessFile;
    goto :goto_3

    .line 277
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_2
.end method

.method private writeFile(Ljava/lang/String;[B)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hash"    # [B

    .prologue
    .line 293
    iget-object v4, p0, Lcom/android/server/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v4

    .line 294
    const/4 v1, 0x0

    .line 297
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string/jumbo v3, "rw"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 299
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    .local v2, "raf":Ljava/io/RandomAccessFile;
    if-eqz p2, :cond_0

    :try_start_1
    array-length v3, p2

    if-nez v3, :cond_3

    .line 300
    :cond_0
    const-wide/16 v6, 0x0

    invoke-virtual {v2, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 304
    :goto_0
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 308
    if-eqz v2, :cond_1

    .line 310
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    :goto_1
    move-object v1, v2

    .line 316
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_2
    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v4

    .line 292
    return-void

    .line 302
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :cond_3
    :try_start_4
    array-length v3, p2

    const/4 v5, 0x0

    invoke-virtual {v2, p2, v5, v3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    .line 305
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 306
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    :goto_3
    :try_start_5
    const-string/jumbo v3, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error writing to file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 308
    if-eqz v1, :cond_2

    .line 310
    :try_start_6
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 311
    :catch_1
    move-exception v0

    .line 312
    :try_start_7
    const-string/jumbo v3, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 293
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_4
    monitor-exit v4

    throw v3

    .line 311
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v0

    .line 312
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_8
    const-string/jumbo v3, "LockSettingsStorage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error closing file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_1

    .line 293
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .local v1, "raf":Ljava/io/RandomAccessFile;
    goto :goto_4

    .line 307
    .end local v1    # "raf":Ljava/io/RandomAccessFile;
    :catchall_2
    move-exception v3

    .line 308
    :goto_5
    if-eqz v1, :cond_4

    .line 310
    :try_start_9
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 307
    :cond_4
    :goto_6
    :try_start_a
    throw v3

    .line 311
    :catch_3
    move-exception v0

    .line 312
    .restart local v0    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "LockSettingsStorage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error closing file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_6

    .line 307
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    :catchall_3
    move-exception v3

    move-object v1, v2

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .restart local v1    # "raf":Ljava/io/RandomAccessFile;
    goto :goto_5

    .line 305
    .local v1, "raf":Ljava/io/RandomAccessFile;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto/16 :goto_3
.end method


# virtual methods
.method clearCache()V
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsStorage$Cache;->clear()V

    .line 439
    return-void
.end method

.method closeDatabase()V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage;->mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->close()V

    .line 434
    return-void
.end method

.method getLegacyLockPasswordFilename(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 368
    const-string/jumbo v0, "password.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLegacyLockPatternFilename(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 363
    const-string/jumbo v0, "gesture.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLockPasswordFilename(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 358
    const-string/jumbo v0, "gatekeeper.password.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getLockPatternFilename(I)Ljava/lang/String;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 353
    const-string/jumbo v0, "gatekeeper.pattern.key"

    invoke-direct {p0, p1, v0}, Lcom/android/server/LockSettingsStorage;->getLockCredentialFilePathForUser(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStoredCredentialType(I)I
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 182
    iget v2, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:I

    if-eqz v2, :cond_0

    .line 183
    iget v2, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:I

    return v2

    .line 186
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v1

    .line 187
    .local v1, "pattern":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-nez v1, :cond_2

    .line 188
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 189
    iput v4, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:I

    .line 207
    :goto_0
    iget v2, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:I

    return v2

    .line 191
    :cond_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:I

    goto :goto_0

    .line 194
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    move-result-object v0

    .line 195
    .local v0, "password":Lcom/android/server/LockSettingsStorage$CredentialHash;
    if-eqz v0, :cond_4

    .line 197
    iget v2, v0, Lcom/android/server/LockSettingsStorage$CredentialHash;->version:I

    if-ne v2, v3, :cond_3

    .line 198
    iput v4, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:I

    goto :goto_0

    .line 200
    :cond_3
    iput v3, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:I

    goto :goto_0

    .line 203
    :cond_4
    iput v3, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:I

    goto :goto_0
.end method

.method public hasPassword(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 246
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLegacyLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    .line 246
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hasPattern(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStorage;->getBaseZeroLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    .line 251
    if-nez v0, :cond_0

    .line 253
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLegacyLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/LockSettingsStorage;->hasFile(Ljava/lang/String;)Z

    move-result v0

    .line 251
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public prefetchUser(I)V
    .locals 14
    .param p1, "userId"    # I

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/4 v5, 0x0

    .line 154
    iget-object v2, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    monitor-enter v2

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/LockSettingsStorage$Cache;->isFetched(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v2

    .line 156
    return-void

    .line 158
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1}, Lcom/android/server/LockSettingsStorage$Cache;->setFetched(I)V

    .line 159
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-static {v1}, Lcom/android/server/LockSettingsStorage$Cache;->-wrap0(Lcom/android/server/LockSettingsStorage$Cache;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v11

    .local v11, "version":I
    monitor-exit v2

    .line 163
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 164
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "locksettings"

    sget-object v2, Lcom/android/server/LockSettingsStorage;->COLUMNS_FOR_PREFETCH:[Ljava/lang/String;

    .line 165
    const-string/jumbo v3, "user=?"

    .line 166
    new-array v4, v13, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v12

    move-object v6, v5

    move-object v7, v5

    .line 164
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 168
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    invoke-interface {v8, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 170
    .local v9, "key":Ljava/lang/String;
    invoke-interface {v8, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 171
    .local v10, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v1, v9, v10, p1, v11}, Lcom/android/server/LockSettingsStorage$Cache;->putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V

    goto :goto_0

    .line 154
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v9    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    .end local v11    # "version":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 173
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "version":I
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    .line 178
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;

    .line 152
    return-void
.end method

.method public readKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 12
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 129
    iget-object v2, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    monitor-enter v2

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1, p3}, Lcom/android/server/LockSettingsStorage$Cache;->hasKeyValue(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/LockSettingsStorage$Cache;->peekKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 133
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-static {v1}, Lcom/android/server/LockSettingsStorage$Cache;->-wrap0(Lcom/android/server/LockSettingsStorage$Cache;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    .local v10, "version":I
    monitor-exit v2

    .line 137
    sget-object v9, Lcom/android/server/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    .line 138
    .local v9, "result":Ljava/lang/Object;
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 139
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string/jumbo v1, "locksettings"

    sget-object v2, Lcom/android/server/LockSettingsStorage;->COLUMNS_FOR_QUERY:[Ljava/lang/String;

    .line 140
    const-string/jumbo v3, "user=? AND name=?"

    .line 141
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    const/4 v6, 0x1

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    .line 139
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 143
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 146
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v1, p1, v9, p3, v10}, Lcom/android/server/LockSettingsStorage$Cache;->putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V

    .line 149
    sget-object v1, Lcom/android/server/LockSettingsStorage;->DEFAULT:Ljava/lang/Object;

    if-ne v9, v1, :cond_3

    .end local v9    # "result":Ljava/lang/Object;
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 129
    .end local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v8    # "cursor":Landroid/database/Cursor;
    .end local v10    # "version":I
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 149
    .restart local v0    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .restart local v8    # "cursor":Landroid/database/Cursor;
    .restart local v9    # "result":Ljava/lang/Object;
    .restart local v10    # "version":I
    :cond_3
    check-cast v9, Ljava/lang/String;

    move-object p2, v9

    goto :goto_0
.end method

.method public readPasswordHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 213
    .local v0, "stored":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 214
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>(Lcom/android/server/LockSettingsStorage;[BI)V

    return-object v1

    .line 217
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLegacyLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 218
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 219
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>(Lcom/android/server/LockSettingsStorage;[BI)V

    return-object v1

    .line 222
    :cond_1
    return-object v3
.end method

.method public readPatternHash(I)Lcom/android/server/LockSettingsStorage$CredentialHash;
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 226
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 227
    .local v0, "stored":[B
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 228
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    invoke-direct {v1, p0, v0, v4}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>(Lcom/android/server/LockSettingsStorage;[BI)V

    return-object v1

    .line 231
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/LockSettingsStorage;->getBaseZeroLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 232
    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    .line 233
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    invoke-direct {v1, p0, v0, v4}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>(Lcom/android/server/LockSettingsStorage;[BZ)V

    return-object v1

    .line 236
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLegacyLockPatternFilename(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/LockSettingsStorage;->readFile(Ljava/lang/String;)[B

    move-result-object v0

    .line 237
    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    .line 238
    new-instance v1, Lcom/android/server/LockSettingsStorage$CredentialHash;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/LockSettingsStorage$CredentialHash;-><init>(Lcom/android/server/LockSettingsStorage;[BI)V

    return-object v1

    .line 241
    :cond_2
    return-object v3
.end method

.method public removeUser(I)V
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 400
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v5}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 402
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 403
    .local v4, "um":Landroid/os/UserManager;
    invoke-virtual {v4, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 405
    .local v3, "parentInfo":Landroid/content/pm/UserInfo;
    if-nez v3, :cond_2

    .line 407
    iget-object v6, p0, Lcom/android/server/LockSettingsStorage;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v6

    .line 408
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v2

    .line 409
    .local v2, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 410
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 411
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 412
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7}, Lcom/android/server/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V

    .line 414
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v2

    .line 415
    new-instance v1, Ljava/io/File;

    .end local v1    # "file":Ljava/io/File;
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 416
    .restart local v1    # "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 417
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 418
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    const/4 v7, 0x0

    invoke-virtual {v5, v2, v7}, Lcom/android/server/LockSettingsStorage$Cache;->putFile(Ljava/lang/String;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v6

    .line 424
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 425
    const-string/jumbo v5, "locksettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "user=\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 426
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 427
    iget-object v5, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v5, p1}, Lcom/android/server/LockSettingsStorage$Cache;->removeUser(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 429
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 399
    return-void

    .line 407
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 428
    :catchall_1
    move-exception v5

    .line 429
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 428
    throw v5
.end method

.method public writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    .line 109
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 110
    .local v0, "cv":Landroid/content/ContentValues;
    const-string/jumbo v1, "name"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string/jumbo v1, "user"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 112
    const-string/jumbo v1, "value"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 116
    :try_start_0
    const-string/jumbo v1, "locksettings"

    const-string/jumbo v2, "name=? AND user=?"

    .line 117
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 116
    invoke-virtual {p1, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 118
    const-string/jumbo v1, "locksettings"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 119
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 120
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage;->mCache:Lcom/android/server/LockSettingsStorage$Cache;

    invoke-virtual {v1, p2, p3, p4}, Lcom/android/server/LockSettingsStorage$Cache;->putKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 108
    return-void

    .line 121
    :catchall_0
    move-exception v1

    .line 122
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 121
    throw v1
.end method

.method public writeKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage;->mOpenHelper:Lcom/android/server/LockSettingsStorage$DatabaseHelper;

    invoke-virtual {v0}, Lcom/android/server/LockSettingsStorage$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/LockSettingsStorage;->writeKeyValue(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    return-void
.end method

.method public writePasswordHash([BI)V
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 340
    if-nez p1, :cond_0

    .line 341
    const/4 v0, -0x1

    .line 340
    :goto_0
    iput v0, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:I

    .line 343
    invoke-virtual {p0, p2}, Lcom/android/server/LockSettingsStorage;->getLockPasswordFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    .line 344
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsStorage;->clearPatternHash(I)V

    .line 339
    return-void

    .line 342
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public writePatternHash([BI)V
    .locals 1
    .param p1, "hash"    # [B
    .param p2, "userId"    # I

    .prologue
    .line 328
    if-nez p1, :cond_0

    .line 329
    const/4 v0, -0x1

    .line 328
    :goto_0
    iput v0, p0, Lcom/android/server/LockSettingsStorage;->mStoredCredentialType:I

    .line 331
    invoke-virtual {p0, p2}, Lcom/android/server/LockSettingsStorage;->getLockPatternFilename(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/LockSettingsStorage;->writeFile(Ljava/lang/String;[B)V

    .line 332
    invoke-direct {p0, p2}, Lcom/android/server/LockSettingsStorage;->clearPasswordHash(I)V

    .line 327
    return-void

    .line 330
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
