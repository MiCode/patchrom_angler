.class Lcom/android/server/wifi/WifiServiceImpl$LockList;
.super Ljava/lang/Object;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LockList"
.end annotation


# instance fields
.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiServiceImpl$WifiLock;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiServiceImpl$LockList;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiServiceImpl$LockList;Landroid/os/IBinder;)Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiServiceImpl$LockList;Landroid/os/IBinder;)I
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/server/wifi/WifiServiceImpl$LockList;Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V
    .locals 0
    .param p1, "lock"    # Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->addLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/wifi/WifiServiceImpl$LockList;Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 1551
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1552
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    .line 1551
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/server/wifi/WifiServiceImpl$LockList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;-><init>(Lcom/android/server/wifi/WifiServiceImpl;)V

    return-void
.end method

.method private addLock(Lcom/android/server/wifi/WifiServiceImpl$WifiLock;)V
    .locals 1
    .param p1, "lock"    # Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    .prologue
    .line 1582
    iget-object v0, p1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mBinder:Landroid/os/IBinder;

    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1583
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1581
    :cond_0
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1608
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    .line 1609
    .local v0, "l":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    const-string/jumbo v2, "    "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1610
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_0

    .line 1607
    .end local v0    # "l":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    :cond_0
    return-void
.end method

.method private findLockByBinder(Landroid/os/IBinder;)I
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1599
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1600
    .local v1, "size":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 1601
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    iget-object v2, v2, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mBinder:Landroid/os/IBinder;

    if-ne v2, p1, :cond_0

    .line 1602
    return v0

    .line 1600
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1604
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private removeLock(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    .locals 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 1588
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiServiceImpl$LockList;->findLockByBinder(Landroid/os/IBinder;)I

    move-result v0

    .line 1589
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 1590
    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    .line 1591
    .local v1, "ret":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    invoke-virtual {v1}, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->unlinkDeathRecipient()V

    .line 1592
    return-object v1

    .line 1594
    .end local v1    # "ret":Lcom/android/server/wifi/WifiServiceImpl$WifiLock;
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method


# virtual methods
.method declared-synchronized getStrongestLockMode()I
    .locals 3

    .prologue
    const/4 v2, 0x1

    monitor-enter p0

    .line 1560
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit p0

    .line 1561
    return v2

    .line 1564
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->-get1(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get2(Lcom/android/server/wifi/WifiServiceImpl;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-le v0, v1, :cond_1

    .line 1565
    const/4 v0, 0x3

    monitor-exit p0

    return v0

    .line 1568
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/WifiServiceImpl;->-get3(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get4(Lcom/android/server/wifi/WifiServiceImpl;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    if-le v0, v1, :cond_2

    monitor-exit p0

    .line 1569
    return v2

    .line 1572
    :cond_2
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized hasLocks()Z
    .locals 1

    .prologue
    monitor-enter p0

    .line 1556
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized updateWorkSource(Landroid/os/WorkSource;)V
    .locals 2
    .param p1, "ws"    # Landroid/os/WorkSource;

    .prologue
    monitor-enter p0

    .line 1576
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1577
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$LockList;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl;->mLocks:Lcom/android/server/wifi/WifiServiceImpl$LockList;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl$LockList;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1576
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    .line 1575
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
