.class Lcom/android/internal/policy/PhoneWindow$ColorViewState;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorViewState"
.end annotation


# instance fields
.field final hideWindowFlag:I

.field final horizontalGravity:I

.field final id:I

.field present:Z

.field final systemUiHideFlag:I

.field targetVisibility:I

.field final transitionName:Ljava/lang/String;

.field final translucentFlag:I

.field final verticalGravity:I

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(IIIILjava/lang/String;II)V
    .locals 1
    .param p1, "systemUiHideFlag"    # I
    .param p2, "translucentFlag"    # I
    .param p3, "verticalGravity"    # I
    .param p4, "horizontalGravity"    # I
    .param p5, "transitionName"    # Ljava/lang/String;
    .param p6, "id"    # I
    .param p7, "hideWindowFlag"    # I

    .prologue
    .line 5046
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5034
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->view:Landroid/view/View;

    .line 5035
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->targetVisibility:I

    .line 5036
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->present:Z

    .line 5049
    iput p6, p0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->id:I

    .line 5050
    iput p1, p0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->systemUiHideFlag:I

    .line 5051
    iput p2, p0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->translucentFlag:I

    .line 5052
    iput p3, p0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->verticalGravity:I

    .line 5053
    iput p4, p0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->horizontalGravity:I

    .line 5054
    iput-object p5, p0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->transitionName:Ljava/lang/String;

    .line 5055
    iput p7, p0, Lcom/android/internal/policy/PhoneWindow$ColorViewState;->hideWindowFlag:I

    .line 5048
    return-void
.end method
