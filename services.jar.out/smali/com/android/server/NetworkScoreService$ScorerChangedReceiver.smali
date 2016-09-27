.class Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkScoreService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkScoreService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScorerChangedReceiver"
.end annotation


# instance fields
.field final mRegisteredPackage:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/NetworkScoreService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkScoreService;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkScoreService;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 74
    iput-object p2, p0, Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;->mRegisteredPackage:Ljava/lang/String;

    .line 73
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 81
    const-string/jumbo v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 80
    if-nez v1, :cond_0

    .line 82
    const-string/jumbo v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 80
    if-eqz v1, :cond_1

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-static {v1}, Lcom/android/server/NetworkScoreService;->-get0(Lcom/android/server/NetworkScoreService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/net/NetworkScorerAppManager;->getActiveScorer(Landroid/content/Context;)Landroid/net/NetworkScorerAppManager$NetworkScorerAppData;

    move-result-object v1

    if-nez v1, :cond_1

    .line 85
    const-string/jumbo v1, "NetworkScoreService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;->mRegisteredPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 86
    const-string/jumbo v3, " is no longer valid, disabling scoring"

    .line 85
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v1, p0, Lcom/android/server/NetworkScoreService$ScorerChangedReceiver;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-static {v1, v4}, Lcom/android/server/NetworkScoreService;->-wrap0(Lcom/android/server/NetworkScoreService;Ljava/lang/String;)Z

    .line 78
    :cond_1
    return-void
.end method
