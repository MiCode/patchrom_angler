.class Lcom/android/server/wifi/RttService$RttServiceImpl$2;
.super Landroid/content/BroadcastReceiver;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl;->startService(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/RttService$RttServiceImpl;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$2;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 131
    const-string/jumbo v1, "scan_enabled"

    .line 130
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 132
    .local v0, "state":I
    const-string/jumbo v1, "RttService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SCAN_AVAILABLE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$2;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get3(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    move-result-object v1

    const v2, 0x27300

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(I)V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 135
    :cond_1
    if-ne v0, v4, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$2;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get3(Lcom/android/server/wifi/RttService$RttServiceImpl;)Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    move-result-object v1

    const v2, 0x27301

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(I)V

    goto :goto_0
.end method
