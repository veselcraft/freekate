.class Lcom/perm/kate/color_picker/ColorPickerDialog$6;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/perm/kate/color_picker/ColorPickerDialog;Landroid/view/View;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$6;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    iput-object p2, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$6;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/perm/kate/color_picker/ColorPickerDialog;->moveCursor()V

    .line 141
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$6;->this$0:Lcom/perm/kate/color_picker/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/perm/kate/color_picker/ColorPickerDialog;->moveTarget()V

    .line 142
    iget-object v0, p0, Lcom/perm/kate/color_picker/ColorPickerDialog$6;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
