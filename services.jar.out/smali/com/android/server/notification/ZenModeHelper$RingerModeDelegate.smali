.class final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RingerModeDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    .line 587
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/notification/ZenModeHelper;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    return-void
.end method


# virtual methods
.method public canVolumeDownEnterSilent()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 671
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getRingerModeAffectedStreams(I)I
    .locals 2
    .param p1, "streams"    # I

    .prologue
    .line 677
    or-int/lit8 p1, p1, 0x26

    .line 682
    iget-object v0, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v0}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 683
    or-int/lit8 p1, p1, 0x18

    .line 689
    :goto_0
    return p1

    .line 686
    :cond_0
    and-int/lit8 p1, p1, -0x19

    goto :goto_0
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 8
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeInternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    const/4 v7, 0x0

    .line 636
    move v3, p2

    .line 637
    .local v3, "ringerModeInternalOut":I
    if-eq p1, p2, :cond_2

    const/4 v0, 0x1

    .line 638
    .local v0, "isChange":Z
    :goto_0
    const/4 v4, 0x1

    if-ne p4, v4, :cond_3

    const/4 v1, 0x1

    .line 640
    .local v1, "isVibrate":Z
    :goto_1
    const/4 v2, -0x1

    .line 641
    .local v2, "newZen":I
    packed-switch p2, :pswitch_data_0

    .line 660
    :cond_0
    :goto_2
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 661
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const-string/jumbo v5, "ringerModeExternal"

    const/4 v6, 0x0

    invoke-static {v4, v2, v6, v5, v7}, Lcom/android/server/notification/ZenModeHelper;->-wrap4(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Z)V

    .line 664
    :cond_1
    invoke-static {p1, p2, p3, p4, v3}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    .line 666
    return v3

    .line 637
    .end local v0    # "isChange":Z
    .end local v1    # "isVibrate":Z
    .end local v2    # "newZen":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isChange":Z
    goto :goto_0

    .line 638
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isVibrate":Z
    goto :goto_1

    .line 643
    .restart local v2    # "newZen":I
    :pswitch_0
    if-eqz v0, :cond_6

    .line 644
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-nez v4, :cond_4

    .line 645
    const/4 v2, 0x3

    .line 647
    :cond_4
    if-eqz v1, :cond_5

    const/4 v3, 0x1

    goto :goto_2

    .line 648
    :cond_5
    const/4 v3, 0x0

    goto :goto_2

    .line 650
    :cond_6
    move v3, p4

    goto :goto_2

    .line 655
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 656
    const/4 v2, 0x0

    goto :goto_2

    .line 641
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 8
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeExternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 596
    if-eq p1, p2, :cond_4

    const/4 v0, 0x1

    .line 598
    .local v0, "isChange":Z
    :goto_0
    move v2, p2

    .line 600
    .local v2, "ringerModeExternalOut":I
    const/4 v1, -0x1

    .line 601
    .local v1, "newZen":I
    packed-switch p2, :pswitch_data_0

    .line 622
    :cond_0
    :goto_1
    if-eq v1, v7, :cond_1

    .line 623
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const-string/jumbo v4, "ringerModeInternal"

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4, v6}, Lcom/android/server/notification/ZenModeHelper;->-wrap4(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Z)V

    .line 626
    :cond_1
    if-nez v0, :cond_2

    if-eq v1, v7, :cond_8

    .line 627
    :cond_2
    :goto_2
    invoke-static {p1, p2, p3, p4, v2}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    .line 630
    :cond_3
    return v2

    .line 596
    .end local v0    # "isChange":Z
    .end local v1    # "newZen":I
    .end local v2    # "ringerModeExternalOut":I
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "isChange":Z
    goto :goto_0

    .line 603
    .restart local v1    # "newZen":I
    .restart local v2    # "ringerModeExternalOut":I
    :pswitch_0
    if-eqz v0, :cond_0

    iget-boolean v3, p5, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz v3, :cond_0

    .line 604
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v3

    if-eq v3, v4, :cond_5

    .line 605
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v3

    if-eq v3, v5, :cond_5

    .line 606
    const/4 v1, 0x3

    .line 608
    :cond_5
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/notification/ZenModeHelper;->-wrap5(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    goto :goto_1

    .line 613
    :pswitch_1
    if-eqz v0, :cond_7

    if-nez p1, :cond_7

    .line 614
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v3

    if-eq v3, v4, :cond_6

    .line 615
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v3

    if-ne v3, v5, :cond_7

    .line 616
    :cond_6
    const/4 v1, 0x0

    .line 615
    goto :goto_1

    .line 617
    :cond_7
    iget-object v3, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {v3}, Lcom/android/server/notification/ZenModeHelper;->-get3(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 618
    const/4 v2, 0x0

    goto :goto_1

    .line 626
    :cond_8
    if-eq p4, v2, :cond_3

    goto :goto_2

    .line 601
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    const-string/jumbo v0, "ZenModeHelper"

    return-object v0
.end method
