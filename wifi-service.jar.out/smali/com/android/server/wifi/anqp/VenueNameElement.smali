.class public Lcom/android/server/wifi/anqp/VenueNameElement;
.super Lcom/android/server/wifi/anqp/ANQPElement;
.source "VenueNameElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;,
        Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    }
.end annotation


# static fields
.field private static final PerGroup:[Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

.field private static final sGroupBases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

.field private final mNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/I18Name;",
            ">;"
        }
    .end annotation
.end field

.field private final mType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 20
    new-instance v4, Ljava/util/EnumMap;

    const-class v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    invoke-direct {v4, v5}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 19
    sput-object v4, Lcom/android/server/wifi/anqp/VenueNameElement;->sGroupBases:Ljava/util/Map;

    .line 171
    const/16 v4, 0xc

    new-array v4, v4, [Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    .line 172
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->Unspecified:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    aput-object v5, v4, v3

    .line 173
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedAssembly:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 174
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedBusiness:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 175
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedEducational:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 176
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedFactoryIndustrial:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    const/4 v6, 0x4

    aput-object v5, v4, v6

    .line 177
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedInstitutional:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    const/4 v6, 0x5

    aput-object v5, v4, v6

    .line 178
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedMercantile:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    const/4 v6, 0x6

    aput-object v5, v4, v6

    .line 179
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedResidential:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    const/4 v6, 0x7

    aput-object v5, v4, v6

    .line 180
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedStorage:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    const/16 v6, 0x8

    aput-object v5, v4, v6

    .line 181
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedUtilityMiscellaneous:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    const/16 v6, 0x9

    aput-object v5, v4, v6

    .line 182
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedVehicular:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    const/16 v6, 0xa

    aput-object v5, v4, v6

    .line 183
    sget-object v5, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->UnspecifiedOutdoor:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    const/16 v6, 0xb

    aput-object v5, v4, v6

    .line 170
    sput-object v4, Lcom/android/server/wifi/anqp/VenueNameElement;->PerGroup:[Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    .line 187
    const/4 v0, 0x0

    .line 188
    .local v0, "index":I
    sget-object v4, Lcom/android/server/wifi/anqp/VenueNameElement;->PerGroup:[Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    array-length v5, v4

    move v1, v0

    .end local v0    # "index":I
    .local v1, "index":I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 189
    .local v2, "venue":Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    sget-object v6, Lcom/android/server/wifi/anqp/VenueNameElement;->sGroupBases:Ljava/util/Map;

    invoke-static {}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->values()[Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    move-result-object v7

    add-int/lit8 v0, v1, 0x1

    .end local v1    # "index":I
    .restart local v0    # "index":I
    aget-object v7, v7, v1

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    .end local v0    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 14
    .end local v2    # "venue":Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "infoID"    # Lcom/android/server/wifi/anqp/Constants$ANQPElementType;
    .param p2, "payload"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/android/server/wifi/anqp/ANQPElement;-><init>(Lcom/android/server/wifi/anqp/Constants$ANQPElementType;)V

    .line 26
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 27
    new-instance v2, Ljava/net/ProtocolException;

    const-string/jumbo v3, "Runt Venue Name"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 29
    :cond_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 30
    .local v0, "group":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit16 v1, v2, 0xff

    .line 32
    .local v1, "type":I
    invoke-static {}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->values()[Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 33
    sget-object v2, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->Reserved:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    iput-object v2, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    .line 34
    sget-object v2, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->Reserved:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    iput-object v2, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    .line 45
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mNames:Ljava/util/List;

    .line 46
    :goto_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 47
    iget-object v2, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mNames:Ljava/util/List;

    new-instance v3, Lcom/android/server/wifi/anqp/I18Name;

    invoke-direct {v3, p2}, Lcom/android/server/wifi/anqp/I18Name;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 36
    :cond_1
    invoke-static {}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;->values()[Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    move-result-object v2

    aget-object v2, v2, v0

    iput-object v2, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    .line 37
    sget-object v2, Lcom/android/server/wifi/anqp/VenueNameElement;->sGroupBases:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v1, v2

    .line 38
    invoke-static {}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->values()[Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 39
    sget-object v2, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->Reserved:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    iput-object v2, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    goto :goto_0

    .line 41
    :cond_2
    invoke-static {}, Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;->values()[Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    move-result-object v2

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    goto :goto_0

    .line 23
    :cond_3
    return-void
.end method


# virtual methods
.method public getGroup()Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    return-object v0
.end method

.method public getNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/I18Name;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mNames:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "VenueName{m_group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mGroup:Lcom/android/server/wifi/anqp/VenueNameElement$VenueGroup;

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    const-string/jumbo v1, ", m_type="

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 67
    iget-object v1, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mType:Lcom/android/server/wifi/anqp/VenueNameElement$VenueType;

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    const-string/jumbo v1, ", m_names="

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/android/server/wifi/anqp/VenueNameElement;->mNames:Ljava/util/List;

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 69
    const/16 v1, 0x7d

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
