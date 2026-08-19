.class Lcom/perm/kate/FaveLinksFragment$5;
.super Ljava/lang/Object;
.source "FaveLinksFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveLinksFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveLinksFragment;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/perm/kate/FaveLinksFragment$5;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1

    .line 130
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const p3, 0x7f090383

    .line 131
    invoke-virtual {p2, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 134
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 135
    new-instance p4, Lcom/perm/kate/MenuItemDetails;

    const p5, 0x7f0f03ab

    const/4 v0, 0x4

    invoke-direct {p4, p5, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance p4, Lcom/perm/kate/MenuItemDetails;

    const p5, 0x7f0f01db

    const/4 v0, 0x2

    invoke-direct {p4, p5, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance p4, Lcom/perm/kate/MenuItemDetails;

    const p5, 0x7f0f029b

    const/4 v0, 0x3

    invoke-direct {p4, p5, v0}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    new-instance p4, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p5, p0, Lcom/perm/kate/FaveLinksFragment$5;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-virtual {p5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    invoke-direct {p4, p5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    invoke-static {p3}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object p5

    new-instance v0, Lcom/perm/kate/FaveLinksFragment$5$1;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/perm/kate/FaveLinksFragment$5$1;-><init>(Lcom/perm/kate/FaveLinksFragment$5;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, p5, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 155
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x1

    .line 156
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 157
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return p2
.end method
