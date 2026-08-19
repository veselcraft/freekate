.class Lcom/perm/kate/color_picker/ColorPickerDialog$4;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/perm/kate/color_picker/ColorPickerDialog;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$4;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$4;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object p2, p1, Lcom/perm/kate/color_picker/ColorPickerDialog;->listener:Lcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;

    if-eqz p2, :cond_0

    .line 119
    invoke-interface {p2, p1}, Lcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;->onCancel(Lcom/perm/kate/color_picker/ColorPickerDialog;)V

    :cond_0
    return-void
.end method
