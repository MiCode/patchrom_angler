.class public final enum Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
.super Ljava/lang/Enum;
.source "IccCardApplicationStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PersoSubState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field public static final enum PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 72
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_IN_PROGRESS"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 73
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_READY"

    invoke-direct {v0, v1, v5}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 74
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_SIM_NETWORK"

    invoke-direct {v0, v1, v6}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 75
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_SIM_NETWORK_SUBSET"

    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 76
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_SIM_CORPORATE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 77
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_SIM_SERVICE_PROVIDER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 78
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_SIM_SIM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 79
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_SIM_NETWORK_PUK"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 80
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 81
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_SIM_CORPORATE_PUK"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 82
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 83
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_SIM_SIM_PUK"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 84
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_NETWORK1"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 85
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_NETWORK2"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 86
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_HRPD"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 87
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_CORPORATE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 88
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_SERVICE_PROVIDER"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 89
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_RUIM"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 90
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_NETWORK1_PUK"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 91
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_NETWORK2_PUK"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 92
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_HRPD_PUK"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 93
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_CORPORATE_PUK"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 94
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 95
    new-instance v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const-string/jumbo v1, "PERSOSUBSTATE_RUIM_RUIM_PUK"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 70
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_IN_PROGRESS:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_READY:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK1_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_NETWORK2_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_HRPD_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_CORPORATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_SERVICE_PROVIDER_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_RUIM_RUIM_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    const-class v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->$VALUES:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    return-object v0
.end method


# virtual methods
.method isPersoSubStateUnknown()Z
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
