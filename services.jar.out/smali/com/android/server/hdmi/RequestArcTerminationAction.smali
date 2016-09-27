.class final Lcom/android/server/hdmi/RequestArcTerminationAction;
.super Lcom/android/server/hdmi/RequestArcAction;
.source "RequestArcTerminationAction.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RequestArcTerminationAction"


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V
    .locals 0
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .param p2, "avrAddress"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/RequestArcAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;I)V

    .line 32
    return-void
.end method


# virtual methods
.method start()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 38
    iput v3, p0, Lcom/android/server/hdmi/RequestArcTerminationAction;->mState:I

    .line 39
    iget v1, p0, Lcom/android/server/hdmi/RequestArcTerminationAction;->mState:I

    const/16 v2, 0x7d0

    invoke-virtual {p0, v1, v2}, Lcom/android/server/hdmi/RequestArcTerminationAction;->addTimer(II)V

    .line 42
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestArcTerminationAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/RequestArcTerminationAction;->mAvrAddress:I

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRequestArcTermination(II)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    .line 43
    .local v0, "command":Lcom/android/server/hdmi/HdmiCecMessage;
    new-instance v1, Lcom/android/server/hdmi/RequestArcTerminationAction$1;

    invoke-direct {v1, p0}, Lcom/android/server/hdmi/RequestArcTerminationAction$1;-><init>(Lcom/android/server/hdmi/RequestArcTerminationAction;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/RequestArcTerminationAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    .line 54
    return v3
.end method
