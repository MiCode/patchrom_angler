.class Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;
.super Ljava/lang/Object;
.source "LegacyCameraDevice.java"

# interfaces
.implements Landroid/hardware/camera2/legacy/CameraDeviceState$CameraDeviceStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/legacy/LegacyCameraDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;


# direct methods
.method constructor <init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)V
    .locals 0
    .param p1, "this$0"    # Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    .prologue
    .line 108
    iput-object p1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBusy()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->-get1(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 181
    return-void
.end method

.method public onCaptureResult(Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 3
    .param p1, "result"    # Landroid/hardware/camera2/impl/CameraMetadataNative;
    .param p2, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;

    .prologue
    .line 212
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-static {v1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->-wrap0(Landroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/legacy/RequestHolder;)Landroid/hardware/camera2/impl/CaptureResultExtras;

    move-result-object v0

    .line 214
    .local v0, "extras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->-get2(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$4;

    invoke-direct {v2, p0, p2, p1, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$4;-><init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CameraMetadataNative;Landroid/hardware/camera2/impl/CaptureResultExtras;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    return-void
.end method

.method public onCaptureStarted(Landroid/hardware/camera2/legacy/RequestHolder;J)V
    .locals 8
    .param p1, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;
    .param p2, "timestamp"    # J

    .prologue
    .line 191
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-static {v0, p1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->-wrap0(Landroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/legacy/RequestHolder;)Landroid/hardware/camera2/impl/CaptureResultExtras;

    move-result-object v3

    .line 193
    .local v3, "extras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->-get2(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/Handler;

    move-result-object v6

    new-instance v0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$3;

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$3;-><init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;Landroid/hardware/camera2/legacy/RequestHolder;Landroid/hardware/camera2/impl/CaptureResultExtras;J)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    return-void
.end method

.method public onConfiguring()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public onError(ILandroid/hardware/camera2/legacy/RequestHolder;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "holder"    # Landroid/hardware/camera2/legacy/RequestHolder;

    .prologue
    .line 114
    packed-switch p1, :pswitch_data_0

    .line 130
    :goto_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-static {v1, p2}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->-wrap0(Landroid/hardware/camera2/legacy/LegacyCameraDevice;Landroid/hardware/camera2/legacy/RequestHolder;)Landroid/hardware/camera2/impl/CaptureResultExtras;

    move-result-object v0

    .line 131
    .local v0, "extras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->-get2(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$1;

    invoke-direct {v2, p0, p2, p1, v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$1;-><init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;Landroid/hardware/camera2/legacy/RequestHolder;ILandroid/hardware/camera2/impl/CaptureResultExtras;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void

    .line 122
    .end local v0    # "extras":Landroid/hardware/camera2/impl/CaptureResultExtras;
    :pswitch_0
    iget-object v1, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-static {v1}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->-get1(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onIdle()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->-get1(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 164
    iget-object v0, p0, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;->this$0:Landroid/hardware/camera2/legacy/LegacyCameraDevice;

    invoke-static {v0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice;->-get2(Landroid/hardware/camera2/legacy/LegacyCameraDevice;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$2;

    invoke-direct {v1, p0}, Landroid/hardware/camera2/legacy/LegacyCameraDevice$1$2;-><init>(Landroid/hardware/camera2/legacy/LegacyCameraDevice$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method
