.class public final enum Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
.super Ljava/lang/Enum;
.source "NetworkDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/hotspot2/NetworkDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Ant"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum ChargeablePublic:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum EmergencyOnly:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum FreePublic:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum Personal:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum Private:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum PrivateWithGuest:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum Resvd10:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum Resvd11:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum Resvd12:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum Resvd13:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum Resvd6:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum Resvd7:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum Resvd8:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum Resvd9:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum TestOrExperimental:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

.field public static final enum Wildcard:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 47
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const-string/jumbo v1, "Private"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Private:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 48
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const-string/jumbo v1, "PrivateWithGuest"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->PrivateWithGuest:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 49
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const-string/jumbo v1, "ChargeablePublic"

    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->ChargeablePublic:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 50
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const-string/jumbo v1, "FreePublic"

    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->FreePublic:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 51
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const-string/jumbo v1, "Personal"

    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Personal:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 52
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const-string/jumbo v1, "EmergencyOnly"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->EmergencyOnly:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 53
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const-string/jumbo v1, "Resvd6"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd6:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 54
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const-string/jumbo v1, "Resvd7"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd7:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 55
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const-string/jumbo v1, "Resvd8"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd8:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 56
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const-string/jumbo v1, "Resvd9"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd9:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 57
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const-string/jumbo v1, "Resvd10"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd10:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 58
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const-string/jumbo v1, "Resvd11"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd11:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 59
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const-string/jumbo v1, "Resvd12"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd12:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 60
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const-string/jumbo v1, "Resvd13"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd13:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 61
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const-string/jumbo v1, "TestOrExperimental"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->TestOrExperimental:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 62
    new-instance v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const-string/jumbo v1, "Wildcard"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Wildcard:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    .line 46
    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Private:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->PrivateWithGuest:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->ChargeablePublic:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->FreePublic:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Personal:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->EmergencyOnly:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd6:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd7:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd8:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd9:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd10:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd11:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd12:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Resvd13:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->TestOrExperimental:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->Wildcard:Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->$VALUES:[Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 46
    const-class v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;->$VALUES:[Lcom/android/server/wifi/hotspot2/NetworkDetail$Ant;

    return-object v0
.end method
