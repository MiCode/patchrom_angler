.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "DcTrackerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTrackerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 6

    .prologue
    .line 397
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const-string/jumbo v2, "SubscriptionListener.onSubscriptionInfoChanged"

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->log(Ljava/lang/String;)V

    .line 399
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSubId()I

    move-result v0

    .line 400
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->-get0(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 402
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->-get0(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->unregister()V

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v4, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v4, v4, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 406
    iget-object v5, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v5, v5, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 405
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;-><init>(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->-set0(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    .line 407
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$4;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-static {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->-get0(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$DataRoamingSettingObserver;->register()V

    .line 396
    :cond_1
    return-void
.end method
