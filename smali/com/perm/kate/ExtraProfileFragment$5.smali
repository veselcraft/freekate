.class Lcom/perm/kate/ExtraProfileFragment$5;
.super Ljava/lang/Object;
.source "ExtraProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ExtraProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ExtraProfileFragment;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/perm/kate/ExtraProfileFragment$5;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 364
    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    .line 366
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/ExtraProfileFragment$5;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->createCopyTextContextMenu(Ljava/lang/String;Landroid/content/Context;)V

    :cond_0
    return-void
.end method
