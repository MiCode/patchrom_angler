.class public Landroid/app/ActivityView;
.super Landroid/view/ViewGroup;
.source "ActivityView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityView$ActivityViewCallback;,
        Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;,
        Landroid/app/ActivityView$ActivityContainerCallback;,
        Landroid/app/ActivityView$ActivityContainerWrapper;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MSG_SET_SURFACE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ActivityView"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

.field private mActivityViewCallback:Landroid/app/ActivityView$ActivityViewCallback;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mLastVisibility:I

.field mMetrics:Landroid/util/DisplayMetrics;

.field private mSurface:Landroid/view/Surface;

.field private final mTextureView:Landroid/view/TextureView;

.field private mThread:Landroid/os/HandlerThread;

.field private mWidth:I


# direct methods
.method static synthetic -get0(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityContainerWrapper;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/ActivityView;)Landroid/app/ActivityView$ActivityViewCallback;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$ActivityViewCallback;

    return-object v0
.end method

.method static synthetic -get2(Landroid/app/ActivityView;)I
    .locals 1

    iget v0, p0, Landroid/app/ActivityView;->mHeight:I

    return v0
.end method

.method static synthetic -get3(Landroid/app/ActivityView;)Landroid/view/Surface;
    .locals 1

    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic -get4(Landroid/app/ActivityView;)I
    .locals 1

    iget v0, p0, Landroid/app/ActivityView;->mWidth:I

    return v0
.end method

.method static synthetic -set0(Landroid/app/ActivityView;I)I
    .locals 0

    iput p1, p0, Landroid/app/ActivityView;->mHeight:I

    return p1
.end method

.method static synthetic -set1(Landroid/app/ActivityView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic -set2(Landroid/app/ActivityView;I)I
    .locals 0

    iput p1, p0, Landroid/app/ActivityView;->mWidth:I

    return p1
.end method

.method static synthetic -wrap0(Landroid/app/ActivityView;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/ActivityView;->attachToSurfaceWhenReady()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/app/ActivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v2, p0, Landroid/app/ActivityView;->mMetrics:Landroid/util/DisplayMetrics;

    .line 66
    new-instance v2, Landroid/os/HandlerThread;

    const-string/jumbo v3, "ActivityViewThread"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/app/ActivityView;->mThread:Landroid/os/HandlerThread;

    .line 80
    :goto_0
    instance-of v2, p1, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_0

    .line 81
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 82
    check-cast v2, Landroid/app/Activity;

    iput-object v2, p0, Landroid/app/ActivityView;->mActivity:Landroid/app/Activity;

    .line 87
    :cond_0
    iget-object v2, p0, Landroid/app/ActivityView;->mActivity:Landroid/app/Activity;

    if-nez v2, :cond_2

    .line 88
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "The ActivityView\'s Context is not an Activity."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_1
    check-cast p1, Landroid/content/ContextWrapper;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    .restart local p1    # "context":Landroid/content/Context;
    goto :goto_0

    .line 92
    :cond_2
    :try_start_0
    new-instance v2, Landroid/app/ActivityView$ActivityContainerWrapper;

    .line 93
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    .line 94
    iget-object v4, p0, Landroid/app/ActivityView;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    new-instance v5, Landroid/app/ActivityView$ActivityContainerCallback;

    invoke-direct {v5, p0}, Landroid/app/ActivityView$ActivityContainerCallback;-><init>(Landroid/app/ActivityView;)V

    .line 93
    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->createVirtualActivityContainer(Landroid/os/IBinder;Landroid/app/IActivityContainerCallback;)Landroid/app/IActivityContainer;

    move-result-object v3

    .line 92
    invoke-direct {v2, v3}, Landroid/app/ActivityView$ActivityContainerWrapper;-><init>(Landroid/app/IActivityContainer;)V

    iput-object v2, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    iget-object v2, p0, Landroid/app/ActivityView;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 101
    new-instance v2, Landroid/app/ActivityView$1;

    iget-object v3, p0, Landroid/app/ActivityView;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Landroid/app/ActivityView$1;-><init>(Landroid/app/ActivityView;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/app/ActivityView;->mHandler:Landroid/os/Handler;

    .line 116
    new-instance v2, Landroid/view/TextureView;

    invoke-direct {v2, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    .line 117
    iget-object v2, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    new-instance v3, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;

    invoke-direct {v3, p0, v6}, Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;-><init>(Landroid/app/ActivityView;Landroid/app/ActivityView$ActivityViewSurfaceTextureListener;)V

    invoke-virtual {v2, v3}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 118
    iget-object v2, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0, v2}, Landroid/app/ActivityView;->addView(Landroid/view/View;)V

    .line 120
    iget-object v2, p0, Landroid/app/ActivityView;->mActivity:Landroid/app/Activity;

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 121
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ActivityView;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 123
    invoke-virtual {p0}, Landroid/app/ActivityView;->getVisibility()I

    move-result v2

    iput v2, p0, Landroid/app/ActivityView;->mLastVisibility:I

    .line 77
    return-void

    .line 95
    .end local v1    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v0

    .line 96
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityView: Unable to create ActivityContainer. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private attachToSurfaceWhenReady()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 245
    iget-object v2, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    .line 246
    .local v1, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-eqz v1, :cond_0

    iget-object v2, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_1

    .line 248
    :cond_0
    return-void

    .line 251
    :cond_1
    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v2, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    .line 253
    :try_start_0
    iget-object v2, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    iget-object v3, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    iget v4, p0, Landroid/app/ActivityView;->mWidth:I

    iget v5, p0, Landroid/app/ActivityView;->mHeight:I

    iget-object v6, p0, Landroid/app/ActivityView;->mMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/ActivityView$ActivityContainerWrapper;->setSurface(Landroid/view/Surface;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2}, Landroid/view/Surface;->release()V

    .line 256
    iput-object v7, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    .line 257
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ActivityView: Unable to create ActivityContainer. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private injectInputEvent(Landroid/view/InputEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 148
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    invoke-virtual {v0, p1}, Landroid/app/ActivityView$ActivityContainerWrapper;->injectEvent(Landroid/view/InputEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public isAttachedToDisplay()Z
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 158
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0, p1}, Landroid/app/ActivityView;->injectInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v3, 0x0

    .line 130
    iget-object v0, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    sub-int v1, p4, p2

    sub-int v2, p5, p3

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/TextureView;->layout(IIII)V

    .line 129
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Landroid/app/ActivityView;->injectInputEvent(Landroid/view/InputEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 5
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    const/16 v4, 0x8

    .line 135
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onVisibilityChanged(Landroid/view/View;I)V

    .line 137
    iget-object v2, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-eqz v2, :cond_1

    if-eq p2, v4, :cond_0

    iget v2, p0, Landroid/app/ActivityView;->mLastVisibility:I

    if-ne v2, v4, :cond_1

    .line 138
    :cond_0
    iget-object v2, p0, Landroid/app/ActivityView;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 139
    .local v0, "msg":Landroid/os/Message;
    if-ne p2, v4, :cond_2

    :goto_0
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 140
    iget v1, p0, Landroid/app/ActivityView;->mWidth:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 141
    iget v1, p0, Landroid/app/ActivityView;->mHeight:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 142
    iget-object v1, p0, Landroid/app/ActivityView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 144
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iput p2, p0, Landroid/app/ActivityView;->mLastVisibility:I

    .line 134
    return-void

    .line 139
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 229
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    if-nez v0, :cond_0

    .line 230
    const-string/jumbo v0, "ActivityView"

    const-string/jumbo v1, "Duplicate call to release"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    invoke-virtual {v0}, Landroid/app/ActivityView$ActivityContainerWrapper;->release()V

    .line 234
    iput-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    .line 236
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 238
    iput-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    .line 241
    :cond_1
    iget-object v0, p0, Landroid/app/ActivityView;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 226
    return-void
.end method

.method public setCallback(Landroid/app/ActivityView$ActivityViewCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/ActivityView$ActivityViewCallback;

    .prologue
    .line 272
    iput-object p1, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$ActivityViewCallback;

    .line 274
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityViewCallback:Landroid/app/ActivityView$ActivityViewCallback;

    invoke-virtual {v0, p0}, Landroid/app/ActivityView$ActivityViewCallback;->onSurfaceAvailable(Landroid/app/ActivityView;)V

    .line 271
    :cond_0
    return-void
.end method

.method public startActivity(Landroid/app/PendingIntent;)V
    .locals 3
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 212
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    if-nez v1, :cond_0

    .line 213
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Attempt to call startActivity after release"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 215
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-nez v1, :cond_1

    .line 216
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Surface not yet created."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    :cond_1
    invoke-virtual {p1}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v0

    .line 221
    .local v0, "iIntentSender":Landroid/content/IIntentSender;
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    invoke-virtual {v1, v0}, Landroid/app/ActivityView$ActivityContainerWrapper;->startActivityIntentSender(Landroid/content/IIntentSender;)I

    move-result v1

    const/4 v2, -0x6

    if-ne v1, v2, :cond_2

    .line 222
    new-instance v1, Landroid/os/OperationCanceledException;

    invoke-direct {v1}, Landroid/os/OperationCanceledException;-><init>()V

    throw v1

    .line 211
    :cond_2
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 183
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    if-nez v0, :cond_0

    .line 184
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Attempt to call startActivity after release"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Surface not yet created."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_1
    iget-object v0, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    invoke-virtual {v0, p1}, Landroid/app/ActivityView$ActivityContainerWrapper;->startActivity(Landroid/content/Intent;)I

    move-result v0

    const/4 v1, -0x6

    if-ne v0, v1, :cond_2

    .line 192
    new-instance v0, Landroid/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/os/OperationCanceledException;-><init>()V

    throw v0

    .line 182
    :cond_2
    return-void
.end method

.method public startActivity(Landroid/content/IntentSender;)V
    .locals 3
    .param p1, "intentSender"    # Landroid/content/IntentSender;

    .prologue
    .line 197
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    if-nez v1, :cond_0

    .line 198
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Attempt to call startActivity after release"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityView;->mSurface:Landroid/view/Surface;

    if-nez v1, :cond_1

    .line 201
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Surface not yet created."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 205
    :cond_1
    invoke-virtual {p1}, Landroid/content/IntentSender;->getTarget()Landroid/content/IIntentSender;

    move-result-object v0

    .line 206
    .local v0, "iIntentSender":Landroid/content/IIntentSender;
    iget-object v1, p0, Landroid/app/ActivityView;->mActivityContainer:Landroid/app/ActivityView$ActivityContainerWrapper;

    invoke-virtual {v1, v0}, Landroid/app/ActivityView$ActivityContainerWrapper;->startActivityIntentSender(Landroid/content/IIntentSender;)I

    move-result v1

    const/4 v2, -0x6

    if-ne v1, v2, :cond_2

    .line 207
    new-instance v1, Landroid/os/OperationCanceledException;

    invoke-direct {v1}, Landroid/os/OperationCanceledException;-><init>()V

    throw v1

    .line 196
    :cond_2
    return-void
.end method
