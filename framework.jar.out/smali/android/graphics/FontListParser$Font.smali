.class public Landroid/graphics/FontListParser$Font;
.super Ljava/lang/Object;
.source "FontListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/FontListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Font"
.end annotation


# instance fields
.field public fontName:Ljava/lang/String;

.field public isItalic:Z

.field public weight:I


# direct methods
.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "fontName"    # Ljava/lang/String;
    .param p2, "weight"    # I
    .param p3, "isItalic"    # Z

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Landroid/graphics/FontListParser$Font;->fontName:Ljava/lang/String;

    .line 48
    iput p2, p0, Landroid/graphics/FontListParser$Font;->weight:I

    .line 49
    iput-boolean p3, p0, Landroid/graphics/FontListParser$Font;->isItalic:Z

    .line 46
    return-void
.end method
