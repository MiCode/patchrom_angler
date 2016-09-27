.class public abstract Landroid/view/HardwareRenderer;
.super Ljava/lang/Object;
.source "HardwareRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/HardwareRenderer$HardwareDrawCallbacks;
    }
.end annotation


# static fields
.field private static final CACHE_PATH_SHADERS:Ljava/lang/String; = "com.android.opengl.shaders_cache"

.field public static final DEBUG_DIRTY_REGIONS_PROPERTY:Ljava/lang/String; = "debug.hwui.show_dirty_regions"

.field public static final DEBUG_OVERDRAW_PROPERTY:Ljava/lang/String; = "debug.hwui.overdraw"

.field public static final DEBUG_SHOW_LAYERS_UPDATES_PROPERTY:Ljava/lang/String; = "debug.hwui.show_layers_updates"

.field public static final DEBUG_SHOW_NON_RECTANGULAR_CLIP_PROPERTY:Ljava/lang/String; = "debug.hwui.show_non_rect_clip"

.field static final LOG_TAG:Ljava/lang/String; = "HardwareRenderer"

.field public static final OVERDRAW_PROPERTY_SHOW:Ljava/lang/String; = "show"

.field static final PRINT_CONFIG_PROPERTY:Ljava/lang/String; = "debug.hwui.print_config"

.field static final PROFILE_MAXFRAMES_PROPERTY:Ljava/lang/String; = "debug.hwui.profile.maxframes"

.field public static final PROFILE_PROPERTY:Ljava/lang/String; = "debug.hwui.profile"

.field public static final PROFILE_PROPERTY_VISUALIZE_BARS:Ljava/lang/String; = "visual_bars"

.field static final RENDER_DIRTY_REGIONS_PROPERTY:Ljava/lang/String; = "debug.hwui.render_dirty_regions"

.field public static sRendererDisabled:Z

.field public static sSystemRendererDisabled:Z

.field public static sTrimForeground:Z


# instance fields
.field private mEnabled:Z

.field private mRequested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 164
    sput-boolean v0, Landroid/view/HardwareRenderer;->sRendererDisabled:Z

    .line 171
    sput-boolean v0, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    .line 188
    sput-boolean v0, Landroid/view/HardwareRenderer;->sTrimForeground:Z

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/HardwareRenderer;->mRequested:Z

    .line 33
    return-void
.end method

.method static create(Landroid/content/Context;Z)Landroid/view/HardwareRenderer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "translucent"    # Z

    .prologue
    .line 434
    const/4 v0, 0x0

    .line 435
    .local v0, "renderer":Landroid/view/HardwareRenderer;
    invoke-static {}, Landroid/view/DisplayListCanvas;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    new-instance v0, Landroid/view/ThreadedRenderer;

    .end local v0    # "renderer":Landroid/view/HardwareRenderer;
    invoke-direct {v0, p0, p1}, Landroid/view/ThreadedRenderer;-><init>(Landroid/content/Context;Z)V

    .line 438
    :cond_0
    return-object v0
.end method

.method public static disable(Z)V
    .locals 1
    .param p0, "system"    # Z

    .prologue
    const/4 v0, 0x1

    .line 182
    sput-boolean v0, Landroid/view/HardwareRenderer;->sRendererDisabled:Z

    .line 183
    if-eqz p0, :cond_0

    .line 184
    sput-boolean v0, Landroid/view/HardwareRenderer;->sSystemRendererDisabled:Z

    .line 181
    :cond_0
    return-void
.end method

.method public static enableForegroundTrimming()V
    .locals 1

    .prologue
    .line 197
    const/4 v0, 0x1

    sput-boolean v0, Landroid/view/HardwareRenderer;->sTrimForeground:Z

    .line 196
    return-void
.end method

.method public static isAvailable()Z
    .locals 1

    .prologue
    .line 208
    invoke-static {}, Landroid/view/DisplayListCanvas;->isAvailable()Z

    move-result v0

    return v0
.end method

.method public static setupDiskCache(Ljava/io/File;)V
    .locals 2
    .param p0, "cacheDir"    # Ljava/io/File;

    .prologue
    .line 300
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "com.android.opengl.shaders_cache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ThreadedRenderer;->setupShadersDiskCache(Ljava/lang/String;)V

    .line 299
    return-void
.end method

.method static trimMemory(I)V
    .locals 0
    .param p0, "level"    # I

    .prologue
    .line 450
    invoke-static {p0}, Landroid/view/ThreadedRenderer;->trimMemory(I)V

    .line 449
    return-void
.end method


# virtual methods
.method abstract buildLayer(Landroid/view/RenderNode;)V
.end method

.method abstract copyLayerInto(Landroid/view/HardwareLayer;Landroid/graphics/Bitmap;)Z
.end method

.method abstract createTextureLayer()Landroid/view/HardwareLayer;
.end method

.method abstract destroy()V
.end method

.method abstract destroyHardwareResources(Landroid/view/View;)V
.end method

.method abstract detachSurfaceTexture(J)V
.end method

.method abstract draw(Landroid/view/View;Landroid/view/View$AttachInfo;Landroid/view/HardwareRenderer$HardwareDrawCallbacks;)V
.end method

.method abstract dumpGfxInfo(Ljava/io/PrintWriter;Ljava/io/FileDescriptor;[Ljava/lang/String;)V
.end method

.method abstract fence()V
.end method

.method abstract getHeight()I
.end method

.method abstract getWidth()I
.end method

.method abstract initialize(Landroid/view/Surface;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method

.method initializeIfNeeded(IILandroid/view/View$AttachInfo;Landroid/view/Surface;Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "attachInfo"    # Landroid/view/View$AttachInfo;
    .param p4, "surface"    # Landroid/view/Surface;
    .param p5, "surfaceInsets"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 385
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-virtual {p0}, Landroid/view/HardwareRenderer;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    invoke-virtual {p0, p4}, Landroid/view/HardwareRenderer;->initialize(Landroid/view/Surface;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0, p1, p2, p3, p5}, Landroid/view/HardwareRenderer;->setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V

    .line 390
    const/4 v0, 0x1

    return v0

    .line 394
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method abstract invalidate(Landroid/view/Surface;)V
.end method

.method abstract invalidateRoot()V
.end method

.method isEnabled()Z
    .locals 1

    .prologue
    .line 459
    iget-boolean v0, p0, Landroid/view/HardwareRenderer;->mEnabled:Z

    return v0
.end method

.method isRequested()Z
    .locals 1

    .prologue
    .line 478
    iget-boolean v0, p0, Landroid/view/HardwareRenderer;->mRequested:Z

    return v0
.end method

.method abstract loadSystemProperties()Z
.end method

.method abstract notifyFramePending()V
.end method

.method abstract onLayerDestroyed(Landroid/view/HardwareLayer;)V
.end method

.method abstract pauseSurface(Landroid/view/Surface;)Z
.end method

.method abstract pushLayerUpdate(Landroid/view/HardwareLayer;)V
.end method

.method abstract registerAnimatingRenderNode(Landroid/view/RenderNode;)V
.end method

.method setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 468
    iput-boolean p1, p0, Landroid/view/HardwareRenderer;->mEnabled:Z

    .line 467
    return-void
.end method

.method abstract setLightCenter(Landroid/view/View$AttachInfo;)V
.end method

.method abstract setName(Ljava/lang/String;)V
.end method

.method abstract setOpaque(Z)V
.end method

.method setRequested(Z)V
    .locals 0
    .param p1, "requested"    # Z

    .prologue
    .line 488
    iput-boolean p1, p0, Landroid/view/HardwareRenderer;->mRequested:Z

    .line 487
    return-void
.end method

.method abstract setup(IILandroid/view/View$AttachInfo;Landroid/graphics/Rect;)V
.end method

.method abstract stopDrawing()V
.end method

.method abstract updateSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/Surface$OutOfResourcesException;
        }
    .end annotation
.end method
