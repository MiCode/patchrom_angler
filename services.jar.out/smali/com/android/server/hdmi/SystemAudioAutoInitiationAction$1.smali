.class Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;
.super Ljava/lang/Object;
.source "SystemAudioAutoInitiationAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->sendGiveSystemAudioModeStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;->this$0:Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .locals 3
    .param p1, "error"    # I

    .prologue
    const/4 v2, 0x0

    .line 51
    if-eqz p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;->this$0:Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-virtual {v0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->setSystemAudioMode(ZZ)V

    .line 53
    iget-object v0, p0, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction$1;->this$0:Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;

    invoke-virtual {v0}, Lcom/android/server/hdmi/SystemAudioAutoInitiationAction;->finish()V

    .line 50
    :cond_0
    return-void
.end method
