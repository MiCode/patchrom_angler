.class Lcom/android/server/ConnectivityService$NetworkFactoryInfo;
.super Ljava/lang/Object;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NetworkFactoryInfo"
.end annotation


# instance fields
.field public final asyncChannel:Lcom/android/internal/util/AsyncChannel;

.field public final messenger:Landroid/os/Messenger;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Messenger;Lcom/android/internal/util/AsyncChannel;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "messenger"    # Landroid/os/Messenger;
    .param p3, "asyncChannel"    # Lcom/android/internal/util/AsyncChannel;

    .prologue
    .line 3555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3556
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->name:Ljava/lang/String;

    .line 3557
    iput-object p2, p0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->messenger:Landroid/os/Messenger;

    .line 3558
    iput-object p3, p0, Lcom/android/server/ConnectivityService$NetworkFactoryInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    .line 3555
    return-void
.end method
