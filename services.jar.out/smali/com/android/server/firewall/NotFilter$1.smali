.class final Lcom/android/server/firewall/NotFilter$1;
.super Lcom/android/server/firewall/FilterFactory;
.source "NotFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/firewall/NotFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "$anonymous0"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/server/firewall/FilterFactory;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public newFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;
    .locals 6
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "child":Lcom/android/server/firewall/Filter;
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    .line 47
    .end local v0    # "child":Lcom/android/server/firewall/Filter;
    .local v2, "outerDepth":I
    :goto_0
    invoke-static {p1, v2}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    invoke-static {p1}, Lcom/android/server/firewall/IntentFirewall;->parseFilter(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/firewall/Filter;

    move-result-object v1

    .line 49
    .local v1, "filter":Lcom/android/server/firewall/Filter;
    if-nez v0, :cond_0

    .line 50
    move-object v0, v1

    .local v0, "child":Lcom/android/server/firewall/Filter;
    goto :goto_0

    .line 52
    .end local v0    # "child":Lcom/android/server/firewall/Filter;
    :cond_0
    new-instance v3, Lorg/xmlpull/v1/XmlPullParserException;

    .line 53
    const-string/jumbo v4, "<not> tag can only contain a single child filter."

    .line 52
    invoke-direct {v3, v4, p1, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v3

    .line 56
    .end local v1    # "filter":Lcom/android/server/firewall/Filter;
    :cond_1
    new-instance v3, Lcom/android/server/firewall/NotFilter;

    invoke-direct {v3, v0, v5}, Lcom/android/server/firewall/NotFilter;-><init>(Lcom/android/server/firewall/Filter;Lcom/android/server/firewall/NotFilter;)V

    return-object v3
.end method
