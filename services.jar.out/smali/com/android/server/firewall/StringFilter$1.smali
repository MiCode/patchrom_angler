.class final Lcom/android/server/firewall/StringFilter$1;
.super Lcom/android/server/firewall/StringFilter$ValueProvider;
.source "StringFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/StringFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/android/server/firewall/StringFilter$ValueProvider;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getValue(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "resolvedComponent"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 234
    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 237
    :cond_0
    return-object v0
.end method
