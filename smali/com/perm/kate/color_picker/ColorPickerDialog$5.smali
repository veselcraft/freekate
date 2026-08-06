.class Lcom/perm/kate/color_picker/ColorPickerDialog$5;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 105
    iput-object p1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$5;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 107
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$5;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v0, v0, Lcom/perm/kate/color_picker/ColorPickerDialog;->listener:Lcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$5;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v0, v0, Lcom/perm/kate/color_picker/ColorPickerDialog;->listener:Lcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;

    iget-object v1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$5;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iget-object v2, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$5;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    invoke-static {v2}, Lcom/perm/kate/color_picker/ColorPickerDialog;->access$200(Lcom/perm/kate/color_picker/ColorPickerDialog;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;->onOk(Lcom/perm/kate/color_picker/ColorPickerDialog;I)V

    .line 110
    :cond_0
    return-void
.end method
