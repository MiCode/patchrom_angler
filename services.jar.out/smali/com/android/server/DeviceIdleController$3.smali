.class Lcom/android/server/DeviceIdleController$3;
.super Landroid/hardware/TriggerEventListener;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$3;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .prologue
    .line 280
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$3;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v1

    .line 281
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$3;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController;->significantMotionLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 279
    return-void

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
