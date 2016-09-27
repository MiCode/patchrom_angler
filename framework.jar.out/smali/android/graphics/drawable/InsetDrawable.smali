.class public Landroid/graphics/drawable/InsetDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "InsetDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/InsetDrawable$InsetState;
    }
.end annotation


# instance fields
.field private mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

.field private final mTmpRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 6
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "inset"    # I

    .prologue
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p2

    move v4, p2

    move v5, p2

    .line 71
    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;IIII)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "insetLeft"    # I
    .param p3, "insetTop"    # I
    .param p4, "insetRight"    # I
    .param p5, "insetBottom"    # I

    .prologue
    const/4 v1, 0x0

    .line 85
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    .line 87
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iput p2, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    .line 88
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iput p3, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    .line 89
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iput p4, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    .line 90
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iput p5, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    .line 92
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V
    .locals 1
    .param p1, "state"    # Landroid/graphics/drawable/InsetDrawable$InsetState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 278
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 280
    iput-object p1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 277
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;Landroid/graphics/drawable/InsetDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/InsetDrawable$InsetState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v0, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v0, v0, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-nez v0, :cond_1

    .line 111
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 112
    const-string/jumbo v2, ": <inset> tag requires a \'drawable\' attribute or "

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 113
    const-string/jumbo v2, "child tag defining a drawable"

    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 159
    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 160
    .local v2, "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    if-nez v2, :cond_0

    .line 161
    return-void

    .line 164
    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    if-eqz v3, :cond_1

    .line 165
    iget-object v3, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mThemeAttrs:[I

    sget-object v4, Lcom/android/internal/R$styleable;->InsetDrawable:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 167
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 168
    invoke-direct {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 178
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 158
    return-void

    .line 169
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    .line 170
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    .line 172
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    throw v3
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 236
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 231
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v1, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 3

    .prologue
    .line 206
    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 207
    .local v1, "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    .line 208
    .local v0, "opacity":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    iget v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    if-gtz v2, :cond_0

    iget v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    if-lez v2, :cond_1

    .line 210
    :cond_0
    const/4 v2, -0x3

    return v2

    .line 209
    :cond_1
    iget v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    if-gtz v2, :cond_0

    iget v2, v1, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    if-gtz v2, :cond_0

    .line 212
    :cond_2
    return v0
.end method

.method public getOpticalInsets()Landroid/graphics/Insets;
    .locals 6

    .prologue
    .line 197
    invoke-super {p0}, Landroid/graphics/drawable/DrawableWrapper;->getOpticalInsets()Landroid/graphics/Insets;

    move-result-object v0

    .line 198
    .local v0, "contentInsets":Landroid/graphics/Insets;
    iget v1, v0, Landroid/graphics/Insets;->left:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    add-int/2addr v1, v2

    .line 199
    iget v2, v0, Landroid/graphics/Insets;->top:I

    iget-object v3, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v3, v3, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    add-int/2addr v2, v3

    .line 200
    iget v3, v0, Landroid/graphics/Insets;->right:I

    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v4, v4, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    add-int/2addr v3, v4

    .line 201
    iget v4, v0, Landroid/graphics/Insets;->bottom:I

    iget-object v5, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v5, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    add-int/2addr v4, v5

    .line 198
    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Insets;->of(IIII)Landroid/graphics/Insets;

    move-result-object v1

    return-object v1
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 1
    .param p1, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 241
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getOutline(Landroid/graphics/Outline;)V

    .line 240
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 5
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 183
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    .line 185
    .local v0, "pad":Z
    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v4, v4, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->left:I

    .line 186
    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v4, v4, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->right:I

    .line 187
    iget v3, p1, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v4, v4, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->top:I

    .line 188
    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v4, v4, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Rect;->bottom:I

    .line 190
    if-nez v0, :cond_0

    iget-object v3, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v3, v3, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v4, v4, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    or-int/2addr v3, v4

    .line 191
    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v4, v4, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    .line 190
    or-int/2addr v3, v4

    .line 191
    iget-object v4, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v4, v4, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    .line 190
    or-int/2addr v3, v4

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 100
    sget-object v1, Lcom/android/internal/R$styleable;->InsetDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/InsetDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 102
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/InsetDrawable;->inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 103
    invoke-direct {p0, v0}, Landroid/graphics/drawable/InsetDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    .line 104
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 97
    return-void
.end method

.method mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .locals 2

    .prologue
    .line 246
    new-instance v0, Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget-object v1, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/InsetDrawable$InsetState;-><init>(Landroid/graphics/drawable/InsetDrawable$InsetState;)V

    iput-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 247
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    return-object v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 217
    iget-object v0, p0, Landroid/graphics/drawable/InsetDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 218
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 220
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 221
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 222
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 223
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    iget v2, v2, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 226
    invoke-super {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 216
    return-void
.end method

.method updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 8
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/high16 v7, -0x80000000

    .line 119
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 121
    iget-object v5, p0, Landroid/graphics/drawable/InsetDrawable;->mState:Landroid/graphics/drawable/InsetDrawable$InsetState;

    .line 122
    .local v5, "state":Landroid/graphics/drawable/InsetDrawable$InsetState;
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 123
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 124
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 125
    .local v1, "attr":I
    packed-switch v1, :pswitch_data_0

    .line 123
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    :pswitch_0
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 128
    .local v2, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 129
    invoke-virtual {p0, v2}, Landroid/graphics/drawable/InsetDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 133
    .end local v2    # "dr":Landroid/graphics/drawable/Drawable;
    :pswitch_1
    invoke-virtual {p1, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v4

    .line 134
    .local v4, "inset":I
    if-eq v4, v7, :cond_0

    .line 135
    iput v4, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    .line 136
    iput v4, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    .line 137
    iput v4, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    .line 138
    iput v4, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    goto :goto_1

    .line 142
    .end local v4    # "inset":I
    :pswitch_2
    iget v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetLeft:I

    goto :goto_1

    .line 145
    :pswitch_3
    iget v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetTop:I

    goto :goto_1

    .line 148
    :pswitch_4
    iget v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetRight:I

    goto :goto_1

    .line 151
    :pswitch_5
    iget v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    invoke-virtual {p1, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    iput v6, v5, Landroid/graphics/drawable/InsetDrawable$InsetState;->mInsetBottom:I

    goto :goto_1

    .line 118
    .end local v1    # "attr":I
    :cond_1
    return-void

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_1
    .end packed-switch
.end method
