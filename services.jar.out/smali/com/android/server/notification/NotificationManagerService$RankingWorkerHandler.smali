.class final Lcom/android/server/notification/NotificationManagerService$RankingWorkerHandler;
.super Landroid/os/Handler;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RankingWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2721
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$RankingWorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 2722
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2721
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2727
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2726
    :goto_0
    return-void

    .line 2729
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$RankingWorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-wrap18(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Message;)V

    goto :goto_0

    .line 2732
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$RankingWorkerHandler;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-wrap17(Lcom/android/server/notification/NotificationManagerService;)V

    goto :goto_0

    .line 2727
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
