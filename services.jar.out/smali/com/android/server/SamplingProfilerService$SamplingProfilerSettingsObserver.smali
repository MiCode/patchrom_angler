.class Lcom/android/server/SamplingProfilerService$SamplingProfilerSettingsObserver;
.super Landroid/database/ContentObserver;
.source "SamplingProfilerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SamplingProfilerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SamplingProfilerSettingsObserver"
.end annotation


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field final synthetic this$0:Lcom/android/server/SamplingProfilerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SamplingProfilerService;Landroid/content/ContentResolver;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/SamplingProfilerService;
    .param p2, "contentResolver"    # Landroid/content/ContentResolver;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/server/SamplingProfilerService$SamplingProfilerSettingsObserver;->this$0:Lcom/android/server/SamplingProfilerService;

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 109
    iput-object p2, p0, Lcom/android/server/SamplingProfilerService$SamplingProfilerSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/SamplingProfilerService$SamplingProfilerSettingsObserver;->onChange(Z)V

    .line 107
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 115
    iget-object v1, p0, Lcom/android/server/SamplingProfilerService$SamplingProfilerSettingsObserver;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "sampling_profiler_ms"

    const/4 v3, 0x0

    .line 114
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 118
    .local v0, "samplingProfilerMs":Ljava/lang/Integer;
    const-string/jumbo v1, "persist.sys.profiler_ms"

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method
