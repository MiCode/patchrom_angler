.class Lcom/android/internal/os/BatteryStatsImpl$4;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/BatteryStatsImpl;->setOnBatteryLocked(JJZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field final synthetic val$parcel:Landroid/os/Parcel;


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Landroid/os/Parcel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "val$parcel"    # Landroid/os/Parcel;

    .prologue
    .line 8299
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iput-object p2, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->val$parcel:Landroid/os/Parcel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 8301
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v3, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    monitor-enter v3

    .line 8302
    const/4 v1, 0x0

    .line 8304
    .local v1, "stream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    .line 8305
    .local v1, "stream":Ljava/io/FileOutputStream;
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->val$parcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 8306
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 8307
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 8308
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 8309
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8315
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->val$parcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "stream":Ljava/io/FileOutputStream;
    :goto_0
    monitor-exit v3

    .line 8300
    return-void

    .line 8310
    :catch_0
    move-exception v0

    .line 8311
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v2, "BatteryStats"

    .line 8312
    const-string/jumbo v4, "Error writing checkin battery statistics"

    .line 8311
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 8313
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    iget-object v2, v2, Lcom/android/internal/os/BatteryStatsImpl;->mCheckinFile:Lcom/android/internal/os/AtomicFile;

    invoke-virtual {v2, v1}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8315
    :try_start_3
    iget-object v2, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->val$parcel:Landroid/os/Parcel;

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 8301
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 8314
    :catchall_1
    move-exception v2

    .line 8315
    :try_start_4
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$4;->val$parcel:Landroid/os/Parcel;

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 8314
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method
