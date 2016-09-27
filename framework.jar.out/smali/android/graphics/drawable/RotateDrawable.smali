.class public Landroid/graphics/drawable/RotateDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;
.source "RotateDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/RotateDrawable$RotateState;
    }
.end annotation


# static fields
.field private static final MAX_LEVEL:I = 0x2710


# instance fields
.field private mState:Landroid/graphics/drawable/RotateDrawable$RotateState;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    new-instance v0, Landroid/graphics/drawable/RotateDrawable$RotateState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/RotateDrawable$RotateState;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;)V

    invoke-direct {p0, v0, v1}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

    .line 60
    return-void
.end method

.method private constructor <init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/RotateDrawable$RotateState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 353
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;Landroid/content/res/Resources;)V

    .line 355
    iput-object p1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    .line 352
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;Landroid/graphics/drawable/RotateDrawable;)V
    .locals 0
    .param p1, "state"    # Landroid/graphics/drawable/RotateDrawable$RotateState;
    .param p2, "res"    # Landroid/content/res/Resources;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/RotateDrawable;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;Landroid/content/res/Resources;)V

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
    .line 78
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mThemeAttrs:[I

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mThemeAttrs:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-nez v0, :cond_1

    .line 80
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 81
    const-string/jumbo v2, ": <rotate> tag requires a \'drawable\' attribute or "

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    const-string/jumbo v2, "child tag defining a drawable"

    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 5
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .prologue
    .line 121
    iget-object v2, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    .line 122
    .local v2, "state":Landroid/graphics/drawable/RotateDrawable$RotateState;
    if-nez v2, :cond_0

    .line 123
    return-void

    .line 126
    :cond_0
    iget-object v3, v2, Landroid/graphics/drawable/RotateDrawable$RotateState;->mThemeAttrs:[I

    if-eqz v3, :cond_1

    .line 127
    iget-object v3, v2, Landroid/graphics/drawable/RotateDrawable$RotateState;->mThemeAttrs:[I

    sget-object v4, Lcom/android/internal/R$styleable;->RotateDrawable:[I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 129
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 130
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 120
    return-void

    .line 131
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catch_0
    move-exception v1

    .line 132
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catchall_0
    move-exception v3

    .line 134
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 133
    throw v3
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 145
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 146
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 147
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->left:I

    sub-int v7, v8, v9

    .line 148
    .local v7, "w":I
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, v8, v9

    .line 149
    .local v2, "h":I
    iget-object v6, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    .line 150
    .local v6, "st":Landroid/graphics/drawable/RotateDrawable$RotateState;
    iget-boolean v8, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    if-eqz v8, :cond_0

    int-to-float v8, v7

    iget v9, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    mul-float v3, v8, v9

    .line 151
    .local v3, "px":F
    :goto_0
    iget-boolean v8, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    if-eqz v8, :cond_1

    int-to-float v8, v2

    iget v9, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    mul-float v4, v8, v9

    .line 153
    .local v4, "py":F
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 154
    .local v5, "saveCount":I
    iget v8, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    iget v9, v0, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    add-float/2addr v9, v3

    iget v10, v0, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    add-float/2addr v10, v4

    invoke-virtual {p1, v8, v9, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 155
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 156
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 144
    return-void

    .line 150
    .end local v3    # "px":F
    .end local v4    # "py":F
    .end local v5    # "saveCount":I
    :cond_0
    iget v3, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    .restart local v3    # "px":F
    goto :goto_0

    .line 151
    :cond_1
    iget v4, v6, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    .restart local v4    # "py":F
    goto :goto_1
.end method

.method public getFromDegrees()F
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    return v0
.end method

.method public getPivotX()F
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    return v0
.end method

.method public getPivotY()F
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    return v0
.end method

.method public getToDegrees()F
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    return v0
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
    .line 67
    sget-object v1, Lcom/android/internal/R$styleable;->RotateDrawable:[I

    invoke-static {p1, p4, p3, v1}, Landroid/graphics/drawable/RotateDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 68
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-super {p0, p1, p2, v0, v1}, Landroid/graphics/drawable/DrawableWrapper;->inflateWithAttributes(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/content/res/TypedArray;I)V

    .line 70
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 71
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/RotateDrawable;->inflateChildDrawable(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    .line 72
    invoke-direct {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->verifyRequiredAttributes(Landroid/content/res/TypedArray;)V

    .line 73
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    return-void
.end method

.method public isPivotXRelative()Z
    .locals 1

    .prologue
    .line 252
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    return v0
.end method

.method public isPivotYRelative()Z
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    return v0
.end method

.method mutateConstantState()Landroid/graphics/drawable/DrawableWrapper$DrawableWrapperState;
    .locals 2

    .prologue
    .line 319
    new-instance v0, Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-object v1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/RotateDrawable$RotateState;-><init>(Landroid/graphics/drawable/RotateDrawable$RotateState;)V

    iput-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    .line 320
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    return-object v0
.end method

.method protected onLevelChange(I)Z
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onLevelChange(I)Z

    .line 309
    int-to-float v2, p1

    const v3, 0x461c4000    # 10000.0f

    div-float v1, v2, v3

    .line 310
    .local v1, "value":F
    iget-object v2, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v2, v2, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    iget-object v3, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v3, v3, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    invoke-static {v2, v3, v1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    .line 311
    .local v0, "degrees":F
    iget-object v2, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput v0, v2, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    .line 313
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    .line 314
    const/4 v2, 0x1

    return v2
.end method

.method public setFromDegrees(F)V
    .locals 1
    .param p1, "fromDegrees"    # F

    .prologue
    .line 167
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    .line 169
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    .line 166
    :cond_0
    return-void
.end method

.method public setPivotX(F)V
    .locals 1
    .param p1, "pivotX"    # F

    .prologue
    .line 216
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    .line 218
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    .line 215
    :cond_0
    return-void
.end method

.method public setPivotXRelative(Z)V
    .locals 1
    .param p1, "relative"    # Z

    .prologue
    .line 240
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    if-eq v0, p1, :cond_0

    .line 241
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput-boolean p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    .line 242
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    .line 239
    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1
    .param p1, "pivotY"    # F

    .prologue
    .line 266
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    .line 268
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    .line 265
    :cond_0
    return-void
.end method

.method public setPivotYRelative(Z)V
    .locals 1
    .param p1, "relative"    # Z

    .prologue
    .line 290
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget-boolean v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    if-eq v0, p1, :cond_0

    .line 291
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput-boolean p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    .line 292
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    .line 289
    :cond_0
    return-void
.end method

.method public setToDegrees(F)V
    .locals 1
    .param p1, "toDegrees"    # F

    .prologue
    .line 190
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iget v0, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    iput p1, v0, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    .line 192
    invoke-virtual {p0}, Landroid/graphics/drawable/RotateDrawable;->invalidateSelf()V

    .line 189
    :cond_0
    return-void
.end method

.method updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 9
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v8, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    .line 88
    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 90
    iget-object v1, p0, Landroid/graphics/drawable/RotateDrawable;->mState:Landroid/graphics/drawable/RotateDrawable$RotateState;

    .line 93
    .local v1, "state":Landroid/graphics/drawable/RotateDrawable$RotateState;
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v3

    iput-object v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mThemeAttrs:[I

    .line 95
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 96
    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 97
    .local v2, "tv":Landroid/util/TypedValue;
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x6

    if-ne v3, v6, :cond_4

    move v3, v4

    :goto_0
    iput-boolean v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    .line 98
    iget-boolean v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotXRel:Z

    if-eqz v3, :cond_5

    invoke-virtual {v2, v7, v7}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v3

    :goto_1
    iput v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotX:F

    .line 101
    .end local v2    # "tv":Landroid/util/TypedValue;
    :cond_0
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 102
    invoke-virtual {p1, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 103
    .restart local v2    # "tv":Landroid/util/TypedValue;
    iget v3, v2, Landroid/util/TypedValue;->type:I

    const/4 v6, 0x6

    if-ne v3, v6, :cond_1

    move v5, v4

    :cond_1
    iput-boolean v5, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    .line 104
    iget-boolean v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotYRel:Z

    if-eqz v3, :cond_6

    invoke-virtual {v2, v7, v7}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v3

    :goto_2
    iput v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mPivotY:F

    .line 108
    .end local v2    # "tv":Landroid/util/TypedValue;
    :cond_2
    iget v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    const/4 v5, 0x2

    .line 107
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    .line 110
    iget v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    const/4 v5, 0x3

    .line 109
    invoke-virtual {p1, v5, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mToDegrees:F

    .line 111
    iget v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mFromDegrees:F

    iput v3, v1, Landroid/graphics/drawable/RotateDrawable$RotateState;->mCurrentDegrees:F

    .line 113
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 114
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_3

    .line 115
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/RotateDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 87
    :cond_3
    return-void

    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .restart local v2    # "tv":Landroid/util/TypedValue;
    :cond_4
    move v3, v5

    .line 97
    goto :goto_0

    .line 98
    :cond_5
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    goto :goto_1

    .line 104
    :cond_6
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v3

    goto :goto_2
.end method
