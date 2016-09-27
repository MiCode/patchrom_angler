.class final Lcom/android/server/display/VirtualDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "VirtualDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;,
        Lcom/android/server/display/VirtualDisplayAdapter$Callback;,
        Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "VirtualDisplayAdapter"

.field private static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "virtual:"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mVirtualDisplayDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "appToken"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->handleBinderDiedLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V
    .locals 0
    .param p1, "appToken"    # Landroid/os/IBinder;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->handleMediaProjectionStoppedLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .locals 6
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;

    .prologue
    .line 59
    const-string/jumbo v5, "VirtualDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    .line 60
    iput-object p3, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 58
    return-void
.end method

.method private getNextUniqueIndex(Ljava/lang/String;)I
    .locals 4
    .param p1, "uniqueIdPrefix"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v3, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    const/4 v3, 0x0

    return v3

    .line 130
    :cond_0
    const/4 v2, 0x0

    .line 131
    .local v2, "nextUniqueIndex":I
    iget-object v3, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 132
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;>;"
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 134
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    invoke-static {v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->-get0(Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;)I

    move-result v3

    if-lt v3, v2, :cond_1

    .line 138
    invoke-static {v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->-get0(Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;)I

    move-result v3

    add-int/lit8 v2, v3, 0x1

    goto :goto_0

    .line 142
    .end local v0    # "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    :cond_2
    return v2
.end method

.method private handleBinderDiedLocked(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "appToken"    # Landroid/os/IBinder;

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 147
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    if-eqz v0, :cond_0

    .line 148
    const-string/jumbo v1, "VirtualDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Virtual display device released because application token died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 149
    iget-object v3, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mOwnerPackageName:Ljava/lang/String;

    .line 148
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked(Z)V

    .line 151
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/VirtualDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 145
    :cond_0
    return-void
.end method

.method private handleMediaProjectionStoppedLocked(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "appToken"    # Landroid/os/IBinder;

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 157
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    if-eqz v0, :cond_0

    .line 158
    const-string/jumbo v1, "VirtualDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Virtual display device released because media projection stopped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 159
    iget-object v3, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->stopLocked()V

    .line 155
    :cond_0
    return-void
.end method


# virtual methods
.method public createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;I)Lcom/android/server/display/DisplayDevice;
    .locals 20
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "projection"    # Landroid/media/projection/IMediaProjection;
    .param p3, "ownerUid"    # I
    .param p4, "ownerPackageName"    # Ljava/lang/String;
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "densityDpi"    # I
    .param p9, "surface"    # Landroid/view/Surface;
    .param p10, "flags"    # I

    .prologue
    .line 66
    and-int/lit8 v3, p10, 0x4

    if-eqz v3, :cond_1

    const/16 v19, 0x1

    .line 67
    .local v19, "secure":Z
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    .line 68
    .local v5, "appToken":Landroid/os/IBinder;
    move-object/from16 v0, p5

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v4

    .line 70
    .local v4, "displayToken":Landroid/os/IBinder;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "virtual:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, ","

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 71
    .local v17, "baseUniqueId":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/display/VirtualDisplayAdapter;->getNextUniqueIndex(Ljava/lang/String;)I

    move-result v16

    .line 72
    .local v16, "uniqueIndex":I
    new-instance v2, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 74
    new-instance v14, Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/VirtualDisplayAdapter;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p1

    invoke-direct {v14, v0, v3}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;-><init>(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/os/Handler;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v3, p0

    move/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v12, p9

    move/from16 v13, p10

    .line 72
    invoke-direct/range {v2 .. v16}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;-><init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;IIILandroid/view/Surface;ILcom/android/server/display/VirtualDisplayAdapter$Callback;Ljava/lang/String;I)V

    .line 76
    .local v2, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    if-eqz p2, :cond_0

    .line 80
    :try_start_0
    new-instance v3, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v5}, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;-><init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/media/projection/IMediaProjection;->registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V

    .line 82
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v5, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    return-object v2

    .line 66
    .end local v2    # "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    .end local v4    # "displayToken":Landroid/os/IBinder;
    .end local v5    # "appToken":Landroid/os/IBinder;
    .end local v16    # "uniqueIndex":I
    .end local v17    # "baseUniqueId":Ljava/lang/String;
    .end local v19    # "secure":Z
    :cond_1
    const/16 v19, 0x0

    .restart local v19    # "secure":Z
    goto/16 :goto_0

    .line 83
    .restart local v2    # "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    .restart local v4    # "displayToken":Landroid/os/IBinder;
    .restart local v5    # "appToken":Landroid/os/IBinder;
    .restart local v16    # "uniqueIndex":I
    .restart local v17    # "baseUniqueId":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 84
    .local v18, "ex":Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked(Z)V

    .line 86
    const/4 v3, 0x0

    return-object v3
.end method

.method public releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;
    .locals 2
    .param p1, "appToken"    # Landroid/os/IBinder;

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 112
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    if-eqz v0, :cond_0

    .line 113
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked(Z)V

    .line 114
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 119
    :cond_0
    return-object v0
.end method

.method public resizeVirtualDisplayLocked(Landroid/os/IBinder;III)V
    .locals 2
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I

    .prologue
    .line 96
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 97
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->resizeLocked(III)V

    .line 95
    :cond_0
    return-void
.end method

.method public setVirtualDisplaySurfaceLocked(Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 2
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;

    .prologue
    .line 104
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 105
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p2}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->setSurfaceLocked(Landroid/view/Surface;)V

    .line 103
    :cond_0
    return-void
.end method
