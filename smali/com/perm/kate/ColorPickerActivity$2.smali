.class Lcom/perm/kate/ColorPickerActivity$2;
.super Ljava/lang/Object;
.source "ColorPickerActivity.java"

# interfaces
.implements Lcom/perm/kate/color_picker/ColorPickerDialog$OnColorPickerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ColorPickerActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ColorPickerActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/ColorPickerActivity;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/perm/kate/ColorPickerActivity$2;->this$0:Lcom/perm/kate/ColorPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/perm/kate/color_picker/ColorPickerDialog;)V
    .locals 0

    return-void
.end method

.method public onOk(Lcom/perm/kate/color_picker/ColorPickerDialog;I)V
    .locals 0

    .line 81
    iget-object p1, p0, Lcom/perm/kate/ColorPickerActivity$2;->this$0:Lcom/perm/kate/ColorPickerActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/ColorPickerActivity;->access$000(Lcom/perm/kate/ColorPickerActivity;I)V

    return-void
.end method
