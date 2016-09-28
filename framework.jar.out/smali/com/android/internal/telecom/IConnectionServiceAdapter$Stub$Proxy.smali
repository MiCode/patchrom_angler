.class Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;
.super Ljava/lang/Object;
.source "IConnectionServiceAdapter.java"

# interfaces
.implements Lcom/android/internal/telecom/IConnectionServiceAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-object p1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 330
    return-void
.end method


# virtual methods
.method public addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "conference"    # Landroid/telecom/ParcelableConference;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 490
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 492
    if-eqz p2, :cond_0

    .line 493
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 494
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/telecom/ParcelableConference;->writeToParcel(Landroid/os/Parcel;I)V

    .line 499
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 486
    return-void

    .line 497
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 501
    :catchall_0
    move-exception v1

    .line 502
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 501
    throw v1
.end method

.method public addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/ParcelableConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 664
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 665
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 666
    if-eqz p2, :cond_0

    .line 667
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/telecom/ParcelableConnection;->writeToParcel(Landroid/os/Parcel;I)V

    .line 673
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 660
    return-void

    .line 671
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 675
    :catchall_0
    move-exception v1

    .line 676
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 675
    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 340
    const-string/jumbo v0, "com.android.internal.telecom.IConnectionServiceAdapter"

    return-object v0
.end method

.method public handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;
    .param p3, "connection"    # Landroid/telecom/ParcelableConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 346
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    if-eqz p2, :cond_0

    .line 349
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/telecom/ConnectionRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 355
    :goto_0
    if-eqz p3, :cond_1

    .line 356
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 357
    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/telecom/ParcelableConnection;->writeToParcel(Landroid/os/Parcel;I)V

    .line 362
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 342
    return-void

    .line 353
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 364
    :catchall_0
    move-exception v1

    .line 365
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 364
    throw v1

    .line 360
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public onPostDialChar(Ljava/lang/String;C)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "nextChar"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 532
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 534
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 536
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 537
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 530
    return-void

    .line 539
    :catchall_0
    move-exception v1

    .line 540
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 539
    throw v1
.end method

.method public onPostDialWait(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "remaining"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 521
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 523
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 524
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 517
    return-void

    .line 526
    :catchall_0
    move-exception v1

    .line 527
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 526
    throw v1
.end method

.method public queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V
    .locals 5
    .param p1, "callback"    # Lcom/android/internal/telecom/RemoteServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 547
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 548
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/android/internal/telecom/RemoteServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 549
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 543
    return-void

    .line 551
    :catchall_0
    move-exception v1

    .line 552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 551
    throw v1
.end method

.method public removeCall(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 507
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 509
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 510
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 511
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 505
    return-void

    .line 513
    :catchall_0
    move-exception v1

    .line 514
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    throw v1
.end method

.method public setActive(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 370
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 372
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 373
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 374
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 368
    return-void

    .line 376
    :catchall_0
    move-exception v1

    .line 377
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 376
    throw v1
.end method

.method public setAddress(Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "address"    # Landroid/net/Uri;
    .param p3, "presentation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 617
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 619
    if-eqz p2, :cond_0

    .line 620
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 621
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 626
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 627
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 613
    return-void

    .line 624
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 629
    :catchall_0
    move-exception v1

    .line 630
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 629
    throw v1
.end method

.method public setCallerDisplayName(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callerDisplayName"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 635
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 637
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 638
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 639
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 641
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 633
    return-void

    .line 643
    :catchall_0
    move-exception v1

    .line 644
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 643
    throw v1
.end method

.method public setConferenceMergeFailed(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 478
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 480
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 474
    return-void

    .line 482
    :catchall_0
    move-exception v1

    .line 483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 482
    throw v1
.end method

.method public setConferenceableConnections(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 649
    .local p2, "conferenceableCallIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 651
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 653
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 654
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 647
    return-void

    .line 656
    :catchall_0
    move-exception v1

    .line 657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 656
    throw v1
.end method

.method public setConnectionCapabilities(Ljava/lang/String;I)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connectionCapabilities"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 452
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 453
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 454
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 455
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 448
    return-void

    .line 457
    :catchall_0
    move-exception v1

    .line 458
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 457
    throw v1
.end method

.method public setDialing(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 394
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 396
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 397
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 392
    return-void

    .line 400
    :catchall_0
    move-exception v1

    .line 401
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 400
    throw v1
.end method

.method public setDisconnected(Ljava/lang/String;Landroid/telecom/DisconnectCause;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 406
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 408
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 410
    if-eqz p2, :cond_0

    .line 411
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/telecom/DisconnectCause;->writeToParcel(Landroid/os/Parcel;I)V

    .line 417
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 404
    return-void

    .line 415
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 419
    :catchall_0
    move-exception v1

    .line 420
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 419
    throw v1
.end method

.method public setExtras(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 683
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 684
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 685
    if-eqz p2, :cond_0

    .line 686
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 687
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 692
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 679
    return-void

    .line 690
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 694
    :catchall_0
    move-exception v1

    .line 695
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 694
    throw v1
.end method

.method public setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "conferenceCallId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 463
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 465
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 466
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 468
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 461
    return-void

    .line 470
    :catchall_0
    move-exception v1

    .line 471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 470
    throw v1
.end method

.method public setIsVoipAudioMode(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "isVoip"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 585
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 586
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 587
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 588
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 581
    return-void

    .line 587
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 590
    :catchall_0
    move-exception v1

    .line 591
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 590
    throw v1
.end method

.method public setOnHold(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 425
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 427
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 429
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 423
    return-void

    .line 431
    :catchall_0
    move-exception v1

    .line 432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 431
    throw v1
.end method

.method public setRingbackRequested(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "ringing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 439
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 440
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 441
    if-eqz p2, :cond_0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 435
    return-void

    .line 441
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 444
    :catchall_0
    move-exception v1

    .line 445
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 444
    throw v1
.end method

.method public setRinging(Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 384
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 385
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 380
    return-void

    .line 388
    :catchall_0
    move-exception v1

    .line 389
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 388
    throw v1
.end method

.method public setStatusHints(Ljava/lang/String;Landroid/telecom/StatusHints;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "statusHints"    # Landroid/telecom/StatusHints;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 596
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 598
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 599
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 600
    if-eqz p2, :cond_0

    .line 601
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 602
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/telecom/StatusHints;->writeToParcel(Landroid/os/Parcel;I)V

    .line 607
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 594
    return-void

    .line 605
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 609
    :catchall_0
    move-exception v1

    .line 610
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 609
    throw v1
.end method

.method public setVideoProvider(Ljava/lang/String;Lcom/android/internal/telecom/IVideoProvider;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoProvider"    # Lcom/android/internal/telecom/IVideoProvider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 559
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 561
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/android/internal/telecom/IVideoProvider;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 562
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 555
    return-void

    .line 564
    :catchall_0
    move-exception v1

    .line 565
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 564
    throw v1
.end method

.method public setVideoState(Ljava/lang/String;I)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 572
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v1, "com.android.internal.telecom.IConnectionServiceAdapter"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 573
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 575
    iget-object v1, p0, Lcom/android/internal/telecom/IConnectionServiceAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 568
    return-void

    .line 577
    :catchall_0
    move-exception v1

    .line 578
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 577
    throw v1
.end method
