.class Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AnimateOnHWLayerIfNeededListener"
.end annotation


# instance fields
.field private mShouldRunOnHWLayer:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 412
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mShouldRunOnHWLayer:Z

    .line 413
    if-nez p1, :cond_0

    .line 414
    return-void

    .line 416
    :cond_0
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    .line 412
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 437
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 429
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mShouldRunOnHWLayer:Z

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 432
    :cond_0
    iput-object v2, p0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    .line 433
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 428
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 442
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 421
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    invoke-static {v0, p1}, Landroid/app/FragmentManagerImpl;->shouldRunOnHWLayer(Landroid/view/View;Landroid/animation/Animator;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mShouldRunOnHWLayer:Z

    .line 422
    iget-boolean v0, p0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mShouldRunOnHWLayer:Z

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$AnimateOnHWLayerIfNeededListener;->mView:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 420
    :cond_0
    return-void
.end method
