.class Lcom/perm/kate/color_picker/widget/ColorPickerPreference$1;
.super Ljava/lang/Object;
.source "ColorPickerPreference.java"

# interfaces
.implements Lcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->onClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/color_picker/widget/ColorPickerPreference;


# direct methods
.method constructor <init>(Lcom/perm/kate/color_picker/widget/ColorPickerPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/color_picker/widget/ColorPickerPreference;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$1;->this$0:Lcom/perm/kate/color_picker/widget/ColorPickerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/perm/kate/color_picker/ColorPickerDialog;)V
    .locals 0
    .param p1, "dialog"    # Lcom/perm/kate/color_picker/ColorPickerDialog;

    .prologue
    .line 51
    return-void
.end method

.method public onOk(Lcom/perm/kate/color_picker/ColorPickerDialog;I)V
    .locals 1
    .param p1, "dialog"    # Lcom/perm/kate/color_picker/ColorPickerDialog;
    .param p2, "color"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/perm/kate/color_picker/widget/ColorPickerPreference$1;->this$0:Lcom/perm/kate/color_picker/widget/ColorPickerPreference;

    invoke-static {v0, p2}, Lcom/perm/kate/color_picker/widget/ColorPickerPreference;->access$000(Lcom/perm/kate/color_picker/widget/ColorPickerPreference;I)V

    .line 46
    return-void
.end method
