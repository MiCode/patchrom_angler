.class Landroid/transition/Fade$FadeAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Fade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/transition/Fade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FadeAnimatorListener"
.end annotation


# instance fields
.field private mLayerTypeChanged:Z

.field private mPausedAlpha:F

.field private final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 152
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mPausedAlpha:F

    .line 153
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    .line 156
    iput-object p1, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    .line 155
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 169
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 170
    iget-boolean v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 168
    :cond_0
    return-void
.end method

.method public onAnimationPause(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 177
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTransitionAlpha()F

    move-result v0

    iput v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mPausedAlpha:F

    .line 178
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 176
    return-void
.end method

.method public onAnimationResume(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 183
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    iget v1, p0, Landroid/transition/Fade$FadeAnimatorListener;->mPausedAlpha:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    .line 182
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 161
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayerType()I

    move-result v0

    if-nez v0, :cond_0

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mLayerTypeChanged:Z

    .line 163
    iget-object v0, p0, Landroid/transition/Fade$FadeAnimatorListener;->mView:Landroid/view/View;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 160
    :cond_0
    return-void
.end method
