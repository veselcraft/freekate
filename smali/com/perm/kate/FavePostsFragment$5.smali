.class Lcom/perm/kate/FavePostsFragment$5;
.super Ljava/lang/Object;
.source "FavePostsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavePostsFragment;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$post_id:Ljava/lang/String;

.field final synthetic val$tag:Lcom/perm/kate/NewsItemTag;

.field final synthetic val$wall_owner_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePostsFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/NewsItemTag;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    iput-object p2, p0, Lcom/perm/kate/FavePostsFragment$5;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/FavePostsFragment$5;->val$post_id:Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/kate/FavePostsFragment$5;->val$wall_owner_id:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/FavePostsFragment$5;->val$tag:Lcom/perm/kate/NewsItemTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 221
    :try_start_0
    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$5;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_2

    const/16 v0, 0xb

    if-eq p1, v0, :cond_1

    const/16 p2, 0xc

    if-eq p1, p2, :cond_0

    goto/16 :goto_0

    .line 244
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    iget-object p2, p0, Lcom/perm/kate/FavePostsFragment$5;->val$post_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$5;->val$wall_owner_id:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/perm/kate/FavePostsFragment;->access$600(Lcom/perm/kate/FavePostsFragment;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 238
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$5;->val$post_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$5;->val$wall_owner_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {p1, v0, v1, p2, v2}, Lcom/perm/kate/Helper;->showWallPost(Ljava/lang/Long;Ljava/lang/Long;ZZLandroid/content/Context;)V

    goto/16 :goto_0

    .line 232
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$5;->val$post_id:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/FavePostsFragment$5;->val$wall_owner_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/perm/kate/NewsFragment;->showLikes(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 241
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$5;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object p1, p1, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 235
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$5;->val$post_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment$5;->val$wall_owner_id:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {p1}, Lcom/perm/kate/FavePostsFragment;->access$500(Lcom/perm/kate/FavePostsFragment;)Landroid/database/Cursor;

    move-result-object v4

    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {p1}, Lcom/perm/kate/FavePostsFragment;->access$200(Lcom/perm/kate/FavePostsFragment;)J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/perm/kate/NewsFragment;->setLike(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/database/Cursor;JZ)V

    goto :goto_0

    .line 229
    :cond_5
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$5;->val$post_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment$5;->val$wall_owner_id:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {p1}, Lcom/perm/kate/FavePostsFragment;->access$500(Lcom/perm/kate/FavePostsFragment;)Landroid/database/Cursor;

    move-result-object v4

    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {p1}, Lcom/perm/kate/FavePostsFragment;->access$200(Lcom/perm/kate/FavePostsFragment;)J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/perm/kate/NewsFragment;->setLike(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/database/Cursor;JZ)V

    goto :goto_0

    .line 223
    :cond_6
    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$5;->val$post_id:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/FavePostsFragment$5;->val$wall_owner_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/perm/kate/Helper;->ShowCreateComment(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 226
    :cond_7
    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$5;->val$post_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$5;->val$wall_owner_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {p2, p1, v0, v1, v2}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 248
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 249
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
