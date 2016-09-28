.class public Lcom/android/server/content/SyncStorageEngine$PendingOperation;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PendingOperation"
.end annotation


# instance fields
.field final authorityId:I

.field final expedited:Z

.field final extras:Landroid/os/Bundle;

.field flatExtras:[B

.field final reason:I

.field final syncSource:I

.field final target:Lcom/android/server/content/SyncStorageEngine$EndPoint;


# direct methods
.method constructor <init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;IILandroid/os/Bundle;Z)V
    .locals 1
    .param p1, "authority"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
    .param p2, "reason"    # I
    .param p3, "source"    # I
    .param p4, "extras"    # Landroid/os/Bundle;
    .param p5, "expedited"    # Z

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 178
    iput p3, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    .line 179
    iput p2, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    .line 180
    if-eqz p4, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p4}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p4, v0

    .end local p4    # "extras":Landroid/os/Bundle;
    :cond_0
    iput-object p4, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    .line 181
    iput-boolean p5, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    .line 182
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authorityId:I

    .line 176
    return-void
.end method

.method constructor <init>(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)V
    .locals 1
    .param p1, "other"    # Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->reason:I

    .line 187
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    .line 188
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 189
    iget-object v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    .line 190
    iget v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authorityId:I

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->authorityId:I

    .line 191
    iget-boolean v0, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->expedited:Z

    .line 185
    return-void
.end method


# virtual methods
.method public equals(Lcom/android/server/content/SyncStorageEngine$PendingOperation;)Z
    .locals 2
    .param p1, "other"    # Lcom/android/server/content/SyncStorageEngine$PendingOperation;

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, p1, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    invoke-virtual {v0, v1}, Lcom/android/server/content/SyncStorageEngine$EndPoint;->matchesSpec(Lcom/android/server/content/SyncStorageEngine$EndPoint;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->service:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 207
    const-string/jumbo v1, " user="

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->userId:I

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 208
    const-string/jumbo v1, " auth="

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    const-string/jumbo v1, " account="

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->target:Lcom/android/server/content/SyncStorageEngine$EndPoint;

    iget-object v1, v1, Lcom/android/server/content/SyncStorageEngine$EndPoint;->account:Landroid/accounts/Account;

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    const-string/jumbo v1, " src="

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 210
    iget v1, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->syncSource:I

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    const-string/jumbo v1, " extras="

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
