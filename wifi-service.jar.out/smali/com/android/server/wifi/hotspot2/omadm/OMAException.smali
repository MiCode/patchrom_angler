.class public Lcom/android/server/wifi/hotspot2/omadm/OMAException;
.super Ljava/io/IOException;
.source "OMAException.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 6
    return-void
.end method
