.class public final enum Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;
.super Ljava/lang/Enum;
.source "HSConnectionCapabilityElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProtoStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

.field public static final enum Closed:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

.field public static final enum Open:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

.field public static final enum Unknown:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    const-string/jumbo v1, "Closed"

    invoke-direct {v0, v1, v2}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->Closed:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    new-instance v0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    const-string/jumbo v1, "Open"

    invoke-direct {v0, v1, v3}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->Open:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    new-instance v0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    const-string/jumbo v1, "Unknown"

    invoke-direct {v0, v1, v4}, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->Unknown:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    sget-object v1, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->Closed:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->Open:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->Unknown:Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->$VALUES:[Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    return-object v0
.end method

.method public static values()[Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;->$VALUES:[Lcom/android/server/wifi/anqp/HSConnectionCapabilityElement$ProtoStatus;

    return-object v0
.end method
