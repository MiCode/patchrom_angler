.class Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;
.super Ljava/lang/Object;
.source "DcTrackerBase.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 367
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->updateDataActivity()V

    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mIsScreenOn:Z

    if-eqz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    .line 375
    const-string/jumbo v2, "pdp_watchdog_poll_interval_ms"

    const/16 v3, 0x3e8

    .line 374
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollPeriod:I

    .line 382
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-boolean v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollEnabled:Z

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mDataConnectionTracker:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollPeriod:I

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 370
    :cond_0
    return-void

    .line 377
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase$3;->this$0:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    iget-object v1, v1, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mResolver:Landroid/content/ContentResolver;

    .line 378
    const-string/jumbo v2, "pdp_watchdog_long_poll_interval_ms"

    .line 379
    const v3, 0x927c0

    .line 377
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->mNetStatPollPeriod:I

    goto :goto_0
.end method
