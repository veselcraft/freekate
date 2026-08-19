.class Lcom/perm/kate/color_picker/ColorPickerDialog$3;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/perm/kate/color_picker/ColorPickerDialog;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$3;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 126
    iget-object p1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$3;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v0, p1, Lcom/perm/kate/color_picker/ColorPickerDialog;->listener:Lcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;

    if-eqz v0, :cond_0

    .line 127
    invoke-interface {v0, p1}, Lcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;->onCancel(Lcom/perm/kate/color_picker/ColorPickerDialog;)V

    :cond_0
    return-void
.end method
