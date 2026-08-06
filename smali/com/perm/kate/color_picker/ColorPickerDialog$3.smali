.class Lcom/perm/kate/color_picker/ColorPickerDialog$3;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/color_picker/ColorPickerDialog;-><init>(Landroid/content/Context;ILcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/perm/kate/color_picker/ColorPickerDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/color_picker/ColorPickerDialog;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$3;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "paramDialogInterface"    # Landroid/content/DialogInterface;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$3;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v0, v0, Lcom/perm/kate/color_picker/ColorPickerDialog;->listener:Lcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$3;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v0, v0, Lcom/perm/kate/color_picker/ColorPickerDialog;->listener:Lcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;

    iget-object v1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$3;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    invoke-interface {v0, v1}, Lcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;->onCancel(Lcom/perm/kate/color_picker/ColorPickerDialog;)V

    .line 126
    :cond_0
    return-void
.end method
