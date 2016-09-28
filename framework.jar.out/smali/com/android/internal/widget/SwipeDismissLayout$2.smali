.class Lcom/android/internal/widget/SwipeDismissLayout$2;
.super Landroid/content/BroadcastReceiver;
.source "SwipeDismissLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SwipeDismissLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SwipeDismissLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/SwipeDismissLayout;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout$2;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$2;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->-get0(Lcom/android/internal/widget/SwipeDismissLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$2;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->-wrap0(Lcom/android/internal/widget/SwipeDismissLayout;)V

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$2;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->-wrap1(Lcom/android/internal/widget/SwipeDismissLayout;)V

    .line 93
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$2;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->cancel()V

    goto :goto_0
.end method
