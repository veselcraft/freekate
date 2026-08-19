.class Lcom/perm/kate/MarketAlbumsFragment$5;
.super Ljava/lang/Object;
.source "MarketAlbumsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketAlbumsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketAlbumsFragment;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/perm/kate/MarketAlbumsFragment$5;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 1

    const/4 p1, 0x0

    if-nez p3, :cond_0

    return p1

    .line 140
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/MarketAlbumsFragment$5;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    iget-object p2, p2, Lcom/perm/kate/MarketAlbumsFragment;->albums:Ljava/util/ArrayList;

    const/4 p4, 0x1

    sub-int/2addr p3, p4

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/api/MarketAlbum;

    .line 141
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    new-instance p5, Lcom/perm/kate/MenuItemDetails;

    const v0, 0x7f0f01ec

    invoke-direct {p5, v0, p1}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p3, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance p1, Lcom/perm/kate/MenuItemDetails;

    const p5, 0x7f0f00ba

    invoke-direct {p1, p5, p4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p5, p0, Lcom/perm/kate/MarketAlbumsFragment$5;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-virtual {p5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p5

    invoke-direct {p1, p5}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 145
    invoke-static {p3}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object p5

    new-instance v0, Lcom/perm/kate/MarketAlbumsFragment$5$1;

    invoke-direct {v0, p0, p3, p2}, Lcom/perm/kate/MarketAlbumsFragment$5$1;-><init>(Lcom/perm/kate/MarketAlbumsFragment$5;Ljava/util/ArrayList;Lcom/perm/kate/api/MarketAlbum;)V

    invoke-virtual {p1, p5, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 164
    invoke-virtual {p1, p4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 165
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return p4
.end method
