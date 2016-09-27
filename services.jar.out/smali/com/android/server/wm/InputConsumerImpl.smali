.class public final Lcom/android/server/wm/InputConsumerImpl;
.super Ljava/lang/Object;
.source "InputConsumerImpl.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$InputConsumer;


# instance fields
.field final mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

.field final mClientChannel:Landroid/view/InputChannel;

.field final mInputEventReceiver:Landroid/view/InputEventReceiver;

.field final mServerChannel:Landroid/view/InputChannel;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field final mWindowLayer:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Looper;Landroid/view/InputEventReceiver$Factory;)V
    .locals 10
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "inputEventReceiverFactory"    # Landroid/view/InputEventReceiver$Factory;

    .prologue
    const-wide v8, 0x12a05f200L

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string/jumbo v1, "input consumer"

    .line 41
    .local v1, "name":Ljava/lang/String;
    iput-object p1, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 43
    invoke-static {v1}, Landroid/view/InputChannel;->openInputChannelPair(Ljava/lang/String;)[Landroid/view/InputChannel;

    move-result-object v0

    .line 44
    .local v0, "channels":[Landroid/view/InputChannel;
    aget-object v2, v0, v4

    iput-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    .line 45
    aget-object v2, v0, v6

    iput-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    .line 46
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v3, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v2, v3, v5}, Lcom/android/server/input/InputManagerService;->registerInputChannel(Landroid/view/InputChannel;Lcom/android/server/input/InputWindowHandle;)V

    .line 49
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    .line 48
    invoke-interface {p3, v2, p2}, Landroid/view/InputEventReceiver$Factory;->createInputEventReceiver(Landroid/view/InputChannel;Landroid/os/Looper;)Landroid/view/InputEventReceiver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    .line 51
    new-instance v2, Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v2, v5}, Lcom/android/server/input/InputApplicationHandle;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    .line 52
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iput-object v1, v2, Lcom/android/server/input/InputApplicationHandle;->name:Ljava/lang/String;

    .line 53
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    iput-wide v8, v2, Lcom/android/server/input/InputApplicationHandle;->dispatchingTimeoutNanos:J

    .line 56
    new-instance v2, Lcom/android/server/input/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/InputConsumerImpl;->mApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    invoke-direct {v2, v3, v5, v4}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    iput-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 57
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object v1, v2, Lcom/android/server/input/InputWindowHandle;->name:Ljava/lang/String;

    .line 58
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v3, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    iput-object v3, v2, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 59
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/16 v3, 0x7e6

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    .line 60
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v2, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsType:I

    invoke-direct {p0, v2}, Lcom/android/server/wm/InputConsumerImpl;->getLayerLw(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowLayer:I

    .line 61
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget v3, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowLayer:I

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->layer:I

    .line 62
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v4, v2, Lcom/android/server/input/InputWindowHandle;->layoutParamsFlags:I

    .line 63
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-wide v8, v2, Lcom/android/server/input/InputWindowHandle;->dispatchingTimeoutNanos:J

    .line 65
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v6, v2, Lcom/android/server/input/InputWindowHandle;->visible:Z

    .line 66
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v4, v2, Lcom/android/server/input/InputWindowHandle;->canReceiveKeys:Z

    .line 67
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v4, v2, Lcom/android/server/input/InputWindowHandle;->hasFocus:Z

    .line 68
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v4, v2, Lcom/android/server/input/InputWindowHandle;->hasWallpaper:Z

    .line 69
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-boolean v4, v2, Lcom/android/server/input/InputWindowHandle;->paused:Z

    .line 70
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerPid:I

    .line 71
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->ownerUid:I

    .line 72
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v4, v2, Lcom/android/server/input/InputWindowHandle;->inputFeatures:I

    .line 73
    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Lcom/android/server/input/InputWindowHandle;->scaleFactor:F

    .line 39
    return-void
.end method

.method private getLayerLw(I)I
    .locals 1
    .param p1, "windowType"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v0, p1}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    add-int/lit16 v0, v0, 0x3e8

    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->removeInputConsumer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    .line 89
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v2, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v2}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 90
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mClientChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mServerChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 85
    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method layout(II)V
    .locals 2
    .param p1, "dw"    # I
    .param p2, "dh"    # I

    .prologue
    const/4 v1, 0x0

    .line 77
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iget-object v0, v0, Lcom/android/server/input/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Region;->set(IIII)Z

    .line 78
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v1, v0, Lcom/android/server/input/InputWindowHandle;->frameLeft:I

    .line 79
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput v1, v0, Lcom/android/server/input/InputWindowHandle;->frameTop:I

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput p1, v0, Lcom/android/server/input/InputWindowHandle;->frameRight:I

    .line 81
    iget-object v0, p0, Lcom/android/server/wm/InputConsumerImpl;->mWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput p2, v0, Lcom/android/server/input/InputWindowHandle;->frameBottom:I

    .line 76
    return-void
.end method
