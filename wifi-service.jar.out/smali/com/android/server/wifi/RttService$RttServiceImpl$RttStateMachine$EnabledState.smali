.class Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;
.super Lcom/android/internal/util/State;
.source "RttService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnabledState"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v7, -0x4

    .line 275
    const-string/jumbo v4, "RttService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "EnabledState got"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v4}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get0(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/HashMap;

    move-result-object v4

    iget-object v5, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    .line 278
    .local v0, "ci":Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 325
    const/4 v4, 0x0

    return v4

    .line 280
    :sswitch_0
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mDefaultState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$DefaultState;

    invoke-static {v4, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-wrap1(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/internal/util/IState;)V

    .line 327
    :cond_0
    :goto_0
    const/4 v4, 0x1

    return v4

    .line 283
    :sswitch_1
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    invoke-static {v4, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-wrap0(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Landroid/os/Message;)V

    .line 284
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->mRequestPendingState:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$RequestPendingState;

    invoke-static {v4, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->-wrap1(Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 288
    :sswitch_2
    const-string/jumbo v4, "RttService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UID is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-virtual {v4, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl;->enforcePermissionCheck(Landroid/os/Message;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 290
    const-string/jumbo v4, "RttService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UID: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->sendingUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " has no"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 291
    const-string/jumbo v6, " LOCATION_HARDWARE Permission"

    .line 290
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 296
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/RttManager$ParcelableRttParams;

    .line 297
    .local v2, "params":Landroid/net/wifi/RttManager$ParcelableRttParams;
    if-nez v2, :cond_2

    .line 298
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    .line 299
    const-string/jumbo v5, "No params"

    .line 298
    invoke-virtual {v4, p1, v7, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_0

    .line 300
    :cond_2
    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v4, v2}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->addRttRequest(ILandroid/net/wifi/RttManager$ParcelableRttParams;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 301
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    .line 302
    const-string/jumbo v5, "Unspecified"

    .line 301
    invoke-virtual {v4, p1, v7, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl;->replyFailed(Landroid/os/Message;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 304
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    const v5, 0x27302

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 309
    .end local v2    # "params":Landroid/net/wifi/RttManager$ParcelableRttParams;
    :sswitch_3
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-virtual {v4, p1}, Lcom/android/server/wifi/RttService$RttServiceImpl;->enforcePermissionCheck(Landroid/os/Message;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 313
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v4}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get2(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 314
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    .line 313
    if-eqz v4, :cond_0

    .line 315
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;

    .line 316
    .local v3, "request":Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;
    iget-object v4, v3, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p1, Landroid/os/Message;->arg2:I

    if-ne v4, v5, :cond_4

    .line 317
    const-string/jumbo v4, "RttService"

    const-string/jumbo v5, "Cancelling not-yet-scheduled RTT"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v4, p0, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine$EnabledState;->this$2:Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/RttService$RttServiceImpl$RttStateMachine;->this$1:Lcom/android/server/wifi/RttService$RttServiceImpl;

    invoke-static {v4}, Lcom/android/server/wifi/RttService$RttServiceImpl;->-get2(Lcom/android/server/wifi/RttService$RttServiceImpl;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 319
    iget-object v4, v3, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->ci:Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;

    iget-object v5, v3, Lcom/android/server/wifi/RttService$RttServiceImpl$RttRequest;->key:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/RttService$RttServiceImpl$ClientInfo;->reportAborted(I)V

    goto/16 :goto_0

    .line 278
    nop

    :sswitch_data_0
    .sparse-switch
        0x27200 -> :sswitch_2
        0x27201 -> :sswitch_3
        0x27301 -> :sswitch_0
        0x27302 -> :sswitch_1
    .end sparse-switch
.end method
