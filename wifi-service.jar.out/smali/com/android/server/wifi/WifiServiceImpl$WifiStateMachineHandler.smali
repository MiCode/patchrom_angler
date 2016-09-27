.class Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;
.super Landroid/os/Handler;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiStateMachineHandler"
.end annotation


# instance fields
.field private mWsmChannel:Lcom/android/internal/util/AsyncChannel;

.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    .line 280
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 281
    new-instance v0, Lcom/android/internal/util/AsyncChannel;

    invoke-direct {v0}, Lcom/android/internal/util/AsyncChannel;-><init>()V

    iput-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    .line 282
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-static {p1}, Lcom/android/server/wifi/WifiServiceImpl;->-get0(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 279
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 287
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 305
    const-string/jumbo v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WifiStateMachineHandler.handleMessage ignoring msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_0
    return-void

    .line 289
    :sswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiServiceImpl;->-set0(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_0

    .line 292
    :cond_0
    const-string/jumbo v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WifiStateMachine connection failure, error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->-set0(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    goto :goto_0

    .line 298
    :sswitch_1
    const-string/jumbo v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "WifiStateMachine channel lost, msg.arg1 ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiServiceImpl;->-set0(Lcom/android/server/wifi/WifiServiceImpl;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    .line 301
    iget-object v0, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->mWsmChannel:Lcom/android/internal/util/AsyncChannel;

    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get0(Lcom/android/server/wifi/WifiServiceImpl;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiServiceImpl$WifiStateMachineHandler;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v2, v2, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/internal/util/AsyncChannel;->connect(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;)V

    goto :goto_0

    .line 287
    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11004 -> :sswitch_1
    .end sparse-switch
.end method
