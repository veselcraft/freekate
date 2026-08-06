.class Lcom/perm/kate/FavePostsFragment$3;
.super Ljava/lang/Object;
.source "FavePostsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FavePostsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavePostsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePostsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FavePostsFragment;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/perm/kate/FavePostsFragment$3;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
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
    .line 145
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/NewsItemTag;

    .line 146
    .local v1, "tag":Lcom/perm/kate/NewsItemTag;
    if-nez v1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-static {}, Lcom/perm/kate/NewsFragment;->clickOpensNews()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 149
    iget-object v0, v1, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 150
    .local v0, "post_id":Ljava/lang/String;
    iget-object v2, v1, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 151
    .local v2, "wall_owner_id":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/perm/kate/FavePostsFragment$3;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v7}, Lcom/perm/kate/FavePostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v3, v4, v5, v6, v7}, Lcom/perm/kate/Helper;->showWallPost(Ljava/lang/Long;Ljava/lang/Long;ZZLandroid/content/Context;)V

    goto :goto_0

    .line 153
    .end local v0    # "post_id":Ljava/lang/String;
    .end local v2    # "wall_owner_id":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/FavePostsFragment$3;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v3, v1}, Lcom/perm/kate/FavePostsFragment;->CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V

    goto :goto_0
.end method
