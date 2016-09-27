.class public Landroid/widget/FrameLayout;
.super Landroid/view/ViewGroup;
.source "FrameLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FrameLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final DEFAULT_CHILD_GRAVITY:I = 0x800033


# instance fields
.field private mForegroundPaddingBottom:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingLeft:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingRight:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private mForegroundPaddingTop:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "padding"
    .end annotation
.end field

.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mMeasureAllChildren:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "measurement"
    .end annotation
.end field

.field private final mOverlayBounds:Landroid/graphics/Rect;

.field private final mSelfBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 64
    iput-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 67
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 70
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 73
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 76
    iput v0, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/FrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    iput-boolean v2, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 67
    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 70
    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 73
    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 76
    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 78
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/FrameLayout;->mSelfBounds:Landroid/graphics/Rect;

    .line 79
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/widget/FrameLayout;->mOverlayBounds:Landroid/graphics/Rect;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 100
    sget-object v1, Lcom/android/internal/R$styleable;->FrameLayout:[I

    .line 99
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 102
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setMeasureAllChildren(Z)V

    .line 106
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    return-void
.end method

.method private getPaddingBottomWithForeground()I
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    .line 171
    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private getPaddingTopWithForeground()I
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    .line 166
    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    add-int/2addr v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 399
    instance-of v0, p1, Landroid/widget/FrameLayout$LayoutParams;

    return v0
.end method

.method protected encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2
    .param p1, "encoder"    # Landroid/view/ViewHierarchyEncoder;

    .prologue
    .line 415
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 417
    const-string/jumbo v0, "measurement:measureAllChildren"

    iget-boolean v1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 418
    const-string/jumbo v0, "padding:foregroundPaddingLeft"

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 419
    const-string/jumbo v0, "padding:foregroundPaddingTop"

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 420
    const-string/jumbo v0, "padding:foregroundPaddingRight"

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 421
    const-string/jumbo v0, "padding:foregroundPaddingBottom"

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 414
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 151
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 385
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 404
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 386
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 409
    const-class v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConsiderGoneChildrenWhenMeasuring()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 368
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasureAllChildren()Z

    move-result v0

    return v0
.end method

.method public getMeasureAllChildren()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    return v0
.end method

.method getPaddingLeftWithForeground()I
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    .line 156
    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method getPaddingRightWithForeground()I
    .locals 2

    .prologue
    .line 160
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isForegroundInsidePadding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    return v0

    .line 161
    :cond_0
    iget v0, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    iget v1, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method layoutChildren(IIIIZ)V
    .locals 20
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I
    .param p5, "forceLeftGravity"    # Z

    .prologue
    .line 278
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v6

    .line 280
    .local v6, "count":I
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v13

    .line 281
    .local v13, "parentLeft":I
    sub-int v18, p3, p1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v19

    sub-int v14, v18, v19

    .line 283
    .local v14, "parentRight":I
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v15

    .line 284
    .local v15, "parentTop":I
    sub-int v18, p4, p2

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v19

    sub-int v12, v18, v19

    .line 286
    .local v12, "parentBottom":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v6, :cond_3

    .line 287
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 288
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_2

    .line 289
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 291
    .local v11, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    .line 292
    .local v17, "width":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 297
    .local v8, "height":I
    iget v7, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 298
    .local v7, "gravity":I
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v7, v0, :cond_0

    .line 299
    const v7, 0x800033

    .line 302
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v10

    .line 303
    .local v10, "layoutDirection":I
    invoke-static {v7, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v2

    .line 304
    .local v2, "absoluteGravity":I
    and-int/lit8 v16, v7, 0x70

    .line 306
    .local v16, "verticalGravity":I
    and-int/lit8 v18, v2, 0x7

    sparse-switch v18, :sswitch_data_0

    .line 318
    :cond_1
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v0

    add-int v4, v13, v18

    .line 321
    .local v4, "childLeft":I
    :goto_1
    sparse-switch v16, :sswitch_data_1

    .line 333
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v5, v15, v18

    .line 336
    .local v5, "childTop":I
    :goto_2
    add-int v18, v4, v17

    add-int v19, v5, v8

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v4, v5, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 286
    .end local v2    # "absoluteGravity":I
    .end local v4    # "childLeft":I
    .end local v5    # "childTop":I
    .end local v7    # "gravity":I
    .end local v8    # "height":I
    .end local v10    # "layoutDirection":I
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "verticalGravity":I
    .end local v17    # "width":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 308
    .restart local v2    # "absoluteGravity":I
    .restart local v7    # "gravity":I
    .restart local v8    # "height":I
    .restart local v10    # "layoutDirection":I
    .restart local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v16    # "verticalGravity":I
    .restart local v17    # "width":I
    :sswitch_0
    sub-int v18, v14, v13

    sub-int v18, v18, v17

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v13

    .line 309
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v19, v0

    .line 308
    add-int v18, v18, v19

    .line 309
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v0

    .line 308
    sub-int v4, v18, v19

    .line 310
    .restart local v4    # "childLeft":I
    goto :goto_1

    .line 312
    .end local v4    # "childLeft":I
    :sswitch_1
    if-nez p5, :cond_1

    .line 313
    sub-int v18, v14, v17

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v19, v0

    sub-int v4, v18, v19

    .line 314
    .restart local v4    # "childLeft":I
    goto :goto_1

    .line 323
    :sswitch_2
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v18, v0

    add-int v5, v15, v18

    .line 324
    .restart local v5    # "childTop":I
    goto :goto_2

    .line 326
    .end local v5    # "childTop":I
    :sswitch_3
    sub-int v18, v12, v15

    sub-int v18, v18, v8

    div-int/lit8 v18, v18, 0x2

    add-int v18, v18, v15

    .line 327
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v19, v0

    .line 326
    add-int v18, v18, v19

    .line 327
    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    .line 326
    sub-int v5, v18, v19

    .line 328
    .restart local v5    # "childTop":I
    goto :goto_2

    .line 330
    .end local v5    # "childTop":I
    :sswitch_4
    sub-int v18, v12, v8

    iget v0, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v19, v0

    sub-int v5, v18, v19

    .line 331
    .restart local v5    # "childTop":I
    goto :goto_2

    .line 277
    .end local v2    # "absoluteGravity":I
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childLeft":I
    .end local v5    # "childTop":I
    .end local v7    # "gravity":I
    .end local v8    # "height":I
    .end local v10    # "layoutDirection":I
    .end local v11    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "verticalGravity":I
    .end local v17    # "width":I
    :cond_3
    return-void

    .line 306
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch

    .line 321
    :sswitch_data_1
    .sparse-switch
        0x10 -> :sswitch_3
        0x30 -> :sswitch_2
        0x50 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 273
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Landroid/widget/FrameLayout;->layoutChildren(IIIIZ)V

    .line 272
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v11

    .line 183
    .local v11, "count":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_3

    .line 184
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_4

    const/16 v19, 0x1

    .line 185
    .local v19, "measureMatchParentChildren":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 187
    const/16 v17, 0x0

    .line 188
    .local v17, "maxHeight":I
    const/16 v18, 0x0

    .line 189
    .local v18, "maxWidth":I
    const/4 v9, 0x0

    .line 191
    .local v9, "childState":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v11, :cond_5

    .line 192
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 193
    .local v3, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    if-nez v2, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_2

    .line 194
    :cond_0
    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 195
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout$LayoutParams;

    .line 197
    .local v16, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, v16

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v16

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 196
    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 199
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move-object/from16 v0, v16

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v16

    iget v4, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v2, v4

    .line 198
    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 200
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    invoke-static {v9, v2}, Landroid/widget/FrameLayout;->combineMeasuredStates(II)I

    move-result v9

    .line 201
    if-eqz v19, :cond_2

    .line 202
    move-object/from16 v0, v16

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 203
    move-object/from16 v0, v16

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 204
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 191
    .end local v16    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 183
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "childState":I
    .end local v14    # "i":I
    .end local v17    # "maxHeight":I
    .end local v18    # "maxWidth":I
    .end local v19    # "measureMatchParentChildren":Z
    :cond_3
    const/16 v19, 0x1

    .restart local v19    # "measureMatchParentChildren":Z
    goto :goto_0

    .line 184
    .end local v19    # "measureMatchParentChildren":Z
    :cond_4
    const/16 v19, 0x0

    .restart local v19    # "measureMatchParentChildren":Z
    goto/16 :goto_0

    .line 211
    .restart local v9    # "childState":I
    .restart local v14    # "i":I
    .restart local v17    # "maxHeight":I
    .restart local v18    # "maxWidth":I
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v4

    add-int/2addr v2, v4

    add-int v18, v18, v2

    .line 212
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v4

    add-int/2addr v2, v4

    add-int v17, v17, v2

    .line 215
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumHeight()I

    move-result v2

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 216
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getSuggestedMinimumWidth()I

    move-result v2

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 219
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 220
    .local v12, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v12, :cond_6

    .line 221
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    move/from16 v0, v17

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 222
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 225
    :cond_6
    move/from16 v0, v18

    move/from16 v1, p1

    invoke-static {v0, v1, v9}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v2

    .line 227
    shl-int/lit8 v4, v9, 0x10

    .line 226
    move/from16 v0, v17

    move/from16 v1, p2

    invoke-static {v0, v1, v4}, Landroid/widget/FrameLayout;->resolveSizeAndState(III)I

    move-result v4

    .line 225
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 229
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 230
    const/4 v2, 0x1

    if-le v11, v2, :cond_9

    .line 231
    const/4 v14, 0x0

    :goto_2
    if-ge v14, v11, :cond_9

    .line 232
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/FrameLayout;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 233
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 236
    .local v15, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_7

    .line 237
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v2

    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v4

    .line 237
    sub-int/2addr v2, v4

    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v4

    .line 237
    sub-int/2addr v2, v4

    .line 239
    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 237
    sub-int/2addr v2, v4

    .line 239
    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 237
    sub-int/2addr v2, v4

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 241
    .local v20, "width":I
    const/high16 v2, 0x40000000    # 2.0f

    .line 240
    move/from16 v0, v20

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 250
    .end local v20    # "width":I
    .local v10, "childWidthMeasureSpec":I
    :goto_3
    iget v2, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_8

    .line 251
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    .line 252
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v4

    .line 251
    sub-int/2addr v2, v4

    .line 252
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v4

    .line 251
    sub-int/2addr v2, v4

    .line 253
    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 251
    sub-int/2addr v2, v4

    .line 253
    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 251
    sub-int/2addr v2, v4

    const/4 v4, 0x0

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 255
    .local v13, "height":I
    const/high16 v2, 0x40000000    # 2.0f

    .line 254
    invoke-static {v13, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 263
    .end local v13    # "height":I
    .local v8, "childHeightMeasureSpec":I
    :goto_4
    invoke-virtual {v3, v10, v8}, Landroid/view/View;->measure(II)V

    .line 231
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 244
    .end local v8    # "childHeightMeasureSpec":I
    .end local v10    # "childWidthMeasureSpec":I
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingLeftWithForeground()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingRightWithForeground()I

    move-result v4

    add-int/2addr v2, v4

    .line 245
    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 244
    add-int/2addr v2, v4

    .line 245
    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 244
    add-int/2addr v2, v4

    .line 246
    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 243
    move/from16 v0, p1

    invoke-static {v0, v2, v4}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v10

    .restart local v10    # "childWidthMeasureSpec":I
    goto :goto_3

    .line 258
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTopWithForeground()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingBottomWithForeground()I

    move-result v4

    add-int/2addr v2, v4

    .line 259
    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 258
    add-int/2addr v2, v4

    .line 259
    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 258
    add-int/2addr v2, v4

    .line 260
    iget v4, v15, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 257
    move/from16 v0, p2

    invoke-static {v0, v2, v4}, Landroid/widget/FrameLayout;->getChildMeasureSpec(III)I

    move-result v8

    .restart local v8    # "childHeightMeasureSpec":I
    goto :goto_4

    .line 179
    .end local v3    # "child":Landroid/view/View;
    .end local v8    # "childHeightMeasureSpec":I
    .end local v10    # "childWidthMeasureSpec":I
    .end local v15    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_9
    return-void
.end method

.method public setForegroundGravity(I)V
    .locals 5
    .param p1, "foregroundGravity"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 120
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForegroundGravity()I

    move-result v2

    if-eq v2, p1, :cond_1

    .line 121
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setForegroundGravity(I)V

    .line 124
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 125
    .local v0, "foreground":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getForegroundGravity()I

    move-result v2

    const/16 v3, 0x77

    if-ne v2, v3, :cond_2

    if-eqz v0, :cond_2

    .line 126
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 127
    .local v1, "padding":Landroid/graphics/Rect;
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 129
    iget v2, v1, Landroid/graphics/Rect;->top:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 130
    iget v2, v1, Landroid/graphics/Rect;->right:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 131
    iget v2, v1, Landroid/graphics/Rect;->bottom:I

    iput v2, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    .line 140
    .end local v1    # "padding":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 119
    .end local v0    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_1
    return-void

    .line 134
    .restart local v0    # "foreground":Landroid/graphics/drawable/Drawable;
    :cond_2
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingLeft:I

    .line 135
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingTop:I

    .line 136
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingRight:I

    .line 137
    iput v4, p0, Landroid/widget/FrameLayout;->mForegroundPaddingBottom:I

    goto :goto_0
.end method

.method public setMeasureAllChildren(Z)V
    .locals 0
    .param p1, "measureAll"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 352
    iput-boolean p1, p0, Landroid/widget/FrameLayout;->mMeasureAllChildren:Z

    .line 351
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 391
    const/4 v0, 0x0

    return v0
.end method
