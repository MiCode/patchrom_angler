.class Lcom/android/server/display/VirtualDisplayAdapter$Callback;
.super Landroid/os/Handler;
.source "VirtualDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/VirtualDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Callback"
.end annotation


# static fields
.field private static final MSG_ON_DISPLAY_PAUSED:I = 0x0

.field private static final MSG_ON_DISPLAY_RESUMED:I = 0x1

.field private static final MSG_ON_DISPLAY_STOPPED:I = 0x2


# instance fields
.field private final mCallback:Landroid/hardware/display/IVirtualDisplayCallback;


# direct methods
.method public constructor <init>(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 349
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 350
    iput-object p1, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    .line 348
    return-void
.end method


# virtual methods
.method public dispatchDisplayPaused()V
    .locals 1

    .prologue
    .line 373
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->sendEmptyMessage(I)Z

    .line 372
    return-void
.end method

.method public dispatchDisplayResumed()V
    .locals 1

    .prologue
    .line 377
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->sendEmptyMessage(I)Z

    .line 376
    return-void
.end method

.method public dispatchDisplayStopped()V
    .locals 1

    .prologue
    .line 381
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->sendEmptyMessage(I)Z

    .line 380
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 356
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 354
    :goto_0
    return-void

    .line 358
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {v1}, Landroid/hardware/display/IVirtualDisplayCallback;->onPaused()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 367
    :catch_0
    move-exception v0

    .line 368
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "VirtualDisplayAdapter"

    const-string/jumbo v2, "Failed to notify listener of virtual display event."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 361
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {v1}, Landroid/hardware/display/IVirtualDisplayCallback;->onResumed()V

    goto :goto_0

    .line 364
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter$Callback;->mCallback:Landroid/hardware/display/IVirtualDisplayCallback;

    invoke-interface {v1}, Landroid/hardware/display/IVirtualDisplayCallback;->onStopped()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 356
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
