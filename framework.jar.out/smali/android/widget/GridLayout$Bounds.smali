.class Landroid/widget/GridLayout$Bounds;
.super Ljava/lang/Object;
.source "GridLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/GridLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bounds"
.end annotation


# instance fields
.field public after:I

.field public before:I

.field public flexibility:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2357
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2358
    invoke-virtual {p0}, Landroid/widget/GridLayout$Bounds;->reset()V

    .line 2357
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/GridLayout$Bounds;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/widget/GridLayout$Bounds;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOffset(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Alignment;IZ)I
    .locals 2
    .param p1, "gl"    # Landroid/widget/GridLayout;
    .param p2, "c"    # Landroid/view/View;
    .param p3, "a"    # Landroid/widget/GridLayout$Alignment;
    .param p4, "size"    # I
    .param p5, "horizontal"    # Z

    .prologue
    .line 2382
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getLayoutMode()I

    move-result v1

    invoke-virtual {p3, p2, p4, v1}, Landroid/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected include(II)V
    .locals 1
    .param p1, "before"    # I
    .param p2, "after"    # I

    .prologue
    .line 2368
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    .line 2369
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->after:I

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/widget/GridLayout$Bounds;->after:I

    .line 2367
    return-void
.end method

.method protected final include(Landroid/widget/GridLayout;Landroid/view/View;Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Axis;I)V
    .locals 5
    .param p1, "gl"    # Landroid/widget/GridLayout;
    .param p2, "c"    # Landroid/view/View;
    .param p3, "spec"    # Landroid/widget/GridLayout$Spec;
    .param p4, "axis"    # Landroid/widget/GridLayout$Axis;
    .param p5, "size"    # I

    .prologue
    .line 2386
    iget v3, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    invoke-virtual {p3}, Landroid/widget/GridLayout$Spec;->getFlexibility()I

    move-result v4

    and-int/2addr v3, v4

    iput v3, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    .line 2387
    iget-boolean v2, p4, Landroid/widget/GridLayout$Axis;->horizontal:Z

    .line 2388
    .local v2, "horizontal":Z
    iget-boolean v3, p4, Landroid/widget/GridLayout$Axis;->horizontal:Z

    invoke-static {p3, v3}, Landroid/widget/GridLayout$Spec;->-wrap0(Landroid/widget/GridLayout$Spec;Z)Landroid/widget/GridLayout$Alignment;

    move-result-object v0

    .line 2390
    .local v0, "alignment":Landroid/widget/GridLayout$Alignment;
    invoke-virtual {p1}, Landroid/widget/GridLayout;->getLayoutMode()I

    move-result v3

    invoke-virtual {v0, p2, p5, v3}, Landroid/widget/GridLayout$Alignment;->getAlignmentValue(Landroid/view/View;II)I

    move-result v1

    .line 2391
    .local v1, "before":I
    sub-int v3, p5, v1

    invoke-virtual {p0, v1, v3}, Landroid/widget/GridLayout$Bounds;->include(II)V

    .line 2385
    return-void
.end method

.method protected reset()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 2362
    iput v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    .line 2363
    iput v0, p0, Landroid/widget/GridLayout$Bounds;->after:I

    .line 2364
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    .line 2361
    return-void
.end method

.method protected size(Z)I
    .locals 2
    .param p1, "min"    # Z

    .prologue
    .line 2373
    if-nez p1, :cond_0

    .line 2374
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->flexibility:I

    invoke-static {v0}, Landroid/widget/GridLayout;->canStretch(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2375
    const v0, 0x186a0

    return v0

    .line 2378
    :cond_0
    iget v0, p0, Landroid/widget/GridLayout$Bounds;->before:I

    iget v1, p0, Landroid/widget/GridLayout$Bounds;->after:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Bounds{before="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2397
    iget v1, p0, Landroid/widget/GridLayout$Bounds;->before:I

    .line 2396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2398
    const-string/jumbo v1, ", after="

    .line 2396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2398
    iget v1, p0, Landroid/widget/GridLayout$Bounds;->after:I

    .line 2396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2399
    const/16 v1, 0x7d

    .line 2396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
