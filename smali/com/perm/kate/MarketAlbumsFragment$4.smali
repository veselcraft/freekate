.class Lcom/perm/kate/MarketAlbumsFragment$4;
.super Ljava/lang/Object;
.source "MarketAlbumsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketAlbumsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketAlbumsFragment;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/perm/kate/MarketAlbumsFragment$4;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 118
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 119
    iget-object p2, p0, Lcom/perm/kate/MarketAlbumsFragment$4;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class p4, Lcom/perm/kate/MarketItemsActivity;

    invoke-virtual {p1, p2, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 120
    iget-object p2, p0, Lcom/perm/kate/MarketAlbumsFragment$4;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-static {p2}, Lcom/perm/kate/MarketAlbumsFragment;->access$000(Lcom/perm/kate/MarketAlbumsFragment;)J

    move-result-wide p4

    const-string p2, "group_id"

    invoke-virtual {p1, p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-lez p3, :cond_0

    .line 124
    iget-object p2, p0, Lcom/perm/kate/MarketAlbumsFragment$4;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    iget-object p2, p2, Lcom/perm/kate/MarketAlbumsFragment;->albums:Ljava/util/ArrayList;

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/api/MarketAlbum;

    iget-wide p2, p2, Lcom/perm/kate/api/MarketAlbum;->id:J

    goto :goto_0

    :cond_0
    const-wide/16 p2, -0x1

    :goto_0
    const-string p4, "album_id"

    .line 127
    invoke-virtual {p1, p4, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 128
    iget-object p2, p0, Lcom/perm/kate/MarketAlbumsFragment$4;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
