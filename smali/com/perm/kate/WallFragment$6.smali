.class Lcom/perm/kate/WallFragment$6;
.super Ljava/lang/Object;
.source "WallFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$post_id:Ljava/lang/String;

.field final synthetic val$post_owner_id:Ljava/lang/String;

.field final synthetic val$tag:Lcom/perm/kate/NewsItemTag;

.field final synthetic val$wall_owner_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/NewsItemTag;Ljava/lang/String;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    iput-object p2, p0, Lcom/perm/kate/WallFragment$6;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/WallFragment$6;->val$post_id:Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/kate/WallFragment$6;->val$wall_owner_id:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/WallFragment$6;->val$tag:Lcom/perm/kate/NewsItemTag;

    iput-object p6, p0, Lcom/perm/kate/WallFragment$6;->val$post_owner_id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12

    .line 409
    :try_start_0
    iget-object p1, p0, Lcom/perm/kate/WallFragment$6;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_11

    const/4 v0, 0x2

    if-eq p1, v0, :cond_10

    const/4 v0, 0x3

    if-eq p1, v0, :cond_f

    const/4 v0, 0x4

    if-eq p1, v0, :cond_e

    const/4 v0, 0x6

    if-eq p1, v0, :cond_d

    const/4 v0, 0x7

    if-eq p1, v0, :cond_c

    const/16 v0, 0x8

    if-eq p1, v0, :cond_b

    const/16 v0, 0xb

    const/4 v1, 0x0

    if-eq p1, v0, :cond_8

    const/16 v0, 0xd

    if-eq p1, v0, :cond_7

    const/16 v0, 0x12

    if-eq p1, v0, :cond_6

    const/16 v0, 0x15

    if-eq p1, v0, :cond_5

    const/16 v0, 0x17

    if-eq p1, v0, :cond_4

    const/16 v0, 0x19

    if-eq p1, v0, :cond_3

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_1

    const/16 p2, 0x1d

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 461
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    iget-object p2, p0, Lcom/perm/kate/WallFragment$6;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object p2, p2, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {p1, v2, v3, v1}, Lcom/perm/kate/WallFragment;->access$800(Lcom/perm/kate/WallFragment;JZ)V

    goto/16 :goto_1

    .line 458
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v0, p0, Lcom/perm/kate/WallFragment$6;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1, v0, v1, p2}, Lcom/perm/kate/WallFragment;->access$800(Lcom/perm/kate/WallFragment;JZ)V

    goto/16 :goto_1

    .line 455
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v0}, Lcom/perm/kate/WallFragment;->access$000(Lcom/perm/kate/WallFragment;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object p1, p0, Lcom/perm/kate/WallFragment$6;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object p1, p1, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/WallFragment;->access$700(Lcom/perm/kate/WallFragment;JJZ)V

    goto/16 :goto_1

    .line 452
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v0}, Lcom/perm/kate/WallFragment;->access$000(Lcom/perm/kate/WallFragment;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object p1, p0, Lcom/perm/kate/WallFragment$6;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object p1, p1, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/WallFragment;->access$700(Lcom/perm/kate/WallFragment;JJZ)V

    goto/16 :goto_1

    .line 449
    :cond_4
    new-instance v0, Lcom/perm/kate/ReportHelper;

    iget-object p1, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/WallFragment$6;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v1, p2, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    iget-object p2, p2, Lcom/perm/kate/NewsItemTag;->copy_text:Ljava/lang/String;

    invoke-direct {v0, p1, v1, p2}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/perm/kate/WallFragment$6;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object p1, p1, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object p1, p0, Lcom/perm/kate/WallFragment$6;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object p1, p1, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/ReportHelper;->showReportPostDialog(JJZ)V

    goto/16 :goto_1

    :cond_5
    const-wide/16 p1, -0x1

    .line 446
    iget-object v0, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v0}, Lcom/perm/kate/WallFragment;->access$000(Lcom/perm/kate/WallFragment;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    mul-long v0, v0, p1

    iget-object p1, p0, Lcom/perm/kate/WallFragment$6;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object p1, p1, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object v2, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, p1, p2, v2}, Lcom/perm/kate/Helper;->showGroupBlockActivity(JJLandroid/app/Activity;)V

    goto/16 :goto_1

    .line 443
    :cond_6
    iget-object p1, p0, Lcom/perm/kate/WallFragment$6;->val$post_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/WallFragment$6;->val$post_owner_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1, v0, p2, v1}, Lcom/perm/kate/NewsFragment;->showLikes(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;)V

    goto/16 :goto_1

    .line 440
    :cond_7
    iget-object p1, p0, Lcom/perm/kate/WallFragment$6;->val$post_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/WallFragment$6;->val$wall_owner_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {p1, v0, v1, p2, v2}, Lcom/perm/kate/Helper;->showWallPost(Ljava/lang/Long;Ljava/lang/Long;ZZLandroid/content/Context;)V

    goto/16 :goto_1

    .line 429
    :cond_8
    iget-object p1, p0, Lcom/perm/kate/WallFragment$6;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, p1, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    .line 431
    iget-object p1, p1, Lcom/perm/kate/NewsItemTag;->copy_owner_id:Ljava/lang/Long;

    const-wide/16 v2, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p1, v4, v2

    if-eqz p1, :cond_9

    .line 432
    iget-object p1, p0, Lcom/perm/kate/WallFragment$6;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, p1, Lcom/perm/kate/NewsItemTag;->copy_text:Ljava/lang/String;

    :cond_9
    move-object p1, v0

    .line 433
    iget-object v0, p0, Lcom/perm/kate/WallFragment$6;->val$post_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/WallFragment$6;->val$wall_owner_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/WallFragment$6;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v6, v5, Lcom/perm/kate/NewsItemTag;->publish_date:Ljava/lang/Long;

    iget-boolean v5, v5, Lcom/perm/kate/NewsItemTag;->is_suggested:Z

    iget-object v7, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v7}, Lcom/perm/kate/WallFragment;->access$600(Lcom/perm/kate/WallFragment;)Z

    move-result v7

    iget-object v8, p0, Lcom/perm/kate/WallFragment$6;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-wide v9, v8, Lcom/perm/kate/NewsItemTag;->signer_id:J

    cmp-long v11, v9, v2

    if-lez v11, :cond_a

    goto :goto_0

    :cond_a
    const/4 p2, 0x0

    :goto_0
    iget-object v8, v8, Lcom/perm/kate/NewsItemTag;->copyright_link:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    iget-object v10, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    move-object v1, v4

    move-object v2, p1

    move-object v3, v6

    move v4, v5

    move v5, v7

    move v6, p2

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    invoke-static/range {v0 .. v9}, Lcom/perm/kate/WallFragment;->editPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZZLjava/lang/String;Landroid/app/Activity;Lcom/perm/kate/BaseFragment;)V

    goto/16 :goto_1

    .line 420
    :cond_b
    iget-object p1, p0, Lcom/perm/kate/WallFragment$6;->val$post_id:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/WallFragment$6;->val$wall_owner_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/perm/kate/NewsFragment;->showLikes(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 437
    :cond_c
    iget-object p1, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    iget-object p2, p0, Lcom/perm/kate/WallFragment$6;->val$post_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/WallFragment$6;->val$wall_owner_id:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/perm/kate/WallFragment;->removePost(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 426
    :cond_d
    iget-object p1, p0, Lcom/perm/kate/WallFragment$6;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object p2, p1, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    iget-object v0, p1, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    iget-object p1, p1, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {p2, v0, p1, v1}, Lcom/perm/kate/Helper;->createCopyContextMenu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 423
    :cond_e
    iget-object v0, p0, Lcom/perm/kate/WallFragment$6;->val$post_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/WallFragment$6;->val$wall_owner_id:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object p1, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object p1, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v4, p1, Lcom/perm/kate/WallFragment;->cursor:Landroid/database/Cursor;

    invoke-static {p1}, Lcom/perm/kate/WallFragment;->access$200(Lcom/perm/kate/WallFragment;)J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/perm/kate/NewsFragment;->setLike(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/database/Cursor;JZ)V

    goto :goto_1

    .line 417
    :cond_f
    iget-object v0, p0, Lcom/perm/kate/WallFragment$6;->val$post_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/WallFragment$6;->val$wall_owner_id:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object p1, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    iget-object p1, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v4, p1, Lcom/perm/kate/WallFragment;->cursor:Landroid/database/Cursor;

    invoke-static {p1}, Lcom/perm/kate/WallFragment;->access$200(Lcom/perm/kate/WallFragment;)J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/perm/kate/NewsFragment;->setLike(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/database/Cursor;JZ)V

    goto :goto_1

    .line 411
    :cond_10
    iget-object p1, p0, Lcom/perm/kate/WallFragment$6;->val$post_id:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/WallFragment$6;->val$wall_owner_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/perm/kate/Helper;->ShowCreateComment(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_1

    .line 414
    :cond_11
    iget-object p1, p0, Lcom/perm/kate/WallFragment$6;->val$post_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/WallFragment$6;->val$wall_owner_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/perm/kate/WallFragment$6;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {p2, p1, v0, v1, v2}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 465
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 466
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
