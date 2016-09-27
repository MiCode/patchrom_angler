.class public abstract Lcom/android/internal/telephony/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Connection$PostDialListener;,
        Lcom/android/internal/telephony/Connection$Listener;,
        Lcom/android/internal/telephony/Connection$ListenerBase;,
        Lcom/android/internal/telephony/Connection$PostDialState;
    }
.end annotation


# static fields
.field public static final AUDIO_QUALITY_HIGH_DEFINITION:I = 0x2

.field public static final AUDIO_QUALITY_STANDARD:I = 0x1

.field private static LOG_TAG:Ljava/lang/String;


# instance fields
.field protected mAddress:Ljava/lang/String;

.field private mAudioQuality:I

.field private mCallSubstate:I

.field protected mCnapName:Ljava/lang/String;

.field protected mCnapNamePresentation:I

.field protected mConnectTime:J

.field protected mConnectTimeReal:J

.field protected mConvertedNumber:Ljava/lang/String;

.field protected mCreateTime:J

.field protected mDialString:Ljava/lang/String;

.field protected mDuration:J

.field private mExtras:Landroid/os/Bundle;

.field protected mHoldingStartTime:J

.field protected mIsIncoming:Z

.field private mIsWifi:Z

.field public mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/android/internal/telephony/Connection$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocalVideoCapable:Z

.field protected mNumberConverted:Z

.field protected mNumberPresentation:I

.field protected mOrigConnection:Lcom/android/internal/telephony/Connection;

.field private mPostDialListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection$PostDialListener;",
            ">;"
        }
    .end annotation
.end field

.field public mPreHandoverState:Lcom/android/internal/telephony/Call$State;

.field private mRemoteVideoCapable:Z

.field mUserData:Ljava/lang/Object;

.field private mVideoProvider:Landroid/telecom/Connection$VideoProvider;

.field private mVideoState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    const-string/jumbo v0, "Connection"

    sput-object v0, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    .line 97
    iput v0, p0, Lcom/android/internal/telephony/Connection;->mNumberPresentation:I

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    .line 116
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    .line 131
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    .line 35
    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$Listener;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 492
    return-void
.end method

.method public final addPostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$PostDialListener;

    .prologue
    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_0
    return-void
.end method

.method public abstract cancelPostDial()V
.end method

.method protected final clearPostDialListeners()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 401
    return-void
.end method

.method public clearUserData()V
    .locals 1

    .prologue
    .line 388
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    .line 387
    return-void
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getAudioQuality()I
    .locals 1

    .prologue
    .line 556
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    return v0
.end method

.method public abstract getCall()Lcom/android/internal/telephony/Call;
.end method

.method public getCallSubstate()I
    .locals 1

    .prologue
    .line 566
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    return v0
.end method

.method public getCnapName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mCnapName:Ljava/lang/String;

    return-object v0
.end method

.method public getCnapNamePresentation()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mCnapNamePresentation:I

    return v0
.end method

.method public getConferenceParticipants()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 315
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 317
    .local v0, "c":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 318
    return-object v1

    .line 320
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConferenceParticipants()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public getConnectTime()J
    .locals 2

    .prologue
    .line 194
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    return-wide v0
.end method

.method public getConnectTimeReal()J
    .locals 2

    .prologue
    .line 213
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    return-wide v0
.end method

.method public getConnectionExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getCreateTime()J
    .locals 2

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    return-wide v0
.end method

.method public abstract getDisconnectCause()I
.end method

.method public abstract getDisconnectTime()J
.end method

.method public getDurationMillis()J
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 230
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 231
    return-wide v2

    .line 232
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 233
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 235
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mDuration:J

    return-wide v0
.end method

.method public abstract getHoldDurationMillis()J
.end method

.method public getHoldingStartTime()J
    .locals 2

    .prologue
    .line 245
    iget-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    return-wide v0
.end method

.method public abstract getNumberPresentation()I
.end method

.method public getOrigConnection()Lcom/android/internal/telephony/Connection;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    return-object v0
.end method

.method public getOrigDialString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;
.end method

.method public abstract getPreciseDisconnectCause()I
.end method

.method public abstract getRemainingPostDialString()Ljava/lang/String;
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 2

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 293
    .local v0, "c":Lcom/android/internal/telephony/Call;
    if-nez v0, :cond_0

    .line 294
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    return-object v1

    .line 296
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    return-object v1
.end method

.method public getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPreHandoverState:Lcom/android/internal/telephony/Call$State;

    return-object v0
.end method

.method public abstract getUUSInfo()Lcom/android/internal/telephony/UUSInfo;
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getVendorDisconnectCause()Ljava/lang/String;
.end method

.method public getVideoProvider()Landroid/telecom/Connection$VideoProvider;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    return v0
.end method

.method public abstract hangup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 332
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    return v0
.end method

.method public isIncoming()Z
    .locals 1

    .prologue
    .line 278
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsIncoming:Z

    return v0
.end method

.method public isLocalVideoCapable()Z
    .locals 1

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mLocalVideoCapable:Z

    return v0
.end method

.method public abstract isMultiparty()Z
.end method

.method public isRemoteVideoCapable()Z
    .locals 1

    .prologue
    .line 529
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mRemoteVideoCapable:Z

    return v0
.end method

.method public isRinging()Z
    .locals 1

    .prologue
    .line 340
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    move-result v0

    return v0
.end method

.method public isWifi()Z
    .locals 1

    .prologue
    .line 538
    iget-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    return v0
.end method

.method public migrateFrom(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 477
    if-nez p1, :cond_0

    return-void

    .line 478
    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    .line 479
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    .line 480
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mCreateTime:J

    .line 481
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    .line 482
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getConnectTimeReal()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mConnectTimeReal:J

    .line 483
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getHoldingStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/Connection;->mHoldingStartTime:J

    .line 484
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getOrigConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mOrigConnection:Lcom/android/internal/telephony/Connection;

    .line 476
    return-void
.end method

.method protected final notifyPostDialListeners()V
    .locals 4

    .prologue
    .line 406
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v2, v3, :cond_0

    .line 407
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$PostDialListener;

    .line 408
    .local v0, "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$PostDialListener;->onPostDialWait()V

    goto :goto_0

    .line 405
    .end local v0    # "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method protected final notifyPostDialListenersNextChar(C)V
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 414
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$PostDialListener;

    .line 415
    .local v0, "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$PostDialListener;->onPostDialChar(C)V

    goto :goto_0

    .line 413
    .end local v0    # "listener":Lcom/android/internal/telephony/Connection$PostDialListener;
    :cond_0
    return-void
.end method

.method public onConferenceMergeFailed()V
    .locals 3

    .prologue
    .line 708
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 709
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceMergedFailed()V

    goto :goto_0

    .line 707
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public onDisconnectConferenceParticipant(Landroid/net/Uri;)V
    .locals 0
    .param p1, "endpoint"    # Landroid/net/Uri;

    .prologue
    .line 719
    return-void
.end method

.method public abstract proceedAfterWaitChar()V
.end method

.method public abstract proceedAfterWildChar(Ljava/lang/String;)V
.end method

.method public final removeListener(Lcom/android/internal/telephony/Connection$Listener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$Listener;

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 501
    return-void
.end method

.method public final removePostDialListener(Lcom/android/internal/telephony/Connection$PostDialListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/telephony/Connection$PostDialListener;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mPostDialListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 397
    return-void
.end method

.method public abstract separate()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public setAudioQuality(I)V
    .locals 3
    .param p1, "audioQuality"    # I

    .prologue
    .line 625
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    .line 626
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 627
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mAudioQuality:I

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onAudioQualityChanged(I)V

    goto :goto_0

    .line 624
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setCallSubstate(I)V
    .locals 3
    .param p1, "callSubstate"    # I

    .prologue
    .line 657
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    .line 658
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 659
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mCallSubstate:I

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onCallSubstateChanged(I)V

    goto :goto_0

    .line 656
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setConnectTime(J)V
    .locals 1
    .param p1, "connectTime"    # J

    .prologue
    .line 203
    iput-wide p1, p0, Lcom/android/internal/telephony/Connection;->mConnectTime:J

    .line 202
    return-void
.end method

.method public setConnectionExtras(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 636
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mExtras:Landroid/os/Bundle;

    .line 637
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 638
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onExtrasChanged(Landroid/os/Bundle;)V

    goto :goto_0

    .line 635
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setConverted(Ljava/lang/String;)V
    .locals 1
    .param p1, "oriNumber"    # Ljava/lang/String;

    .prologue
    .line 676
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/Connection;->mNumberConverted:Z

    .line 677
    iget-object v0, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/Connection;->mConvertedNumber:Ljava/lang/String;

    .line 678
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mAddress:Ljava/lang/String;

    .line 679
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mDialString:Ljava/lang/String;

    .line 675
    return-void
.end method

.method public setLocalVideoCapable(Z)V
    .locals 3
    .param p1, "capable"    # Z

    .prologue
    .line 589
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mLocalVideoCapable:Z

    .line 590
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 591
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mLocalVideoCapable:Z

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onLocalVideoCapabilityChanged(Z)V

    goto :goto_0

    .line 588
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setRemoteVideoCapable(Z)V
    .locals 3
    .param p1, "capable"    # Z

    .prologue
    .line 601
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mRemoteVideoCapable:Z

    .line 602
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 603
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mRemoteVideoCapable:Z

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onRemoteVideoCapabilityChanged(Z)V

    goto :goto_0

    .line 600
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 0
    .param p1, "userdata"    # Ljava/lang/Object;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mUserData:Ljava/lang/Object;

    .line 355
    return-void
.end method

.method public setVideoProvider(Landroid/telecom/Connection$VideoProvider;)V
    .locals 3
    .param p1, "videoProvider"    # Landroid/telecom/Connection$VideoProvider;

    .prologue
    .line 669
    iput-object p1, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    .line 670
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 671
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mVideoProvider:Landroid/telecom/Connection$VideoProvider;

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onVideoProviderChanged(Landroid/telecom/Connection$VideoProvider;)V

    goto :goto_0

    .line 668
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setVideoState(I)V
    .locals 3
    .param p1, "videoState"    # I

    .prologue
    .line 577
    iput p1, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    .line 578
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 579
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget v2, p0, Lcom/android/internal/telephony/Connection;->mVideoState:I

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onVideoStateChanged(I)V

    goto :goto_0

    .line 576
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public setWifi(Z)V
    .locals 3
    .param p1, "isWifi"    # Z

    .prologue
    .line 613
    iput-boolean p1, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    .line 614
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 615
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    iget-boolean v2, p0, Lcom/android/internal/telephony/Connection;->mIsWifi:Z

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/Connection$Listener;->onWifiChanged(Z)V

    goto :goto_0

    .line 612
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 728
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 730
    .local v0, "str":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/android/internal/telephony/Connection;->LOG_TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 731
    const-string/jumbo v1, "addr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 732
    const-string/jumbo v2, " pres.: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 733
    const-string/jumbo v2, " dial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 734
    const-string/jumbo v2, " postdial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 735
    const-string/jumbo v2, " cnap name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 736
    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    :cond_0
    const-string/jumbo v1, " incoming: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 739
    const-string/jumbo v2, " state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 740
    const-string/jumbo v2, " post dial state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 741
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateConferenceParticipants(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 688
    .local p1, "conferenceParticipants":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/ConferenceParticipant;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 689
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onConferenceParticipantsChanged(Ljava/util/List;)V

    goto :goto_0

    .line 687
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method

.method public updateMultipartyState(Z)V
    .locals 3
    .param p1, "isMultiparty"    # Z

    .prologue
    .line 699
    iget-object v2, p0, Lcom/android/internal/telephony/Connection;->mListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "l$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection$Listener;

    .line 700
    .local v0, "l":Lcom/android/internal/telephony/Connection$Listener;
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Connection$Listener;->onMultipartyStateChanged(Z)V

    goto :goto_0

    .line 698
    .end local v0    # "l":Lcom/android/internal/telephony/Connection$Listener;
    :cond_0
    return-void
.end method
