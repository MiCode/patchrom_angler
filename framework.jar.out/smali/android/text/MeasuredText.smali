.class Landroid/text/MeasuredText;
.super Ljava/lang/Object;
.source "MeasuredText.java"


# static fields
.field private static final localLOGV:Z

.field private static final sCached:[Landroid/text/MeasuredText;

.field private static final sLock:[Ljava/lang/Object;


# instance fields
.field private mBuilder:Landroid/text/StaticLayout$Builder;

.field mChars:[C

.field mDir:I

.field mEasy:Z

.field mLen:I

.field mLevels:[B

.field private mPos:I

.field mText:Ljava/lang/CharSequence;

.field mTextStart:I

.field mWidths:[F

.field private mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/MeasuredText;

    sput-object v0, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 44
    return-void
.end method

.method static obtain()Landroid/text/MeasuredText;
    .locals 5

    .prologue
    .line 53
    sget-object v3, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v3

    .line 54
    :try_start_0
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v0, v2

    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 55
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 56
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v2, v0

    .line 57
    .local v1, "mt":Landroid/text/MeasuredText;
    sget-object v2, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    const/4 v4, 0x0

    aput-object v4, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 58
    return-object v1

    .end local v1    # "mt":Landroid/text/MeasuredText;
    :cond_1
    monitor-exit v3

    .line 62
    new-instance v1, Landroid/text/MeasuredText;

    invoke-direct {v1}, Landroid/text/MeasuredText;-><init>()V

    .line 66
    .restart local v1    # "mt":Landroid/text/MeasuredText;
    return-object v1

    .line 53
    .end local v1    # "mt":Landroid/text/MeasuredText;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method static recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;
    .locals 4
    .param p0, "mt"    # Landroid/text/MeasuredText;

    .prologue
    const/4 v3, 0x0

    .line 70
    invoke-virtual {p0}, Landroid/text/MeasuredText;->finish()V

    .line 71
    sget-object v2, Landroid/text/MeasuredText;->sLock:[Ljava/lang/Object;

    monitor-enter v2

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 73
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    .line 74
    sget-object v1, Landroid/text/MeasuredText;->sCached:[Landroid/text/MeasuredText;

    aput-object p0, v1, v0

    .line 75
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 80
    return-object v3

    .line 72
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 24
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "len"    # I
    .param p3, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    .line 164
    if-eqz p3, :cond_0

    .line 165
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 168
    :cond_0
    move-object/from16 v0, p0

    iget v4, v0, Landroid/text/MeasuredText;->mPos:I

    .line 169
    .local v4, "p":I
    add-int v2, v4, p2

    move-object/from16 v0, p0

    iput v2, v0, Landroid/text/MeasuredText;->mPos:I

    .line 173
    const/4 v9, 0x0

    .line 174
    .local v9, "widths":[F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/text/TextPaint;

    if-eq v2, v3, :cond_2

    .line 175
    :cond_1
    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/text/MeasuredText;->mWidths:[F

    .line 177
    .end local v9    # "widths":[F
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v2, :cond_6

    .line 178
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/MeasuredText;->mDir:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v8, 0x1

    .line 179
    .local v8, "isRtl":Z
    :goto_0
    const/16 v23, 0x0

    .line 180
    .local v23, "width":F
    if-eqz v9, :cond_5

    .line 181
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/MeasuredText;->mChars:[C

    move-object/from16 v2, p1

    move/from16 v5, p2

    move v6, v4

    move/from16 v7, p2

    move v10, v4

    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v23

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-eqz v2, :cond_3

    .line 183
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    add-int v3, v4, p2

    invoke-virtual {v2, v4, v3, v9}, Landroid/text/StaticLayout$Builder;->addMeasuredRun(II[F)V

    .line 188
    :cond_3
    :goto_1
    return v23

    .line 178
    .end local v8    # "isRtl":Z
    .end local v23    # "width":F
    :cond_4
    const/4 v8, 0x0

    .restart local v8    # "isRtl":Z
    goto :goto_0

    .line 186
    .restart local v23    # "width":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    add-int v3, v4, p2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v4, v3, v8}, Landroid/text/StaticLayout$Builder;->addStyleRun(Landroid/text/TextPaint;IIZ)F

    move-result v23

    goto :goto_1

    .line 191
    .end local v8    # "isRtl":Z
    .end local v23    # "width":F
    :cond_6
    const/16 v22, 0x0

    .line 192
    .local v22, "totalAdvance":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v21, v2, v4

    .line 193
    .local v21, "level":I
    move v12, v4

    .local v12, "q":I
    add-int/lit8 v20, v4, 0x1

    .local v20, "i":I
    add-int v19, v4, p2

    .line 194
    .local v19, "e":I
    :goto_2
    move/from16 v0, v20

    move/from16 v1, v19

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v2, v2, v20

    move/from16 v0, v21

    if-eq v2, v0, :cond_c

    .line 195
    :cond_7
    and-int/lit8 v2, v21, 0x1

    if-eqz v2, :cond_9

    const/4 v8, 0x1

    .line 196
    .restart local v8    # "isRtl":Z
    :goto_3
    if-eqz v9, :cond_a

    .line 198
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/MeasuredText;->mChars:[C

    sub-int v13, v20, v12

    sub-int v15, v20, v12

    move-object/from16 v10, p1

    move v14, v12

    move/from16 v16, v8

    move-object/from16 v17, v9

    move/from16 v18, v12

    invoke-virtual/range {v10 .. v18}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v2

    .line 197
    add-float v22, v22, v2

    .line 199
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-eqz v2, :cond_8

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    move/from16 v0, v20

    invoke-virtual {v2, v12, v0, v9}, Landroid/text/StaticLayout$Builder;->addMeasuredRun(II[F)V

    .line 205
    :cond_8
    :goto_4
    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 212
    return v22

    .line 195
    .end local v8    # "isRtl":Z
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "isRtl":Z
    goto :goto_3

    .line 203
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v2, v0, v12, v1, v8}, Landroid/text/StaticLayout$Builder;->addStyleRun(Landroid/text/TextPaint;IIZ)F

    move-result v2

    add-float v22, v22, v2

    goto :goto_4

    .line 208
    :cond_b
    move/from16 v12, v20

    .line 209
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/text/MeasuredText;->mLevels:[B

    aget-byte v21, v2, v20

    .line 193
    .end local v8    # "isRtl":Z
    :cond_c
    add-int/lit8 v20, v20, 0x1

    goto :goto_2
.end method

.method addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F
    .locals 11
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "spans"    # [Landroid/text/style/MetricAffectingSpan;
    .param p3, "len"    # I
    .param p4, "fm"    # Landroid/graphics/Paint$FontMetricsInt;

    .prologue
    const/4 v2, 0x0

    .line 218
    iget-object v1, p0, Landroid/text/MeasuredText;->mWorkPaint:Landroid/text/TextPaint;

    .line 219
    .local v1, "workPaint":Landroid/text/TextPaint;
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 221
    iput v2, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "replacement":Landroid/text/style/ReplacementSpan;
    const/4 v7, 0x0

    .end local v0    # "replacement":Landroid/text/style/ReplacementSpan;
    .local v7, "i":I
    :goto_0
    array-length v2, p2

    if-ge v7, v2, :cond_1

    .line 225
    aget-object v8, p2, v7

    .line 226
    .local v8, "span":Landroid/text/style/MetricAffectingSpan;
    instance-of v2, v8, Landroid/text/style/ReplacementSpan;

    if-eqz v2, :cond_0

    move-object v0, v8

    .line 227
    check-cast v0, Landroid/text/style/ReplacementSpan;

    .line 224
    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {v8, v1}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    goto :goto_1

    .line 234
    .end local v8    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_1
    if-nez v0, :cond_3

    .line 235
    invoke-virtual {p0, v1, p3, p4}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 251
    .local v10, "wid":F
    :goto_2
    if-eqz p4, :cond_2

    .line 252
    iget v2, v1, Landroid/text/TextPaint;->baselineShift:I

    if-gez v2, :cond_6

    .line 253
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 254
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 261
    :cond_2
    :goto_3
    return v10

    .line 238
    .end local v10    # "wid":F
    :cond_3
    iget-object v2, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v3, v4

    .line 239
    iget v4, p0, Landroid/text/MeasuredText;->mTextStart:I

    iget v5, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v4, v5

    add-int/2addr v4, p3

    move-object v5, p4

    .line 238
    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v2

    int-to-float v10, v2

    .line 240
    .restart local v10    # "wid":F
    iget-object v2, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    if-nez v2, :cond_4

    .line 241
    iget-object v9, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 242
    .local v9, "w":[F
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    aput v10, v9, v2

    .line 243
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/lit8 v7, v2, 0x1

    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int v6, v2, p3

    .local v6, "e":I
    :goto_4
    if-ge v7, v6, :cond_5

    .line 244
    const/4 v2, 0x0

    aput v2, v9, v7

    .line 243
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 246
    .end local v6    # "e":I
    .end local v9    # "w":[F
    :cond_4
    iget-object v2, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    iget v3, p0, Landroid/text/MeasuredText;->mPos:I

    iget v4, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v4, p3

    invoke-virtual {v2, v3, v4, v10}, Landroid/text/StaticLayout$Builder;->addReplacementRun(IIF)V

    .line 248
    :cond_5
    iget v2, p0, Landroid/text/MeasuredText;->mPos:I

    add-int/2addr v2, p3

    iput v2, p0, Landroid/text/MeasuredText;->mPos:I

    goto :goto_2

    .line 256
    :cond_6
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 257
    iget v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v2, v3

    iput v2, p4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_3
.end method

.method breakText(IZF)I
    .locals 5
    .param p1, "limit"    # I
    .param p2, "forwards"    # Z
    .param p3, "width"    # F

    .prologue
    const/16 v4, 0x20

    const/4 v3, 0x0

    .line 265
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 266
    .local v1, "w":[F
    if-eqz p2, :cond_3

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 269
    aget v2, v1, v0

    sub-float/2addr p3, v2

    .line 270
    cmpg-float v2, p3, v3

    if-gez v2, :cond_1

    .line 273
    :cond_0
    :goto_1
    if-lez v0, :cond_2

    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, v0, -0x1

    aget-char v2, v2, v3

    if-ne v2, v4, :cond_2

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 271
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    :cond_2
    return v0

    .line 276
    .end local v0    # "i":I
    :cond_3
    add-int/lit8 v0, p1, -0x1

    .line 277
    .restart local v0    # "i":I
    :goto_2
    if-ltz v0, :cond_4

    .line 278
    aget v2, v1, v0

    sub-float/2addr p3, v2

    .line 279
    cmpg-float v2, p3, v3

    if-gez v2, :cond_5

    .line 282
    :cond_4
    :goto_3
    add-int/lit8 v2, p1, -0x1

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v2, v2, v3

    if-ne v2, v4, :cond_6

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 280
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 283
    :cond_6
    sub-int v2, p1, v0

    add-int/lit8 v2, v2, -0x1

    return v2
.end method

.method finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    iput-object v2, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 85
    iput-object v2, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    .line 86
    iget v0, p0, Landroid/text/MeasuredText;->mLen:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 87
    iput-object v2, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 88
    iput-object v2, p0, Landroid/text/MeasuredText;->mChars:[C

    .line 89
    iput-object v2, p0, Landroid/text/MeasuredText;->mLevels:[B

    .line 83
    :cond_0
    return-void
.end method

.method measure(II)F
    .locals 4
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .prologue
    .line 288
    const/4 v2, 0x0

    .line 289
    .local v2, "width":F
    iget-object v1, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 290
    .local v1, "w":[F
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 291
    aget v3, v1, v0

    add-float/2addr v2, v3

    .line 290
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_0
    return v2
.end method

.method setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V
    .locals 13
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p5, "builder"    # Landroid/text/StaticLayout$Builder;

    .prologue
    .line 102
    move-object/from16 v0, p5

    iput-object v0, p0, Landroid/text/MeasuredText;->mBuilder:Landroid/text/StaticLayout$Builder;

    .line 103
    iput-object p1, p0, Landroid/text/MeasuredText;->mText:Ljava/lang/CharSequence;

    .line 104
    iput p2, p0, Landroid/text/MeasuredText;->mTextStart:I

    .line 106
    sub-int v6, p3, p2

    .line 107
    .local v6, "len":I
    iput v6, p0, Landroid/text/MeasuredText;->mLen:I

    .line 108
    const/4 v10, 0x0

    iput v10, p0, Landroid/text/MeasuredText;->mPos:I

    .line 110
    iget-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    if-eqz v10, :cond_0

    iget-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    array-length v10, v10

    if-ge v10, v6, :cond_1

    .line 111
    :cond_0
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedFloatArray(I)[F

    move-result-object v10

    iput-object v10, p0, Landroid/text/MeasuredText;->mWidths:[F

    .line 113
    :cond_1
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    if-eqz v10, :cond_2

    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    array-length v10, v10

    if-ge v10, v6, :cond_3

    .line 114
    :cond_2
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v10

    iput-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    .line 116
    :cond_3
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    move/from16 v0, p3

    invoke-static {p1, p2, v0, v10, v11}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 118
    instance-of v10, p1, Landroid/text/Spanned;

    if-eqz v10, :cond_7

    move-object v7, p1

    .line 119
    check-cast v7, Landroid/text/Spanned;

    .line 121
    .local v7, "spanned":Landroid/text/Spanned;
    const-class v10, Landroid/text/style/ReplacementSpan;

    .line 120
    move/from16 v0, p3

    invoke-interface {v7, p2, v0, v10}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/ReplacementSpan;

    .line 123
    .local v8, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, v8

    if-ge v3, v10, :cond_7

    .line 124
    aget-object v10, v8, v3

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    sub-int v9, v10, p2

    .line 125
    .local v9, "startInPara":I
    aget-object v10, v8, v3

    invoke-interface {v7, v10}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    sub-int v2, v10, p2

    .line 127
    .local v2, "endInPara":I
    if-gez v9, :cond_4

    const/4 v9, 0x0

    .line 128
    :cond_4
    if-le v2, v6, :cond_5

    move v2, v6

    .line 129
    :cond_5
    move v5, v9

    .local v5, "j":I
    :goto_1
    if-ge v5, v2, :cond_6

    .line 130
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const v11, 0xfffc

    aput-char v11, v10, v5

    .line 129
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 123
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    .end local v2    # "endInPara":I
    .end local v3    # "i":I
    .end local v5    # "j":I
    .end local v7    # "spanned":Landroid/text/Spanned;
    .end local v8    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v9    # "startInPara":I
    :cond_7
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v10, :cond_8

    .line 136
    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_9

    .line 138
    :cond_8
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    invoke-static {v10, v11, v6}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v10

    .line 135
    if-eqz v10, :cond_a

    .line 139
    const/4 v10, 0x1

    iput v10, p0, Landroid/text/MeasuredText;->mDir:I

    .line 140
    const/4 v10, 0x1

    iput-boolean v10, p0, Landroid/text/MeasuredText;->mEasy:Z

    .line 101
    :goto_2
    return-void

    .line 137
    :cond_9
    sget-object v10, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-eq v0, v10, :cond_8

    .line 142
    :cond_a
    iget-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    if-eqz v10, :cond_b

    iget-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    array-length v10, v10

    if-ge v10, v6, :cond_c

    .line 143
    :cond_b
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedByteArray(I)[B

    move-result-object v10

    iput-object v10, p0, Landroid/text/MeasuredText;->mLevels:[B

    .line 146
    :cond_c
    sget-object v10, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_d

    .line 147
    const/4 v1, 0x1

    .line 158
    .local v1, "bidiRequest":I
    :goto_3
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    iget-object v11, p0, Landroid/text/MeasuredText;->mLevels:[B

    const/4 v12, 0x0

    invoke-static {v1, v10, v11, v6, v12}, Landroid/text/AndroidBidi;->bidi(I[C[BIZ)I

    move-result v10

    iput v10, p0, Landroid/text/MeasuredText;->mDir:I

    .line 159
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/text/MeasuredText;->mEasy:Z

    goto :goto_2

    .line 148
    .end local v1    # "bidiRequest":I
    :cond_d
    sget-object v10, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_e

    .line 149
    const/4 v1, -0x1

    .restart local v1    # "bidiRequest":I
    goto :goto_3

    .line 150
    .end local v1    # "bidiRequest":I
    :cond_e
    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_f

    .line 151
    const/4 v1, 0x2

    .restart local v1    # "bidiRequest":I
    goto :goto_3

    .line 152
    .end local v1    # "bidiRequest":I
    :cond_f
    sget-object v10, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, p4

    if-ne v0, v10, :cond_10

    .line 153
    const/4 v1, -0x2

    .restart local v1    # "bidiRequest":I
    goto :goto_3

    .line 155
    .end local v1    # "bidiRequest":I
    :cond_10
    iget-object v10, p0, Landroid/text/MeasuredText;->mChars:[C

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-interface {v0, v10, v11, v6}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v4

    .line 156
    .local v4, "isRtl":Z
    if-eqz v4, :cond_11

    const/4 v1, -0x1

    .restart local v1    # "bidiRequest":I
    goto :goto_3

    .end local v1    # "bidiRequest":I
    :cond_11
    const/4 v1, 0x1

    .restart local v1    # "bidiRequest":I
    goto :goto_3
.end method

.method setPos(I)V
    .locals 1
    .param p1, "pos"    # I

    .prologue
    .line 94
    iget v0, p0, Landroid/text/MeasuredText;->mTextStart:I

    sub-int v0, p1, v0

    iput v0, p0, Landroid/text/MeasuredText;->mPos:I

    .line 93
    return-void
.end method
