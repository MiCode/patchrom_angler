.class public Landroid/hardware/camera2/marshal/MarshalRegistry;
.super Ljava/lang/Object;
.source "MarshalRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;
    }
.end annotation


# static fields
.field private static sMarshalerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken",
            "<*>;",
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static sRegisteredMarshalQueryables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/hardware/camera2/marshal/MarshalQueryable",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    sput-object v0, Landroid/hardware/camera2/marshal/MarshalRegistry;->sRegisteredMarshalQueryables:Ljava/util/List;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 130
    sput-object v0, Landroid/hardware/camera2/marshal/MarshalRegistry;->sMarshalerMap:Ljava/util/HashMap;

    .line 28
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;
    .locals 8
    .param p1, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;I)",
            "Landroid/hardware/camera2/marshal/Marshaler",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    .local p0, "typeToken":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    new-instance v1, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;

    invoke-direct {v1, p0, p1}, Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;-><init>(Landroid/hardware/camera2/utils/TypeReference;I)V

    .line 66
    .local v1, "marshalToken":Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken;, "Landroid/hardware/camera2/marshal/MarshalRegistry$MarshalToken<TT;>;"
    sget-object v5, Landroid/hardware/camera2/marshal/MarshalRegistry;->sMarshalerMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/marshal/Marshaler;

    .line 68
    .local v2, "marshaler":Landroid/hardware/camera2/marshal/Marshaler;, "Landroid/hardware/camera2/marshal/Marshaler<TT;>;"
    sget-object v5, Landroid/hardware/camera2/marshal/MarshalRegistry;->sRegisteredMarshalQueryables:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 69
    new-instance v5, Ljava/lang/AssertionError;

    const-string/jumbo v6, "No available query marshalers registered"

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v5

    .line 72
    :cond_0
    if-nez v2, :cond_4

    .line 74
    sget-object v5, Landroid/hardware/camera2/marshal/MarshalRegistry;->sRegisteredMarshalQueryables:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "potentialMarshaler$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/marshal/MarshalQueryable;

    .line 76
    .local v3, "potentialMarshaler":Landroid/hardware/camera2/marshal/MarshalQueryable;, "Landroid/hardware/camera2/marshal/MarshalQueryable<*>;"
    move-object v0, v3

    .line 79
    .local v0, "castedPotential":Landroid/hardware/camera2/marshal/MarshalQueryable;, "Landroid/hardware/camera2/marshal/MarshalQueryable<TT;>;"
    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/marshal/MarshalQueryable;->isTypeMappingSupported(Landroid/hardware/camera2/utils/TypeReference;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 80
    invoke-interface {v0, p0, p1}, Landroid/hardware/camera2/marshal/MarshalQueryable;->createMarshaler(Landroid/hardware/camera2/utils/TypeReference;I)Landroid/hardware/camera2/marshal/Marshaler;

    move-result-object v2

    .line 85
    .end local v0    # "castedPotential":Landroid/hardware/camera2/marshal/MarshalQueryable;, "Landroid/hardware/camera2/marshal/MarshalQueryable<TT;>;"
    .end local v3    # "potentialMarshaler":Landroid/hardware/camera2/marshal/MarshalQueryable;, "Landroid/hardware/camera2/marshal/MarshalQueryable<*>;"
    :cond_2
    if-nez v2, :cond_3

    .line 86
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    .line 87
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not find marshaler that matches the requested combination of type reference "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 89
    const-string/jumbo v7, " and native type "

    .line 87
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 90
    invoke-static {p1}, Landroid/hardware/camera2/marshal/MarshalHelpers;->toStringNativeType(I)Ljava/lang/String;

    move-result-object v7

    .line 87
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 86
    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 94
    :cond_3
    sget-object v5, Landroid/hardware/camera2/marshal/MarshalRegistry;->sMarshalerMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .end local v4    # "potentialMarshaler$iterator":Ljava/util/Iterator;
    :cond_4
    return-object v2
.end method

.method public static registerMarshalQueryable(Landroid/hardware/camera2/marshal/MarshalQueryable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/hardware/camera2/marshal/MarshalQueryable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "queryable":Landroid/hardware/camera2/marshal/MarshalQueryable;, "Landroid/hardware/camera2/marshal/MarshalQueryable<TT;>;"
    sget-object v0, Landroid/hardware/camera2/marshal/MarshalRegistry;->sRegisteredMarshalQueryables:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method
