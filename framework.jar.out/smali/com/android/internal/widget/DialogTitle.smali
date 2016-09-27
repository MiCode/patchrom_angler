.class public Lcom/android/internal/widget/DialogTitle;
.super Landroid/widget/TextView;
.source "DialogTitle.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 50
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/widget/DialogTitle;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 53
    .local v2, "layout":Landroid/text/Layout;
    if-eqz v2, :cond_1

    .line 54
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    .line 55
    .local v3, "lineCount":I
    if-lez v3, :cond_1

    .line 56
    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v2, v5}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v1

    .line 57
    .local v1, "ellipsisCount":I
    if-lez v1, :cond_1

    .line 58
    invoke-virtual {p0, v9}, Lcom/android/internal/widget/DialogTitle;->setSingleLine(Z)V

    .line 59
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/DialogTitle;->setMaxLines(I)V

    .line 61
    iget-object v5, p0, Lcom/android/internal/widget/DialogTitle;->mContext:Landroid/content/Context;

    .line 62
    sget-object v6, Landroid/R$styleable;->TextAppearance:[I

    const v7, 0x1010041

    .line 63
    const v8, 0x1030044

    .line 61
    invoke-virtual {v5, v10, v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v9, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    .line 66
    .local v4, "textSize":I
    if-eqz v4, :cond_0

    .line 68
    int-to-float v5, v4

    invoke-virtual {p0, v9, v5}, Lcom/android/internal/widget/DialogTitle;->setTextSize(IF)V

    .line 70
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 72
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 49
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "ellipsisCount":I
    .end local v3    # "lineCount":I
    .end local v4    # "textSize":I
    :cond_1
    return-void
.end method
