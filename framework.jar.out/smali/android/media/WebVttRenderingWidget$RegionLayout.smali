.class Landroid/media/WebVttRenderingWidget$RegionLayout;
.super Landroid/widget/LinearLayout;
.source "WebVttRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/WebVttRenderingWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RegionLayout"
.end annotation


# instance fields
.field private mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

.field private mFontSize:F

.field private final mRegion:Landroid/media/TextTrackRegion;

.field private final mRegionCueBoxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/WebVttRenderingWidget$CueLayout;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/TextTrackRegion;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "region"    # Landroid/media/TextTrackRegion;
    .param p3, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p4, "fontSize"    # F

    .prologue
    .line 1533
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1525
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    .line 1535
    iput-object p2, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegion:Landroid/media/TextTrackRegion;

    .line 1536
    iput-object p3, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1537
    iput p4, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mFontSize:F

    .line 1540
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget$RegionLayout;->setOrientation(I)V

    .line 1545
    iget v0, p3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget$RegionLayout;->setBackgroundColor(I)V

    .line 1532
    return-void
.end method


# virtual methods
.method public getRegion()Landroid/media/TextTrackRegion;
    .locals 1

    .prologue
    .line 1643
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegion:Landroid/media/TextTrackRegion;

    return-object v0
.end method

.method public measureForParent(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v6, -0x80000000

    .line 1567
    iget-object v0, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegion:Landroid/media/TextTrackRegion;

    .line 1568
    .local v0, "region":Landroid/media/TextTrackRegion;
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1569
    .local v3, "specWidth":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 1570
    .local v2, "specHeight":I
    iget v5, v0, Landroid/media/TextTrackRegion;->mWidth:F

    float-to-int v4, v5

    .line 1573
    .local v4, "width":I
    mul-int v5, v4, v3

    div-int/lit8 v1, v5, 0x64

    .line 1575
    .local v1, "size":I
    invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1576
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1577
    invoke-virtual {p0, p1, p2}, Landroid/media/WebVttRenderingWidget$RegionLayout;->measure(II)V

    .line 1566
    return-void
.end method

.method public prepForPrune()V
    .locals 4

    .prologue
    .line 1587
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1588
    .local v1, "cueCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1589
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1590
    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v0}, Landroid/media/WebVttRenderingWidget$CueLayout;->prepForPrune()V

    .line 1588
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1586
    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_0
    return-void
.end method

.method public prune()Z
    .locals 4

    .prologue
    .line 1625
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1626
    .local v1, "cueCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1627
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1628
    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v0}, Landroid/media/WebVttRenderingWidget$CueLayout;->isActive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1629
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1630
    invoke-virtual {p0, v0}, Landroid/media/WebVttRenderingWidget$RegionLayout;->removeView(Landroid/view/View;)V

    .line 1631
    add-int/lit8 v1, v1, -0x1

    .line 1632
    add-int/lit8 v2, v2, -0x1

    .line 1626
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1636
    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_1
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    return v3
.end method

.method public put(Landroid/media/TextTrackCue;)V
    .locals 7
    .param p1, "cue"    # Landroid/media/TextTrackCue;

    .prologue
    const/4 v6, -0x2

    .line 1601
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1602
    .local v1, "cueCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1603
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1604
    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v0}, Landroid/media/WebVttRenderingWidget$CueLayout;->getCue()Landroid/media/TextTrackCue;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 1605
    invoke-virtual {v0}, Landroid/media/WebVttRenderingWidget$CueLayout;->update()V

    .line 1606
    return-void

    .line 1602
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1610
    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_1
    new-instance v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    iget v5, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mFontSize:F

    invoke-direct {v0, v3, p1, v4, v5}, Landroid/media/WebVttRenderingWidget$CueLayout;-><init>(Landroid/content/Context;Landroid/media/TextTrackCue;Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1611
    .restart local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1612
    invoke-virtual {p0, v0, v6, v6}, Landroid/media/WebVttRenderingWidget$RegionLayout;->addView(Landroid/view/View;II)V

    .line 1614
    invoke-virtual {p0}, Landroid/media/WebVttRenderingWidget$RegionLayout;->getChildCount()I

    move-result v3

    iget-object v4, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegion:Landroid/media/TextTrackRegion;

    iget v4, v4, Landroid/media/TextTrackRegion;->mLines:I

    if-le v3, v4, :cond_2

    .line 1615
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->removeViewAt(I)V

    .line 1600
    :cond_2
    return-void
.end method

.method public setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V
    .locals 4
    .param p1, "captionStyle"    # Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .param p2, "fontSize"    # F

    .prologue
    .line 1550
    iput-object p1, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mCaptionStyle:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 1551
    iput p2, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mFontSize:F

    .line 1553
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1554
    .local v1, "cueCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1555
    iget-object v3, p0, Landroid/media/WebVttRenderingWidget$RegionLayout;->mRegionCueBoxes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/WebVttRenderingWidget$CueLayout;

    .line 1556
    .local v0, "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    invoke-virtual {v0, p1, p2}, Landroid/media/WebVttRenderingWidget$CueLayout;->setCaptionStyle(Landroid/view/accessibility/CaptioningManager$CaptionStyle;F)V

    .line 1554
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1559
    .end local v0    # "cueBox":Landroid/media/WebVttRenderingWidget$CueLayout;
    :cond_0
    iget v3, p1, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->windowColor:I

    invoke-virtual {p0, v3}, Landroid/media/WebVttRenderingWidget$RegionLayout;->setBackgroundColor(I)V

    .line 1549
    return-void
.end method
