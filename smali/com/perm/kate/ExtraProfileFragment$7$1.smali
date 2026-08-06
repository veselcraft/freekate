.class Lcom/perm/kate/ExtraProfileFragment$7$1;
.super Ljava/lang/Object;
.source "ExtraProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ExtraProfileFragment$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/ExtraProfileFragment$7;

.field final synthetic val$code:I

.field final synthetic val$id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/ExtraProfileFragment$7;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/ExtraProfileFragment$7;

    .prologue
    .line 445
    iput-object p1, p0, Lcom/perm/kate/ExtraProfileFragment$7$1;->this$1:Lcom/perm/kate/ExtraProfileFragment$7;

    iput-object p2, p0, Lcom/perm/kate/ExtraProfileFragment$7$1;->val$id:Ljava/lang/String;

    iput p3, p0, Lcom/perm/kate/ExtraProfileFragment$7$1;->val$code:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 448
    if-nez p2, :cond_0

    .line 449
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment$7$1;->this$1:Lcom/perm/kate/ExtraProfileFragment$7;

    iget-object v0, v0, Lcom/perm/kate/ExtraProfileFragment$7;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    iget-object v1, p0, Lcom/perm/kate/ExtraProfileFragment$7$1;->val$id:Ljava/lang/String;

    iget v2, p0, Lcom/perm/kate/ExtraProfileFragment$7$1;->val$code:I

    invoke-static {v0, v1, v2}, Lcom/perm/kate/ExtraProfileFragment;->access$600(Lcom/perm/kate/ExtraProfileFragment;Ljava/lang/String;I)V

    .line 452
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment$7$1;->val$id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/ExtraProfileFragment$7$1;->this$1:Lcom/perm/kate/ExtraProfileFragment$7;

    iget-object v1, v1, Lcom/perm/kate/ExtraProfileFragment$7;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-virtual {v1}, Lcom/perm/kate/ExtraProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
