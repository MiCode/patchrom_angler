.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;
.super Lcom/android/internal/util/State;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "P2pEnablingState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 917
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 0

    .prologue
    .line 919
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 926
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 940
    const/4 v0, 0x0

    return v0

    .line 929
    :sswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get6(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    .line 942
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 932
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string/jumbo v1, "P2p socket connection failed"

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->loge(Ljava/lang/String;)V

    .line 933
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get8(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pDisabledState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap34(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 937
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$P2pEnablingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V

    goto :goto_0

    .line 926
    :sswitch_data_0
    .sparse-switch
        0x20083 -> :sswitch_2
        0x20084 -> :sswitch_2
        0x24001 -> :sswitch_0
        0x24002 -> :sswitch_1
    .end sparse-switch
.end method
