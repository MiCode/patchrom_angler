.class public Lcom/android/internal/widget/SwipeDismissLayout;
.super Landroid/widget/FrameLayout;
.source "SwipeDismissLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;,
        Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;,
        Lcom/android/internal/widget/SwipeDismissLayout$1;,
        Lcom/android/internal/widget/SwipeDismissLayout$2;
    }
.end annotation


# static fields
.field private static final DISMISS_MIN_DRAG_WIDTH_RATIO:F = 0.33f

.field private static final TAG:Ljava/lang/String; = "SwipeDismissLayout"


# instance fields
.field private mActiveTouchId:I

.field private mDiscardIntercept:Z

.field private mDismissed:Z

.field private mDismissedListener:Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

.field private mDownX:F

.field private mDownY:F

.field private mLastX:F

.field private mMinFlingVelocity:I

.field private mOnEnterAnimationCompleteListener:Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

.field private mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

.field private mScreenOffFilter:Landroid/content/IntentFilter;

.field private mScreenOffReceiver:Landroid/content/BroadcastReceiver;

.field private mSlop:I

.field private mSwiping:Z

.field private mTranslationX:F

.field private mUseDynamicTranslucency:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0(Lcom/android/internal/widget/SwipeDismissLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/internal/widget/SwipeDismissLayout;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mUseDynamicTranslucency:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->dismiss()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 107
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mUseDynamicTranslucency:Z

    .line 79
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$1;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    .line 78
    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mOnEnterAnimationCompleteListener:Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    .line 91
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$2;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffFilter:Landroid/content/IntentFilter;

    .line 108
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->init(Landroid/content/Context;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 112
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mUseDynamicTranslucency:Z

    .line 79
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$1;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    .line 78
    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mOnEnterAnimationCompleteListener:Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    .line 91
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$2;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffFilter:Landroid/content/IntentFilter;

    .line 113
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->init(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 117
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mUseDynamicTranslucency:Z

    .line 79
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$1;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    .line 78
    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mOnEnterAnimationCompleteListener:Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    .line 91
    new-instance v0, Lcom/android/internal/widget/SwipeDismissLayout$2;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$2;-><init>(Lcom/android/internal/widget/SwipeDismissLayout;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    .line 102
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffFilter:Landroid/content/IntentFilter;

    .line 118
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->init(Landroid/content/Context;)V

    .line 116
    return-void
.end method

.method private dismiss()V
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissedListener:Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

    if-eqz v0, :cond_0

    .line 266
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissedListener:Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

    invoke-interface {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;->onDismissed(Lcom/android/internal/widget/SwipeDismissLayout;)V

    .line 264
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 123
    .local v1, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSlop:I

    .line 124
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mMinFlingVelocity:I

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 126
    sget-object v3, Lcom/android/internal/R$styleable;->Theme:[I

    .line 125
    invoke-virtual {v2, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x5

    .line 127
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mUseDynamicTranslucency:Z

    .line 129
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    return-void

    .line 127
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private resetMembers()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 286
    :cond_0
    iput-object v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 287
    iput v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mTranslationX:F

    .line 288
    iput v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    .line 289
    iput v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownY:F

    .line 290
    iput-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    .line 291
    iput-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    .line 292
    iput-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    .line 282
    return-void
.end method

.method private setProgress(F)V
    .locals 2
    .param p1, "deltaX"    # F

    .prologue
    .line 258
    iput p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mTranslationX:F

    .line 259
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p1, v1

    invoke-interface {v0, p0, v1, p1}, Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;->onSwipeProgressChanged(Lcom/android/internal/widget/SwipeDismissLayout;FF)V

    .line 257
    :cond_0
    return-void
.end method

.method private updateDismiss(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const v3, 0x3ea8f5c3    # 0.33f

    .line 308
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    sub-float v0, v1, v2

    .line 309
    .local v0, "deltaX":F
    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 310
    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 311
    iget-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    if-nez v1, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mLastX:F

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 315
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    .line 319
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    if-eqz v1, :cond_2

    .line 321
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 323
    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mMinFlingVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 324
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    .line 307
    :cond_2
    return-void
.end method

.method private updateSwiping(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 296
    iget-boolean v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    if-nez v3, :cond_1

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    sub-float v0, v3, v4

    .line 298
    .local v0, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownY:F

    sub-float v1, v3, v4

    .line 299
    .local v1, "deltaY":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSlop:I

    iget v5, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSlop:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 300
    iget v3, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSlop:I

    mul-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    .line 295
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    :cond_1
    :goto_0
    return-void

    .line 302
    .restart local v0    # "deltaX":F
    .restart local v1    # "deltaY":F
    :cond_2
    iput-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    goto :goto_0
.end method


# virtual methods
.method protected canScroll(Landroid/view/View;ZFFF)Z
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # F
    .param p4, "x"    # F
    .param p5, "y"    # F

    .prologue
    .line 341
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object v7, p1

    .line 342
    check-cast v7, Landroid/view/ViewGroup;

    .line 343
    .local v7, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v9

    .line 344
    .local v9, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v10

    .line 345
    .local v10, "scrollY":I
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 346
    .local v6, "count":I
    add-int/lit8 v8, v6, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_1

    .line 347
    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 348
    .local v1, "child":Landroid/view/View;
    int-to-float v0, v9

    add-float/2addr v0, p4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    int-to-float v0, v9

    add-float/2addr v0, p4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 349
    int-to-float v0, v10

    add-float v0, v0, p5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    int-to-float v0, v10

    add-float v0, v0, p5

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    .line 350
    int-to-float v0, v9

    add-float/2addr v0, p4

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float v4, v0, v2

    .line 351
    int-to-float v0, v10

    add-float v0, v0, p5

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float v5, v0, v2

    .line 350
    const/4 v2, 0x1

    move-object v0, p0

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SwipeDismissLayout;->canScroll(Landroid/view/View;ZFFF)Z

    move-result v0

    .line 348
    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x1

    return v0

    .line 346
    :cond_0
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 357
    .end local v1    # "child":Landroid/view/View;
    .end local v6    # "count":I
    .end local v7    # "group":Landroid/view/ViewGroup;
    .end local v8    # "i":I
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    :cond_1
    if-eqz p2, :cond_2

    neg-float v0, p3

    float-to-int v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected cancel()V
    .locals 1

    .prologue
    .line 271
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mUseDynamicTranslucency:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->convertFromTranslucent()V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    invoke-interface {v0, p0}, Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;->onSwipeCancelled(Lcom/android/internal/widget/SwipeDismissLayout;)V

    .line 270
    :cond_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 142
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 145
    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mOnEnterAnimationCompleteListener:Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    .line 144
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnEnterAnimationCompleteListener(Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;)V

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mScreenOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mOnEnterAnimationCompleteListener:Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;

    .line 154
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnEnterAnimationCompleteListener(Landroid/view/ViewTreeObserver$OnEnterAnimationCompleteListener;)V

    .line 157
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 151
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 163
    iget v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mTranslationX:F

    invoke-virtual {p1, v0, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 165
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 216
    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    if-nez v0, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    :cond_1
    return v2

    .line 167
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    .line 169
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownY:F

    .line 170
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    .line 171
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 172
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 176
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 177
    .local v6, "actionIndex":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    goto :goto_0

    .line 180
    .end local v6    # "actionIndex":I
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 181
    .restart local v6    # "actionIndex":I
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v8

    .line 182
    .local v8, "pointerId":I
    iget v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    if-ne v8, v0, :cond_0

    .line 184
    if-nez v6, :cond_2

    const/4 v7, 0x1

    .line 185
    .local v7, "newActionIndex":I
    :goto_1
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    goto :goto_0

    .line 184
    .end local v7    # "newActionIndex":I
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "newActionIndex":I
    goto :goto_1

    .line 191
    .end local v6    # "actionIndex":I
    .end local v7    # "newActionIndex":I
    .end local v8    # "pointerId":I
    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    goto :goto_0

    .line 195
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    if-nez v0, :cond_0

    .line 199
    iget v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mActiveTouchId:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v9

    .line 200
    .local v9, "pointerIndex":I
    const/4 v0, -0x1

    if-ne v9, v0, :cond_3

    .line 201
    const-string/jumbo v0, "SwipeDismissLayout"

    const-string/jumbo v1, "Invalid pointer index: ignoring."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iput-boolean v11, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    goto :goto_0

    .line 205
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    sub-float v3, v0, v1

    .line 206
    .local v3, "dx":F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 207
    .local v4, "x":F
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 208
    .local v5, "y":F
    cmpl-float v0, v3, v10

    if-eqz v0, :cond_4

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/SwipeDismissLayout;->canScroll(Landroid/view/View;ZFFF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 209
    iput-boolean v11, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDiscardIntercept:Z

    goto/16 :goto_0

    .line 212
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->updateSwiping(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 165
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 221
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 222
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 225
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mTranslationX:F

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 226
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 254
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 228
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->updateDismiss(Landroid/view/MotionEvent;)V

    .line 229
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissed:Z

    if-eqz v0, :cond_3

    .line 230
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->dismiss()V

    .line 234
    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    goto :goto_0

    .line 231
    :cond_3
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    if-eqz v0, :cond_2

    .line 232
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->cancel()V

    goto :goto_1

    .line 238
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->cancel()V

    .line 239
    invoke-direct {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->resetMembers()V

    goto :goto_0

    .line 243
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mLastX:F

    .line 245
    invoke-direct {p0, p1}, Lcom/android/internal/widget/SwipeDismissLayout;->updateSwiping(Landroid/view/MotionEvent;)V

    .line 246
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mSwiping:Z

    if-eqz v0, :cond_1

    .line 247
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mUseDynamicTranslucency:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 248
    invoke-virtual {p0}, Lcom/android/internal/widget/SwipeDismissLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v2, v2}, Landroid/app/Activity;->convertToTranslucent(Landroid/app/Activity$TranslucentConversionListener;Landroid/app/ActivityOptions;)Z

    .line 250
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDownX:F

    sub-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/internal/widget/SwipeDismissLayout;->setProgress(F)V

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setOnDismissedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mDismissedListener:Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;

    .line 132
    return-void
.end method

.method public setOnSwipeProgressChangedListener(Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout;->mProgressListener:Lcom/android/internal/widget/SwipeDismissLayout$OnSwipeProgressChangedListener;

    .line 136
    return-void
.end method
