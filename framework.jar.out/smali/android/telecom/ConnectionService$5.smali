.class Landroid/telecom/ConnectionService$5;
.super Lcom/android/internal/telecom/RemoteServiceCallback$Stub;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telecom/ConnectionService;->onAdapterAttached()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/ConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/ConnectionService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/telecom/ConnectionService;

    .prologue
    .line 829
    iput-object p1, p0, Landroid/telecom/ConnectionService$5;->this$0:Landroid/telecom/ConnectionService;

    invoke-direct {p0}, Lcom/android/internal/telecom/RemoteServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 2

    .prologue
    .line 850
    iget-object v0, p0, Landroid/telecom/ConnectionService$5;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/telecom/ConnectionService$5$2;

    invoke-direct {v1, p0}, Landroid/telecom/ConnectionService$5$2;-><init>(Landroid/telecom/ConnectionService$5;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 849
    return-void
.end method

.method public onResult(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 834
    .local p1, "componentNames":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    .local p2, "services":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    iget-object v0, p0, Landroid/telecom/ConnectionService$5;->this$0:Landroid/telecom/ConnectionService;

    invoke-static {v0}, Landroid/telecom/ConnectionService;->-get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/telecom/ConnectionService$5$1;

    invoke-direct {v1, p0, p1, p2}, Landroid/telecom/ConnectionService$5$1;-><init>(Landroid/telecom/ConnectionService$5;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 833
    return-void
.end method
