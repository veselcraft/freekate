.class Lcom/perm/kate/WallFragment$4;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallFragment;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/perm/kate/WallFragment$4;->this$0:Lcom/perm/kate/WallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 10
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
    .line 313
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perm/kate/NewsItemTag;

    .line 314
    .local v8, "tag":Lcom/perm/kate/NewsItemTag;
    if-nez v8, :cond_0

    .line 322
    :goto_0
    return-void

    .line 316
    :cond_0
    invoke-static {}, Lcom/perm/kate/NewsFragment;->clickOpensNews()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    iget-object v0, v8, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 318
    .local v0, "post_id":Ljava/lang/String;
    iget-object v9, v8, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 319
    .local v9, "wall_owner_id":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-boolean v3, v8, Lcom/perm/kate/NewsItemTag;->is_suggested:Z

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/perm/kate/WallFragment$4;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v5}, Lcom/perm/kate/WallFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    iget-wide v6, v8, Lcom/perm/kate/NewsItemTag;->_id:J

    invoke-static/range {v1 .. v7}, Lcom/perm/kate/Helper;->showWallPost(Ljava/lang/Long;Ljava/lang/Long;ZZLandroid/content/Context;J)V

    goto :goto_0

    .line 321
    .end local v0    # "post_id":Ljava/lang/String;
    .end local v9    # "wall_owner_id":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/WallFragment$4;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v1, v8}, Lcom/perm/kate/WallFragment;->CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V

    goto :goto_0
.end method
