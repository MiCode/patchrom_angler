.class Lcom/android/internal/telephony/cat/SelectItemParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mLoadTitleIcon:Z

.field mMenu:Lcom/android/internal/telephony/cat/Menu;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;Lcom/android/internal/telephony/cat/Menu;Z)V
    .locals 1
    .param p1, "cmdDet"    # Lcom/android/internal/telephony/cat/CommandDetails;
    .param p2, "menu"    # Lcom/android/internal/telephony/cat/Menu;
    .param p3, "loadTitleIcon"    # Z

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 154
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mLoadTitleIcon:Z

    .line 159
    iput-object p2, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 160
    iput-boolean p3, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mLoadTitleIcon:Z

    .line 157
    return-void
.end method


# virtual methods
.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 3
    .param p1, "icon"    # Landroid/graphics/Bitmap;

    .prologue
    .line 165
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v2, :cond_3

    .line 166
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mLoadTitleIcon:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 167
    iget-object v2, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    iput-object p1, v2, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;

    .line 177
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/SelectItemParams;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Item;

    .line 170
    .local v0, "item":Lcom/android/internal/telephony/cat/Item;
    iget-object v2, v0, Lcom/android/internal/telephony/cat/Item;->icon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 173
    iput-object p1, v0, Lcom/android/internal/telephony/cat/Item;->icon:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 179
    .end local v0    # "item":Lcom/android/internal/telephony/cat/Item;
    .end local v1    # "item$iterator":Ljava/util/Iterator;
    :cond_3
    const/4 v2, 0x0

    return v2
.end method
