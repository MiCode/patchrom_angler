.class Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;
.super Landroid/os/Handler;
.source "HdmiCecFeatureAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecFeatureAction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionTimerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecFeatureAction;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecFeatureAction;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->this$0:Lcom/android/server/hdmi/HdmiCecFeatureAction;

    .line 128
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 127
    return-void
.end method


# virtual methods
.method public clearTimerMessage()V
    .locals 1

    .prologue
    .line 139
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->removeMessages(I)V

    .line 138
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 144
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 149
    const-string/jumbo v0, "HdmiCecFeatureAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unsupported message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    return-void

    .line 146
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->this$0:Lcom/android/server/hdmi/HdmiCecFeatureAction;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->handleTimerEvent(I)V

    goto :goto_0

    .line 144
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public sendTimerMessage(IJ)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "delayMillis"    # J

    .prologue
    .line 134
    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 132
    return-void
.end method
