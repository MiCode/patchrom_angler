.class public Landroid/view/animation/Animation$Description;
.super Ljava/lang/Object;
.source "Animation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/animation/Animation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Description"
.end annotation


# instance fields
.field public type:I

.field public value:F


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 1076
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;
    .locals 6
    .param p0, "value"    # Landroid/util/TypedValue;

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 1101
    new-instance v0, Landroid/view/animation/Animation$Description;

    invoke-direct {v0}, Landroid/view/animation/Animation$Description;-><init>()V

    .line 1102
    .local v0, "d":Landroid/view/animation/Animation$Description;
    if-nez p0, :cond_1

    .line 1103
    iput v4, v0, Landroid/view/animation/Animation$Description;->type:I

    .line 1104
    iput v5, v0, Landroid/view/animation/Animation$Description;->value:F

    .line 1124
    :cond_0
    iput v4, v0, Landroid/view/animation/Animation$Description;->type:I

    .line 1125
    iput v5, v0, Landroid/view/animation/Animation$Description;->value:F

    .line 1127
    return-object v0

    .line 1106
    :cond_1
    iget v2, p0, Landroid/util/TypedValue;->type:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 1107
    iget v2, p0, Landroid/util/TypedValue;->data:I

    and-int/lit8 v2, v2, 0xf

    if-ne v2, v1, :cond_2

    .line 1109
    const/4 v1, 0x2

    .line 1107
    :cond_2
    iput v1, v0, Landroid/view/animation/Animation$Description;->type:I

    .line 1110
    iget v1, p0, Landroid/util/TypedValue;->data:I

    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    iput v1, v0, Landroid/view/animation/Animation$Description;->value:F

    .line 1111
    return-object v0

    .line 1112
    :cond_3
    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 1113
    iput v4, v0, Landroid/view/animation/Animation$Description;->type:I

    .line 1114
    invoke-virtual {p0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, v0, Landroid/view/animation/Animation$Description;->value:F

    .line 1115
    return-object v0

    .line 1116
    :cond_4
    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 1117
    iget v1, p0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 1118
    iput v4, v0, Landroid/view/animation/Animation$Description;->type:I

    .line 1119
    iget v1, p0, Landroid/util/TypedValue;->data:I

    int-to-float v1, v1

    iput v1, v0, Landroid/view/animation/Animation$Description;->value:F

    .line 1120
    return-object v0
.end method
