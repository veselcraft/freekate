.class Lcom/perm/kate/FavePostsFragment$5;
.super Ljava/lang/Object;
.source "FavePostsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FavePostsFragment;->CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavePostsFragment;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$post_id:Ljava/lang/String;

.field final synthetic val$tag:Lcom/perm/kate/NewsItemTag;

.field final synthetic val$wall_owner_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePostsFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/NewsItemTag;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FavePostsFragment;

    .prologue
    .line 198
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
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 202
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment$5;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/MenuItemDetails;

    iget v1, v1, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v1, :pswitch_data_0

    .line 229
    :goto_0
    :pswitch_0
    return-void

    .line 204
    :pswitch_1
    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment$5;->val$post_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/FavePostsFragment$5;->val$wall_owner_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v3}, Lcom/perm/kate/FavePostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/perm/kate/Helper;->ShowCreateComment(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 227
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 207
    .end local v0    # "th":Ljava/lang/Throwable;
    :pswitch_2
    const/4 v1, 0x1

    :try_start_1
    iget-object v2, p0, Lcom/perm/kate/FavePostsFragment$5;->val$post_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/FavePostsFragment$5;->val$wall_owner_id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v3}, Lcom/perm/kate/FavePostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v1, v2, v4, v5, v3}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto :goto_0

    .line 210
    :pswitch_3
    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment$5;->val$post_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/FavePostsFragment$5;->val$wall_owner_id:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v4}, Lcom/perm/kate/FavePostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v5}, Lcom/perm/kate/FavePostsFragment;->access$500(Lcom/perm/kate/FavePostsFragment;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v6}, Lcom/perm/kate/FavePostsFragment;->access$200(Lcom/perm/kate/FavePostsFragment;)J

    move-result-wide v6

    invoke-static/range {v1 .. v7}, Lcom/perm/kate/NewsFragment;->setLike(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/database/Cursor;J)V

    goto :goto_0

    .line 213
    :pswitch_4
    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment$5;->val$post_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/FavePostsFragment$5;->val$wall_owner_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v3}, Lcom/perm/kate/FavePostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/perm/kate/NewsFragment;->showLikes(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 216
    :pswitch_5
    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment$5;->val$post_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/FavePostsFragment$5;->val$wall_owner_id:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v4}, Lcom/perm/kate/FavePostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v5}, Lcom/perm/kate/FavePostsFragment;->access$500(Lcom/perm/kate/FavePostsFragment;)Landroid/database/Cursor;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v6}, Lcom/perm/kate/FavePostsFragment;->access$200(Lcom/perm/kate/FavePostsFragment;)J

    move-result-wide v6

    invoke-static/range {v1 .. v7}, Lcom/perm/kate/NewsFragment;->setLike(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/database/Cursor;J)V

    goto :goto_0

    .line 219
    :pswitch_6
    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment$5;->val$post_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/FavePostsFragment$5;->val$wall_owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v5}, Lcom/perm/kate/FavePostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/perm/kate/Helper;->showWallPost(Ljava/lang/Long;Ljava/lang/Long;ZZLandroid/content/Context;)V

    goto/16 :goto_0

    .line 222
    :pswitch_7
    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment$5;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v1, v1, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/FavePostsFragment$5;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/FavePostsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 202
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method
