.class Lcom/android/server/pm/PackageManagerService$21;
.super Landroid/content/IIntentReceiver$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->unloadMediaPackages(Landroid/util/ArrayMap;[IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$keys:Ljava/util/Set;

.field final synthetic val$reportStatus:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ZLjava/util/Set;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$reportStatus"    # Z

    .prologue
    .line 15756
    .local p3, "val$keys":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/pm/PackageManagerService$AsecInstallArgs;>;"
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$21;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$21;->val$reportStatus:Z

    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$21;->val$keys:Ljava/util/Set;

    invoke-direct {p0}, Landroid/content/IIntentReceiver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resultCode"    # I
    .param p3, "data"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "ordered"    # Z
    .param p6, "sticky"    # Z
    .param p7, "sendingUser"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 15760
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$21;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    .line 15761
    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$21;->val$reportStatus:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/PackageManagerService$21;->val$keys:Ljava/util/Set;

    .line 15760
    const/16 v5, 0xc

    invoke-virtual {v3, v5, v1, v2, v4}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 15762
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$21;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mHandler:Lcom/android/server/pm/PackageManagerService$PackageHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/PackageManagerService$PackageHandler;->sendMessage(Landroid/os/Message;)Z

    .line 15759
    return-void

    .line 15761
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
