.class public final enum Lcom/android/server/wifi/anqp/eap/Credential$CredType;
.super Ljava/lang/Enum;
.source "Credential.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/eap/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CredType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/eap/Credential$CredType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/eap/Credential$CredType;

.field public static final enum Anonymous:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

.field public static final enum Certificate:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

.field public static final enum HWToken:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

.field public static final enum NFC:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

.field public static final enum None:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

.field public static final enum Reserved:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

.field public static final enum SIM:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

.field public static final enum Softoken:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

.field public static final enum USIM:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

.field public static final enum Username:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

.field public static final enum VendorSpecific:Lcom/android/server/wifi/anqp/eap/Credential$CredType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    const-string/jumbo v1, "Reserved"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->Reserved:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    .line 15
    new-instance v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    const-string/jumbo v1, "SIM"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->SIM:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    .line 16
    new-instance v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    const-string/jumbo v1, "USIM"

    invoke-direct {v0, v1, v5}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->USIM:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    .line 17
    new-instance v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    const-string/jumbo v1, "NFC"

    invoke-direct {v0, v1, v6}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->NFC:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    .line 18
    new-instance v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    const-string/jumbo v1, "HWToken"

    invoke-direct {v0, v1, v7}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->HWToken:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    .line 19
    new-instance v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    const-string/jumbo v1, "Softoken"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->Softoken:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    .line 20
    new-instance v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    const-string/jumbo v1, "Certificate"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->Certificate:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    .line 21
    new-instance v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    const-string/jumbo v1, "Username"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->Username:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    .line 22
    new-instance v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    const-string/jumbo v1, "None"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->None:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    .line 23
    new-instance v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    const-string/jumbo v1, "Anonymous"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->Anonymous:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    .line 24
    new-instance v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    const-string/jumbo v1, "VendorSpecific"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/eap/Credential$CredType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->VendorSpecific:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    .line 13
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->Reserved:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->SIM:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->USIM:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->NFC:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->HWToken:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->Softoken:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->Certificate:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->Username:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->None:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->Anonymous:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->VendorSpecific:Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->$VALUES:[Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/eap/Credential$CredType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 13
    const-class v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/eap/Credential$CredType;
    .locals 1

    .prologue
    .line 13
    sget-object v0, Lcom/android/server/wifi/anqp/eap/Credential$CredType;->$VALUES:[Lcom/android/server/wifi/anqp/eap/Credential$CredType;

    return-object v0
.end method
