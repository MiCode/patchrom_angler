.class public final Landroid/view/accessibility/AccessibilityManager;
.super Ljava/lang/Object;
.source "AccessibilityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;,
        Landroid/view/accessibility/AccessibilityManager$MyHandler;,
        Landroid/view/accessibility/AccessibilityManager$1;
    }
.end annotation


# static fields
.field public static final DALTONIZER_CORRECT_DEUTERANOMALY:I = 0xc

.field public static final DALTONIZER_DISABLED:I = -0x1

.field public static final DALTONIZER_SIMULATE_MONOCHROMACY:I = 0x0

.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityManager"

.field public static final STATE_FLAG_ACCESSIBILITY_ENABLED:I = 0x1

.field public static final STATE_FLAG_HIGH_TEXT_CONTRAST_ENABLED:I = 0x4

.field public static final STATE_FLAG_TOUCH_EXPLORATION_ENABLED:I = 0x2

.field private static sInstance:Landroid/view/accessibility/AccessibilityManager;

.field static final sInstanceSync:Ljava/lang/Object;


# instance fields
.field private final mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

.field final mHandler:Landroid/os/Handler;

.field private final mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field mIsEnabled:Z

.field mIsHighTextContrastEnabled:Z

.field mIsTouchExplorationEnabled:Z

.field private final mLock:Ljava/lang/Object;

.field private mService:Landroid/view/accessibility/IAccessibilityManager;

.field private final mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field final mUserId:I


# direct methods
.method static synthetic -get0(Landroid/view/accessibility/AccessibilityManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->handleNotifyAccessibilityStateChanged()V

    return-void
.end method

.method static synthetic -wrap1(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->handleNotifyHighTextContrastStateChanged()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->handleNotifyTouchExplorationStateChanged()V

    return-void
.end method

.method static synthetic -wrap3(Landroid/view/accessibility/AccessibilityManager;I)V
    .locals 0
    .param p1, "stateFlags"    # I

    .prologue
    invoke-direct {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 91
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/view/accessibility/IAccessibilityManager;
    .param p3, "userId"    # I

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 113
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 116
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 168
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$1;

    invoke-direct {v0, p0}, Landroid/view/accessibility/AccessibilityManager$1;-><init>(Landroid/view/accessibility/AccessibilityManager;)V

    .line 167
    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    .line 221
    new-instance v0, Landroid/view/accessibility/AccessibilityManager$MyHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/view/accessibility/AccessibilityManager$MyHandler;-><init>(Landroid/view/accessibility/AccessibilityManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    .line 222
    iput-object p2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    .line 223
    iput p3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    .line 224
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 220
    return-void

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    sget-object v4, Landroid/view/accessibility/AccessibilityManager;->sInstanceSync:Ljava/lang/Object;

    monitor-enter v4

    .line 189
    :try_start_0
    sget-object v3, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    if-nez v3, :cond_1

    .line 191
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/16 v5, 0x3e8

    if-eq v3, v5, :cond_0

    .line 193
    const-string/jumbo v3, "android.permission.INTERACT_ACROSS_USERS"

    .line 192
    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 198
    :cond_0
    const/4 v2, -0x2

    .line 202
    .local v2, "userId":I
    :goto_0
    const-string/jumbo v3, "accessibility"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 203
    .local v0, "iBinder":Landroid/os/IBinder;
    if-nez v0, :cond_3

    .line 204
    const/4 v1, 0x0

    .line 205
    :goto_1
    new-instance v3, Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {v3, p0, v1, v2}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    sput-object v3, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "iBinder":Landroid/os/IBinder;
    .end local v2    # "userId":I
    :cond_1
    monitor-exit v4

    .line 208
    sget-object v3, Landroid/view/accessibility/AccessibilityManager;->sInstance:Landroid/view/accessibility/AccessibilityManager;

    return-object v3

    .line 196
    :cond_2
    :try_start_1
    const-string/jumbo v3, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 195
    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 200
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .restart local v2    # "userId":I
    goto :goto_0

    .line 204
    .restart local v0    # "iBinder":Landroid/os/IBinder;
    :cond_3
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    goto :goto_1

    .line 188
    .end local v0    # "iBinder":Landroid/os/IBinder;
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "userId":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method private getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    if-nez v0, :cond_0

    .line 615
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->tryConnectToServiceLocked()V

    .line 617
    :cond_0
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;

    return-object v0
.end method

.method private handleNotifyAccessibilityStateChanged()V
    .locals 5

    .prologue
    .line 640
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 641
    :try_start_0
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "isEnabled":Z
    monitor-exit v3

    .line 644
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .line 645
    .local v1, "listener":Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    invoke-interface {v1, v0}, Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;->onAccessibilityStateChanged(Z)V

    goto :goto_0

    .line 640
    .end local v0    # "isEnabled":Z
    .end local v1    # "listener":Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 638
    .restart local v0    # "isEnabled":Z
    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private handleNotifyHighTextContrastStateChanged()V
    .locals 5

    .prologue
    .line 668
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 669
    :try_start_0
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "isHighTextContrastEnabled":Z
    monitor-exit v3

    .line 672
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    .line 673
    .local v1, "listener":Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;
    invoke-interface {v1, v0}, Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;->onHighTextContrastStateChanged(Z)V

    goto :goto_0

    .line 668
    .end local v0    # "isHighTextContrastEnabled":Z
    .end local v1    # "listener":Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 666
    .restart local v0    # "isHighTextContrastEnabled":Z
    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private handleNotifyTouchExplorationStateChanged()V
    .locals 5

    .prologue
    .line 654
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 655
    :try_start_0
    iget-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "isTouchExplorationEnabled":Z
    monitor-exit v3

    .line 658
    iget-object v3, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .line 659
    .local v1, "listener":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    invoke-interface {v1, v0}, Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;->onTouchExplorationStateChanged(Z)V

    goto :goto_0

    .line 654
    .end local v0    # "isTouchExplorationEnabled":Z
    .end local v1    # "listener":Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    .line 652
    .restart local v0    # "isTouchExplorationEnabled":Z
    .restart local v2    # "listener$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private setStateLocked(I)V
    .locals 8
    .param p1, "stateFlags"    # I

    .prologue
    .line 538
    and-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_3

    const/4 v0, 0x1

    .line 540
    .local v0, "enabled":Z
    :goto_0
    and-int/lit8 v6, p1, 0x2

    if-eqz v6, :cond_4

    const/4 v2, 0x1

    .line 542
    .local v2, "touchExplorationEnabled":Z
    :goto_1
    and-int/lit8 v6, p1, 0x4

    if-eqz v6, :cond_5

    const/4 v1, 0x1

    .line 544
    .local v1, "highTextContrastEnabled":Z
    :goto_2
    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    .line 545
    .local v3, "wasEnabled":Z
    iget-boolean v5, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 546
    .local v5, "wasTouchExplorationEnabled":Z
    iget-boolean v4, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    .line 549
    .local v4, "wasHighTextContrastEnabled":Z
    iput-boolean v0, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    .line 550
    iput-boolean v2, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z

    .line 551
    iput-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z

    .line 553
    if-eq v3, v0, :cond_0

    .line 554
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 557
    :cond_0
    if-eq v5, v2, :cond_1

    .line 558
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 561
    :cond_1
    if-eq v4, v1, :cond_2

    .line 562
    iget-object v6, p0, Landroid/view/accessibility/AccessibilityManager;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 537
    :cond_2
    return-void

    .line 538
    .end local v0    # "enabled":Z
    .end local v1    # "highTextContrastEnabled":Z
    .end local v2    # "touchExplorationEnabled":Z
    .end local v3    # "wasEnabled":Z
    .end local v4    # "wasHighTextContrastEnabled":Z
    .end local v5    # "wasTouchExplorationEnabled":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "enabled":Z
    goto :goto_0

    .line 540
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "touchExplorationEnabled":Z
    goto :goto_1

    .line 542
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "highTextContrastEnabled":Z
    goto :goto_2
.end method

.method private tryConnectToServiceLocked()V
    .locals 6

    .prologue
    .line 621
    const-string/jumbo v4, "accessibility"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 622
    .local v0, "iBinder":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 623
    return-void

    .line 625
    :cond_0
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v2

    .line 627
    .local v2, "service":Landroid/view/accessibility/IAccessibilityManager;
    :try_start_0
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    iget v5, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I

    invoke-interface {v2, v4, v5}, Landroid/view/accessibility/IAccessibilityManager;->addClient(Landroid/view/accessibility/IAccessibilityManagerClient;I)I

    move-result v3

    .line 628
    .local v3, "stateFlags":I
    invoke-direct {p0, v3}, Landroid/view/accessibility/AccessibilityManager;->setStateLocked(I)V

    .line 629
    iput-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mService:Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    .end local v3    # "stateFlags":I
    :goto_0
    return-void

    .line 630
    :catch_0
    move-exception v1

    .line 631
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "AccessibilityManager"

    const-string/jumbo v5, "AccessibilityManagerService is dead"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;)I
    .locals 6
    .param p1, "windowToken"    # Landroid/view/IWindow;
    .param p2, "connection"    # Landroid/view/accessibility/IAccessibilityInteractionConnection;

    .prologue
    const/4 v5, -0x1

    .line 577
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 578
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 579
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    monitor-exit v4

    .line 580
    return v5

    .line 582
    :cond_0
    :try_start_1
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v2, "userId":I
    monitor-exit v4

    .line 585
    :try_start_2
    invoke-interface {v1, p1, p2, v2}, Landroid/view/accessibility/IAccessibilityManager;->addAccessibilityInteractionConnection(Landroid/view/IWindow;Landroid/view/accessibility/IAccessibilityInteractionConnection;I)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v3

    return v3

    .line 577
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v2    # "userId":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 586
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .restart local v2    # "userId":I
    :catch_0
    move-exception v0

    .line 587
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "AccessibilityManager"

    const-string/jumbo v4, "Error while adding an accessibility interaction connection. "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 589
    return v5
.end method

.method public addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .prologue
    .line 463
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    .prologue
    .line 515
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .prologue
    .line 488
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAccessibilityServiceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ServiceInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 370
    .local v3, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v4, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ServiceInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 372
    .local v2, "infoCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 373
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 374
    .local v1, "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    .end local v1    # "info":Landroid/accessibilityservice/AccessibilityServiceInfo;
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    return-object v5
.end method

.method public getClient()Landroid/view/accessibility/IAccessibilityManagerClient;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mClient:Landroid/view/accessibility/IAccessibilityManagerClient$Stub;

    return-object v0
.end method

.method public getEnabledAccessibilityServiceList(I)Ljava/util/List;
    .locals 6
    .param p1, "feedbackTypeFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 429
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 430
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 431
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 432
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 434
    :cond_0
    :try_start_1
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "userId":I
    monitor-exit v5

    .line 437
    const/4 v2, 0x0

    .line 439
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :try_start_2
    invoke-interface {v1, p1, v3}, Landroid/view/accessibility/IAccessibilityManager;->getEnabledAccessibilityServiceList(II)Ljava/util/List;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 446
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 447
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 429
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v3    # "userId":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 443
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .restart local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .restart local v3    # "userId":I
    :catch_0
    move-exception v0

    .line 444
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "AccessibilityManager"

    const-string/jumbo v5, "Error while obtaining the installed AccessibilityServices. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 449
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method public getInstalledAccessibilityServiceList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 387
    iget-object v5, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 388
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v1

    .line 389
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    .line 390
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    monitor-exit v5

    return-object v4

    .line 392
    :cond_0
    :try_start_1
    iget v3, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, "userId":I
    monitor-exit v5

    .line 395
    const/4 v2, 0x0

    .line 397
    .local v2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :try_start_2
    invoke-interface {v1, v3}, Landroid/view/accessibility/IAccessibilityManager;->getInstalledAccessibilityServiceList(I)Ljava/util/List;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    .line 404
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :goto_0
    if-eqz v2, :cond_1

    .line 405
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 387
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .end local v3    # "userId":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 401
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    .restart local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    .restart local v3    # "userId":I
    :catch_0
    move-exception v0

    .line 402
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v4, "AccessibilityManager"

    const-string/jumbo v5, "Error while obtaining the installed AccessibilityServices. "

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 407
    .end local v0    # "re":Landroid/os/RemoteException;
    .end local v2    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method public interrupt()V
    .locals 6

    .prologue
    .line 340
    iget-object v4, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 341
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 342
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    monitor-exit v4

    .line 343
    return-void

    .line 345
    :cond_0
    :try_start_1
    iget-boolean v3, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v3, :cond_1

    .line 346
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v5, "Accessibility off. Did you forget to check that?"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 348
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :cond_1
    :try_start_2
    iget v2, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v2, "userId":I
    monitor-exit v4

    .line 351
    :try_start_3
    invoke-interface {v1, v2}, Landroid/view/accessibility/IAccessibilityManager;->interrupt(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 337
    :goto_0
    return-void

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v3, "AccessibilityManager"

    const-string/jumbo v4, "Error while requesting interrupt from all services. "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 3

    .prologue
    .line 242
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 243
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 244
    .local v0, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v0, :cond_0

    .line 245
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 247
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v1

    .line 242
    .end local v0    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isHighTextContrastEnabled()Z
    .locals 3

    .prologue
    .line 278
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 279
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 280
    .local v0, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v0, :cond_0

    .line 281
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 283
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsHighTextContrastEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v1

    .line 278
    .end local v0    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public isTouchExplorationEnabled()Z
    .locals 3

    .prologue
    .line 257
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 258
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 259
    .local v0, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v0, :cond_0

    .line 260
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 262
    :cond_0
    :try_start_1
    iget-boolean v1, p0, Landroid/view/accessibility/AccessibilityManager;->mIsTouchExplorationEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v2

    return v1

    .line 257
    .end local v0    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    .locals 4
    .param p1, "windowToken"    # Landroid/view/IWindow;

    .prologue
    .line 600
    iget-object v2, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 601
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 602
    .local v1, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v1, :cond_0

    monitor-exit v2

    .line 603
    return-void

    :cond_0
    monitor-exit v2

    .line 607
    :try_start_1
    invoke-interface {v1, p1}, Landroid/view/accessibility/IAccessibilityManager;->removeAccessibilityInteractionConnection(Landroid/view/IWindow;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 598
    :goto_0
    return-void

    .line 600
    .end local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 608
    .restart local v1    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catch_0
    move-exception v0

    .line 609
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "AccessibilityManager"

    const-string/jumbo v3, "Error while removing an accessibility interaction connection. "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;

    .prologue
    .line 475
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mAccessibilityStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;

    .prologue
    .line 529
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mHighTextContrastStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;

    .prologue
    .line 500
    iget-object v0, p0, Landroid/view/accessibility/AccessibilityManager;->mTouchExplorationStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 9
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 303
    iget-object v7, p0, Landroid/view/accessibility/AccessibilityManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 304
    :try_start_0
    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityManager;->getServiceLocked()Landroid/view/accessibility/IAccessibilityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 305
    .local v4, "service":Landroid/view/accessibility/IAccessibilityManager;
    if-nez v4, :cond_0

    monitor-exit v7

    .line 306
    return-void

    .line 308
    :cond_0
    :try_start_1
    iget-boolean v6, p0, Landroid/view/accessibility/AccessibilityManager;->mIsEnabled:Z

    if-nez v6, :cond_1

    .line 309
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "Accessibility off. Did you forget to check that?"

    invoke-direct {v6, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    .end local v4    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 311
    .restart local v4    # "service":Landroid/view/accessibility/IAccessibilityManager;
    :cond_1
    :try_start_2
    iget v5, p0, Landroid/view/accessibility/AccessibilityManager;->mUserId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .local v5, "userId":I
    monitor-exit v7

    .line 313
    const/4 v0, 0x0

    .line 315
    .local v0, "doRecycle":Z
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Landroid/view/accessibility/AccessibilityEvent;->setEventTime(J)V

    .line 319
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 320
    .local v2, "identityToken":J
    invoke-interface {v4, p1, v5}, Landroid/view/accessibility/IAccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;I)Z

    move-result v0

    .line 321
    .local v0, "doRecycle":Z
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 328
    if-eqz v0, :cond_2

    .line 329
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 300
    .end local v0    # "doRecycle":Z
    .end local v2    # "identityToken":J
    :cond_2
    :goto_0
    return-void

    .line 325
    :catch_0
    move-exception v1

    .line 326
    .local v1, "re":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v6, "AccessibilityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Error during sending "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 328
    if-eqz v0, :cond_2

    .line 329
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    goto :goto_0

    .line 327
    .end local v1    # "re":Landroid/os/RemoteException;
    :catchall_1
    move-exception v6

    .line 328
    if-eqz v0, :cond_3

    .line 329
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V

    .line 327
    :cond_3
    throw v6
.end method
