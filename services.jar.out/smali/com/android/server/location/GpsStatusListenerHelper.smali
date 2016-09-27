.class abstract Lcom/android/server/location/GpsStatusListenerHelper;
.super Lcom/android/server/location/RemoteListenerHelper;
.source "GpsStatusListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsStatusListenerHelper$Operation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/location/RemoteListenerHelper",
        "<",
        "Landroid/location/IGpsStatusListener;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 28
    const-string/jumbo v0, "GpsStatusListenerHelper"

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/RemoteListenerHelper;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->isSupported()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsStatusListenerHelper;->setSupported(Z)V

    .line 27
    return-void
.end method


# virtual methods
.method protected getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .locals 1
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<",
            "Landroid/location/IGpsStatusListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public onFirstFix(I)V
    .locals 1
    .param p1, "timeToFirstFix"    # I

    .prologue
    .line 66
    new-instance v0, Lcom/android/server/location/GpsStatusListenerHelper$3;

    invoke-direct {v0, p0, p1}, Lcom/android/server/location/GpsStatusListenerHelper$3;-><init>(Lcom/android/server/location/GpsStatusListenerHelper;I)V

    .line 72
    .local v0, "operation":Lcom/android/server/location/GpsStatusListenerHelper$Operation;
    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 65
    return-void
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 1
    .param p1, "timestamp"    # J
    .param p3, "nmea"    # Ljava/lang/String;

    .prologue
    .line 102
    new-instance v0, Lcom/android/server/location/GpsStatusListenerHelper$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/location/GpsStatusListenerHelper$5;-><init>(Lcom/android/server/location/GpsStatusListenerHelper;JLjava/lang/String;)V

    .line 108
    .local v0, "operation":Lcom/android/server/location/GpsStatusListenerHelper$Operation;
    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 101
    return-void
.end method

.method public onStatusChanged(Z)V
    .locals 1
    .param p1, "isNavigating"    # Z

    .prologue
    .line 47
    if-eqz p1, :cond_0

    .line 48
    new-instance v0, Lcom/android/server/location/GpsStatusListenerHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsStatusListenerHelper$1;-><init>(Lcom/android/server/location/GpsStatusListenerHelper;)V

    .line 62
    .local v0, "operation":Lcom/android/server/location/GpsStatusListenerHelper$Operation;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 45
    return-void

    .line 55
    .end local v0    # "operation":Lcom/android/server/location/GpsStatusListenerHelper$Operation;
    :cond_0
    new-instance v0, Lcom/android/server/location/GpsStatusListenerHelper$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsStatusListenerHelper$2;-><init>(Lcom/android/server/location/GpsStatusListenerHelper;)V

    .restart local v0    # "operation":Lcom/android/server/location/GpsStatusListenerHelper$Operation;
    goto :goto_0
.end method

.method public onSvStatusChanged(I[I[F[F[FIII)V
    .locals 10
    .param p1, "svCount"    # I
    .param p2, "prns"    # [I
    .param p3, "snrs"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .param p6, "ephemerisMask"    # I
    .param p7, "almanacMask"    # I
    .param p8, "usedInFixMask"    # I

    .prologue
    .line 84
    new-instance v0, Lcom/android/server/location/GpsStatusListenerHelper$4;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/android/server/location/GpsStatusListenerHelper$4;-><init>(Lcom/android/server/location/GpsStatusListenerHelper;I[I[F[F[FIII)V

    .line 98
    .local v0, "operation":Lcom/android/server/location/GpsStatusListenerHelper$Operation;
    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsStatusListenerHelper;->foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 83
    return-void
.end method

.method protected registerWithService()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method protected unregisterFromService()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method
