.class public abstract Lcom/android/server/wifi/hotspot2/omadm/OMANode;
.super Ljava/lang/Object;
.source "OMANode.java"


# instance fields
.field private final mContext:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mParent:Lcom/android/server/wifi/hotspot2/omadm/OMANode;


# direct methods
.method protected constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mParent:Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    .line 18
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mName:Ljava/lang/String;

    .line 19
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mContext:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private static buildNode(Ljava/io/InputStream;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 6
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 98
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->deserializeString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 100
    return-object v5

    .line 103
    :cond_0
    const/4 v2, 0x0

    .line 104
    .local v2, "urn":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 105
    .local v1, "next":I
    const/16 v4, 0x28

    if-ne v1, v4, :cond_1

    .line 106
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->readURN(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "urn":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 110
    .end local v2    # "urn":Ljava/lang/String;
    :cond_1
    const/16 v4, 0x3d

    if-ne v1, v4, :cond_2

    .line 111
    invoke-static {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->deserializeString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {p1, v0, v2, v3, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v4

    return-object v4

    .line 113
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    const/16 v4, 0x2b

    if-ne v1, v4, :cond_4

    .line 114
    if-eqz p1, :cond_3

    .line 115
    invoke-virtual {p1, v0, v2, v5, v5}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;->addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v4

    return-object v4

    .line 117
    :cond_3
    new-instance v4, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    invoke-direct {v4, v5, v0, v2}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    .line 121
    :cond_4
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Parse error: expected = or + after node name"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static unmarshal(Ljava/io/InputStream;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .locals 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->buildNode(Ljava/io/InputStream;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v0

    .line 78
    .local v0, "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Bad OMA tree"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    move-object v1, v0

    .line 81
    check-cast v1, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    invoke-static {p0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->unmarshal(Ljava/io/InputStream;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    .line 82
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .end local v0    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    return-object v0
.end method

.method private static unmarshal(Ljava/io/InputStream;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V
    .locals 2
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    :cond_0
    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->buildNode(Ljava/io/InputStream;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v0

    .line 88
    .local v0, "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    if-nez v0, :cond_1

    .line 89
    return-void

    .line 91
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->isLeaf()Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;

    .end local v0    # "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    invoke-static {p0, v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->unmarshal(Ljava/io/InputStream;Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
.end method

.method public abstract getChildren()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/OMANode;",
            ">;"
        }
    .end annotation
.end method

.method public getContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mContext:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->mParent:Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    return-object v0
.end method

.method public getPath()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 36
    .local v1, "path":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    move-object v0, p0

    .local v0, "node":Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    :goto_0
    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getParent()Lcom/android/server/wifi/hotspot2/omadm/OMANode;

    move-result-object v0

    goto :goto_0

    .line 39
    :cond_0
    return-object v1
.end method

.method public getPathString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->getPath()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "element$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 45
    .local v0, "element":Ljava/lang/String;
    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 47
    .end local v0    # "element":Ljava/lang/String;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public abstract getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation
.end method

.method public abstract getValue()Ljava/lang/String;
.end method

.method public abstract isLeaf()Z
.end method

.method public abstract marshal(Ljava/io/OutputStream;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;->toString(Ljava/lang/StringBuilder;I)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract toString(Ljava/lang/StringBuilder;I)V
.end method
