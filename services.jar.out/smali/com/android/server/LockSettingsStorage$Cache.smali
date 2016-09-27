.class Lcom/android/server/LockSettingsStorage$Cache;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Cache"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LockSettingsStorage$Cache$CacheKey;
    }
.end annotation


# instance fields
.field private final mCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/LockSettingsStorage$Cache$CacheKey;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mCacheKey:Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

.field private mVersion:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/LockSettingsStorage$Cache;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/LockSettingsStorage$Cache;->getVersion()I

    move-result v0

    return v0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 505
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    .line 506
    new-instance v0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;-><init>(Lcom/android/server/LockSettingsStorage$Cache$CacheKey;)V

    iput-object v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCacheKey:Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    .line 507
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I

    .line 504
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LockSettingsStorage$Cache;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/server/LockSettingsStorage$Cache;-><init>()V

    return-void
.end method

.method private declared-synchronized contains(ILjava/lang/String;I)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    monitor-enter p0

    .line 565
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCacheKey:Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->set(ILjava/lang/String;I)Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getVersion()I
    .locals 1

    .prologue
    monitor-enter p0

    .line 573
    :try_start_0
    iget v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized peek(ILjava/lang/String;I)Ljava/lang/Object;
    .locals 2
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    monitor-enter p0

    .line 569
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCacheKey:Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->set(ILjava/lang/String;I)Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized put(ILjava/lang/String;Ljava/lang/Object;I)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "userId"    # I

    .prologue
    monitor-enter p0

    .line 553
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;-><init>(Lcom/android/server/LockSettingsStorage$Cache$CacheKey;)V

    invoke-virtual {v1, p1, p2, p4}, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->set(ILjava/lang/String;I)Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    iget v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 551
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized putIfUnchanged(ILjava/lang/String;Ljava/lang/Object;II)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;
    .param p4, "userId"    # I
    .param p5, "version"    # I

    .prologue
    monitor-enter p0

    .line 559
    :try_start_0
    invoke-direct {p0, p1, p2, p4}, Lcom/android/server/LockSettingsStorage$Cache;->contains(ILjava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I

    if-ne v0, p5, :cond_0

    .line 560
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 558
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method declared-synchronized clear()V
    .locals 1

    .prologue
    monitor-enter p0

    .line 588
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 589
    iget v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 587
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method hasFile(Ljava/lang/String;)Z
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 531
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/LockSettingsStorage$Cache;->contains(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method hasKeyValue(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 515
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/LockSettingsStorage$Cache;->contains(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method isFetched(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 547
    const-string/jumbo v0, ""

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/LockSettingsStorage$Cache;->contains(ILjava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method peekFile(Ljava/lang/String;)[B
    .locals 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 527
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/LockSettingsStorage$Cache;->peek(ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method peekKeyValue(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 510
    const/4 v1, 0x0

    invoke-direct {p0, v1, p1, p3}, Lcom/android/server/LockSettingsStorage$Cache;->peek(ILjava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    .line 511
    .local v0, "cached":Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/LockSettingsStorage;->-get0()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .end local v0    # "cached":Ljava/lang/Object;
    .end local p2    # "defaultValue":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local v0    # "cached":Ljava/lang/Object;
    .restart local p2    # "defaultValue":Ljava/lang/String;
    :cond_0
    check-cast v0, Ljava/lang/String;

    move-object p2, v0

    goto :goto_0
.end method

.method putFile(Ljava/lang/String;[B)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 535
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 534
    return-void
.end method

.method putFileIfUnchanged(Ljava/lang/String;[BI)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B
    .param p3, "version"    # I

    .prologue
    .line 539
    const/4 v1, 0x1

    const/4 v4, -0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LockSettingsStorage$Cache;->putIfUnchanged(ILjava/lang/String;Ljava/lang/Object;II)V

    .line 538
    return-void
.end method

.method putKeyValue(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 519
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 518
    return-void
.end method

.method putKeyValueIfUnchanged(Ljava/lang/String;Ljava/lang/Object;II)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "userId"    # I
    .param p4, "version"    # I

    .prologue
    .line 523
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LockSettingsStorage$Cache;->putIfUnchanged(ILjava/lang/String;Ljava/lang/Object;II)V

    .line 522
    return-void
.end method

.method declared-synchronized removeUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    monitor-enter p0

    .line 577
    :try_start_0
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 578
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    iget v1, v1, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->userId:I

    if-ne v1, p1, :cond_0

    .line 579
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage$Cache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 577
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 584
    :cond_1
    iget v1, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/LockSettingsStorage$Cache;->mVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 576
    return-void

    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method setFetched(I)V
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 543
    const-string/jumbo v0, "isFetched"

    const-string/jumbo v1, "true"

    const/4 v2, 0x2

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/android/server/LockSettingsStorage$Cache;->put(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 542
    return-void
.end method
