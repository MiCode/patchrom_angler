.class final Landroid/view/ViewRootImpl$RunQueue;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RunQueue"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
    }
.end annotation


# instance fields
.field private final mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewRootImpl$RunQueue$HandlerAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 6877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6878
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewRootImpl$RunQueue;->mActions:Ljava/util/ArrayList;

    .line 6877
    return-void
.end method


# virtual methods
.method executeActions(Landroid/os/Handler;)V
    .locals 8
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 6908
    iget-object v5, p0, Landroid/view/ViewRootImpl$RunQueue;->mActions:Ljava/util/ArrayList;

    monitor-enter v5

    .line 6909
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$RunQueue;->mActions:Ljava/util/ArrayList;

    .line 6910
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl$RunQueue$HandlerAction;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6912
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 6913
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;

    .line 6914
    .local v2, "handlerAction":Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
    iget-object v4, v2, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    iget-wide v6, v2, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->delay:J

    invoke-virtual {p1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6912
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6917
    .end local v2    # "handlerAction":Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 6907
    return-void

    .line 6908
    .end local v0    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl$RunQueue$HandlerAction;>;"
    .end local v1    # "count":I
    .end local v3    # "i":I
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method post(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 6881
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/ViewRootImpl$RunQueue;->postDelayed(Ljava/lang/Runnable;J)V

    .line 6880
    return-void
.end method

.method postDelayed(Ljava/lang/Runnable;J)V
    .locals 4
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .prologue
    .line 6885
    new-instance v0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;-><init>(Landroid/view/ViewRootImpl$RunQueue$HandlerAction;)V

    .line 6886
    .local v0, "handlerAction":Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
    iput-object p1, v0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    .line 6887
    iput-wide p2, v0, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->delay:J

    .line 6889
    iget-object v2, p0, Landroid/view/ViewRootImpl$RunQueue;->mActions:Ljava/util/ArrayList;

    monitor-enter v2

    .line 6890
    :try_start_0
    iget-object v1, p0, Landroid/view/ViewRootImpl$RunQueue;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 6884
    return-void

    .line 6889
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method removeCallbacks(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 6895
    new-instance v1, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;-><init>(Landroid/view/ViewRootImpl$RunQueue$HandlerAction;)V

    .line 6896
    .local v1, "handlerAction":Landroid/view/ViewRootImpl$RunQueue$HandlerAction;
    iput-object p1, v1, Landroid/view/ViewRootImpl$RunQueue$HandlerAction;->action:Ljava/lang/Runnable;

    .line 6898
    iget-object v3, p0, Landroid/view/ViewRootImpl$RunQueue;->mActions:Ljava/util/ArrayList;

    monitor-enter v3

    .line 6899
    :try_start_0
    iget-object v0, p0, Landroid/view/ViewRootImpl$RunQueue;->mActions:Ljava/util/ArrayList;

    .line 6901
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl$RunQueue$HandlerAction;>;"
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    monitor-exit v3

    .line 6894
    return-void

    .line 6898
    .end local v0    # "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/ViewRootImpl$RunQueue$HandlerAction;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
