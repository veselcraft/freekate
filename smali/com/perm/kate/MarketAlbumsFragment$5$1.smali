.class Lcom/perm/kate/MarketAlbumsFragment$5$1;
.super Ljava/lang/Object;
.source "MarketAlbumsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MarketAlbumsFragment$5;

.field final synthetic val$album:Lcom/perm/kate/api/MarketAlbum;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$7EwUTeZyI_1MXh01LeZxYdbgFpQ(Lcom/perm/kate/MarketAlbumsFragment$5$1;Lcom/perm/kate/api/MarketAlbum;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/MarketAlbumsFragment$5$1;->lambda$onClick$0(Lcom/perm/kate/api/MarketAlbum;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method constructor <init>(Lcom/perm/kate/MarketAlbumsFragment$5;Ljava/util/ArrayList;Lcom/perm/kate/api/MarketAlbum;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/perm/kate/MarketAlbumsFragment$5$1;->this$1:Lcom/perm/kate/MarketAlbumsFragment$5;

    iput-object p2, p0, Lcom/perm/kate/MarketAlbumsFragment$5$1;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/MarketAlbumsFragment$5$1;->val$album:Lcom/perm/kate/api/MarketAlbum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onClick$0(Lcom/perm/kate/api/MarketAlbum;Landroid/content/DialogInterface;I)V
    .locals 2

    .line 156
    iget-object p2, p0, Lcom/perm/kate/MarketAlbumsFragment$5$1;->this$1:Lcom/perm/kate/MarketAlbumsFragment$5;

    iget-object p2, p2, Lcom/perm/kate/MarketAlbumsFragment$5;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    iget-wide v0, p1, Lcom/perm/kate/api/MarketAlbum;->id:J

    invoke-static {p2, v0, v1}, Lcom/perm/kate/MarketAlbumsFragment;->access$400(Lcom/perm/kate/MarketAlbumsFragment;J)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 148
    iget-object p1, p0, Lcom/perm/kate/MarketAlbumsFragment$5$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 153
    :cond_0
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/perm/kate/MarketAlbumsFragment$5$1;->this$1:Lcom/perm/kate/MarketAlbumsFragment$5;

    iget-object p2, p2, Lcom/perm/kate/MarketAlbumsFragment$5;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p2, 0x7f0f03ef

    .line 154
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f00ba

    .line 155
    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f05a7

    iget-object v0, p0, Lcom/perm/kate/MarketAlbumsFragment$5$1;->val$album:Lcom/perm/kate/api/MarketAlbum;

    new-instance v1, Lcom/perm/kate/MarketAlbumsFragment$5$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/MarketAlbumsFragment$5$1$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/MarketAlbumsFragment$5$1;Lcom/perm/kate/api/MarketAlbum;)V

    .line 156
    invoke-virtual {p1, p2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x7f0f037a

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p1, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 158
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 150
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/MarketAlbumsFragment$5$1;->this$1:Lcom/perm/kate/MarketAlbumsFragment$5;

    iget-object p1, p1, Lcom/perm/kate/MarketAlbumsFragment$5;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    iget-object p2, p0, Lcom/perm/kate/MarketAlbumsFragment$5$1;->val$album:Lcom/perm/kate/api/MarketAlbum;

    invoke-static {p1, p2}, Lcom/perm/kate/MarketAlbumsFragment;->access$300(Lcom/perm/kate/MarketAlbumsFragment;Lcom/perm/kate/api/MarketAlbum;)V

    :goto_0
    return-void
.end method
