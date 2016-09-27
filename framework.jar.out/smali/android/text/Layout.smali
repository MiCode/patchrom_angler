.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$TabStops;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Alignment;
    }
.end annotation


# static fields
.field private static synthetic -android_text_Layout$AlignmentSwitchesValues:[I = null

.field public static final BREAK_STRATEGY_BALANCED:I = 0x2

.field public static final BREAK_STRATEGY_HIGH_QUALITY:I = 0x1

.field public static final BREAK_STRATEGY_SIMPLE:I = 0x0

.field static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

.field static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field static final EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

.field public static final HYPHENATION_FREQUENCY_FULL:I = 0x2

.field public static final HYPHENATION_FREQUENCY_NONE:I = 0x0

.field public static final HYPHENATION_FREQUENCY_NORMAL:I = 0x1

.field static final MAX_EMOJI:I

.field static final MIN_EMOJI:I

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

.field static final RUN_LENGTH_MASK:I = 0x3ffffff

.field static final RUN_LEVEL_MASK:I = 0x3f

.field static final RUN_LEVEL_SHIFT:I = 0x1a

.field static final RUN_RTL_FLAG:I = 0x4000000

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mLineBackgroundSpans:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/LineBackgroundSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mWidth:I


# direct methods
.method private static synthetic -getandroid_text_Layout$AlignmentSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/text/Layout;->-android_text_Layout$AlignmentSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/text/Layout;->-android_text_Layout$AlignmentSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/text/Layout$Alignment;->values()[Landroid/text/Layout$Alignment;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Landroid/text/Layout;->-android_text_Layout$AlignmentSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -wrap0(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "line"    # I
    .param p4, "dest"    # [C
    .param p5, "destoff"    # I
    .param p6, "method"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;->ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 104
    const-class v0, Landroid/text/style/ParagraphStyle;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    .line 103
    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 106
    invoke-static {}, Landroid/emoji/EmojiFactory;->newAvailableInstance()Landroid/emoji/EmojiFactory;

    move-result-object v0

    sput-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    .line 110
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMinimumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MIN_EMOJI:I

    .line 112
    sget-object v0, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    invoke-virtual {v0}, Landroid/emoji/EmojiFactory;->getMaximumAndroidPua()I

    move-result v0

    sput v0, Landroid/text/Layout;->MAX_EMOJI:I

    .line 1999
    :goto_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    .line 2030
    new-instance v0, Landroid/text/Layout$Directions;

    const v1, 0x3ffffff

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    .line 2029
    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 2032
    new-instance v0, Landroid/text/Layout$Directions;

    const v1, 0x7ffffff

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    .line 2031
    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    .line 48
    return-void

    .line 114
    :cond_0
    sput v1, Landroid/text/Layout;->MIN_EMOJI:I

    .line 115
    sput v1, Landroid/text/Layout;->MAX_EMOJI:I

    goto :goto_0
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F

    .prologue
    .line 172
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    .line 171
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingMult"    # F
    .param p7, "spacingAdd"    # F

    .prologue
    const/4 v1, 0x0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1996
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 195
    if-gez p3, :cond_0

    .line 196
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_0
    if-eqz p2, :cond_1

    .line 203
    iput v1, p2, Landroid/text/TextPaint;->bgColor:I

    .line 204
    iput v1, p2, Landroid/text/TextPaint;->baselineShift:I

    .line 207
    :cond_1
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 208
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 209
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 210
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 211
    iput p6, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 212
    iput p7, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 213
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 214
    iput-object p5, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 193
    return-void
.end method

.method private addSelection(IIIIILandroid/graphics/Path;)V
    .locals 19
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I
    .param p6, "dest"    # Landroid/graphics/Path;

    .prologue
    .line 1461
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v16

    .line 1462
    .local v16, "linestart":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    .line 1463
    .local v15, "lineend":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v9

    .line 1465
    .local v9, "dirs":Landroid/text/Layout$Directions;
    move/from16 v0, v16

    if-le v15, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v5, v15, -0x1

    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0xa

    if-ne v3, v5, :cond_0

    .line 1466
    add-int/lit8 v15, v15, -0x1

    .line 1468
    :cond_0
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v3, v3

    if-ge v14, v3, :cond_3

    .line 1469
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    aget v3, v3, v14

    add-int v13, v16, v3

    .line 1470
    .local v13, "here":I
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v5, v14, 0x1

    aget v3, v3, v5

    const v5, 0x3ffffff

    and-int/2addr v3, v5

    add-int v18, v13, v3

    .line 1472
    .local v18, "there":I
    move/from16 v0, v18

    if-le v0, v15, :cond_1

    .line 1473
    move/from16 v18, v15

    .line 1475
    :cond_1
    move/from16 v0, p2

    move/from16 v1, v18

    if-gt v0, v1, :cond_2

    move/from16 v0, p3

    if-lt v0, v13, :cond_2

    .line 1476
    move/from16 v0, p2

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1477
    .local v17, "st":I
    move/from16 v0, p3

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 1479
    .local v10, "en":I
    move/from16 v0, v17

    if-eq v0, v10, :cond_2

    .line 1480
    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, p1

    invoke-direct {v0, v1, v3, v2, v5}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v11

    .line 1481
    .local v11, "h1":F
    const/4 v3, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v10, v3, v1, v5}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v12

    .line 1483
    .local v12, "h2":F
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 1484
    .local v4, "left":F
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1486
    .local v6, "right":F
    move/from16 v0, p4

    int-to-float v5, v0

    move/from16 v0, p5

    int-to-float v7, v0

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v3, p6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1468
    .end local v4    # "left":F
    .end local v6    # "right":F
    .end local v10    # "en":I
    .end local v11    # "h1":F
    .end local v12    # "h2":F
    .end local v17    # "st":I
    :cond_2
    add-int/lit8 v14, v14, 0x2

    goto :goto_0

    .line 1460
    .end local v13    # "here":I
    .end local v18    # "there":I
    :cond_3
    return-void
.end method

.method private ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "line"    # I
    .param p4, "dest"    # [C
    .param p5, "destoff"    # I
    .param p6, "method"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    .line 1843
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v2

    .line 1845
    .local v2, "ellipsisCount":I
    if-nez v2, :cond_0

    .line 1846
    return-void

    .line 1849
    :cond_0
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v3

    .line 1850
    .local v3, "ellipsisStart":I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1852
    .local v5, "linestart":I
    move v4, v3

    .local v4, "i":I
    :goto_0
    add-int v6, v3, v2

    if-ge v4, v6, :cond_3

    .line 1855
    if-ne v4, v3, :cond_2

    .line 1856
    invoke-direct {p0, p6}, Landroid/text/Layout;->getEllipsisChar(Landroid/text/TextUtils$TruncateAt;)C

    move-result v1

    .line 1861
    :goto_1
    add-int v0, v4, v5

    .line 1863
    .local v0, "a":I
    if-lt v0, p1, :cond_1

    if-ge v0, p2, :cond_1

    .line 1864
    add-int v6, p5, v0

    sub-int/2addr v6, p1

    aput-char v1, p4, v6

    .line 1852
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1858
    .end local v0    # "a":I
    :cond_2
    const v1, 0xfeff

    .local v1, "c":C
    goto :goto_1

    .line 1842
    .end local v1    # "c":C
    :cond_3
    return-void
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 5
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 138
    .local v1, "need":F
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_2

    .line 139
    const/16 v4, 0xa

    invoke-static {p0, v4, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    .line 141
    .local v2, "next":I
    if-gez v2, :cond_0

    .line 142
    move v2, p2

    .line 145
    :cond_0
    invoke-static {p3, p0, v0, v2}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F

    move-result v3

    .line 147
    .local v3, "w":F
    cmpl-float v4, v3, v1

    if-lez v4, :cond_1

    .line 148
    move v1, v3

    .line 150
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 138
    move v0, v2

    goto :goto_0

    .line 153
    .end local v2    # "next":I
    .end local v3    # "w":F
    :cond_2
    return v1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 125
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method private getEllipsisChar(Landroid/text/TextUtils$TruncateAt;)C
    .locals 2
    .param p1, "method"    # Landroid/text/TextUtils$TruncateAt;

    .prologue
    const/4 v1, 0x0

    .line 1836
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne p1, v0, :cond_0

    .line 1837
    sget-object v0, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    aget-char v0, v0, v1

    .line 1836
    :goto_0
    return v0

    .line 1838
    :cond_0
    sget-object v0, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method private getHorizontal(IZIZ)F
    .locals 14
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "line"    # I
    .param p4, "clamped"    # Z

    .prologue
    .line 911
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 912
    .local v4, "start":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 913
    .local v5, "end":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 914
    .local v6, "dir":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v8

    .line 915
    .local v8, "hasTabOrEmoji":Z
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 917
    .local v7, "directions":Landroid/text/Layout$Directions;
    const/4 v9, 0x0

    .line 918
    .local v9, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v8, :cond_0

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_0

    .line 921
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v4, v5, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/TabStopSpan;

    .line 922
    .local v12, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v2, v12

    if-lez v2, :cond_0

    .line 923
    new-instance v9, Landroid/text/Layout$TabStops;

    .end local v9    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v2, 0x14

    invoke-direct {v9, v2, v12}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 927
    .end local v12    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 928
    .local v1, "tl":Landroid/text/TextLine;
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 929
    sub-int v2, p1, v4

    const/4 v3, 0x0

    move/from16 v0, p2

    invoke-virtual {v1, v2, v0, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    move-result v13

    .line 930
    .local v13, "wid":F
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 932
    if-eqz p4, :cond_1

    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v2, v2

    cmpl-float v2, v13, v2

    if-lez v2, :cond_1

    .line 933
    iget v2, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v13, v2

    .line 935
    :cond_1
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v10

    .line 936
    .local v10, "left":I
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v11

    .line 938
    .local v11, "right":I
    move/from16 v0, p3

    invoke-direct {p0, v0, v10, v11}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v13

    return v2
.end method

.method private getHorizontal(IZZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "clamped"    # Z

    .prologue
    .line 905
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 907
    .local v0, "line":I
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v1

    return v1
.end method

.method private getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .locals 10
    .param p1, "line"    # I
    .param p2, "tabStops"    # Landroid/text/Layout$TabStops;
    .param p3, "full"    # Z

    .prologue
    .line 1067
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 1068
    .local v3, "start":I
    if-eqz p3, :cond_0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1069
    .local v4, "end":I
    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 1070
    .local v7, "hasTabsOrEmoji":Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1071
    .local v6, "directions":Landroid/text/Layout$Directions;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 1073
    .local v5, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 1074
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v8, p2

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1075
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v9

    .line 1076
    .local v9, "width":F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1077
    return v9

    .line 1068
    .end local v0    # "tl":Landroid/text/TextLine;
    .end local v4    # "end":I
    .end local v5    # "dir":I
    .end local v6    # "directions":Landroid/text/Layout$Directions;
    .end local v7    # "hasTabsOrEmoji":Z
    .end local v9    # "width":F
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    .restart local v4    # "end":I
    goto :goto_0
.end method

.method private getLineExtent(IZ)F
    .locals 12
    .param p1, "line"    # I
    .param p2, "full"    # Z

    .prologue
    const/4 v11, 0x0

    .line 1031
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 1032
    .local v3, "start":I
    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1034
    .local v4, "end":I
    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 1035
    .local v7, "hasTabsOrEmoji":Z
    const/4 v8, 0x0

    .line 1036
    .local v8, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v7, :cond_0

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_0

    .line 1039
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/TabStopSpan;

    invoke-static {v1, v3, v4, v2}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/TabStopSpan;

    .line 1040
    .local v9, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v1, v9

    if-lez v1, :cond_0

    .line 1041
    new-instance v8, Landroid/text/Layout$TabStops;

    .end local v8    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v1, 0x14

    invoke-direct {v8, v1, v9}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 1044
    .end local v9    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1046
    .local v6, "directions":Landroid/text/Layout$Directions;
    if-nez v6, :cond_2

    .line 1047
    const/4 v1, 0x0

    return v1

    .line 1032
    .end local v4    # "end":I
    .end local v6    # "directions":Landroid/text/Layout$Directions;
    .end local v7    # "hasTabsOrEmoji":Z
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v4

    .restart local v4    # "end":I
    goto :goto_0

    .line 1049
    .restart local v6    # "directions":Landroid/text/Layout$Directions;
    .restart local v7    # "hasTabsOrEmoji":Z
    :cond_2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 1051
    .local v5, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 1052
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1053
    invoke-virtual {v0, v11}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    move-result v10

    .line 1054
    .local v10, "width":F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1055
    return v10
.end method

.method private getLineStartPos(III)I
    .locals 11
    .param p1, "line"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .prologue
    .line 536
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 537
    .local v0, "align":Landroid/text/Layout$Alignment;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 539
    .local v1, "dir":I
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_2

    .line 540
    const/4 v9, 0x1

    if-ne v1, v9, :cond_1

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 546
    :cond_0
    :goto_0
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_5

    .line 547
    const/4 v9, 0x1

    if-ne v1, v9, :cond_4

    .line 548
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v9}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v9

    add-int v8, p2, v9

    .line 578
    .local v8, "x":I
    :goto_1
    return v8

    .line 540
    .end local v8    # "x":I
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 541
    :cond_2
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_0

    .line 542
    const/4 v9, 0x1

    if-ne v1, v9, :cond_3

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_0

    .line 550
    :cond_4
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v9}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v9

    add-int v8, p3, v9

    .restart local v8    # "x":I
    goto :goto_1

    .line 553
    .end local v8    # "x":I
    :cond_5
    const/4 v7, 0x0

    .line 554
    .local v7, "tabStops":Landroid/text/Layout$TabStops;
    iget-boolean v9, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v9, :cond_6

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 555
    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    .line 556
    .local v4, "spanned":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 557
    .local v5, "start":I
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v9

    .line 558
    const-class v10, Landroid/text/style/TabStopSpan;

    .line 557
    invoke-interface {v4, v5, v9, v10}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 560
    .local v3, "spanEnd":I
    const-class v9, Landroid/text/style/TabStopSpan;

    .line 559
    invoke-static {v4, v5, v3, v9}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/TabStopSpan;

    .line 561
    .local v6, "tabSpans":[Landroid/text/style/TabStopSpan;
    array-length v9, v6

    if-lez v9, :cond_6

    .line 562
    new-instance v7, Landroid/text/Layout$TabStops;

    .end local v7    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v9, 0x14

    invoke-direct {v7, v9, v6}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 565
    .end local v3    # "spanEnd":I
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "start":I
    .end local v6    # "tabSpans":[Landroid/text/style/TabStopSpan;
    :cond_6
    const/4 v9, 0x0

    invoke-direct {p0, p1, v7, v9}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v9

    float-to-int v2, v9

    .line 566
    .local v2, "max":I
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v9, :cond_8

    .line 567
    const/4 v9, 0x1

    if-ne v1, v9, :cond_7

    .line 568
    sub-int v9, p3, v2

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v10}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v10

    add-int v8, v9, v10

    .restart local v8    # "x":I
    goto :goto_1

    .line 571
    .end local v8    # "x":I
    :cond_7
    sub-int v9, p2, v2

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v10}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v10

    add-int v8, v9, v10

    .restart local v8    # "x":I
    goto :goto_1

    .line 574
    .end local v8    # "x":I
    :cond_8
    and-int/lit8 v2, v2, -0x2

    .line 575
    add-int v9, p2, p3

    sub-int/2addr v9, v2

    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v10}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    shr-int v8, v9, v10

    .restart local v8    # "x":I
    goto :goto_1
.end method

.method private getLineVisibleEnd(III)I
    .locals 3
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1220
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1222
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_1

    .line 1223
    return p3

    .line 1226
    .local v0, "ch":C
    :cond_0
    add-int/lit8 p3, p3, -0x1

    .end local v0    # "ch":C
    :cond_1
    if-le p3, p2, :cond_4

    .line 1227
    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1229
    .restart local v0    # "ch":C
    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    .line 1230
    add-int/lit8 v2, p3, -0x1

    return v2

    .line 1234
    :cond_2
    const/16 v2, 0x20

    if-eq v0, v2, :cond_0

    const/16 v2, 0x9

    if-eq v0, v2, :cond_0

    const/16 v2, 0x1680

    if-eq v0, v2, :cond_0

    .line 1235
    const/16 v2, 0x2000

    if-gt v2, v0, :cond_3

    const/16 v2, 0x200a

    if-le v0, v2, :cond_5

    .line 1236
    :cond_3
    :goto_0
    const/16 v2, 0x205f

    if-eq v0, v2, :cond_0

    const/16 v2, 0x3000

    if-eq v0, v2, :cond_0

    .line 1242
    .end local v0    # "ch":C
    :cond_4
    return p3

    .line 1235
    .restart local v0    # "ch":C
    :cond_5
    const/16 v2, 0x2007

    if-ne v0, v2, :cond_0

    goto :goto_0
.end method

.method private getOffsetAtStartOf(I)I
    .locals 9
    .param p1, "offset"    # I

    .prologue
    const/4 v7, 0x0

    .line 1332
    if-nez p1, :cond_0

    .line 1333
    return v7

    .line 1335
    :cond_0
    iget-object v6, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1336
    .local v6, "text":Ljava/lang/CharSequence;
    invoke-interface {v6, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1338
    .local v0, "c":C
    const v7, 0xdc00

    if-lt v0, v7, :cond_1

    const v7, 0xdfff

    if-gt v0, v7, :cond_1

    .line 1339
    add-int/lit8 v7, p1, -0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 1341
    .local v1, "c1":C
    const v7, 0xd800

    if-lt v1, v7, :cond_1

    const v7, 0xdbff

    if-gt v1, v7, :cond_1

    .line 1342
    add-int/lit8 p1, p1, -0x1

    .line 1345
    .end local v1    # "c1":C
    :cond_1
    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v7, :cond_3

    move-object v7, v6

    .line 1346
    check-cast v7, Landroid/text/Spanned;

    .line 1347
    const-class v8, Landroid/text/style/ReplacementSpan;

    .line 1346
    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/ReplacementSpan;

    .line 1349
    .local v4, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v4

    if-ge v3, v7, :cond_3

    move-object v7, v6

    .line 1350
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .local v5, "start":I
    move-object v7, v6

    .line 1351
    check-cast v7, Landroid/text/Spanned;

    aget-object v8, v4, v3

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 1353
    .local v2, "end":I
    if-ge v5, p1, :cond_2

    if-le v2, p1, :cond_2

    .line 1354
    move p1, v5

    .line 1349
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1358
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v5    # "start":I
    :cond_3
    return p1
.end method

.method private getOffsetToLeftRightOf(IZ)I
    .locals 13
    .param p1, "caret"    # I
    .param p2, "toLeft"    # Z

    .prologue
    const/4 v7, 0x0

    .line 1278
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .line 1279
    .local v10, "line":I
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 1280
    .local v3, "lineStart":I
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1281
    .local v4, "lineEnd":I
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 1283
    .local v5, "lineDir":I
    const/4 v11, 0x0

    .line 1284
    .local v11, "lineChanged":Z
    const/4 v1, -0x1

    if-ne v5, v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-ne p2, v1, :cond_3

    const/4 v9, 0x1

    .line 1286
    .local v9, "advance":Z
    :goto_1
    if-eqz v9, :cond_5

    .line 1287
    if-ne p1, v4, :cond_0

    .line 1288
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v10, v1, :cond_4

    .line 1289
    const/4 v11, 0x1

    .line 1290
    add-int/lit8 v10, v10, 0x1

    .line 1306
    :cond_0
    :goto_2
    if-eqz v11, :cond_1

    .line 1307
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 1308
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1309
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v12

    .line 1310
    .local v12, "newDir":I
    if-eq v12, v5, :cond_1

    .line 1314
    if-eqz p2, :cond_7

    const/4 p2, 0x0

    .line 1315
    .local p2, "toLeft":Z
    :goto_3
    move v5, v12

    .line 1319
    .end local v12    # "newDir":I
    .end local p2    # "toLeft":Z
    :cond_1
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1321
    .local v6, "directions":Landroid/text/Layout$Directions;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 1323
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1324
    sub-int v1, p1, v3

    invoke-virtual {v0, v1, p2}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v1

    add-int p1, v3, v1

    .line 1325
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    move-result-object v0

    .line 1326
    return p1

    .end local v0    # "tl":Landroid/text/TextLine;
    .end local v6    # "directions":Landroid/text/Layout$Directions;
    .end local v9    # "advance":Z
    .local p2, "toLeft":Z
    :cond_2
    move v1, v7

    .line 1284
    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    .restart local v9    # "advance":Z
    goto :goto_1

    .line 1292
    :cond_4
    return p1

    .line 1296
    :cond_5
    if-ne p1, v3, :cond_0

    .line 1297
    if-lez v10, :cond_6

    .line 1298
    const/4 v11, 0x1

    .line 1299
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 1301
    :cond_6
    return p1

    .line 1314
    .restart local v12    # "newDir":I
    :cond_7
    const/4 p2, 0x1

    .local p2, "toLeft":Z
    goto :goto_3
.end method

.method private getParagraphLeadingMargin(I)I
    .locals 16
    .param p1, "line"    # I

    .prologue
    .line 1603
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v14, :cond_0

    .line 1604
    const/4 v14, 0x0

    return v14

    .line 1606
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v11, Landroid/text/Spanned;

    .line 1608
    .local v11, "spanned":Landroid/text/Spanned;
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1609
    .local v5, "lineStart":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1611
    .local v4, "lineEnd":I
    const-class v14, Landroid/text/style/LeadingMarginSpan;

    .line 1610
    invoke-interface {v11, v5, v4, v14}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    .line 1613
    .local v9, "spanEnd":I
    const-class v14, Landroid/text/style/LeadingMarginSpan;

    .line 1612
    invoke-static {v11, v5, v9, v14}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/LeadingMarginSpan;

    .line 1614
    .local v12, "spans":[Landroid/text/style/LeadingMarginSpan;
    array-length v14, v12

    if-nez v14, :cond_1

    .line 1615
    const/4 v14, 0x0

    return v14

    .line 1618
    :cond_1
    const/4 v6, 0x0

    .line 1620
    .local v6, "margin":I
    if-eqz v5, :cond_3

    .line 1621
    add-int/lit8 v14, v5, -0x1

    invoke-interface {v11, v14}, Landroid/text/Spanned;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-ne v14, v15, :cond_4

    const/4 v3, 0x1

    .line 1623
    .local v3, "isFirstParaLine":Z
    :goto_0
    move v13, v3

    .line 1624
    .local v13, "useFirstLineMargin":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v14, v12

    if-ge v2, v14, :cond_6

    .line 1625
    aget-object v14, v12, v2

    instance-of v14, v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v14, :cond_2

    .line 1626
    aget-object v14, v12, v2

    invoke-interface {v11, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 1627
    .local v7, "spStart":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v10

    .line 1628
    .local v10, "spanLine":I
    aget-object v14, v12, v2

    check-cast v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v14}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v1

    .line 1630
    .local v1, "count":I
    add-int v14, v10, v1

    move/from16 v0, p1

    if-ge v0, v14, :cond_5

    const/4 v14, 0x1

    :goto_2
    or-int/2addr v13, v14

    .line 1624
    .end local v1    # "count":I
    .end local v7    # "spStart":I
    .end local v10    # "spanLine":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1620
    .end local v2    # "i":I
    .end local v3    # "isFirstParaLine":Z
    .end local v13    # "useFirstLineMargin":Z
    :cond_3
    const/4 v3, 0x1

    .restart local v3    # "isFirstParaLine":Z
    goto :goto_0

    .line 1621
    .end local v3    # "isFirstParaLine":Z
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "isFirstParaLine":Z
    goto :goto_0

    .line 1630
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v7    # "spStart":I
    .restart local v10    # "spanLine":I
    .restart local v13    # "useFirstLineMargin":Z
    :cond_5
    const/4 v14, 0x0

    goto :goto_2

    .line 1633
    .end local v1    # "count":I
    .end local v7    # "spStart":I
    .end local v10    # "spanLine":I
    :cond_6
    const/4 v2, 0x0

    :goto_3
    array-length v14, v12

    if-ge v2, v14, :cond_7

    .line 1634
    aget-object v8, v12, v2

    .line 1635
    .local v8, "span":Landroid/text/style/LeadingMarginSpan;
    invoke-interface {v8, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    add-int/2addr v6, v14

    .line 1633
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1638
    .end local v8    # "span":Landroid/text/style/LeadingMarginSpan;
    :cond_7
    return v6
.end method

.method static getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 1828
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-ne p1, p2, :cond_0

    if-lez p1, :cond_0

    .line 1829
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1832
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F
    .locals 23
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 1644
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    move-result-object v3

    .line 1645
    .local v3, "mt":Landroid/text/MeasuredText;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v22

    .line 1647
    .local v22, "tl":Landroid/text/TextLine;
    :try_start_0
    sget-object v7, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v3 .. v8}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    .line 1650
    iget-boolean v4, v3, Landroid/text/MeasuredText;->mEasy:Z

    if-eqz v4, :cond_0

    .line 1651
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 1652
    .local v10, "directions":Landroid/text/Layout$Directions;
    const/4 v9, 0x1

    .line 1658
    .local v9, "dir":I
    :goto_0
    iget-object v13, v3, Landroid/text/MeasuredText;->mChars:[C

    .line 1659
    .local v13, "chars":[C
    iget v15, v3, Landroid/text/MeasuredText;->mLen:I

    .line 1660
    .local v15, "len":I
    const/4 v11, 0x0

    .line 1661
    .local v11, "hasTabs":Z
    const/4 v12, 0x0

    .line 1663
    .local v12, "tabStops":Landroid/text/Layout$TabStops;
    const/16 v17, 0x0

    .line 1664
    .local v17, "margin":I
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_1

    .line 1665
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v19, v0

    .line 1667
    .local v19, "spanned":Landroid/text/Spanned;
    const-class v4, Landroid/text/style/LeadingMarginSpan;

    .line 1666
    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-static {v0, v1, v2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Landroid/text/style/LeadingMarginSpan;

    .line 1668
    .local v20, "spans":[Landroid/text/style/LeadingMarginSpan;
    const/4 v4, 0x0

    move-object/from16 v0, v20

    array-length v5, v0

    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v16, v20, v4

    .line 1669
    .local v16, "lms":Landroid/text/style/LeadingMarginSpan;
    const/4 v6, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v6

    add-int v17, v17, v6

    .line 1668
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1654
    .end local v9    # "dir":I
    .end local v10    # "directions":Landroid/text/Layout$Directions;
    .end local v11    # "hasTabs":Z
    .end local v12    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v13    # "chars":[C
    .end local v15    # "len":I
    .end local v16    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v17    # "margin":I
    .end local v19    # "spanned":Landroid/text/Spanned;
    .end local v20    # "spans":[Landroid/text/style/LeadingMarginSpan;
    :cond_0
    iget v4, v3, Landroid/text/MeasuredText;->mDir:I

    iget-object v5, v3, Landroid/text/MeasuredText;->mLevels:[B

    .line 1655
    iget-object v7, v3, Landroid/text/MeasuredText;->mChars:[C

    iget v9, v3, Landroid/text/MeasuredText;->mLen:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 1654
    invoke-static/range {v4 .. v9}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    move-result-object v10

    .line 1656
    .restart local v10    # "directions":Landroid/text/Layout$Directions;
    iget v9, v3, Landroid/text/MeasuredText;->mDir:I

    .restart local v9    # "dir":I
    goto :goto_0

    .line 1672
    .restart local v11    # "hasTabs":Z
    .restart local v12    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v13    # "chars":[C
    .restart local v15    # "len":I
    .restart local v17    # "margin":I
    :cond_1
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v15, :cond_2

    .line 1673
    aget-char v4, v13, v14

    const/16 v5, 0x9

    if-ne v4, v5, :cond_3

    .line 1674
    const/4 v11, 0x1

    .line 1675
    move-object/from16 v0, p1

    instance-of v4, v0, Landroid/text/Spanned;

    if-eqz v4, :cond_2

    .line 1676
    move-object/from16 v0, p1

    check-cast v0, Landroid/text/Spanned;

    move-object/from16 v19, v0

    .line 1678
    .restart local v19    # "spanned":Landroid/text/Spanned;
    const-class v4, Landroid/text/style/TabStopSpan;

    .line 1677
    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v18

    .line 1680
    .local v18, "spanEnd":I
    const-class v4, Landroid/text/style/TabStopSpan;

    .line 1679
    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, v18

    invoke-static {v0, v1, v2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Landroid/text/style/TabStopSpan;

    .line 1681
    .local v21, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v21

    array-length v4, v0

    if-lez v4, :cond_2

    .line 1682
    new-instance v12, Landroid/text/Layout$TabStops;

    .end local v12    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v4, 0x14

    move-object/from16 v0, v21

    invoke-direct {v12, v4, v0}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .end local v18    # "spanEnd":I
    .end local v19    # "spanned":Landroid/text/Spanned;
    .end local v21    # "spans":[Landroid/text/style/TabStopSpan;
    :cond_2
    move-object/from16 v4, v22

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    .line 1688
    invoke-virtual/range {v4 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 1689
    move/from16 v0, v17

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    add-float/2addr v4, v5

    .line 1691
    invoke-static/range {v22 .. v22}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1692
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1689
    return v4

    .line 1672
    .restart local v12    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 1690
    .end local v9    # "dir":I
    .end local v10    # "directions":Landroid/text/Layout$Directions;
    .end local v11    # "hasTabs":Z
    .end local v12    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v13    # "chars":[C
    .end local v14    # "i":I
    .end local v15    # "len":I
    .end local v17    # "margin":I
    :catchall_0
    move-exception v4

    .line 1691
    invoke-static/range {v22 .. v22}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1692
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    .line 1690
    throw v4
.end method

.method static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "h"    # F
    .param p4, "tabs"    # [Ljava/lang/Object;

    .prologue
    const/high16 v5, 0x41a00000    # 20.0f

    .line 1771
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 1772
    .local v2, "nh":F
    const/4 v0, 0x0

    .line 1774
    .local v0, "alltabs":Z
    instance-of v4, p0, Landroid/text/Spanned;

    if-eqz v4, :cond_4

    .line 1775
    if-nez p4, :cond_0

    .line 1776
    check-cast p0, Landroid/text/Spanned;

    .end local p0    # "text":Ljava/lang/CharSequence;
    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {p0, p1, p2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    .line 1777
    const/4 v0, 0x1

    .line 1780
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p4

    if-ge v1, v4, :cond_3

    .line 1781
    if-nez v0, :cond_2

    .line 1782
    aget-object v4, p4, v1

    instance-of v4, v4, Landroid/text/style/TabStopSpan;

    if-nez v4, :cond_2

    .line 1780
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1786
    :cond_2
    aget-object v4, p4, v1

    check-cast v4, Landroid/text/style/TabStopSpan;

    invoke-interface {v4}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    .line 1788
    .local v3, "where":I
    int-to-float v4, v3

    cmpg-float v4, v4, v2

    if-gez v4, :cond_1

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_1

    .line 1789
    int-to-float v2, v3

    goto :goto_1

    .line 1792
    .end local v3    # "where":I
    :cond_3
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_4

    .line 1793
    return v2

    .line 1796
    .end local v1    # "i":I
    :cond_4
    add-float v4, p3, v5

    div-float/2addr v4, v5

    float-to-int v4, v4

    mul-int/lit8 v4, v4, 0x14

    int-to-float v4, v4

    return v4
.end method

.method private primaryIsTrailingPrevious(I)Z
    .locals 13
    .param p1, "offset"    # I

    .prologue
    const v12, 0x3ffffff

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 818
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 819
    .local v4, "line":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v6

    .line 820
    .local v6, "lineStart":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 821
    .local v5, "lineEnd":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v11

    iget-object v7, v11, Landroid/text/Layout$Directions;->mDirections:[I

    .line 823
    .local v7, "runs":[I
    const/4 v1, -0x1

    .line 824
    .local v1, "levelAt":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v11, v7

    if-ge v0, v11, :cond_2

    .line 825
    aget v11, v7, v0

    add-int v8, v6, v11

    .line 826
    .local v8, "start":I
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    .line 827
    .local v3, "limit":I
    if-le v3, v5, :cond_0

    .line 828
    move v3, v5

    .line 830
    :cond_0
    if-lt p1, v8, :cond_5

    if-ge p1, v3, :cond_5

    .line 831
    if-le p1, v8, :cond_1

    .line 833
    return v10

    .line 835
    :cond_1
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v1, v11, 0x3f

    .line 839
    .end local v3    # "limit":I
    .end local v8    # "start":I
    :cond_2
    const/4 v11, -0x1

    if-ne v1, v11, :cond_3

    .line 841
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v9, :cond_6

    const/4 v1, 0x0

    .line 845
    :cond_3
    :goto_1
    const/4 v2, -0x1

    .line 846
    .local v2, "levelBefore":I
    if-ne p1, v6, :cond_8

    .line 847
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v9, :cond_7

    const/4 v2, 0x0

    .line 863
    :cond_4
    :goto_2
    if-ge v2, v1, :cond_b

    :goto_3
    return v9

    .line 824
    .end local v2    # "levelBefore":I
    .restart local v3    # "limit":I
    .restart local v8    # "start":I
    :cond_5
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 841
    .end local v3    # "limit":I
    .end local v8    # "start":I
    :cond_6
    const/4 v1, 0x1

    goto :goto_1

    .line 847
    .restart local v2    # "levelBefore":I
    :cond_7
    const/4 v2, 0x1

    goto :goto_2

    .line 849
    :cond_8
    add-int/lit8 p1, p1, -0x1

    .line 850
    const/4 v0, 0x0

    :goto_4
    array-length v11, v7

    if-ge v0, v11, :cond_4

    .line 851
    aget v11, v7, v0

    add-int v8, v6, v11

    .line 852
    .restart local v8    # "start":I
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    and-int/2addr v11, v12

    add-int v3, v8, v11

    .line 853
    .restart local v3    # "limit":I
    if-le v3, v5, :cond_9

    .line 854
    move v3, v5

    .line 856
    :cond_9
    if-lt p1, v8, :cond_a

    if-ge p1, v3, :cond_a

    .line 857
    add-int/lit8 v11, v0, 0x1

    aget v11, v7, v11

    ushr-int/lit8 v11, v11, 0x1a

    and-int/lit8 v2, v11, 0x3f

    .line 858
    goto :goto_2

    .line 850
    :cond_a
    add-int/lit8 v0, v0, 0x2

    goto :goto_4

    .end local v3    # "limit":I
    .end local v8    # "start":I
    :cond_b
    move v9, v10

    .line 863
    goto :goto_3
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 239
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightPaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffsetVertical"    # I

    .prologue
    .line 255
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v8

    .line 256
    .local v8, "lineRange":J
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v5

    .line 257
    .local v5, "firstLine":I
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v6

    .line 258
    .local v6, "lastLine":I
    if-gez v6, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 260
    invoke-virtual/range {v0 .. v6}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 262
    invoke-virtual {p0, p1, v5, v6}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 254
    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightPaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffsetVertical"    # I
    .param p5, "firstLine"    # I
    .param p6, "lastLine"    # I

    .prologue
    .line 430
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v3, :cond_7

    .line 431
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    if-nez v3, :cond_0

    .line 432
    new-instance v3, Landroid/text/SpanSet;

    const-class v5, Landroid/text/style/LineBackgroundSpan;

    invoke-direct {v3, v5}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    .line 435
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v10, Landroid/text/Spanned;

    .line 436
    .local v10, "buffer":Landroid/text/Spanned;
    invoke-interface {v10}, Landroid/text/Spanned;->length()I

    move-result v21

    .line 437
    .local v21, "textLength":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    const/4 v5, 0x0

    move/from16 v0, v21

    invoke-virtual {v3, v10, v5, v0}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 439
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v3, :cond_6

    .line 440
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v16

    .line 441
    .local v16, "previousLineBottom":I
    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v17

    .line 442
    .local v17, "previousLineEnd":I
    sget-object v19, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 443
    .local v19, "spans":[Landroid/text/style/ParagraphStyle;
    const/16 v20, 0x0

    .line 444
    .local v20, "spansLength":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 445
    .local v4, "paint":Landroid/text/TextPaint;
    const/16 v18, 0x0

    .line 446
    .local v18, "spanEnd":I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/Layout;->mWidth:I

    .line 447
    .local v6, "width":I
    move/from16 v13, p5

    .local v13, "i":I
    :goto_0
    move/from16 v0, p6

    if-gt v13, v0, :cond_6

    .line 448
    move/from16 v11, v17

    .line 449
    .local v11, "start":I
    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v12

    .line 450
    .local v12, "end":I
    move/from16 v17, v12

    .line 452
    move/from16 v7, v16

    .line 453
    .local v7, "ltop":I
    add-int/lit8 v3, v13, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v9

    .line 454
    .local v9, "lbottom":I
    move/from16 v16, v9

    .line 455
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v3

    sub-int v8, v9, v3

    .line 457
    .local v8, "lbaseline":I
    move/from16 v0, v18

    if-lt v11, v0, :cond_4

    .line 460
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    move/from16 v0, v21

    invoke-virtual {v3, v11, v0}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v18

    .line 462
    const/16 v20, 0x0

    .line 464
    if-ne v11, v12, :cond_1

    if-nez v11, :cond_4

    .line 467
    :cond_1
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v14, v3, :cond_4

    .line 470
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanStarts:[I

    aget v3, v3, v14

    if-ge v3, v12, :cond_2

    .line 471
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spanEnds:[I

    aget v3, v3, v14

    if-gt v3, v11, :cond_3

    .line 467
    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 473
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v3, v3, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v3, [Landroid/text/style/LineBackgroundSpan;

    aget-object v3, v3, v14

    .line 472
    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v3}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "spans":[Landroid/text/style/ParagraphStyle;
    check-cast v19, [Landroid/text/style/ParagraphStyle;

    .line 474
    .restart local v19    # "spans":[Landroid/text/style/ParagraphStyle;
    add-int/lit8 v20, v20, 0x1

    goto :goto_2

    .line 479
    .end local v14    # "j":I
    :cond_4
    const/4 v15, 0x0

    .local v15, "n":I
    :goto_3
    move/from16 v0, v20

    if-ge v15, v0, :cond_5

    .line 480
    aget-object v2, v19, v15

    check-cast v2, Landroid/text/style/LineBackgroundSpan;

    .line 481
    .local v2, "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    const/4 v5, 0x0

    move-object/from16 v3, p1

    invoke-interface/range {v2 .. v13}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 479
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 447
    .end local v2    # "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 487
    .end local v4    # "paint":Landroid/text/TextPaint;
    .end local v6    # "width":I
    .end local v7    # "ltop":I
    .end local v8    # "lbaseline":I
    .end local v9    # "lbottom":I
    .end local v11    # "start":I
    .end local v12    # "end":I
    .end local v13    # "i":I
    .end local v15    # "n":I
    .end local v16    # "previousLineBottom":I
    .end local v17    # "previousLineEnd":I
    .end local v18    # "spanEnd":I
    .end local v19    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v20    # "spansLength":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v3}, Landroid/text/SpanSet;->recycle()V

    .line 492
    .end local v10    # "buffer":Landroid/text/Spanned;
    .end local v21    # "textLength":I
    :cond_7
    if-eqz p2, :cond_9

    .line 493
    if-eqz p4, :cond_8

    const/4 v3, 0x0

    move/from16 v0, p4

    int-to-float v5, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 494
    :cond_8
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 495
    if-eqz p4, :cond_9

    const/4 v3, 0x0

    move/from16 v0, p4

    neg-int v5, v0

    int-to-float v5, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 425
    :cond_9
    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;II)V
    .locals 47
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "firstLine"    # I
    .param p3, "lastLine"    # I

    .prologue
    .line 269
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v35

    .line 270
    .local v35, "previousLineBottom":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v36

    .line 271
    .local v36, "previousLineEnd":I
    sget-object v39, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 272
    .local v39, "spans":[Landroid/text/style/ParagraphStyle;
    const/16 v38, 0x0

    .line 273
    .local v38, "spanEnd":I
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 274
    .local v5, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 276
    .local v11, "buf":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v34, v0

    .line 277
    .local v34, "paraAlign":Landroid/text/Layout$Alignment;
    const/16 v27, 0x0

    .line 278
    .local v27, "tabStops":Landroid/text/Layout$TabStops;
    const/16 v42, 0x0

    .line 280
    .local v42, "tabStopsIsInitialized":Z
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v44

    .line 284
    .local v44, "tl":Landroid/text/TextLine;
    move/from16 v31, p2

    .local v31, "lineNum":I
    move-object/from16 v41, v27

    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .local v41, "tabStops":Landroid/text/Layout$TabStops;
    :goto_0
    move/from16 v0, v31

    move/from16 v1, p3

    if-gt v0, v1, :cond_18

    .line 285
    move/from16 v12, v36

    .line 286
    .local v12, "start":I
    add-int/lit8 v4, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v36

    .line 287
    move-object/from16 v0, p0

    move/from16 v1, v31

    move/from16 v2, v36

    invoke-direct {v0, v1, v12, v2}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v13

    .line 289
    .local v13, "end":I
    move/from16 v8, v35

    .line 290
    .local v8, "ltop":I
    add-int/lit8 v4, v31, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v10

    .line 291
    .local v10, "lbottom":I
    move/from16 v35, v10

    .line 292
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v4

    sub-int v9, v10, v4

    .line 294
    .local v9, "lbaseline":I
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    .line 295
    .local v7, "dir":I
    const/16 v18, 0x0

    .line 296
    .local v18, "left":I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/Layout;->mWidth:I

    .line 298
    .local v6, "right":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_a

    move-object/from16 v37, v11

    .line 299
    check-cast v37, Landroid/text/Spanned;

    .line 300
    .local v37, "sp":Landroid/text/Spanned;
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v43

    .line 301
    .local v43, "textLength":I
    if-eqz v12, :cond_0

    add-int/lit8 v4, v12, -0x1

    invoke-interface {v11, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v15, 0xa

    if-ne v4, v15, :cond_6

    :cond_0
    const/4 v14, 0x1

    .line 313
    .local v14, "isFirstParaLine":Z
    :goto_1
    move/from16 v0, v38

    if-lt v12, v0, :cond_3

    move/from16 v0, v31

    move/from16 v1, p2

    if-eq v0, v1, :cond_1

    if-eqz v14, :cond_3

    .line 315
    :cond_1
    const-class v4, Landroid/text/style/ParagraphStyle;

    .line 314
    move-object/from16 v0, v37

    move/from16 v1, v43

    invoke-interface {v0, v12, v1, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v38

    .line 316
    const-class v4, Landroid/text/style/ParagraphStyle;

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-static {v0, v12, v1, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v39

    .end local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    check-cast v39, [Landroid/text/style/ParagraphStyle;

    .line 318
    .restart local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    move-object/from16 v34, v0

    .line 319
    move-object/from16 v0, v39

    array-length v4, v0

    add-int/lit8 v33, v4, -0x1

    .local v33, "n":I
    :goto_2
    if-ltz v33, :cond_2

    .line 320
    aget-object v4, v39, v33

    instance-of v4, v4, Landroid/text/style/AlignmentSpan;

    if-eqz v4, :cond_7

    .line 321
    aget-object v4, v39, v33

    check-cast v4, Landroid/text/style/AlignmentSpan;

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v34

    .line 326
    :cond_2
    const/16 v42, 0x0

    .line 331
    .end local v33    # "n":I
    :cond_3
    move-object/from16 v0, v39

    array-length v0, v0

    move/from16 v30, v0

    .line 332
    .local v30, "length":I
    move/from16 v45, v14

    .line 333
    .local v45, "useFirstLineMargin":Z
    const/16 v33, 0x0

    .restart local v33    # "n":I
    :goto_3
    move/from16 v0, v33

    move/from16 v1, v30

    if-ge v0, v1, :cond_4

    .line 334
    aget-object v4, v39, v33

    instance-of v4, v4, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v4, :cond_8

    .line 335
    aget-object v4, v39, v33

    check-cast v4, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v4}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v29

    .line 336
    .local v29, "count":I
    aget-object v4, v39, v33

    move-object/from16 v0, v37

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v40

    .line 339
    .local v40, "startLine":I
    add-int v4, v40, v29

    move/from16 v0, v31

    if-ge v0, v4, :cond_8

    .line 340
    const/16 v45, 0x1

    .line 345
    .end local v29    # "count":I
    .end local v40    # "startLine":I
    .end local v45    # "useFirstLineMargin":Z
    :cond_4
    const/16 v33, 0x0

    :goto_4
    move/from16 v0, v33

    move/from16 v1, v30

    if-ge v0, v1, :cond_a

    .line 346
    aget-object v4, v39, v33

    instance-of v4, v4, Landroid/text/style/LeadingMarginSpan;

    if-eqz v4, :cond_5

    .line 347
    aget-object v3, v39, v33

    check-cast v3, Landroid/text/style/LeadingMarginSpan;

    .line 348
    .local v3, "margin":Landroid/text/style/LeadingMarginSpan;
    const/4 v4, -0x1

    if-ne v7, v4, :cond_9

    move-object/from16 v4, p1

    move-object/from16 v15, p0

    .line 349
    invoke-interface/range {v3 .. v15}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 352
    move/from16 v0, v45

    invoke-interface {v3, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    sub-int/2addr v6, v4

    .line 345
    .end local v3    # "margin":Landroid/text/style/LeadingMarginSpan;
    :cond_5
    :goto_5
    add-int/lit8 v33, v33, 0x1

    goto :goto_4

    .line 301
    .end local v14    # "isFirstParaLine":Z
    .end local v30    # "length":I
    .end local v33    # "n":I
    :cond_6
    const/4 v14, 0x0

    .restart local v14    # "isFirstParaLine":Z
    goto/16 :goto_1

    .line 319
    .restart local v33    # "n":I
    :cond_7
    add-int/lit8 v33, v33, -0x1

    goto :goto_2

    .line 333
    .restart local v30    # "length":I
    .restart local v45    # "useFirstLineMargin":Z
    :cond_8
    add-int/lit8 v33, v33, 0x1

    goto :goto_3

    .end local v45    # "useFirstLineMargin":Z
    .restart local v3    # "margin":Landroid/text/style/LeadingMarginSpan;
    :cond_9
    move-object v15, v3

    move-object/from16 v16, p1

    move-object/from16 v17, v5

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v23, v11

    move/from16 v24, v12

    move/from16 v25, v13

    move/from16 v26, v14

    move-object/from16 v27, p0

    .line 354
    invoke-interface/range {v15 .. v27}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 357
    move/from16 v0, v45

    invoke-interface {v3, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v4

    add-int v18, v18, v4

    goto :goto_5

    .line 363
    .end local v3    # "margin":Landroid/text/style/LeadingMarginSpan;
    .end local v14    # "isFirstParaLine":Z
    .end local v30    # "length":I
    .end local v33    # "n":I
    .end local v37    # "sp":Landroid/text/Spanned;
    .end local v43    # "textLength":I
    :cond_a
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v26

    .line 365
    .local v26, "hasTabOrEmoji":Z
    if-eqz v26, :cond_b

    if-eqz v42, :cond_e

    :cond_b
    move-object/from16 v27, v41

    .line 375
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .local v27, "tabStops":Landroid/text/Layout$TabStops;
    :goto_6
    move-object/from16 v28, v34

    .line 376
    .local v28, "align":Landroid/text/Layout$Alignment;
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_11

    .line 377
    const/4 v4, 0x1

    if-ne v7, v4, :cond_10

    .line 378
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 385
    :cond_c
    :goto_7
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_14

    .line 386
    const/4 v4, 0x1

    if-ne v7, v4, :cond_13

    .line 387
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v4}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v4

    add-int v46, v18, v4

    .line 406
    .local v46, "x":I
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getHyphen(I)I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 407
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v25

    .line 408
    .local v25, "directions":Landroid/text/Layout$Directions;
    sget-object v4, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    move-object/from16 v0, v25

    if-ne v0, v4, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_17

    :cond_d
    move-object/from16 v19, v44

    move-object/from16 v20, v5

    move-object/from16 v21, v11

    move/from16 v22, v12

    move/from16 v23, v13

    move/from16 v24, v7

    .line 412
    invoke-virtual/range {v19 .. v27}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    .line 413
    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v19, v44

    move-object/from16 v20, p1

    move/from16 v22, v8

    move/from16 v23, v9

    move/from16 v24, v10

    invoke-virtual/range {v19 .. v24}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    .line 415
    .end local v25    # "directions":Landroid/text/Layout$Directions;
    :goto_9
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    .line 284
    add-int/lit8 v31, v31, 0x1

    move-object/from16 v41, v27

    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    goto/16 :goto_0

    .line 366
    .end local v28    # "align":Landroid/text/Layout$Alignment;
    .end local v46    # "x":I
    :cond_e
    if-nez v41, :cond_f

    .line 367
    new-instance v27, Landroid/text/Layout$TabStops;

    const/16 v4, 0x14

    move-object/from16 v0, v27

    move-object/from16 v1, v39

    invoke-direct {v0, v4, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    .line 371
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v27    # "tabStops":Landroid/text/Layout$TabStops;
    :goto_a
    const/16 v42, 0x1

    goto :goto_6

    .line 369
    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_f
    const/16 v4, 0x14

    move-object/from16 v0, v41

    move-object/from16 v1, v39

    invoke-virtual {v0, v4, v1}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    move-object/from16 v27, v41

    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v27    # "tabStops":Landroid/text/Layout$TabStops;
    goto :goto_a

    .line 378
    .restart local v28    # "align":Landroid/text/Layout$Alignment;
    :cond_10
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_7

    .line 379
    :cond_11
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_c

    .line 380
    const/4 v4, 0x1

    if-ne v7, v4, :cond_12

    .line 381
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto/16 :goto_7

    :cond_12
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto/16 :goto_7

    .line 389
    :cond_13
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v4}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v4

    add-int v46, v6, v4

    .restart local v46    # "x":I
    goto/16 :goto_8

    .line 392
    .end local v46    # "x":I
    :cond_14
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v31

    move-object/from16 v2, v27

    invoke-direct {v0, v1, v2, v4}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v4

    float-to-int v0, v4

    move/from16 v32, v0

    .line 393
    .local v32, "max":I
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    move-object/from16 v0, v28

    if-ne v0, v4, :cond_16

    .line 394
    const/4 v4, 0x1

    if-ne v7, v4, :cond_15

    .line 395
    sub-int v4, v6, v32

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v15}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v15

    add-int v46, v4, v15

    .restart local v46    # "x":I
    goto/16 :goto_8

    .line 397
    .end local v46    # "x":I
    :cond_15
    sub-int v4, v18, v32

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v15}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v15

    add-int v46, v4, v15

    .restart local v46    # "x":I
    goto/16 :goto_8

    .line 400
    .end local v46    # "x":I
    :cond_16
    and-int/lit8 v32, v32, -0x2

    .line 401
    add-int v4, v6, v18

    sub-int v4, v4, v32

    shr-int/lit8 v4, v4, 0x1

    .line 402
    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1, v15}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v15

    .line 401
    add-int v46, v4, v15

    .restart local v46    # "x":I
    goto/16 :goto_8

    .line 408
    .end local v32    # "max":I
    .restart local v25    # "directions":Landroid/text/Layout$Directions;
    :cond_17
    if-nez v26, :cond_d

    .line 410
    move/from16 v0, v46

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v9

    move/from16 v24, v0

    move-object/from16 v19, p1

    move-object/from16 v20, v11

    move/from16 v21, v12

    move/from16 v22, v13

    move-object/from16 v25, v5

    invoke-virtual/range {v19 .. v25}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    goto/16 :goto_9

    .line 418
    .end local v6    # "right":I
    .end local v7    # "dir":I
    .end local v8    # "ltop":I
    .end local v9    # "lbaseline":I
    .end local v10    # "lbottom":I
    .end local v12    # "start":I
    .end local v13    # "end":I
    .end local v18    # "left":I
    .end local v25    # "directions":Landroid/text/Layout$Directions;
    .end local v26    # "hasTabOrEmoji":Z
    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v28    # "align":Landroid/text/Layout$Alignment;
    .end local v46    # "x":I
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_18
    invoke-static/range {v44 .. v44}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 268
    return-void
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 12
    .param p1, "point"    # I
    .param p2, "dest"    # Landroid/graphics/Path;
    .param p3, "editingBuffer"    # Ljava/lang/CharSequence;

    .prologue
    .line 1386
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 1388
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 1389
    .local v7, "line":I
    invoke-virtual {p0, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v8

    .line 1390
    .local v8, "top":I
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {p0, v9}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 1392
    .local v0, "bottom":I
    invoke-virtual {p0, v7}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v2

    .line 1393
    .local v2, "clamped":Z
    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v5, v9, v10

    .line 1394
    .local v5, "h1":F
    invoke-virtual {p0, p1}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    sub-float v6, v9, v10

    .line 1396
    .local v6, "h2":F
    :goto_0
    const/4 v9, 0x1

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v9

    .line 1397
    const/16 v10, 0x800

    invoke-static {p3, v10}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v10

    .line 1396
    or-int v1, v9, v10

    .line 1398
    .local v1, "caps":I
    const/4 v9, 0x2

    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v4

    .line 1399
    .local v4, "fn":I
    const/4 v3, 0x0

    .line 1401
    .local v3, "dist":I
    if-nez v1, :cond_0

    if-eqz v4, :cond_2

    .line 1402
    :cond_0
    sub-int v9, v0, v8

    shr-int/lit8 v3, v9, 0x2

    .line 1404
    if-eqz v4, :cond_1

    .line 1405
    add-int/2addr v8, v3

    .line 1406
    :cond_1
    if-eqz v1, :cond_2

    .line 1407
    sub-int/2addr v0, v3

    .line 1410
    :cond_2
    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v9, v5, v9

    if-gez v9, :cond_3

    .line 1411
    const/high16 v5, 0x3f000000    # 0.5f

    .line 1412
    :cond_3
    const/high16 v9, 0x3f000000    # 0.5f

    cmpg-float v9, v6, v9

    if-gez v9, :cond_4

    .line 1413
    const/high16 v6, 0x3f000000    # 0.5f

    .line 1415
    :cond_4
    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v9

    if-nez v9, :cond_8

    .line 1416
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1417
    int-to-float v9, v0

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1426
    :goto_1
    const/4 v9, 0x2

    if-ne v1, v9, :cond_9

    .line 1427
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1428
    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1429
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1430
    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1442
    :cond_5
    :goto_2
    const/4 v9, 0x2

    if-ne v4, v9, :cond_a

    .line 1443
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1444
    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1445
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1446
    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1385
    :cond_6
    :goto_3
    return-void

    .line 1394
    .end local v1    # "caps":I
    .end local v3    # "dist":I
    .end local v4    # "fn":I
    .end local v6    # "h2":F
    :cond_7
    move v6, v5

    .restart local v6    # "h2":F
    goto :goto_0

    .line 1419
    .restart local v1    # "caps":I
    .restart local v3    # "dist":I
    .restart local v4    # "fn":I
    :cond_8
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1420
    add-int v9, v8, v0

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1422
    add-int v9, v8, v0

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1423
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 1431
    :cond_9
    const/4 v9, 0x1

    if-ne v1, v9, :cond_5

    .line 1432
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1433
    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1435
    int-to-float v9, v3

    sub-float v9, v6, v9

    add-int v10, v0, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1436
    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    sub-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1438
    int-to-float v9, v3

    add-float/2addr v9, v6

    add-int v10, v0, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1439
    int-to-float v9, v0

    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .line 1447
    :cond_a
    const/4 v9, 0x1

    if-ne v4, v9, :cond_6

    .line 1448
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1449
    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1451
    int-to-float v9, v3

    sub-float v9, v5, v9

    sub-int v10, v8, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1452
    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v10, v11

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1454
    int-to-float v9, v3

    add-float/2addr v9, v5

    sub-int v10, v8, v3

    int-to-float v10, v10

    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1455
    int-to-float v9, v8

    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_3
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .locals 1

    .prologue
    .line 609
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 629
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getHyphen(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 745
    const/4 v0, 0x0

    return v0
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "alignment"    # Landroid/text/Layout$Alignment;

    .prologue
    .line 754
    const/4 v0, 0x0

    return v0
.end method

.method public final getLineAscent(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1266
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBaseline(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1257
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final getLineBottom(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 1249
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 675
    if-eqz p2, :cond_0

    .line 676
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 677
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 678
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 679
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 681
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .locals 1
    .param p1, "line"    # I

    .prologue
    .line 1208
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public getLineForOffset(I)I
    .locals 6
    .param p1, "offset"    # I

    .prologue
    const/4 v5, 0x0

    .line 1110
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, "high":I
    const/4 v2, -0x1

    .line 1112
    .local v2, "low":I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1113
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 1115
    .local v0, "guess":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1116
    move v1, v0

    goto :goto_0

    .line 1118
    :cond_0
    move v2, v0

    goto :goto_0

    .line 1121
    .end local v0    # "guess":I
    :cond_1
    if-gez v2, :cond_2

    .line 1122
    return v5

    .line 1124
    :cond_2
    return v2
.end method

.method public getLineForVertical(I)I
    .locals 6
    .param p1, "vertical"    # I

    .prologue
    const/4 v5, 0x0

    .line 1087
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .local v1, "high":I
    const/4 v2, -0x1

    .line 1089
    .local v2, "low":I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 1090
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 1092
    .local v0, "guess":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_0

    .line 1093
    move v1, v0

    goto :goto_0

    .line 1095
    :cond_0
    move v2, v0

    goto :goto_0

    .line 1098
    .end local v0    # "guess":I
    :cond_1
    if-gez v2, :cond_2

    .line 1099
    return v5

    .line 1101
    :cond_2
    return v2
.end method

.method public getLineLeft(I)F
    .locals 8
    .param p1, "line"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 946
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 947
    .local v1, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 949
    .local v0, "align":Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_0

    .line 950
    return v6

    .line 951
    :cond_0
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2

    .line 952
    if-ne v1, v7, :cond_1

    .line 953
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    return v5

    .line 955
    :cond_1
    return v6

    .line 956
    :cond_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    .line 957
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    return v5

    .line 958
    :cond_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_5

    .line 959
    if-ne v1, v7, :cond_4

    .line 960
    return v6

    .line 962
    :cond_4
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    sub-float/2addr v5, v6

    return v5

    .line 964
    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 965
    .local v2, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 966
    .local v4, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 968
    .local v3, "max":I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v2

    int-to-float v5, v5

    return v5
.end method

.method public getLineMax(I)F
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1008
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    .line 1009
    .local v0, "margin":F
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 1010
    .local v1, "signedExtent":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .end local v1    # "signedExtent":F
    :goto_0
    add-float v2, v0, v1

    return v2

    .restart local v1    # "signedExtent":F
    :cond_0
    neg-float v1, v1

    goto :goto_0
.end method

.method public getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 507
    sget-object v5, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v5

    .line 508
    :try_start_0
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 510
    const/4 v4, 0x0

    const/4 v6, -0x1

    invoke-static {v4, v6}, Landroid/text/TextUtils;->packRangeInLong(II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    monitor-exit v5

    return-wide v6

    .line 513
    :cond_0
    :try_start_1
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->top:I

    .line 514
    .local v2, "dtop":I
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v1, v4, Landroid/graphics/Rect;->bottom:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v1, "dbottom":I
    monitor-exit v5

    .line 517
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 518
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 520
    .local v0, "bottom":I
    if-lt v3, v0, :cond_1

    invoke-static {v6, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4

    .line 507
    .end local v0    # "bottom":I
    .end local v1    # "dbottom":I
    .end local v2    # "dtop":I
    .end local v3    # "top":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 521
    .restart local v0    # "bottom":I
    .restart local v1    # "dbottom":I
    .restart local v2    # "dtop":I
    .restart local v3    # "top":I
    :cond_1
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v4

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v4

    return-wide v4
.end method

.method public getLineRight(I)F
    .locals 7
    .param p1, "line"    # I

    .prologue
    const/4 v6, -0x1

    .line 977
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 978
    .local v1, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 980
    .local v0, "align":Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_0

    .line 981
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    return v5

    .line 982
    :cond_0
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_2

    .line 983
    if-ne v1, v6, :cond_1

    .line 984
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    return v5

    .line 986
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v6

    add-float/2addr v5, v6

    return v5

    .line 987
    :cond_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_3

    .line 988
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    return v5

    .line 989
    :cond_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_5

    .line 990
    if-ne v1, v6, :cond_4

    .line 991
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    return v5

    .line 993
    :cond_4
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v5, v5

    return v5

    .line 995
    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v2

    .line 996
    .local v2, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 997
    .local v4, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v5

    float-to-int v5, v5

    and-int/lit8 v3, v5, -0x2

    .line 999
    .local v3, "max":I
    sub-int v5, v4, v2

    sub-int/2addr v5, v3

    div-int/lit8 v5, v5, 0x2

    sub-int v5, v4, v5

    int-to-float v5, v5

    return v5
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .locals 2
    .param p1, "line"    # I

    .prologue
    .line 1216
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    move-result v0

    return v0
.end method

.method public getLineWidth(I)F
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1018
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    int-to-float v0, v2

    .line 1019
    .local v0, "margin":F
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 1020
    .local v1, "signedExtent":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_0

    .end local v1    # "signedExtent":F
    :goto_0
    add-float v2, v0, v1

    return v2

    .restart local v1    # "signedExtent":F
    :cond_0
    neg-float v1, v1

    goto :goto_0
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 20
    .param p1, "line"    # I
    .param p2, "horiz"    # F

    .prologue
    .line 1133
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v18

    add-int/lit8 v13, v18, -0x1

    .line 1134
    .local v13, "max":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v14

    .line 1135
    .local v14, "min":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1137
    .local v6, "dirs":Landroid/text/Layout$Directions;
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 1138
    add-int/lit8 v13, v13, 0x1

    .line 1140
    :cond_0
    move v4, v14

    .line 1141
    .local v4, "best":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 1143
    .local v5, "bestdist":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_9

    .line 1144
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    aget v18, v18, v11

    add-int v9, v14, v18

    .line 1145
    .local v9, "here":I
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    const v19, 0x3ffffff

    and-int v18, v18, v19

    add-int v17, v9, v18

    .line 1146
    .local v17, "there":I
    iget-object v0, v6, Landroid/text/Layout$Directions;->mDirections:[I

    move-object/from16 v18, v0

    add-int/lit8 v19, v11, 0x1

    aget v18, v18, v19

    const/high16 v19, 0x4000000

    and-int v18, v18, v19

    if-eqz v18, :cond_2

    const/16 v16, -0x1

    .line 1148
    .local v16, "swap":I
    :goto_1
    move/from16 v0, v17

    if-le v0, v13, :cond_1

    .line 1149
    move/from16 v17, v13

    .line 1150
    :cond_1
    add-int/lit8 v18, v17, -0x1

    add-int/lit8 v10, v18, 0x1

    .local v10, "high":I
    add-int/lit8 v18, v9, 0x1

    add-int/lit8 v12, v18, -0x1

    .line 1152
    .local v12, "low":I
    :goto_2
    sub-int v18, v10, v12

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_4

    .line 1153
    add-int v18, v10, v12

    div-int/lit8 v8, v18, 0x2

    .line 1154
    .local v8, "guess":I
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v2

    .line 1156
    .local v2, "adguess":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p2

    cmpl-float v18, v18, v19

    if-ltz v18, :cond_3

    .line 1157
    move v10, v8

    goto :goto_2

    .line 1146
    .end local v2    # "adguess":I
    .end local v8    # "guess":I
    .end local v10    # "high":I
    .end local v12    # "low":I
    .end local v16    # "swap":I
    :cond_2
    const/16 v16, 0x1

    .restart local v16    # "swap":I
    goto :goto_1

    .line 1159
    .restart local v2    # "adguess":I
    .restart local v8    # "guess":I
    .restart local v10    # "high":I
    .restart local v12    # "low":I
    :cond_3
    move v12, v8

    goto :goto_2

    .line 1162
    .end local v2    # "adguess":I
    .end local v8    # "guess":I
    :cond_4
    add-int/lit8 v18, v9, 0x1

    move/from16 v0, v18

    if-ge v12, v0, :cond_5

    .line 1163
    add-int/lit8 v12, v9, 0x1

    .line 1165
    :cond_5
    move/from16 v0, v17

    if-ge v12, v0, :cond_7

    .line 1166
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v12

    .line 1168
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1170
    .local v7, "dist":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v12}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v3

    .line 1171
    .local v3, "aft":I
    move/from16 v0, v17

    if-ge v3, v0, :cond_6

    .line 1172
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 1174
    .local v15, "other":F
    cmpg-float v18, v15, v7

    if-gez v18, :cond_6

    .line 1175
    move v7, v15

    .line 1176
    move v12, v3

    .line 1180
    .end local v15    # "other":F
    :cond_6
    cmpg-float v18, v7, v5

    if-gez v18, :cond_7

    .line 1181
    move v5, v7

    .line 1182
    move v4, v12

    .line 1186
    .end local v3    # "aft":I
    .end local v7    # "dist":F
    :cond_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1188
    .restart local v7    # "dist":F
    cmpg-float v18, v7, v5

    if-gez v18, :cond_8

    .line 1189
    move v5, v7

    .line 1190
    move v4, v9

    .line 1143
    :cond_8
    add-int/lit8 v11, v11, 0x2

    goto/16 :goto_0

    .line 1194
    .end local v7    # "dist":F
    .end local v9    # "here":I
    .end local v10    # "high":I
    .end local v12    # "low":I
    .end local v16    # "swap":I
    .end local v17    # "there":I
    :cond_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v18

    sub-float v18, v18, p2

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 1196
    .restart local v7    # "dist":F
    cmpg-float v18, v7, v5

    if-gtz v18, :cond_a

    .line 1197
    move v5, v7

    .line 1198
    move v4, v13

    .line 1201
    :cond_a
    return v4
.end method

.method public getOffsetToLeftOf(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1270
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public getOffsetToRightOf(I)I
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 1274
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 7
    .param p1, "line"    # I

    .prologue
    .line 1555
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 1557
    .local v0, "align":Landroid/text/Layout$Alignment;
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_0

    .line 1558
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 1559
    .local v1, "sp":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1560
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1561
    const-class v6, Landroid/text/style/AlignmentSpan;

    .line 1559
    invoke-static {v1, v4, v5, v6}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/AlignmentSpan;

    .line 1563
    .local v3, "spans":[Landroid/text/style/AlignmentSpan;
    array-length v2, v3

    .line 1564
    .local v2, "spanLength":I
    if-lez v2, :cond_0

    .line 1565
    add-int/lit8 v4, v2, -0x1

    aget-object v4, v3, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1569
    .end local v1    # "sp":Landroid/text/Spanned;
    .end local v2    # "spanLength":I
    .end local v3    # "spans":[Landroid/text/style/AlignmentSpan;
    :cond_0
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1576
    const/4 v1, 0x0

    .line 1577
    .local v1, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1578
    .local v0, "dir":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_0

    .line 1581
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    return v2

    .line 1579
    :cond_0
    return v1
.end method

.method public final getParagraphRight(I)I
    .locals 3
    .param p1, "line"    # I

    .prologue
    .line 1588
    iget v1, p0, Landroid/text/Layout;->mWidth:I

    .line 1589
    .local v1, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1590
    .local v0, "dir":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_0

    .line 1593
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    sub-int v2, v1, v2

    return v2

    .line 1591
    :cond_0
    return v1
.end method

.method public getPrimaryHorizontal(I)F
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 872
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getPrimaryHorizontal(IZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .prologue
    .line 881
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 882
    .local v0, "trailing":Z
    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public getSecondaryHorizontal(I)F
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 891
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public getSecondaryHorizontal(IZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .prologue
    .line 900
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 901
    .local v0, "trailing":Z
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, v1, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 19
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # Landroid/graphics/Path;

    .prologue
    .line 1499
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    .line 1501
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 1502
    return-void

    .line 1504
    :cond_0
    move/from16 v0, p2

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 1505
    move/from16 v17, p2

    .line 1506
    .local v17, "temp":I
    move/from16 p2, p1

    .line 1507
    move/from16 p1, v17

    .line 1510
    .end local v17    # "temp":I
    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 1511
    .local v3, "startline":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    .line 1513
    .local v15, "endline":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1514
    .local v6, "top":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1516
    .local v7, "bottom":I
    if-ne v3, v15, :cond_2

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v8, p3

    .line 1517
    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1498
    :goto_0
    return-void

    .line 1519
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v0, v2

    move/from16 v18, v0

    .line 1521
    .local v18, "width":F
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    .line 1522
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v13

    move-object/from16 v8, p0

    move v9, v3

    move/from16 v10, p1

    move v12, v6

    move-object/from16 v14, p3

    .line 1521
    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1524
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_3

    .line 1525
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v9

    int-to-float v10, v6

    .line 1526
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    .line 1525
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1531
    :goto_1
    add-int/lit8 v16, v3, 0x1

    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v15, :cond_4

    .line 1532
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1533
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1534
    const/4 v9, 0x0

    int-to-float v10, v6

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 1531
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 1528
    .end local v16    # "i":I
    :cond_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    move-result v9

    int-to-float v10, v6

    .line 1529
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v12, v2

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v11, v18

    .line 1528
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto :goto_1

    .line 1537
    .restart local v16    # "i":I
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineTop(I)I

    move-result v6

    .line 1538
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v7

    .line 1540
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    move-object/from16 v8, p0

    move v9, v15

    move/from16 v11, p2

    move v12, v6

    move v13, v7

    move-object/from16 v14, p3

    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    .line 1543
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5

    .line 1544
    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    move/from16 v9, v18

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0

    .line 1546
    :cond_5
    const/4 v9, 0x0

    int-to-float v10, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v7

    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v8, p3

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    goto/16 :goto_0
.end method

.method public final getSpacingAdd()F
    .locals 1

    .prologue
    .line 650
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final getSpacingMultiplier()F
    .locals 1

    .prologue
    .line 643
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .locals 1

    .prologue
    .line 601
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final increaseWidthTo(I)V
    .locals 2
    .param p1, "wid"    # I

    .prologue
    .line 618
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-ge p1, v0, :cond_0

    .line 619
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 622
    :cond_0
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    .line 617
    return-void
.end method

.method public isLevelBoundary(I)Z
    .locals 11
    .param p1, "offset"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 765
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 766
    .local v2, "line":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 767
    .local v0, "dirs":Landroid/text/Layout$Directions;
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-eq v0, v10, :cond_0

    sget-object v10, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_1

    .line 768
    :cond_0
    return v9

    .line 771
    :cond_1
    iget-object v7, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 772
    .local v7, "runs":[I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 773
    .local v4, "lineStart":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 774
    .local v3, "lineEnd":I
    if-eq p1, v4, :cond_2

    if-ne p1, v3, :cond_6

    .line 775
    :cond_2
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    if-ne v10, v8, :cond_3

    const/4 v5, 0x0

    .line 776
    .local v5, "paraLevel":I
    :goto_0
    if-ne p1, v4, :cond_4

    const/4 v6, 0x0

    .line 777
    .local v6, "runIndex":I
    :goto_1
    add-int/lit8 v10, v6, 0x1

    aget v10, v7, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v10, v10, 0x3f

    if-eq v10, v5, :cond_5

    :goto_2
    return v8

    .line 775
    .end local v5    # "paraLevel":I
    .end local v6    # "runIndex":I
    :cond_3
    const/4 v5, 0x1

    .restart local v5    # "paraLevel":I
    goto :goto_0

    .line 776
    :cond_4
    array-length v10, v7

    add-int/lit8 v6, v10, -0x2

    .restart local v6    # "runIndex":I
    goto :goto_1

    :cond_5
    move v8, v9

    .line 777
    goto :goto_2

    .line 780
    .end local v5    # "paraLevel":I
    .end local v6    # "runIndex":I
    :cond_6
    sub-int/2addr p1, v4

    .line 781
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v10, v7

    if-ge v1, v10, :cond_8

    .line 782
    aget v10, v7, v1

    if-ne p1, v10, :cond_7

    .line 783
    return v8

    .line 781
    :cond_7
    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    .line 786
    :cond_8
    return v9
.end method

.method public isRtlCharAt(I)Z
    .locals 12
    .param p1, "offset"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 795
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    .line 796
    .local v4, "line":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v0

    .line 797
    .local v0, "dirs":Landroid/text/Layout$Directions;
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_0

    .line 798
    return v9

    .line 800
    :cond_0
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v0, v10, :cond_1

    .line 801
    return v8

    .line 803
    :cond_1
    iget-object v6, v0, Landroid/text/Layout$Directions;->mDirections:[I

    .line 804
    .local v6, "runs":[I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 805
    .local v5, "lineStart":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v10, v6

    if-ge v1, v10, :cond_4

    .line 806
    aget v10, v6, v1

    add-int v7, v5, v10

    .line 807
    .local v7, "start":I
    add-int/lit8 v10, v1, 0x1

    aget v10, v6, v10

    const v11, 0x3ffffff

    and-int/2addr v10, v11

    add-int v3, v7, v10

    .line 808
    .local v3, "limit":I
    if-lt p1, v7, :cond_3

    if-ge p1, v3, :cond_3

    .line 809
    add-int/lit8 v10, v1, 0x1

    aget v10, v6, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v2, v10, 0x3f

    .line 810
    .local v2, "level":I
    and-int/lit8 v10, v2, 0x1

    if-eqz v10, :cond_2

    :goto_1
    return v8

    :cond_2
    move v8, v9

    goto :goto_1

    .line 805
    .end local v2    # "level":I
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 814
    .end local v3    # "limit":I
    .end local v7    # "start":I
    :cond_4
    return v9
.end method

.method protected final isSpanned()Z
    .locals 1

    .prologue
    .line 1800
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F

    .prologue
    .line 223
    if-gez p3, :cond_0

    .line 224
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 228
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 229
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 230
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 231
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 232
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 233
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 222
    return-void
.end method

.method public shouldClampCursor(I)Z
    .locals 4
    .param p1, "line"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1368
    invoke-static {}, Landroid/text/Layout;->-getandroid_text_Layout$AlignmentSwitchesValues()[I

    move-result-object v2

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v3

    invoke-virtual {v3}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1374
    return v1

    .line 1370
    :pswitch_0
    return v0

    .line 1372
    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    if-lez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    .line 1368
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
