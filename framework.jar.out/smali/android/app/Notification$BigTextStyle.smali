.class public Landroid/app/Notification$BigTextStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigTextStyle"
.end annotation


# static fields
.field private static final LINES_CONSUMED_BY_ACTIONS:I = 0x3

.field private static final LINES_CONSUMED_BY_SUMMARY:I = 0x2

.field private static final MAX_LINES:I = 0xd


# instance fields
.field private mBigText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4073
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 0
    .param p1, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 4076
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 4077
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigTextStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 4076
    return-void
.end method

.method private calculateMaxLines()I
    .locals 4

    .prologue
    .line 4150
    const/16 v2, 0xd

    .line 4151
    .local v2, "lineCount":I
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->-get0(Landroid/app/Notification$Builder;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v0, 0x1

    .line 4152
    .local v0, "hasActions":Z
    :goto_0
    iget-boolean v3, p0, Landroid/app/Notification$BigTextStyle;->mSummaryTextSet:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mSummaryText:Ljava/lang/CharSequence;

    :goto_1
    if-eqz v3, :cond_5

    const/4 v1, 0x1

    .line 4153
    .local v1, "hasSummary":Z
    :goto_2
    if-eqz v0, :cond_0

    .line 4154
    const/16 v2, 0xa

    .line 4156
    :cond_0
    if-eqz v1, :cond_1

    .line 4157
    add-int/lit8 v2, v2, -0x2

    .line 4161
    :cond_1
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->-get4(Landroid/app/Notification$Builder;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4162
    add-int/lit8 v2, v2, -0x1

    .line 4164
    :cond_2
    return v2

    .line 4151
    .end local v0    # "hasActions":Z
    .end local v1    # "hasSummary":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "hasActions":Z
    goto :goto_0

    .line 4152
    :cond_4
    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v3}, Landroid/app/Notification$Builder;->-get6(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "hasSummary":Z
    goto :goto_2
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 5

    .prologue
    const v4, 0x102036e

    .line 4128
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-get1(Landroid/app/Notification$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4129
    .local v1, "oldBuilderContentText":Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/app/Notification$Builder;->-set0(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4131
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2}, Landroid/app/Notification$Builder;->-wrap5(Landroid/app/Notification$Builder;)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Notification$BigTextStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 4133
    .local v0, "contentView":Landroid/widget/RemoteViews;
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2, v1}, Landroid/app/Notification$Builder;->-set0(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 4135
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v3, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-static {v2, v3}, Landroid/app/Notification$Builder;->-wrap7(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 4136
    const/4 v2, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4137
    const-string/jumbo v2, "setMaxLines"

    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;->calculateMaxLines()I

    move-result v3

    invoke-virtual {v0, v4, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4138
    const v2, 0x1020015

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 4140
    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->applyTopPadding(Landroid/widget/RemoteViews;)V

    .line 4142
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-static {v2, v0}, Landroid/app/Notification$Builder;->-wrap10(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)V

    .line 4144
    iget-object v2, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    const v3, 0x102036f

    invoke-static {v2, v0, v3}, Landroid/app/Notification$Builder;->-wrap2(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;I)Z

    .line 4146
    return-object v0
.end method


# virtual methods
.method public addExtras(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4110
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->addExtras(Landroid/os/Bundle;)V

    .line 4112
    const-string/jumbo v0, "android.bigText"

    iget-object v1, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4109
    return-void
.end method

.method public bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 4102
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 4103
    return-object p0
.end method

.method public populateBigContentView(Landroid/app/Notification;)V
    .locals 2
    .param p1, "wip"    # Landroid/app/Notification;

    .prologue
    .line 4172
    iget-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBuilder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Landroid/app/Notification$BigTextStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/app/Notification$Builder;->-wrap8(Landroid/app/Notification$Builder;Landroid/app/Notification;Landroid/widget/RemoteViews;)V

    .line 4171
    return-void
.end method

.method protected restoreFromExtras(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 4120
    invoke-super {p0, p1}, Landroid/app/Notification$Style;->restoreFromExtras(Landroid/os/Bundle;)V

    .line 4122
    const-string/jumbo v0, "android.bigText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/app/Notification$BigTextStyle;->mBigText:Ljava/lang/CharSequence;

    .line 4119
    return-void
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 4085
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    .line 4086
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 4093
    invoke-static {p1}, Landroid/app/Notification;->safeCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Notification$BigTextStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    .line 4094
    return-object p0
.end method
