.class Lcom/android/server/audio/AudioService$ForceControlStreamClient;
.super Ljava/lang/Object;
.source "AudioService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForceControlStreamClient"
.end annotation


# instance fields
.field private mCb:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1472
    iput-object p1, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1473
    if-eqz p2, :cond_0

    .line 1475
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1482
    .end local p2    # "cb":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iput-object p2, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    .line 1472
    return-void

    .line 1476
    .restart local p2    # "cb":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 1478
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ForceControlStreamClient() could not link to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " binder death"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    const/4 p2, 0x0

    .local p2, "cb":Landroid/os/IBinder;
    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get20(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1487
    :try_start_0
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v2, "SCO client died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1488
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v0}, Lcom/android/server/audio/AudioService;->-get19(Lcom/android/server/audio/AudioService;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 1489
    const-string/jumbo v0, "AudioService"

    const-string/jumbo v2, "unregistered control stream client died"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    .line 1485
    return-void

    .line 1491
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->-set6(Lcom/android/server/audio/AudioService;Lcom/android/server/audio/AudioService$ForceControlStreamClient;)Lcom/android/server/audio/AudioService$ForceControlStreamClient;

    .line 1492
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->this$0:Lcom/android/server/audio/AudioService;

    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/android/server/audio/AudioService;->-set15(Lcom/android/server/audio/AudioService;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1486
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1498
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1500
    iput-object v2, p0, Lcom/android/server/audio/AudioService$ForceControlStreamClient;->mCb:Landroid/os/IBinder;

    .line 1497
    :cond_0
    return-void
.end method
