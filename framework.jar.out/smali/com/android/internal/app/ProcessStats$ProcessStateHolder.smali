.class public final Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessStateHolder"
.end annotation


# instance fields
.field public final appVersion:I

.field public state:Lcom/android/internal/app/ProcessStats$ProcessState;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "_appVersion"    # I

    .prologue
    .line 2860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2861
    iput p1, p0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->appVersion:I

    .line 2860
    return-void
.end method
