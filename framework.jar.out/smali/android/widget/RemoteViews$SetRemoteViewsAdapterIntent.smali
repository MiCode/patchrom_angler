.class Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;
.super Landroid/widget/RemoteViews$Action;
.source "RemoteViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetRemoteViewsAdapterIntent"
.end annotation


# static fields
.field public static final TAG:I = 0xa


# instance fields
.field intent:Landroid/content/Intent;

.field final synthetic this$0:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;ILandroid/content/Intent;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 600
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    .line 601
    iput p2, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    .line 602
    iput-object p3, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    .line 600
    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/RemoteViews;
    .param p2, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 605
    iput-object p1, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->this$0:Landroid/widget/RemoteViews;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$Action;)V

    .line 606
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    .line 607
    sget-object v0, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    .line 605
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 7
    .param p1, "root"    # Landroid/view/View;
    .param p2, "rootParent"    # Landroid/view/ViewGroup;
    .param p3, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    .prologue
    .line 618
    iget v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 619
    .local v1, "target":Landroid/view/View;
    if-nez v1, :cond_0

    return-void

    .line 622
    :cond_0
    instance-of v4, p2, Landroid/appwidget/AppWidgetHostView;

    if-nez v4, :cond_1

    .line 623
    const-string/jumbo v4, "RemoteViews"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SetRemoteViewsAdapterIntent action can only be used for AppWidgets (root id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 624
    iget v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    .line 623
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 624
    const-string/jumbo v6, ")"

    .line 623
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    return-void

    .line 628
    :cond_1
    instance-of v4, v1, Landroid/widget/AbsListView;

    if-nez v4, :cond_2

    instance-of v4, v1, Landroid/widget/AdapterViewAnimator;

    if-eqz v4, :cond_4

    :cond_2
    move-object v0, p2

    .line 636
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 637
    .local v0, "host":Landroid/appwidget/AppWidgetHostView;
    iget-object v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    const-string/jumbo v5, "remoteAdapterAppWidgetId"

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    instance-of v4, v1, Landroid/widget/AbsListView;

    if-eqz v4, :cond_5

    move-object v2, v1

    .line 639
    check-cast v2, Landroid/widget/AbsListView;

    .line 640
    .local v2, "v":Landroid/widget/AbsListView;
    iget-object v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v2, v4}, Landroid/widget/AbsListView;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 641
    invoke-virtual {v2, p3}, Landroid/widget/AbsListView;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    .line 617
    .end local v2    # "v":Landroid/widget/AbsListView;
    :cond_3
    :goto_0
    return-void

    .line 629
    .end local v0    # "host":Landroid/appwidget/AppWidgetHostView;
    :cond_4
    const-string/jumbo v4, "RemoteViews"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Cannot setRemoteViewsAdapter on a view which is not an AbsListView or AdapterViewAnimator (id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 630
    iget v6, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    .line 629
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 630
    const-string/jumbo v6, ")"

    .line 629
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    return-void

    .line 642
    .restart local v0    # "host":Landroid/appwidget/AppWidgetHostView;
    :cond_5
    instance-of v4, v1, Landroid/widget/AdapterViewAnimator;

    if-eqz v4, :cond_3

    move-object v3, v1

    .line 643
    check-cast v3, Landroid/widget/AdapterViewAnimator;

    .line 644
    .local v3, "v":Landroid/widget/AdapterViewAnimator;
    iget-object v4, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Landroid/widget/AdapterViewAnimator;->setRemoteViewsAdapter(Landroid/content/Intent;)V

    .line 645
    invoke-virtual {v3, p3}, Landroid/widget/AdapterViewAnimator;->setRemoteViewsOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V

    goto :goto_0
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 650
    const-string/jumbo v0, "SetRemoteViewsAdapterIntent"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 611
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 612
    iget v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->viewId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    iget-object v0, p0, Landroid/widget/RemoteViews$SetRemoteViewsAdapterIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 610
    return-void
.end method
