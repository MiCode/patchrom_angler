.class Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;
.super Lcom/android/internal/util/State;
.source "SupplicantStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/SupplicantStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisconnectedState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/SupplicantStateTracker;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/SupplicantStateTracker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/SupplicantStateTracker;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 281
    invoke-static {}, Lcom/android/server/wifi/SupplicantStateTracker;->-get0()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->-wrap0(Lcom/android/server/wifi/SupplicantStateTracker;)Landroid/os/Message;

    move-result-object v0

    .line 286
    .local v0, "message":Landroid/os/Message;
    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/wifi/StateChangeResult;

    .line 288
    .local v1, "stateChangeResult":Lcom/android/server/wifi/StateChangeResult;
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->-get3(Lcom/android/server/wifi/SupplicantStateTracker;)I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 289
    const-string/jumbo v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to authenticate, disabling network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 290
    iget v4, v1, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    .line 289
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget v3, v1, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    .line 292
    const/4 v4, 0x3

    .line 291
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/SupplicantStateTracker;->-wrap1(Lcom/android/server/wifi/SupplicantStateTracker;II)V

    .line 293
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v2, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->-set2(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    .line 280
    :cond_1
    :goto_0
    return-void

    .line 295
    :cond_2
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v2}, Lcom/android/server/wifi/SupplicantStateTracker;->-get1(Lcom/android/server/wifi/SupplicantStateTracker;)I

    move-result v2

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 296
    const-string/jumbo v2, "SupplicantStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Association getting rejected, disabling network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 297
    iget v4, v1, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    .line 296
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    iget v3, v1, Lcom/android/server/wifi/StateChangeResult;->networkId:I

    .line 299
    const/4 v4, 0x4

    .line 298
    invoke-static {v2, v3, v4}, Lcom/android/server/wifi/SupplicantStateTracker;->-wrap1(Lcom/android/server/wifi/SupplicantStateTracker;II)V

    .line 300
    iget-object v2, p0, Lcom/android/server/wifi/SupplicantStateTracker$DisconnectedState;->this$0:Lcom/android/server/wifi/SupplicantStateTracker;

    invoke-static {v2, v5}, Lcom/android/server/wifi/SupplicantStateTracker;->-set0(Lcom/android/server/wifi/SupplicantStateTracker;I)I

    goto :goto_0
.end method
