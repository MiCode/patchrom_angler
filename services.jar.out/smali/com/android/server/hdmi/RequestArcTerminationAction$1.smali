.class Lcom/android/server/hdmi/RequestArcTerminationAction$1;
.super Ljava/lang/Object;
.source "RequestArcTerminationAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/hdmi/RequestArcTerminationAction;->start()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/RequestArcTerminationAction;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/RequestArcTerminationAction;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/RequestArcTerminationAction;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/server/hdmi/RequestArcTerminationAction$1;->this$0:Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .locals 1
    .param p1, "error"    # I

    .prologue
    .line 46
    if-eqz p1, :cond_0

    .line 49
    iget-object v0, p0, Lcom/android/server/hdmi/RequestArcTerminationAction$1;->this$0:Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {v0}, Lcom/android/server/hdmi/RequestArcTerminationAction;->disableArcTransmission()V

    .line 50
    iget-object v0, p0, Lcom/android/server/hdmi/RequestArcTerminationAction$1;->this$0:Lcom/android/server/hdmi/RequestArcTerminationAction;

    invoke-virtual {v0}, Lcom/android/server/hdmi/RequestArcTerminationAction;->finish()V

    .line 45
    :cond_0
    return-void
.end method
