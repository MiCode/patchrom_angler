.class Lcom/android/server/TelephonyRegistry$2;
.super Landroid/content/BroadcastReceiver;
.source "TelephonyRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TelephonyRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TelephonyRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/TelephonyRegistry;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/TelephonyRegistry;

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 257
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 260
    const-string/jumbo v4, "android.intent.extra.user_handle"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 262
    .local v3, "userHandle":I
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->-get3(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->-get3(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6, v3, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 256
    .end local v3    # "userHandle":I
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    const-string/jumbo v4, "android.intent.action.ACTION_DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 264
    new-instance v2, Ljava/lang/Integer;

    .line 265
    const-string/jumbo v4, "subscription"

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v5

    .line 264
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v2, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 266
    .local v2, "newDefaultSubIdObj":Ljava/lang/Integer;
    const-string/jumbo v4, "slot"

    .line 267
    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->-get2(Lcom/android/server/TelephonyRegistry;)I

    move-result v5

    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v5

    .line 266
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 274
    .local v1, "newDefaultPhoneId":I
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v4, v1}, Lcom/android/server/TelephonyRegistry;->-wrap0(Lcom/android/server/TelephonyRegistry;I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->-get2(Lcom/android/server/TelephonyRegistry;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 275
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->-get1(Lcom/android/server/TelephonyRegistry;)I

    move-result v4

    if-eq v1, v4, :cond_0

    .line 276
    :cond_2
    iget-object v4, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v4}, Lcom/android/server/TelephonyRegistry;->-get3(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/TelephonyRegistry$2;->this$0:Lcom/android/server/TelephonyRegistry;

    invoke-static {v5}, Lcom/android/server/TelephonyRegistry;->-get3(Lcom/android/server/TelephonyRegistry;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6, v1, v7, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
