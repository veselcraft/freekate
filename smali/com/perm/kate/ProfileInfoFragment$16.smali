.class Lcom/perm/kate/ProfileInfoFragment$16;
.super Ljava/lang/Object;
.source "ProfileInfoFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;

.field final synthetic val$et_message:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 898
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$16;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iput-object p2, p0, Lcom/perm/kate/ProfileInfoFragment$16;->val$et_message:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 900
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$16;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    iget-object p2, p0, Lcom/perm/kate/ProfileInfoFragment$16;->val$et_message:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/ProfileInfoFragment;->access$1600(Lcom/perm/kate/ProfileInfoFragment;Ljava/lang/String;)V

    return-void
.end method
