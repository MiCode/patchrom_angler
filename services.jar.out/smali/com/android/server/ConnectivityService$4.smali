.class Lcom/android/server/ConnectivityService$4;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    .prologue
    .line 3530
    iput-object p1, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v3, -0x2710

    .line 3533
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3534
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3535
    .local v1, "userId":I
    if-ne v1, v3, :cond_0

    return-void

    .line 3537
    :cond_0
    const-string/jumbo v2, "android.intent.action.USER_STARTING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 3538
    iget-object v2, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->-wrap20(Lcom/android/server/ConnectivityService;I)V

    .line 3532
    :cond_1
    :goto_0
    return-void

    .line 3539
    :cond_2
    const-string/jumbo v2, "android.intent.action.USER_STOPPING"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3540
    iget-object v2, p0, Lcom/android/server/ConnectivityService$4;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v2, v1}, Lcom/android/server/ConnectivityService;->-wrap21(Lcom/android/server/ConnectivityService;I)V

    goto :goto_0
.end method
