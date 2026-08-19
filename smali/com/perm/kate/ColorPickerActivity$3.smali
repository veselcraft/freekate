.class Lcom/perm/kate/ColorPickerActivity$3;
.super Ljava/lang/Object;
.source "ColorPickerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$et_message:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/perm/kate/ColorPickerActivity;Landroid/widget/EditText;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/perm/kate/ColorPickerActivity$3;->this$0:Lcom/perm/kate/ColorPickerActivity;

    iput-object p2, p0, Lcom/perm/kate/ColorPickerActivity$3;->val$et_message:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 101
    iget-object p1, p0, Lcom/perm/kate/ColorPickerActivity$3;->this$0:Lcom/perm/kate/ColorPickerActivity;

    iget-object p2, p0, Lcom/perm/kate/ColorPickerActivity$3;->val$et_message:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/ColorPickerActivity;->access$100(Lcom/perm/kate/ColorPickerActivity;Ljava/lang/String;)V

    return-void
.end method
