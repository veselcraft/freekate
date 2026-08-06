.class Lcom/perm/kate/MarketAlbumsFragment$4;
.super Ljava/lang/Object;
.source "MarketAlbumsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MarketAlbumsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MarketAlbumsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MarketAlbumsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MarketAlbumsFragment;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/perm/kate/MarketAlbumsFragment$4;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 118
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/perm/kate/MarketAlbumsFragment$4;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-virtual {v3}, Lcom/perm/kate/MarketAlbumsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/perm/kate/MarketItemsActivity;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 119
    const-string v3, "group_id"

    iget-object v4, p0, Lcom/perm/kate/MarketAlbumsFragment$4;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-static {v4}, Lcom/perm/kate/MarketAlbumsFragment;->access$000(Lcom/perm/kate/MarketAlbumsFragment;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 122
    if-lez p3, :cond_0

    .line 123
    iget-object v3, p0, Lcom/perm/kate/MarketAlbumsFragment$4;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    iget-object v3, v3, Lcom/perm/kate/MarketAlbumsFragment;->albums:Ljava/util/ArrayList;

    add-int/lit8 v4, p3, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/MarketAlbum;

    iget-wide v0, v3, Lcom/perm/kate/api/MarketAlbum;->id:J

    .line 126
    .local v0, "album_id":J
    :goto_0
    const-string v3, "album_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 127
    iget-object v3, p0, Lcom/perm/kate/MarketAlbumsFragment$4;->this$0:Lcom/perm/kate/MarketAlbumsFragment;

    invoke-virtual {v3, v2}, Lcom/perm/kate/MarketAlbumsFragment;->startActivity(Landroid/content/Intent;)V

    .line 128
    return-void

    .line 125
    .end local v0    # "album_id":J
    :cond_0
    const-wide/16 v0, -0x1

    .restart local v0    # "album_id":J
    goto :goto_0
.end method
