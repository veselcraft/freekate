.class Lcom/perm/kate/ExtraProfileFragment$7$1;
.super Ljava/lang/Object;
.source "ExtraProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/ExtraProfileFragment$7;

.field final synthetic val$code:I

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/ExtraProfileFragment$7;Ljava/lang/String;I)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/perm/kate/ExtraProfileFragment$7$1;->this$1:Lcom/perm/kate/ExtraProfileFragment$7;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment$7$1;->val$id:Ljava/lang/String;

    iput p3, p0, Lcom/perm/kate/ExtraProfileFragment$7$1;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 452
    iget-object p1, p0, Lcom/perm/kate/ExtraProfileFragment$7$1;->this$1:Lcom/perm/kate/ExtraProfileFragment$7;

    iget-object p1, p1, Lcom/perm/kate/ExtraProfileFragment$7;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    iget-object p2, p0, Lcom/perm/kate/ExtraProfileFragment$7$1;->val$id:Ljava/lang/String;

    iget v0, p0, Lcom/perm/kate/ExtraProfileFragment$7$1;->val$code:I

    invoke-static {p1, p2, v0}, Lcom/perm/kate/ExtraProfileFragment;->access$600(Lcom/perm/kate/ExtraProfileFragment;Ljava/lang/String;I)V

    goto :goto_0

    .line 454
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/ExtraProfileFragment$7$1;->val$id:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/ExtraProfileFragment$7$1;->this$1:Lcom/perm/kate/ExtraProfileFragment$7;

    iget-object p2, p2, Lcom/perm/kate/ExtraProfileFragment$7;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    return-void
.end method
