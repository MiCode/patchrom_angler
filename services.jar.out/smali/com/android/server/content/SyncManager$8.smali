.class Lcom/android/server/content/SyncManager$8;
.super Ljava/lang/Object;
.source "SyncManager.java"

# interfaces
.implements Lcom/android/server/content/SyncStorageEngine$OnSyncRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/content/SyncManager;-><init>(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/content/SyncManager;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/content/SyncManager;

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/server/content/SyncManager$8;->this$0:Lcom/android/server/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSyncRequest(Lcom/android/server/content/SyncStorageEngine$EndPoint;ILandroid/os/Bundle;)V
    .locals 11
    .param p1, "info"    # Lcom/android/server/content/SyncStorageEngine$EndPoint;
    .param p2, "reason"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v6, 0x0

    .line 433
    iget-boolean v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_provider:Z

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/android/server/content/SyncManager$8;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    iget-object v4, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->provider:Ljava/lang/String;

    .line 437
    const/4 v10, 0x0

    move v3, p2

    move-object v5, p3

    move-wide v8, v6

    .line 434
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/accounts/Account;IILjava/lang/String;Landroid/os/Bundle;JJZ)V

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-boolean v0, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->target_service:Z

    if-eqz v0, :cond_0

    .line 439
    iget-object v1, p0, Lcom/android/server/content/SyncManager$8;->this$0:Lcom/android/server/content/SyncManager;

    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    iget v3, p1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    move v4, p2

    move-object v5, p3

    move-wide v8, v6

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/content/SyncManager;->scheduleSync(Landroid/content/ComponentName;IILandroid/os/Bundle;JJ)V

    goto :goto_0
.end method
