.class public abstract Landroid/media/session/MediaSession$Callback;
.super Ljava/lang/Object;
.source "MediaSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/session/MediaSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callback"
.end annotation


# instance fields
.field private mSession:Landroid/media/session/MediaSession;


# direct methods
.method static synthetic -set0(Landroid/media/session/MediaSession$Callback;Landroid/media/session/MediaSession;)Landroid/media/session/MediaSession;
    .locals 0

    iput-object p1, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    return-object p1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 0
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "args"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    .line 712
    return-void
.end method

.method public onCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 895
    return-void
.end method

.method public onFastForward()V
    .locals 0

    .prologue
    .line 856
    return-void
.end method

.method public onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 14
    .param p1, "mediaButtonIntent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v10, 0x1

    .line 729
    iget-object v5, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    if-eqz v5, :cond_0

    .line 730
    const-string/jumbo v5, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 729
    if-eqz v5, :cond_0

    .line 731
    const-string/jumbo v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/view/KeyEvent;

    .line 732
    .local v3, "ke":Landroid/view/KeyEvent;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    .line 733
    iget-object v5, p0, Landroid/media/session/MediaSession$Callback;->mSession:Landroid/media/session/MediaSession;

    invoke-static {v5}, Landroid/media/session/MediaSession;->-get1(Landroid/media/session/MediaSession;)Landroid/media/session/PlaybackState;

    move-result-object v4

    .line 734
    .local v4, "state":Landroid/media/session/PlaybackState;
    if-nez v4, :cond_1

    const-wide/16 v6, 0x0

    .line 735
    .local v6, "validActions":J
    :goto_0
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 797
    .end local v3    # "ke":Landroid/view/KeyEvent;
    .end local v4    # "state":Landroid/media/session/PlaybackState;
    .end local v6    # "validActions":J
    :cond_0
    return v11

    .line 734
    .restart local v3    # "ke":Landroid/view/KeyEvent;
    .restart local v4    # "state":Landroid/media/session/PlaybackState;
    :cond_1
    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v6

    .restart local v6    # "validActions":J
    goto :goto_0

    .line 737
    :sswitch_0
    const-wide/16 v8, 0x4

    and-long/2addr v8, v6

    cmp-long v5, v8, v12

    if-eqz v5, :cond_0

    .line 738
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    .line 739
    return v10

    .line 743
    :sswitch_1
    const-wide/16 v8, 0x2

    and-long/2addr v8, v6

    cmp-long v5, v8, v12

    if-eqz v5, :cond_0

    .line 744
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    .line 745
    return v10

    .line 749
    :sswitch_2
    const-wide/16 v8, 0x20

    and-long/2addr v8, v6

    cmp-long v5, v8, v12

    if-eqz v5, :cond_0

    .line 750
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToNext()V

    .line 751
    return v10

    .line 755
    :sswitch_3
    const-wide/16 v8, 0x10

    and-long/2addr v8, v6

    cmp-long v5, v8, v12

    if-eqz v5, :cond_0

    .line 756
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onSkipToPrevious()V

    .line 757
    return v10

    .line 761
    :sswitch_4
    const-wide/16 v8, 0x1

    and-long/2addr v8, v6

    cmp-long v5, v8, v12

    if-eqz v5, :cond_0

    .line 762
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onStop()V

    .line 763
    return v10

    .line 767
    :sswitch_5
    const-wide/16 v8, 0x40

    and-long/2addr v8, v6

    cmp-long v5, v8, v12

    if-eqz v5, :cond_0

    .line 768
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onFastForward()V

    .line 769
    return v10

    .line 773
    :sswitch_6
    const-wide/16 v8, 0x8

    and-long/2addr v8, v6

    cmp-long v5, v8, v12

    if-eqz v5, :cond_0

    .line 774
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onRewind()V

    .line 775
    return v10

    .line 780
    :sswitch_7
    if-nez v4, :cond_2

    const/4 v2, 0x0

    .line 782
    .local v2, "isPlaying":Z
    :goto_1
    const-wide/16 v8, 0x204

    and-long/2addr v8, v6

    cmp-long v5, v8, v12

    if-eqz v5, :cond_4

    const/4 v1, 0x1

    .line 784
    .local v1, "canPlay":Z
    :goto_2
    const-wide/16 v8, 0x202

    and-long/2addr v8, v6

    cmp-long v5, v8, v12

    if-eqz v5, :cond_5

    const/4 v0, 0x1

    .line 786
    .local v0, "canPause":Z
    :goto_3
    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 787
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPause()V

    .line 788
    return v10

    .line 781
    .end local v0    # "canPause":Z
    .end local v1    # "canPlay":Z
    .end local v2    # "isPlaying":Z
    :cond_2
    invoke-virtual {v4}, Landroid/media/session/PlaybackState;->getState()I

    move-result v5

    const/4 v8, 0x3

    if-ne v5, v8, :cond_3

    const/4 v2, 0x1

    .restart local v2    # "isPlaying":Z
    goto :goto_1

    .end local v2    # "isPlaying":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "isPlaying":Z
    goto :goto_1

    .line 782
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "canPlay":Z
    goto :goto_2

    .line 784
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "canPause":Z
    goto :goto_3

    .line 789
    :cond_6
    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 790
    invoke-virtual {p0}, Landroid/media/session/MediaSession$Callback;->onPlay()V

    .line 791
    return v10

    .line 735
    :sswitch_data_0
    .sparse-switch
        0x4f -> :sswitch_7
        0x55 -> :sswitch_7
        0x56 -> :sswitch_4
        0x57 -> :sswitch_2
        0x58 -> :sswitch_3
        0x59 -> :sswitch_6
        0x5a -> :sswitch_5
        0x7e -> :sswitch_0
        0x7f -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 838
    return-void
.end method

.method public onPlay()V
    .locals 0

    .prologue
    .line 803
    return-void
.end method

.method public onPlayFromMediaId(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 810
    return-void
.end method

.method public onPlayFromSearch(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 819
    return-void
.end method

.method public onPlayFromUri(Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 825
    return-void
.end method

.method public onRewind()V
    .locals 0

    .prologue
    .line 862
    return-void
.end method

.method public onSeekTo(J)V
    .locals 0
    .param p1, "pos"    # J

    .prologue
    .line 876
    return-void
.end method

.method public onSetRating(Landroid/media/Rating;)V
    .locals 0
    .param p1, "rating"    # Landroid/media/Rating;

    .prologue
    .line 884
    return-void
.end method

.method public onSkipToNext()V
    .locals 0

    .prologue
    .line 844
    return-void
.end method

.method public onSkipToPrevious()V
    .locals 0

    .prologue
    .line 850
    return-void
.end method

.method public onSkipToQueueItem(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 832
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 868
    return-void
.end method
