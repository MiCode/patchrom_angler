.class Landroid/app/DatePickerDialog$1;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Landroid/widget/DatePicker$ValidationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/DatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/DatePickerDialog;


# direct methods
.method constructor <init>(Landroid/app/DatePickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/DatePickerDialog;

    .prologue
    .line 207
    iput-object p1, p0, Landroid/app/DatePickerDialog$1;->this$0:Landroid/app/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValidationChanged(Z)V
    .locals 3
    .param p1, "valid"    # Z

    .prologue
    .line 210
    iget-object v1, p0, Landroid/app/DatePickerDialog$1;->this$0:Landroid/app/DatePickerDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/DatePickerDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 211
    .local v0, "positive":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 209
    :cond_0
    return-void
.end method
