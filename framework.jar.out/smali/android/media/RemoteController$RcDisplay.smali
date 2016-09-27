.class Landroid/media/RemoteController$RcDisplay;
.super Landroid/media/IRemoteControlDisplay$Stub;
.source "RemoteController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/RemoteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RcDisplay"
.end annotation


# instance fields
.field private final mController:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/media/RemoteController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/media/RemoteController;)V
    .locals 1
    .param p1, "rc"    # Landroid/media/RemoteController;

    .prologue
    .line 550
    invoke-direct {p0}, Landroid/media/IRemoteControlDisplay$Stub;-><init>()V

    .line 551
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    .line 550
    return-void
.end method


# virtual methods
.method public setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "genId"    # I
    .param p2, "metadata"    # Landroid/os/Bundle;
    .param p3, "artwork"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 666
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/RemoteController;

    .line 667
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_0

    .line 668
    return-void

    .line 671
    :cond_0
    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 672
    return-void

    .line 674
    :cond_1
    invoke-static {}, Landroid/media/RemoteController;->-get3()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 675
    :try_start_0
    invoke-static {v7}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eq v1, p1, :cond_2

    monitor-exit v0

    .line 676
    return-void

    :cond_2
    monitor-exit v0

    .line 679
    if-nez p2, :cond_3

    .line 680
    new-instance p2, Landroid/os/Bundle;

    .end local p2    # "metadata":Landroid/os/Bundle;
    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 682
    .restart local p2    # "metadata":Landroid/os/Bundle;
    :cond_3
    if-eqz p3, :cond_4

    .line 683
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 686
    :cond_4
    invoke-static {v7}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    move v3, p1

    move-object v5, p2

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->-wrap8(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 665
    return-void

    .line 674
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setArtwork(ILandroid/graphics/Bitmap;)V
    .locals 8
    .param p1, "genId"    # I
    .param p2, "artwork"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v4, 0x0

    .line 648
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/RemoteController;

    .line 649
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_0

    .line 650
    return-void

    .line 653
    :cond_0
    invoke-static {}, Landroid/media/RemoteController;->-get3()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 654
    :try_start_0
    invoke-static {v7}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eq v1, p1, :cond_1

    monitor-exit v0

    .line 655
    return-void

    :cond_1
    monitor-exit v0

    .line 658
    new-instance v5, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v5, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 659
    .local v5, "metadata":Landroid/os/Bundle;
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 660
    invoke-static {v7}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    move v3, p1

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->-wrap8(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 647
    return-void

    .line 653
    .end local v5    # "metadata":Landroid/os/Bundle;
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    .locals 11
    .param p1, "genId"    # I
    .param p2, "clientMediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 556
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/RemoteController;

    .line 557
    .local v10, "rc":Landroid/media/RemoteController;
    if-nez v10, :cond_0

    .line 558
    return-void

    .line 560
    :cond_0
    const/4 v9, 0x0

    .line 561
    .local v9, "isNew":Z
    invoke-static {}, Landroid/media/RemoteController;->-get3()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 562
    :try_start_0
    invoke-static {v10}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 563
    invoke-static {v10, p1}, Landroid/media/RemoteController;->-set0(Landroid/media/RemoteController;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 564
    const/4 v9, 0x1

    :cond_1
    monitor-exit v2

    .line 567
    if-eqz p2, :cond_2

    .line 568
    invoke-static {v10}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    move v2, v1

    move v3, p1

    move v4, v1

    move-object v5, p2

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->-wrap8(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 571
    :cond_2
    if-nez v9, :cond_3

    if-eqz p3, :cond_4

    .line 572
    :cond_3
    invoke-static {v10}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v2

    .line 573
    if-eqz p3, :cond_5

    const/4 v6, 0x1

    .line 572
    :goto_0
    const/4 v3, 0x4

    move v4, v1

    move v5, p1

    move v8, v1

    invoke-static/range {v2 .. v8}, Landroid/media/RemoteController;->-wrap8(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 555
    :cond_4
    return-void

    .line 561
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_5
    move v6, v1

    .line 573
    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 578
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/RemoteController;

    .line 579
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_0

    .line 580
    return-void

    .line 582
    :cond_0
    invoke-static {v7}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    .line 583
    if-eqz p1, :cond_1

    const/4 v3, 0x1

    .line 582
    :goto_0
    const/4 v1, 0x5

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->-wrap8(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 577
    return-void

    :cond_1
    move v3, v2

    .line 583
    goto :goto_0
.end method

.method public setMetadata(ILandroid/os/Bundle;)V
    .locals 8
    .param p1, "genId"    # I
    .param p2, "metadata"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 629
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/RemoteController;

    .line 630
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_0

    .line 631
    return-void

    .line 634
    :cond_0
    if-nez p2, :cond_1

    .line 635
    return-void

    .line 637
    :cond_1
    invoke-static {}, Landroid/media/RemoteController;->-get3()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 638
    :try_start_0
    invoke-static {v7}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eq v1, p1, :cond_2

    monitor-exit v0

    .line 639
    return-void

    :cond_2
    monitor-exit v0

    .line 642
    invoke-static {v7}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    move v3, p1

    move-object v5, p2

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->-wrap8(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 628
    return-void

    .line 637
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public setPlaybackState(IIJJF)V
    .locals 9
    .param p1, "genId"    # I
    .param p2, "state"    # I
    .param p3, "stateChangeTimeMs"    # J
    .param p5, "currentPosMs"    # J
    .param p7, "speed"    # F

    .prologue
    .line 588
    iget-object v1, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/RemoteController;

    .line 589
    .local v8, "rc":Landroid/media/RemoteController;
    if-nez v8, :cond_0

    .line 590
    return-void

    .line 600
    :cond_0
    invoke-static {}, Landroid/media/RemoteController;->-get3()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 601
    :try_start_0
    invoke-static {v8}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eq v2, p1, :cond_1

    monitor-exit v1

    .line 602
    return-void

    :cond_1
    monitor-exit v1

    .line 606
    new-instance v0, Landroid/media/RemoteController$PlaybackInfo;

    move v1, p2

    move-wide v2, p3

    move-wide v4, p5

    move/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Landroid/media/RemoteController$PlaybackInfo;-><init>(IJJF)V

    .line 607
    .local v0, "playbackInfo":Landroid/media/RemoteController$PlaybackInfo;
    invoke-static {v8}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 608
    const/4 v5, 0x0

    const/4 v7, 0x0

    move v4, p1

    move-object v6, v0

    .line 607
    invoke-static/range {v1 .. v7}, Landroid/media/RemoteController;->-wrap8(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 587
    return-void

    .line 600
    .end local v0    # "playbackInfo":Landroid/media/RemoteController$PlaybackInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method public setTransportControlInfo(III)V
    .locals 8
    .param p1, "genId"    # I
    .param p2, "transportControlFlags"    # I
    .param p3, "posCapabilities"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 614
    iget-object v0, p0, Landroid/media/RemoteController$RcDisplay;->mController:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/RemoteController;

    .line 615
    .local v7, "rc":Landroid/media/RemoteController;
    if-nez v7, :cond_0

    .line 616
    return-void

    .line 618
    :cond_0
    invoke-static {}, Landroid/media/RemoteController;->-get3()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 619
    :try_start_0
    invoke-static {v7}, Landroid/media/RemoteController;->-get0(Landroid/media/RemoteController;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eq v1, p1, :cond_1

    monitor-exit v0

    .line 620
    return-void

    :cond_1
    monitor-exit v0

    .line 623
    invoke-static {v7}, Landroid/media/RemoteController;->-get2(Landroid/media/RemoteController;)Landroid/media/RemoteController$EventHandler;

    move-result-object v0

    const/4 v1, 0x2

    move v3, p1

    move v4, p2

    move v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/RemoteController;->-wrap8(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 613
    return-void

    .line 618
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
