.class Lcom/android/internal/telephony/dataconnection/DctController$2;
.super Landroid/database/ContentObserver;
.source "DctController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DctController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DctController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/dataconnection/DctController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/dataconnection/DctController;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DctController$2;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 105
    const-string/jumbo v0, "Settings change"

    invoke-static {v0}, Lcom/android/internal/telephony/dataconnection/DctController;->-wrap4(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DctController$2;->this$0:Lcom/android/internal/telephony/dataconnection/DctController;

    const/16 v1, 0x6a

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/dataconnection/DctController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 104
    return-void
.end method
