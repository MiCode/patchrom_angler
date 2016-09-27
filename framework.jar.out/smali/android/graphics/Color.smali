.class public Landroid/graphics/Color;
.super Ljava/lang/Object;
.source "Color.java"


# static fields
.field public static final BLACK:I = -0x1000000

.field public static final BLUE:I = -0xffff01

.field public static final CYAN:I = -0xff0001

.field public static final DKGRAY:I = -0xbbbbbc

.field public static final GRAY:I = -0x777778

.field public static final GREEN:I = -0xff0100

.field public static final LTGRAY:I = -0x333334

.field public static final MAGENTA:I = -0xff01

.field public static final RED:I = -0x10000

.field public static final TRANSPARENT:I = 0x0

.field public static final WHITE:I = -0x1

.field public static final YELLOW:I = -0x100

.field private static final sColorNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, -0x333334

    const v6, -0x777778

    const v5, -0xbbbbbc

    const v4, -0xff0001

    const v3, -0xff0100

    .line 410
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    .line 411
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "black"

    const/high16 v2, -0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "darkgray"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "gray"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "lightgray"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "white"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "red"

    const/high16 v2, -0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "green"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "blue"

    const v2, -0xffff01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "yellow"

    const/16 v2, -0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "cyan"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "magenta"

    const v2, -0xff01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "aqua"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "fuchsia"

    const v2, -0xff01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "darkgrey"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "grey"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "lightgrey"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "lime"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "maroon"

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "navy"

    const v2, -0xffff80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "olive"

    const v2, -0x7f8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "purple"

    const v2, -0x7fff80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "silver"

    const v2, -0x3f3f40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "teal"

    const v2, -0xff7f80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSBtoColor(FFF)I
    .locals 13
    .param p0, "h"    # F
    .param p1, "s"    # F
    .param p2, "b"    # F

    .prologue
    const/high16 v12, 0x437f0000    # 255.0f

    const/4 v9, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    .line 269
    invoke-static {p0, v9, v11}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    .line 270
    invoke-static {p1, v9, v11}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p1

    .line 271
    invoke-static {p2, v9, v11}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p2

    .line 273
    const/4 v7, 0x0

    .line 274
    .local v7, "red":F
    const/4 v2, 0x0

    .line 275
    .local v2, "green":F
    const/4 v0, 0x0

    .line 277
    .local v0, "blue":F
    float-to-int v9, p0

    int-to-float v9, v9

    sub-float v9, p0, v9

    const/high16 v10, 0x40c00000    # 6.0f

    mul-float v3, v9, v10

    .line 278
    .local v3, "hf":F
    float-to-int v4, v3

    .line 279
    .local v4, "ihf":I
    int-to-float v9, v4

    sub-float v1, v3, v9

    .line 280
    .local v1, "f":F
    sub-float v9, v11, p1

    mul-float v5, p2, v9

    .line 281
    .local v5, "pv":F
    mul-float v9, p1, v1

    sub-float v9, v11, v9

    mul-float v6, p2, v9

    .line 282
    .local v6, "qv":F
    sub-float v9, v11, v1

    mul-float/2addr v9, p1

    sub-float v9, v11, v9

    mul-float v8, p2, v9

    .line 284
    .local v8, "tv":F
    packed-switch v4, :pswitch_data_0

    .line 317
    :goto_0
    mul-float v9, v7, v12

    float-to-int v9, v9

    shl-int/lit8 v9, v9, 0x10

    const/high16 v10, -0x1000000

    or-int/2addr v9, v10

    .line 318
    mul-float v10, v2, v12

    float-to-int v10, v10

    shl-int/lit8 v10, v10, 0x8

    .line 317
    or-int/2addr v9, v10

    .line 318
    mul-float v10, v0, v12

    float-to-int v10, v10

    .line 317
    or-int/2addr v9, v10

    return v9

    .line 286
    :pswitch_0
    move v7, p2

    .line 287
    move v2, v8

    .line 288
    move v0, v5

    .line 289
    goto :goto_0

    .line 291
    :pswitch_1
    move v7, v6

    .line 292
    move v2, p2

    .line 293
    move v0, v5

    .line 294
    goto :goto_0

    .line 296
    :pswitch_2
    move v7, v5

    .line 297
    move v2, p2

    .line 298
    move v0, v8

    .line 299
    goto :goto_0

    .line 301
    :pswitch_3
    move v7, v5

    .line 302
    move v2, v6

    .line 303
    move v0, p2

    .line 304
    goto :goto_0

    .line 306
    :pswitch_4
    move v7, v8

    .line 307
    move v2, v5

    .line 308
    move v0, p2

    .line 309
    goto :goto_0

    .line 311
    :pswitch_5
    move v7, p2

    .line 312
    move v2, v5

    .line 313
    move v0, v6

    .line 314
    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static HSBtoColor([F)I
    .locals 3
    .param p0, "hsb"    # [F

    .prologue
    .line 251
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->HSBtoColor(FFF)I

    move-result v0

    return v0
.end method

.method public static HSVToColor(I[F)I
    .locals 2
    .param p0, "alpha"    # I
    .param p1, "hsv"    # [F

    .prologue
    .line 375
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 376
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "3 components required for hsv"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_0
    invoke-static {p0, p1}, Landroid/graphics/Color;->nativeHSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public static HSVToColor([F)I
    .locals 1
    .param p0, "hsv"    # [F

    .prologue
    .line 360
    const/16 v0, 0xff

    invoke-static {v0, p0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public static RGBToHSV(III[F)V
    .locals 2
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I
    .param p3, "hsv"    # [F

    .prologue
    .line 332
    array-length v0, p3

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 333
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "3 components required for hsv"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Color;->nativeRGBToHSV(III[F)V

    .line 331
    return-void
.end method

.method public static alpha(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 59
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method public static argb(IIII)I
    .locals 2
    .param p0, "alpha"    # I
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .prologue
    .line 116
    shl-int/lit8 v0, p0, 0x18

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    return v0
.end method

.method public static blue(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 86
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static brightness(I)F
    .locals 6
    .param p0, "color"    # I

    .prologue
    .line 196
    shr-int/lit8 v4, p0, 0x10

    and-int/lit16 v3, v4, 0xff

    .line 197
    .local v3, "r":I
    shr-int/lit8 v4, p0, 0x8

    and-int/lit16 v2, v4, 0xff

    .line 198
    .local v2, "g":I
    and-int/lit16 v1, p0, 0xff

    .line 200
    .local v1, "b":I
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 202
    .local v0, "V":I
    int-to-float v4, v0

    const/high16 v5, 0x437f0000    # 255.0f

    div-float/2addr v4, v5

    return v4
.end method

.method public static colorToHSV(I[F)V
    .locals 3
    .param p0, "color"    # I
    .param p1, "hsv"    # [F

    .prologue
    .line 347
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p0, 0xff

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 346
    return-void
.end method

.method public static getHtmlColor(Ljava/lang/String;)I
    .locals 5
    .param p0, "color"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 395
    sget-object v2, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 396
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 397
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 400
    :cond_0
    const/4 v2, -0x1

    :try_start_0
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 401
    :catch_0
    move-exception v1

    .line 402
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    return v4
.end method

.method public static green(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 77
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static hue(I)F
    .locals 11
    .param p0, "color"    # I

    .prologue
    .line 127
    shr-int/lit8 v10, p0, 0x10

    and-int/lit16 v7, v10, 0xff

    .line 128
    .local v7, "r":I
    shr-int/lit8 v10, p0, 0x8

    and-int/lit16 v6, v10, 0xff

    .line 129
    .local v6, "g":I
    and-int/lit16 v2, p0, 0xff

    .line 131
    .local v2, "b":I
    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 132
    .local v1, "V":I
    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 136
    .local v8, "temp":I
    if-ne v1, v8, :cond_1

    .line 137
    const/4 v0, 0x0

    .line 158
    .local v0, "H":F
    :cond_0
    :goto_0
    return v0

    .line 139
    .end local v0    # "H":F
    :cond_1
    sub-int v10, v1, v8

    int-to-float v9, v10

    .line 140
    .local v9, "vtemp":F
    sub-int v10, v1, v7

    int-to-float v10, v10

    div-float v5, v10, v9

    .line 141
    .local v5, "cr":F
    sub-int v10, v1, v6

    int-to-float v10, v10

    div-float v4, v10, v9

    .line 142
    .local v4, "cg":F
    sub-int v10, v1, v2

    int-to-float v10, v10

    div-float v3, v10, v9

    .line 144
    .local v3, "cb":F
    if-ne v7, v1, :cond_2

    .line 145
    sub-float v0, v3, v4

    .line 152
    .restart local v0    # "H":F
    :goto_1
    const/high16 v10, 0x40c00000    # 6.0f

    div-float/2addr v0, v10

    .line 153
    const/4 v10, 0x0

    cmpg-float v10, v0, v10

    if-gez v10, :cond_0

    .line 154
    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr v0, v10

    goto :goto_0

    .line 146
    .end local v0    # "H":F
    :cond_2
    if-ne v6, v1, :cond_3

    .line 147
    const/high16 v10, 0x40000000    # 2.0f

    add-float/2addr v10, v5

    sub-float v0, v10, v3

    .restart local v0    # "H":F
    goto :goto_1

    .line 149
    .end local v0    # "H":F
    :cond_3
    const/high16 v10, 0x40800000    # 4.0f

    add-float/2addr v10, v4

    sub-float v0, v10, v5

    .restart local v0    # "H":F
    goto :goto_1
.end method

.method private static native nativeHSVToColor(I[F)I
.end method

.method private static native nativeRGBToHSV(III[F)V
.end method

.method public static parseColor(Ljava/lang/String;)I
    .locals 6
    .param p0, "colorString"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_2

    .line 221
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 222
    .local v0, "color":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 224
    const-wide/32 v4, -0x1000000

    or-long/2addr v0, v4

    .line 228
    :cond_0
    long-to-int v3, v0

    return v3

    .line 225
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    .line 226
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Unknown color"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 230
    .end local v0    # "color":J
    :cond_2
    sget-object v3, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 231
    .local v2, "color":Ljava/lang/Integer;
    if-eqz v2, :cond_3

    .line 232
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 235
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Unknown color"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static red(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 68
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static rgb(III)I
    .locals 2
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I

    .prologue
    .line 101
    shl-int/lit8 v0, p0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p2

    return v0
.end method

.method public static saturation(I)F
    .locals 8
    .param p0, "color"    # I

    .prologue
    .line 169
    shr-int/lit8 v6, p0, 0x10

    and-int/lit16 v4, v6, 0xff

    .line 170
    .local v4, "r":I
    shr-int/lit8 v6, p0, 0x8

    and-int/lit16 v3, v6, 0xff

    .line 171
    .local v3, "g":I
    and-int/lit16 v2, p0, 0xff

    .line 174
    .local v2, "b":I
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 175
    .local v1, "V":I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 179
    .local v5, "temp":I
    if-ne v1, v5, :cond_0

    .line 180
    const/4 v0, 0x0

    .line 185
    .local v0, "S":F
    :goto_0
    return v0

    .line 182
    .end local v0    # "S":F
    :cond_0
    sub-int v6, v1, v5

    int-to-float v6, v6

    int-to-float v7, v1

    div-float v0, v6, v7

    .restart local v0    # "S":F
    goto :goto_0
.end method
