.class Lcom/android/server/usb/UsbPortManager$1;
.super Landroid/os/Handler;
.source "UsbPortManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbPortManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbPortManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbPortManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbPortManager;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 694
    iput-object p1, p0, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 697
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 696
    :goto_0
    return-void

    .line 699
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbPortManager;->-get1(Lcom/android/server/usb/UsbPortManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 700
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usb/UsbPortManager$1;->this$0:Lcom/android/server/usb/UsbPortManager;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/usb/UsbPortManager;->-wrap1(Lcom/android/server/usb/UsbPortManager;Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_0

    .line 699
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 697
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
