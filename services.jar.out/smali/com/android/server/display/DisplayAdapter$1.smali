.class Lcom/android/server/display/DisplayAdapter$1;
.super Ljava/lang/Object;
.source "DisplayAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayAdapter;

.field final synthetic val$device:Lcom/android/server/display/DisplayDevice;

.field final synthetic val$event:I


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayAdapter;Lcom/android/server/display/DisplayDevice;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayAdapter;
    .param p2, "val$device"    # Lcom/android/server/display/DisplayDevice;
    .param p3, "val$event"    # I

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/server/display/DisplayAdapter$1;->this$0:Lcom/android/server/display/DisplayAdapter;

    iput-object p2, p0, Lcom/android/server/display/DisplayAdapter$1;->val$device:Lcom/android/server/display/DisplayDevice;

    iput p3, p0, Lcom/android/server/display/DisplayAdapter$1;->val$event:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/display/DisplayAdapter$1;->this$0:Lcom/android/server/display/DisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/DisplayAdapter;->-get0(Lcom/android/server/display/DisplayAdapter;)Lcom/android/server/display/DisplayAdapter$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/DisplayAdapter$1;->val$device:Lcom/android/server/display/DisplayDevice;

    iget v2, p0, Lcom/android/server/display/DisplayAdapter$1;->val$event:I

    invoke-interface {v0, v1, v2}, Lcom/android/server/display/DisplayAdapter$Listener;->onDisplayDeviceEvent(Lcom/android/server/display/DisplayDevice;I)V

    .line 121
    return-void
.end method
