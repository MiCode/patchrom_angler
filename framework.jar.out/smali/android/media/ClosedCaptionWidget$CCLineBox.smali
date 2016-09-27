.class Landroid/media/ClosedCaptionWidget$CCLineBox;
.super Landroid/widget/TextView;
.source "ClosedCaptionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/ClosedCaptionWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CCLineBox"
.end annotation


# static fields
.field private static final EDGE_OUTLINE_RATIO:F = 0.1f

.field private static final EDGE_SHADOW_RATIO:F = 0.05f

.field private static final FONT_PADDING_RATIO:F = 0.75f


# instance fields
.field private mBgColor:I

.field private mEdgeColor:I

.field private mEdgeType:I

.field private mOutlineWidth:F

.field private mShadowOffset:F

.field private mShadowRadius:F

.field private mTextColor:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1228
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1222
    iput v3, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mTextColor:I

    .line 1223
    const/high16 v1, -0x1000000

    iput v1, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mBgColor:I

    .line 1224
    iput v2, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    .line 1225
    iput v2, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeColor:I

    .line 1229
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setGravity(I)V

    .line 1230
    invoke-virtual {p0, v2}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setBackgroundColor(I)V

    .line 1231
    invoke-virtual {p0, v3}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setTextColor(I)V

    .line 1232
    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p0, v1}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1233
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setVisibility(I)V

    .line 1235
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1239
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1050086

    .line 1238
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mOutlineWidth:F

    .line 1241
    const v1, 0x1050084

    .line 1240
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowRadius:F

    .line 1243
    const v1, 0x1050085

    .line 1242
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowOffset:F

    .line 1227
    return-void
.end method

.method private drawEdgeOutline(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1300
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    .line 1302
    .local v3, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {v3}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    .line 1303
    .local v1, "previousStyle":Landroid/graphics/Paint$Style;
    invoke-virtual {v3}, Landroid/text/TextPaint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v0

    .line 1304
    .local v0, "previousJoin":Landroid/graphics/Paint$Join;
    invoke-virtual {v3}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v2

    .line 1306
    .local v2, "previousWidth":F
    iget v4, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeColor:I

    invoke-virtual {p0, v4}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setTextColor(I)V

    .line 1307
    sget-object v4, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1308
    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1309
    iget v4, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mOutlineWidth:F

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 1312
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1315
    iget v4, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mTextColor:I

    invoke-virtual {p0, v4}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setTextColor(I)V

    .line 1316
    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1317
    invoke-virtual {v3, v0}, Landroid/text/TextPaint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 1318
    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 1321
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 1323
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1325
    iget v4, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mBgColor:I

    invoke-direct {p0, v4}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 1299
    return-void
.end method

.method private drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1329
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 1331
    .local v5, "textPaint":Landroid/text/TextPaint;
    invoke-virtual {v5}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v3

    .line 1332
    .local v3, "previousStyle":Landroid/graphics/Paint$Style;
    sget-object v6, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1334
    iget v6, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    const/4 v4, 0x1

    .line 1335
    .local v4, "raised":Z
    :goto_0
    if-eqz v4, :cond_1

    const/4 v1, -0x1

    .line 1336
    .local v1, "colorUp":I
    :goto_1
    if-eqz v4, :cond_2

    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeColor:I

    .line 1337
    .local v0, "colorDown":I
    :goto_2
    iget v6, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowRadius:F

    const/high16 v7, 0x40000000    # 2.0f

    div-float v2, v6, v7

    .line 1340
    .local v2, "offset":F
    iget v6, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowRadius:F

    neg-float v7, v2

    neg-float v8, v2

    invoke-virtual {p0, v6, v7, v8, v1}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setShadowLayer(FFFI)V

    .line 1341
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1344
    const/4 v6, 0x0

    invoke-direct {p0, v6}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 1347
    iget v6, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowRadius:F

    invoke-virtual {p0, v6, v2, v2, v0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setShadowLayer(FFFI)V

    .line 1348
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1351
    invoke-virtual {v5, v3}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1354
    iget v6, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mBgColor:I

    invoke-direct {p0, v6}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setBackgroundSpans(I)V

    .line 1328
    return-void

    .line 1334
    .end local v0    # "colorDown":I
    .end local v1    # "colorUp":I
    .end local v2    # "offset":F
    .end local v4    # "raised":Z
    :cond_0
    const/4 v4, 0x0

    .restart local v4    # "raised":Z
    goto :goto_0

    .line 1335
    :cond_1
    iget v1, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeColor:I

    .restart local v1    # "colorUp":I
    goto :goto_1

    .line 1336
    :cond_2
    const/4 v0, -0x1

    .restart local v0    # "colorDown":I
    goto :goto_2
.end method

.method private setBackgroundSpans(I)V
    .locals 7
    .param p1, "color"    # I

    .prologue
    .line 1358
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    .line 1359
    .local v3, "text":Ljava/lang/CharSequence;
    instance-of v4, v3, Landroid/text/Spannable;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 1360
    check-cast v2, Landroid/text/Spannable;

    .line 1362
    .local v2, "spannable":Landroid/text/Spannable;
    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/media/MutableBackgroundColorSpan;

    const/4 v6, 0x0

    .line 1361
    invoke-interface {v2, v6, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/media/MutableBackgroundColorSpan;

    .line 1363
    .local v0, "bgSpans":[Landroid/media/MutableBackgroundColorSpan;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_0

    .line 1364
    aget-object v4, v0, v1

    invoke-virtual {v4, p1}, Landroid/media/MutableBackgroundColorSpan;->setBackgroundColor(I)V

    .line 1363
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1357
    .end local v0    # "bgSpans":[Landroid/media/MutableBackgroundColorSpan;
    .end local v1    # "i":I
    .end local v2    # "spannable":Landroid/text/Spannable;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 1283
    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1284
    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    if-nez v0, :cond_1

    .line 1287
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1288
    return-void

    .line 1285
    :cond_1
    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 1291
    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1292
    invoke-direct {p0, p1}, Landroid/media/ClosedCaptionWidget$CCLineBox;->drawEdgeOutline(Landroid/graphics/Canvas;)V

    .line 1282
    :goto_0
    return-void

    .line 1295
    :cond_2
    invoke-direct {p0, p1}, Landroid/media/ClosedCaptionWidget$CCLineBox;->drawEdgeRaisedOrDepressed(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v7, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 1263
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v3, v3

    .line 1264
    const/high16 v4, 0x3f400000    # 0.75f

    .line 1263
    mul-float v1, v3, v4

    .line 1265
    .local v1, "fontSize":F
    invoke-virtual {p0, v7, v1}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setTextSize(IF)V

    .line 1267
    const v3, 0x3dcccccd    # 0.1f

    mul-float/2addr v3, v1

    add-float/2addr v3, v5

    iput v3, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mOutlineWidth:F

    .line 1268
    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v3, v1

    add-float/2addr v3, v5

    iput v3, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowRadius:F

    .line 1269
    iget v3, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowRadius:F

    iput v3, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowOffset:F

    .line 1272
    invoke-virtual {p0, v5}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setScaleX(F)V

    .line 1273
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const-string/jumbo v4, "1234567890123456789012345678901234"

    const-string/jumbo v5, "1234567890123456789012345678901234"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {}, Landroid/media/ClosedCaptionWidget;->-get3()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 1274
    invoke-static {}, Landroid/media/ClosedCaptionWidget;->-get3()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v0, v3

    .line 1275
    .local v0, "actualTextWidth":F
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    int-to-float v2, v3

    .line 1276
    .local v2, "requiredTextWidth":F
    div-float v3, v2, v0

    invoke-virtual {p0, v3}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setScaleX(F)V

    .line 1278
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 1262
    return-void
.end method

.method setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;)V
    .locals 4
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .prologue
    const/4 v2, 0x0

    .line 1247
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    iput v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mTextColor:I

    .line 1248
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    iput v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mBgColor:I

    .line 1249
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    iput v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    .line 1250
    iget v0, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    iput v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeColor:I

    .line 1252
    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mTextColor:I

    invoke-virtual {p0, v0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setTextColor(I)V

    .line 1253
    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1254
    iget v0, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowRadius:F

    iget v1, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowOffset:F

    iget v2, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mShadowOffset:F

    iget v3, p0, Landroid/media/ClosedCaptionWidget$CCLineBox;->mEdgeColor:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setShadowLayer(FFFI)V

    .line 1258
    :goto_0
    invoke-virtual {p0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->invalidate()V

    .line 1246
    return-void

    .line 1256
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v2, v2, v0}, Landroid/media/ClosedCaptionWidget$CCLineBox;->setShadowLayer(FFFI)V

    goto :goto_0
.end method
