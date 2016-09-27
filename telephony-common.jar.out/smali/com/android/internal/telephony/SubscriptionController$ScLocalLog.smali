.class Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;
.super Ljava/lang/Object;
.source "SubscriptionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScLocalLog"
.end annotation


# instance fields
.field private mLog:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxLines:I

.field private mNow:Landroid/text/format/Time;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxLines"    # I

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mLog:Ljava/util/LinkedList;

    .line 94
    iput p1, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mMaxLines:I

    .line 95
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mNow:Landroid/text/format/Time;

    .line 92
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 109
    const/16 v0, 0xa

    .line 110
    .local v0, "LOOPS_PER_FLUSH":I
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mLog:Ljava/util/LinkedList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    .line 111
    .local v3, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    move v2, v1

    .line 112
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    rem-int/lit8 v4, v1, 0xa

    if-nez v4, :cond_0

    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    :cond_1
    monitor-exit p0

    .line 108
    return-void

    .end local v2    # "i":I
    .end local v3    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized log(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    monitor-enter p0

    .line 99
    :try_start_0
    iget v2, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mMaxLines:I

    if-lez v2, :cond_0

    .line 100
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    .line 101
    .local v0, "pid":I
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v1

    .line 102
    .local v1, "tid":I
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mNow:Landroid/text/format/Time;

    invoke-virtual {v2}, Landroid/text/format/Time;->setToNow()V

    .line 103
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mLog:Ljava/util/LinkedList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mNow:Landroid/text/format/Time;

    const-string/jumbo v5, "%m-%d %H:%M:%S"

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " tid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 104
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mLog:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    iget v3, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mMaxLines:I

    if-le v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/SubscriptionController$ScLocalLog;->mLog:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "pid":I
    .end local v1    # "tid":I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_0
    monitor-exit p0

    .line 98
    return-void
.end method
