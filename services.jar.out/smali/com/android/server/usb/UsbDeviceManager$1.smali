.class Lcom/android/server/usb/UsbDeviceManager$1;
.super Landroid/os/UEventObserver;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/usb/UsbDeviceManager;

    .prologue
    .line 167
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/os/UEventObserver$UEvent;

    .prologue
    .line 172
    const-string/jumbo v2, "USB_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "state":Ljava/lang/String;
    const-string/jumbo v2, "ACCESSORY"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, "accessory":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 175
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-get8(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    const-string/jumbo v2, "START"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$1;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager;->-wrap2(Lcom/android/server/usb/UsbDeviceManager;)V

    goto :goto_0
.end method
