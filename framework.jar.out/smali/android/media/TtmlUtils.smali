.class final Landroid/media/TtmlUtils;
.super Ljava/lang/Object;
.source "TtmlRenderer.java"


# static fields
.field public static final ATTR_BEGIN:Ljava/lang/String; = "begin"

.field public static final ATTR_DURATION:Ljava/lang/String; = "dur"

.field public static final ATTR_END:Ljava/lang/String; = "end"

.field private static final CLOCK_TIME:Ljava/util/regex/Pattern;

.field public static final INVALID_TIMESTAMP:J = 0x7fffffffffffffffL

.field private static final OFFSET_TIME:Ljava/util/regex/Pattern;

.field public static final PCDATA:Ljava/lang/String; = "#pcdata"

.field public static final TAG_BODY:Ljava/lang/String; = "body"

.field public static final TAG_BR:Ljava/lang/String; = "br"

.field public static final TAG_DIV:Ljava/lang/String; = "div"

.field public static final TAG_HEAD:Ljava/lang/String; = "head"

.field public static final TAG_LAYOUT:Ljava/lang/String; = "layout"

.field public static final TAG_METADATA:Ljava/lang/String; = "metadata"

.field public static final TAG_P:Ljava/lang/String; = "p"

.field public static final TAG_REGION:Ljava/lang/String; = "region"

.field public static final TAG_SMPTE_DATA:Ljava/lang/String; = "smpte:data"

.field public static final TAG_SMPTE_IMAGE:Ljava/lang/String; = "smpte:image"

.field public static final TAG_SMPTE_INFORMATION:Ljava/lang/String; = "smpte:information"

.field public static final TAG_SPAN:Ljava/lang/String; = "span"

.field public static final TAG_STYLE:Ljava/lang/String; = "style"

.field public static final TAG_STYLING:Ljava/lang/String; = "styling"

.field public static final TAG_TT:Ljava/lang/String; = "tt"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const-string/jumbo v0, "^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$"

    .line 103
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/TtmlUtils;->CLOCK_TIME:Ljava/util/regex/Pattern;

    .line 108
    const-string/jumbo v0, "^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$"

    .line 107
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/media/TtmlUtils;->OFFSET_TIME:Ljava/util/regex/Pattern;

    .line 77
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyDefaultSpacePolicy(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "in"    # Ljava/lang/String;

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/media/TtmlUtils;->applySpacePolicy(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static applySpacePolicy(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/lang/String;
    .param p1, "treatLfAsSpace"    # Z

    .prologue
    .line 193
    const-string/jumbo v4, "\r\n"

    const-string/jumbo v5, "\n"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "crRemoved":Ljava/lang/String;
    const-string/jumbo v4, " *\n *"

    const-string/jumbo v5, "\n"

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 198
    .local v3, "spacesNeighboringLfRemoved":Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string/jumbo v4, "\n"

    const-string/jumbo v5, " "

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, "lfToSpace":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "[ \t\\x0B\u000c\r]+"

    const-string/jumbo v5, " "

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 202
    .local v2, "spacesCollapsed":Ljava/lang/String;
    return-object v2

    .line 199
    .end local v1    # "lfToSpace":Ljava/lang/String;
    .end local v2    # "spacesCollapsed":Ljava/lang/String;
    :cond_0
    move-object v1, v3

    .restart local v1    # "lfToSpace":Ljava/lang/String;
    goto :goto_0
.end method

.method public static extractText(Landroid/media/TtmlNode;JJ)Ljava/lang/String;
    .locals 9
    .param p0, "root"    # Landroid/media/TtmlNode;
    .param p1, "startUs"    # J
    .param p3, "endUs"    # J

    .prologue
    .line 213
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 214
    .local v6, "text":Ljava/lang/StringBuilder;
    const/4 v7, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v1 .. v7}, Landroid/media/TtmlUtils;->extractText(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;Z)V

    .line 215
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\n$"

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static extractText(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;Z)V
    .locals 13
    .param p0, "node"    # Landroid/media/TtmlNode;
    .param p1, "startUs"    # J
    .param p3, "endUs"    # J
    .param p5, "out"    # Ljava/lang/StringBuilder;
    .param p6, "inPTag"    # Z

    .prologue
    .line 220
    iget-object v3, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string/jumbo v4, "#pcdata"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p6, :cond_1

    .line 221
    iget-object v3, p0, Landroid/media/TtmlNode;->mText:Ljava/lang/String;

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    iget-object v3, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string/jumbo v4, "br"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p6, :cond_2

    .line 223
    const-string/jumbo v3, "\n"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 224
    :cond_2
    iget-object v3, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string/jumbo v4, "metadata"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 226
    invoke-virtual/range {p0 .. p4}, Landroid/media/TtmlNode;->isActive(JJ)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    iget-object v3, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string/jumbo v4, "p"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 228
    .local v11, "pTag":Z
    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .line 229
    .local v10, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget-object v3, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 230
    iget-object v3, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/TtmlNode;

    if-nez v11, :cond_3

    move/from16 v9, p6

    :goto_2
    move-wide v4, p1

    move-wide/from16 v6, p3

    move-object/from16 v8, p5

    invoke-static/range {v3 .. v9}, Landroid/media/TtmlUtils;->extractText(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;Z)V

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 230
    :cond_3
    const/4 v9, 0x1

    goto :goto_2

    .line 232
    :cond_4
    if-eqz v11, :cond_0

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eq v10, v3, :cond_0

    .line 233
    const-string/jumbo v3, "\n"

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static extractTtmlFragment(Landroid/media/TtmlNode;JJ)Ljava/lang/String;
    .locals 7
    .param p0, "root"    # Landroid/media/TtmlNode;
    .param p1, "startUs"    # J
    .param p3, "endUs"    # J

    .prologue
    .line 246
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .local v6, "fragment":Ljava/lang/StringBuilder;
    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 247
    invoke-static/range {v1 .. v6}, Landroid/media/TtmlUtils;->extractTtmlFragment(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;)V

    .line 248
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static extractTtmlFragment(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;)V
    .locals 7
    .param p0, "node"    # Landroid/media/TtmlNode;
    .param p1, "startUs"    # J
    .param p3, "endUs"    # J
    .param p5, "out"    # Ljava/lang/StringBuilder;

    .prologue
    .line 253
    iget-object v1, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string/jumbo v2, "#pcdata"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 254
    iget-object v1, p0, Landroid/media/TtmlNode;->mText:Ljava/lang/String;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v1, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    const-string/jumbo v2, "br"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 256
    const-string/jumbo v1, "<br/>"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 257
    :cond_2
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/media/TtmlNode;->isActive(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const-string/jumbo v1, "<"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v1, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object v1, p0, Landroid/media/TtmlNode;->mAttributes:Ljava/lang/String;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string/jumbo v1, ">"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 263
    iget-object v1, p0, Landroid/media/TtmlNode;->mChildren:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/TtmlNode;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-static/range {v1 .. v6}, Landroid/media/TtmlUtils;->extractTtmlFragment(Landroid/media/TtmlNode;JJLjava/lang/StringBuilder;)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 265
    :cond_3
    const-string/jumbo v1, "</"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    iget-object v1, p0, Landroid/media/TtmlNode;->mName:Ljava/lang/String;

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string/jumbo v1, ">"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public static parseTimeExpression(Ljava/lang/String;III)J
    .locals 20
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "frameRate"    # I
    .param p2, "subframeRate"    # I
    .param p3, "tickRate"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 129
    sget-object v13, Landroid/media/TtmlUtils;->CLOCK_TIME:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 130
    .local v7, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 131
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    .line 132
    .local v6, "hours":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const-wide/16 v18, 0xe10

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-double v2, v0

    .line 133
    .local v2, "durationSeconds":D
    const/4 v13, 0x2

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    .line 134
    .local v8, "minutes":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    const-wide/16 v18, 0x3c

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v2, v2, v16

    .line 135
    const/4 v13, 0x3

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 136
    .local v9, "seconds":Ljava/lang/String;
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v2, v2, v16

    .line 137
    const/4 v13, 0x4

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "fraction":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    :goto_0
    add-double v2, v2, v16

    .line 139
    const/4 v13, 0x5

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 140
    .local v5, "frames":Ljava/lang/String;
    if-eqz v5, :cond_1

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    :goto_1
    add-double v2, v2, v16

    .line 141
    const/4 v13, 0x6

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    .line 142
    .local v10, "subframes":Ljava/lang/String;
    if-eqz v10, :cond_2

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    .line 143
    move/from16 v0, p2

    int-to-double v0, v0

    move-wide/from16 v18, v0

    .line 142
    div-double v16, v16, v18

    .line 143
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v18, v0

    .line 142
    div-double v16, v16, v18

    :goto_2
    add-double v2, v2, v16

    .line 145
    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v16, v16, v2

    move-wide/from16 v0, v16

    double-to-long v0, v0

    move-wide/from16 v16, v0

    return-wide v16

    .line 138
    .end local v5    # "frames":Ljava/lang/String;
    .end local v10    # "subframes":Ljava/lang/String;
    :cond_0
    const-wide/16 v16, 0x0

    goto :goto_0

    .line 140
    .restart local v5    # "frames":Ljava/lang/String;
    :cond_1
    const-wide/16 v16, 0x0

    goto :goto_1

    .line 144
    .restart local v10    # "subframes":Ljava/lang/String;
    :cond_2
    const-wide/16 v16, 0x0

    goto :goto_2

    .line 147
    .end local v2    # "durationSeconds":D
    .end local v4    # "fraction":Ljava/lang/String;
    .end local v5    # "frames":Ljava/lang/String;
    .end local v6    # "hours":Ljava/lang/String;
    .end local v8    # "minutes":Ljava/lang/String;
    .end local v9    # "seconds":Ljava/lang/String;
    .end local v10    # "subframes":Ljava/lang/String;
    :cond_3
    sget-object v13, Landroid/media/TtmlUtils;->OFFSET_TIME:Ljava/util/regex/Pattern;

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    .line 148
    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 149
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v11

    .line 150
    .local v11, "timeValue":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    .line 151
    .local v14, "value":D
    const/4 v13, 0x2

    invoke-virtual {v7, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v12

    .line 152
    .local v12, "unit":Ljava/lang/String;
    const-string/jumbo v13, "h"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 153
    const-wide v16, 0x41ead27480000000L    # 3.6E9

    mul-double v14, v14, v16

    .line 165
    :cond_4
    :goto_3
    double-to-long v0, v14

    move-wide/from16 v16, v0

    return-wide v16

    .line 154
    :cond_5
    const-string/jumbo v13, "m"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 155
    const-wide v16, 0x418c9c3800000000L    # 6.0E7

    mul-double v14, v14, v16

    goto :goto_3

    .line 156
    :cond_6
    const-string/jumbo v13, "s"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 157
    const-wide v16, 0x412e848000000000L    # 1000000.0

    mul-double v14, v14, v16

    goto :goto_3

    .line 158
    :cond_7
    const-string/jumbo v13, "ms"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 159
    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v14, v14, v16

    goto :goto_3

    .line 160
    :cond_8
    const-string/jumbo v13, "f"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 161
    move/from16 v0, p1

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v16, v14, v16

    const-wide v18, 0x412e848000000000L    # 1000000.0

    mul-double v14, v16, v18

    goto :goto_3

    .line 162
    :cond_9
    const-string/jumbo v13, "t"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 163
    move/from16 v0, p3

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v16, v14, v16

    const-wide v18, 0x412e848000000000L    # 1000000.0

    mul-double v14, v16, v18

    goto :goto_3

    .line 167
    .end local v11    # "timeValue":Ljava/lang/String;
    .end local v12    # "unit":Ljava/lang/String;
    .end local v14    # "value":D
    :cond_a
    new-instance v13, Ljava/lang/NumberFormatException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "Malformed time expression : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v13, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v13
.end method
