.class Lcom/android/server/wifi/WifiController$ApStaDisabledState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApStaDisabledState"
.end annotation


# instance fields
.field private mDeferredEnableSerialNumber:I

.field private mDisabledTimestamp:J

.field private mHaveDeferredEnable:Z

.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    const/4 v0, 0x0

    .line 403
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 404
    iput v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    .line 405
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    .line 403
    return-void
.end method

.method private doDeferEnable(Landroid/os/Message;)Z
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 471
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDisabledTimestamp:J

    sub-long v2, v4, v6

    .line 472
    .local v2, "delaySoFar":J
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiController;->-get11(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 473
    const/4 v1, 0x0

    return v1

    .line 476
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "WifiController msg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " deferred for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 477
    iget-object v5, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->-get11(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v6

    sub-long/2addr v6, v2

    .line 476
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 477
    const-string/jumbo v5, "ms"

    .line 476
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const v4, 0x2600b

    invoke-virtual {v1, v4}, Lcom/android/server/wifi/WifiController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 481
    .local v0, "deferredMsg":Landroid/os/Message;
    invoke-static {p1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 482
    iget v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 483
    iget-object v1, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->-get11(Lcom/android/server/wifi/WifiController;)J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x5

    add-long/2addr v4, v6

    invoke-virtual {v1, v0, v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 484
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 410
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 412
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDisabledTimestamp:J

    .line 413
    iget v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    .line 414
    iput-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    .line 415
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiStateMachine;->clearANQPCache()V

    .line 409
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 419
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 465
    return v0

    .line 422
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 423
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->doDeferEnable(Landroid/os/Message;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 424
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    if-eqz v2, :cond_0

    .line 426
    iget v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    .line 428
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    if-eqz v2, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mHaveDeferredEnable:Z

    .line 467
    :cond_1
    :goto_1
    return v1

    :cond_2
    move v0, v1

    .line 428
    goto :goto_0

    .line 431
    :cond_3
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-get5(Lcom/android/server/wifi/WifiController;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 432
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get4(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$DeviceActiveState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 434
    :cond_4
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiController;->-wrap1(Lcom/android/server/wifi/WifiController;)V

    goto :goto_1

    .line 436
    :cond_5
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get13(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 441
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get13(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 446
    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v1, :cond_1

    .line 447
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-nez v2, :cond_6

    .line 448
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get3(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 449
    const-string/jumbo v3, "wifi_saved_state"

    .line 448
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 451
    :cond_6
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 453
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->-get1(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApEnabledState;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap9(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 457
    :pswitch_3
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->mDeferredEnableSerialNumber:I

    if-eq v0, v2, :cond_7

    .line 458
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v2, "DEFERRED_TOGGLE ignored due to serial mismatch"

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 461
    :cond_7
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v2, "DEFERRED_TOGGLE handled"

    invoke-static {v0, v2}, Lcom/android/server/wifi/WifiController;->-wrap3(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 462
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApStaDisabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Message;

    invoke-virtual {v2, v0}, Lcom/android/server/wifi/WifiController;->sendMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 419
    nop

    :pswitch_data_0
    .packed-switch 0x26007
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
