.class public final enum Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
.super Ljava/lang/Enum;
.source "EAP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/eap/EAP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EAPMethodID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_3Com:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_AKA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_AKAPrim:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_ActiontecWireless:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_EKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_FAST:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_GPSK:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_HTTPDigest:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_IKEv2:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_KEA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_KEA_VALIDATE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_LEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_Link:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_MD5:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_MOBAC:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_MSCHAPv2:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_OTP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_PAX:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_PEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_POTP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_PSK:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_PWD:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_RSA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_SAKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_SIM:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_SPEKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_TEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_TTLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

.field public static final enum EAP_ZLXEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 48
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_MD5"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_MD5:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 49
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_OTP"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_OTP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 50
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_RSA"

    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_RSA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 51
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_KEA"

    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_KEA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 52
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_KEA_VALIDATE"

    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_KEA_VALIDATE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 53
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_TLS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 54
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_LEAP"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_LEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 55
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_SIM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SIM:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 56
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_TTLS"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TTLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 57
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_AKA"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 58
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_3Com"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_3Com:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 59
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_MSCHAPv2"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_MSCHAPv2:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 60
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_PEAP"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 61
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_POTP"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_POTP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 62
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_ActiontecWireless"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_ActiontecWireless:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 63
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_HTTPDigest"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_HTTPDigest:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 64
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_SPEKE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SPEKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 65
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_MOBAC"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_MOBAC:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 66
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_FAST"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_FAST:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 67
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_ZLXEAP"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_ZLXEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 68
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_Link"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_Link:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 69
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_PAX"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PAX:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 70
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_PSK"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PSK:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 71
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_SAKE"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SAKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 72
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_IKEv2"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_IKEv2:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 73
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_AKAPrim"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKAPrim:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 74
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_GPSK"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_GPSK:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 75
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_PWD"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PWD:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 76
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_EKE"

    const/16 v2, 0x1c

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_EKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 77
    new-instance v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const-string/jumbo v1, "EAP_TEAP"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    .line 47
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_MD5:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_OTP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_RSA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_KEA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_KEA_VALIDATE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_LEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SIM:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TTLS:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKA:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_3Com:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_MSCHAPv2:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_POTP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_ActiontecWireless:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_HTTPDigest:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SPEKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_MOBAC:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_FAST:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_ZLXEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_Link:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PAX:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PSK:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_SAKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_IKEv2:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_AKAPrim:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_GPSK:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_PWD:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_EKE:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->EAP_TEAP:Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->$VALUES:[Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    const-class v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;->$VALUES:[Lcom/android/server/wifi/anqp/eap/EAP$EAPMethodID;

    return-object v0
.end method
