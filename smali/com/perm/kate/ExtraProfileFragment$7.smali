.class Lcom/perm/kate/ExtraProfileFragment$7;
.super Ljava/lang/Object;
.source "ExtraProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ExtraProfileFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ExtraProfileFragment;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/perm/kate/ExtraProfileFragment$7;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 441
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f09037b

    .line 442
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const v2, 0x7f0903e7

    .line 443
    invoke-virtual {p1, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 445
    iget-object v3, p0, Lcom/perm/kate/ExtraProfileFragment$7;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    const v4, 0x7f0f03a9

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 446
    iget-object v3, p0, Lcom/perm/kate/ExtraProfileFragment$7;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    const v4, 0x7f0f01d9

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 447
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/perm/kate/ExtraProfileFragment$7;->this$0:Lcom/perm/kate/ExtraProfileFragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/perm/kate/ExtraProfileFragment$7$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/perm/kate/ExtraProfileFragment$7$1;-><init>(Lcom/perm/kate/ExtraProfileFragment$7;Ljava/lang/String;I)V

    .line 448
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 457
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 458
    invoke-virtual {p1, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 459
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
