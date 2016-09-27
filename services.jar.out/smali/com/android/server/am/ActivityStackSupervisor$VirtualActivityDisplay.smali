.class Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;
.super Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;
.source "ActivityStackSupervisor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStackSupervisor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VirtualActivityDisplay"
.end annotation


# instance fields
.field mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

.field final synthetic this$0:Lcom/android/server/am/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;III)V
    .locals 11
    .param p1, "this$0"    # Lcom/android/server/am/ActivityStackSupervisor;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "density"    # I

    .prologue
    const/4 v2, 0x0

    .line 4566
    iput-object p1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->this$0:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;-><init>(Lcom/android/server/am/ActivityStackSupervisor;)V

    .line 4567
    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    .line 4568
    .local v0, "dm":Landroid/hardware/display/DisplayManagerGlobal;
    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 4569
    const-string/jumbo v3, "ActivityViewVirtualDisplay"

    .line 4570
    const/16 v8, 0x9

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, v2

    move-object v9, v2

    move-object v10, v2

    .line 4568
    invoke-virtual/range {v0 .. v10}, Landroid/hardware/display/DisplayManagerGlobal;->createVirtualDisplay(Landroid/content/Context;Landroid/media/projection/MediaProjection;Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 4573
    iget-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->init(Landroid/view/Display;)V

    .line 4575
    iget-object v1, p1, Lcom/android/server/am/ActivityStackSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v2, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mDisplayId:I

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->handleDisplayAdded(I)V

    .line 4566
    return-void
.end method


# virtual methods
.method detachActivitiesLocked(Lcom/android/server/am/ActivityStack;)V
    .locals 2
    .param p1, "stack"    # Lcom/android/server/am/ActivityStack;

    .prologue
    const/4 v1, 0x0

    .line 4586
    invoke-super {p0, p1}, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->detachActivitiesLocked(Lcom/android/server/am/ActivityStack;)V

    .line 4587
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_0

    .line 4588
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 4589
    iput-object v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    .line 4585
    :cond_0
    return-void
.end method

.method setSurface(Landroid/view/Surface;)V
    .locals 1
    .param p1, "surface"    # Landroid/view/Surface;

    .prologue
    .line 4579
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_0

    .line 4580
    iget-object v0, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mVirtualDisplay:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0, p1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    .line 4578
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 4595
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VirtualActivityDisplay={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ActivityStackSupervisor$VirtualActivityDisplay;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
