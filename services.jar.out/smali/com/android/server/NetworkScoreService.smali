.class public Lcom/android/server/NetworkScoreService;
.super Landroid/net/INetworkScoreService$Stub;
.source "NetworkScoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "NetworkScoreService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mReceiver:Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mReceiverLock"
    .end annotation
.end field

.field private mReceiverLock:Ljava/lang/Object;

.field private final mScoreCaches:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/net/INetworkScoreCache;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/NetworkScoreService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/NetworkScoreService;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/NetworkScoreService;->setScorerInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/net/INetworkScoreService$Stub;-><init>()V

    .line 64
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mReceiverLock:Ljava/lang/Object;

    .line 93
    iput-object p1, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    .line 92
    return-void
.end method

.method private clearInternal()V
    .locals 6

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->getScoreCaches()Ljava/util/Set;

    move-result-object v0

    .line 254
    .local v0, "cachesToClear":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/INetworkScoreCache;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "scoreCache$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkScoreCache;

    .line 256
    .local v2, "scoreCache":Landroid/net/INetworkScoreCache;
    :try_start_0
    invoke-interface {v2}, Landroid/net/INetworkScoreCache;->clearScores()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "NetworkScoreService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 259
    const-string/jumbo v4, "NetworkScoreService"

    const-string/jumbo v5, "Unable to clear scores"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 251
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "scoreCache":Landroid/net/INetworkScoreCache;
    :cond_1
    return-void
.end method

.method private getScoreCaches()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/net/INetworkScoreCache;",
            ">;"
        }
    .end annotation

    .prologue
    .line 307
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v1

    .line 308
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 307
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private registerPackageReceiverIfNeeded()V
    .locals 8

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v6

    .line 116
    .local v6, "scorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    iget-object v7, p0, Lcom/android/server/NetworkScoreService;->mReceiverLock:Ljava/lang/Object;

    monitor-enter v7

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mReceiver:Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;

    if-eqz v0, :cond_1

    .line 119
    const-string/jumbo v0, "NetworkScoreService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string/jumbo v0, "NetworkScoreService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unregistering receiver for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mReceiver:Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;

    iget-object v2, v2, Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;->mRegisteredPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mReceiver:Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mReceiver:Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;

    .line 127
    :cond_1
    if-eqz v6, :cond_2

    .line 128
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 129
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v0, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    const-string/jumbo v0, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 133
    iget-object v0, v6, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    .line 134
    const/4 v1, 0x0

    .line 133
    invoke-virtual {v3, v0, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 135
    new-instance v0, Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;

    iget-object v1, v6, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;-><init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/NetworkScoreService;->mReceiver:Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;

    .line 137
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mReceiver:Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 138
    const-string/jumbo v0, "NetworkScoreService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    const-string/jumbo v0, "NetworkScoreService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Registered receiver for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v6, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v3    # "filter":Landroid/content/IntentFilter;
    :cond_2
    monitor-exit v7

    .line 114
    return-void

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
.end method

.method private setScorerInternal(Ljava/lang/String;)Z
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 231
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 236
    .local v2, "token":J
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->clearInternal()V

    .line 237
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-static {v4, p1}, Landroid/net/NetworkScorerAppManager;->setActiveScorer(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 238
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->registerPackageReceiverIfNeeded()V

    .line 240
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v4, "android.net.scoring.SCORER_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 241
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "newScorer"

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 244
    return v1

    .line 245
    .end local v1    # "result":Z
    :catchall_0
    move-exception v4

    .line 246
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 245
    throw v4
.end method


# virtual methods
.method public clearScores()Z
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/NetworkScorerAppManager;->isCallerActiveScorer(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BROADCAST_NETWORK_PRIVILEGED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->clearInternal()V

    .line 190
    const/4 v0, 0x1

    return v0

    .line 192
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    .line 193
    const-string/jumbo v1, "Caller is neither the active scorer nor the scorer manager."

    .line 192
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableScoring()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/NetworkScorerAppManager;->isCallerActiveScorer(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BROADCAST_NETWORK_PRIVILEGED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 222
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/NetworkScoreService;->setScorerInternal(Ljava/lang/String;)Z

    .line 213
    return-void

    .line 224
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    .line 225
    const-string/jumbo v1, "Caller is neither the active scorer nor the scorer manager."

    .line 224
    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 279
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "android.permission.DUMP"

    const-string/jumbo v6, "NetworkScoreService"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    iget-object v4, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v0

    .line 281
    .local v0, "currentScorer":Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;
    if-nez v0, :cond_0

    .line 282
    const-string/jumbo v4, "Scoring is disabled."

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 283
    return-void

    .line 285
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Current scorer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 288
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->getScoreCaches()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "scoreCache$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/INetworkScoreCache;

    .line 290
    .local v2, "scoreCache":Landroid/net/INetworkScoreCache;
    :try_start_0
    invoke-interface {v2}, Landroid/net/INetworkScoreCache;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {v4, p1, p3}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v1

    .line 292
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "Unable to dump score cache"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    const-string/jumbo v4, "NetworkScoreService"

    const/4 v5, 0x2

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 294
    const-string/jumbo v4, "NetworkScoreService"

    const-string/jumbo v5, "Unable to dump score cache"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 278
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "scoreCache":Landroid/net/INetworkScoreCache;
    :cond_2
    return-void
.end method

.method public registerNetworkScoreCache(ILandroid/net/INetworkScoreCache;)V
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "scoreCache"    # Landroid/net/INetworkScoreCache;

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.BROADCAST_NETWORK_PRIVILEGED"

    const-string/jumbo v2, "NetworkScoreService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    monitor-enter v1

    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Score cache already registered for type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 273
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    .line 266
    return-void
.end method

.method public setActiveScorer(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "android.permission.SCORE_NETWORKS"

    const-string/jumbo v2, "NetworkScoreService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-direct {p0, p1}, Lcom/android/server/NetworkScoreService;->setScorerInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method systemReady()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 100
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v2, "network_scoring_provisioned"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 103
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 104
    const v3, 0x104004a

    .line 103
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "defaultPackage":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Landroid/net/NetworkScorerAppManager;->setActiveScorer(Landroid/content/Context;Ljava/lang/String;)Z

    .line 108
    :cond_0
    const-string/jumbo v2, "network_scoring_provisioned"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    .end local v1    # "defaultPackage":Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/NetworkScoreService;->registerPackageReceiverIfNeeded()V

    .line 98
    return-void
.end method

.method public updateScores([Landroid/net/ScoredNetwork;)Z
    .locals 11
    .param p1, "networks"    # [Landroid/net/ScoredNetwork;

    .prologue
    const/4 v10, 0x2

    .line 147
    iget-object v7, p0, Lcom/android/server/NetworkScoreService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v8

    invoke-static {v7, v8}, Landroid/net/NetworkScorerAppManager;->isCallerActiveScorer(Landroid/content/Context;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 148
    new-instance v7, Ljava/lang/SecurityException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Caller with UID "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lcom/android/server/NetworkScoreService;->getCallingUid()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 149
    const-string/jumbo v9, " is not the active scorer."

    .line 148
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 153
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 154
    .local v5, "networksByType":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    const/4 v7, 0x0

    array-length v8, p1

    :goto_0
    if-ge v7, v8, :cond_2

    aget-object v3, p1, v7

    .line 155
    .local v3, "network":Landroid/net/ScoredNetwork;
    iget-object v9, v3, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget v9, v9, Landroid/net/NetworkKey;->type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 156
    .local v4, "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    if-nez v4, :cond_1

    .line 157
    new-instance v4, Ljava/util/ArrayList;

    .end local v4    # "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .restart local v4    # "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    iget-object v9, v3, Landroid/net/ScoredNetwork;->networkKey:Landroid/net/NetworkKey;

    iget v9, v9, Landroid/net/NetworkKey;->type:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_1
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 164
    .end local v3    # "network":Landroid/net/ScoredNetwork;
    .end local v4    # "networkList":Ljava/util/List;, "Ljava/util/List<Landroid/net/ScoredNetwork;>;"
    :cond_2
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "entry$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 165
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    iget-object v7, p0, Lcom/android/server/NetworkScoreService;->mScoreCaches:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/INetworkScoreCache;

    .line 166
    .local v6, "scoreCache":Landroid/net/INetworkScoreCache;
    if-eqz v6, :cond_4

    .line 168
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v6, v7}, Landroid/net/INetworkScoreCache;->updateScores(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "NetworkScoreService"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 171
    const-string/jumbo v7, "NetworkScoreService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Unable to update scores of type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 174
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string/jumbo v7, "NetworkScoreService"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 175
    const-string/jumbo v7, "NetworkScoreService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No scorer registered for type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", discarding"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 179
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/util/List<Landroid/net/ScoredNetwork;>;>;"
    .end local v6    # "scoreCache":Landroid/net/INetworkScoreCache;
    :cond_5
    const/4 v7, 0x1

    return v7
.end method
