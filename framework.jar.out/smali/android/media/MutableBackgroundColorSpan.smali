.class Landroid/media/MutableBackgroundColorSpan;
.super Landroid/text/style/CharacterStyle;
.source "ClosedCaptionRenderer.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private mColor:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 1055
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 1056
    iput p1, p0, Landroid/media/MutableBackgroundColorSpan;->mColor:I

    .line 1055
    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 1064
    iget v0, p0, Landroid/media/MutableBackgroundColorSpan;->mColor:I

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 1060
    iput p1, p0, Landroid/media/MutableBackgroundColorSpan;->mColor:I

    .line 1059
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 1069
    iget v0, p0, Landroid/media/MutableBackgroundColorSpan;->mColor:I

    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 1068
    return-void
.end method
