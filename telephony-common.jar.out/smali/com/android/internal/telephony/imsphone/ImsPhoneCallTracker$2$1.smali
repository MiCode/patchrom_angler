.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;
.super Ljava/lang/Object;
.source "ImsPhoneCallTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->onCallMerged(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;

.field final synthetic val$call:Lcom/android/ims/ImsCall;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;Lcom/android/ims/ImsCall;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;
    .param p2, "val$call"    # Lcom/android/ims/ImsCall;

    .prologue
    .line 1360
    iput-object p1, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;->this$1:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;

    iput-object p2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;->val$call:Lcom/android/ims/ImsCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1364
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;->this$1:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;->val$call:Lcom/android/ims/ImsCall;

    invoke-static {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap0(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    .line 1365
    .local v0, "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;->this$1:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCallMerged: ImsPhoneConnection="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1366
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;->this$1:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCallMerged: CurrentVideoProvider="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V

    .line 1367
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;->this$1:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;->val$call:Lcom/android/ims/ImsCall;

    invoke-static {v2, v0, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->-wrap7(Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/ims/ImsCall;)V

    .line 1368
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;->this$1:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCallMerged: CurrentVideoProvider="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1362
    .end local v0    # "conn":Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;
    :goto_0
    return-void

    .line 1369
    :catch_0
    move-exception v1

    .line 1370
    .local v1, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2$1;->this$1:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$2;->this$0:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCallMerged: exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->loge(Ljava/lang/String;)V

    goto :goto_0
.end method
