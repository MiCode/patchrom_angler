.class Lcom/android/server/policy/GlobalActions$8$1;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$8;->onPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$8;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/GlobalActions$8;

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$8$1;->this$1:Lcom/android/server/policy/GlobalActions$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 385
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 386
    return-void

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$8$1;->this$1:Lcom/android/server/policy/GlobalActions$8;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$8;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get7(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/policy/GlobalActions$8$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/policy/GlobalActions$8$1$1;-><init>(Lcom/android/server/policy/GlobalActions$8$1;)V

    .line 399
    const-wide/16 v2, 0x1f4

    .line 391
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 382
    return-void
.end method
