.class Lcom/perm/kate/NewsFragment$13;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;

.field final synthetic val$album_id:Ljava/lang/String;

.field final synthetic val$friend_ids:Ljava/lang/String;

.field final synthetic val$is_ad:Z

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$photo_owner_id:Ljava/lang/String;

.field final synthetic val$post_id:Ljava/lang/String;

.field final synthetic val$post_owner_id:Ljava/lang/String;

.field final synthetic val$tag:Lcom/perm/kate/NewsItemTag;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/NewsItemTag;ZLjava/lang/String;)V
    .locals 0

    .line 670
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    iput-object p2, p0, Lcom/perm/kate/NewsFragment$13;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/NewsFragment$13;->val$post_id:Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/kate/NewsFragment$13;->val$post_owner_id:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/NewsFragment$13;->val$photo_owner_id:Ljava/lang/String;

    iput-object p6, p0, Lcom/perm/kate/NewsFragment$13;->val$album_id:Ljava/lang/String;

    iput-object p7, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iput-boolean p8, p0, Lcom/perm/kate/NewsFragment$13;->val$is_ad:Z

    iput-object p9, p0, Lcom/perm/kate/NewsFragment$13;->val$friend_ids:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .line 674
    :try_start_0
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$13;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_b

    const/4 v1, 0x2

    if-eq p1, v1, :cond_a

    const/4 v1, 0x3

    if-eq p1, v1, :cond_9

    const/4 v1, 0x7

    if-eq p1, v1, :cond_8

    const/16 v1, 0x8

    if-eq p1, v1, :cond_7

    const/16 v1, 0xb

    if-eq p1, v1, :cond_6

    const/16 v1, 0xe

    if-eq p1, v1, :cond_4

    const/16 v1, 0x12

    if-eq p1, v1, :cond_3

    const/16 v0, 0x17

    if-eq p1, v0, :cond_1

    const/16 v0, 0x18

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    .line 694
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object p1, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v2, p1, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    iget-object p1, p0, Lcom/perm/kate/NewsFragment$13;->val$post_owner_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object p1, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object p1, p1, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object p1, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-wide v7, p1, Lcom/perm/kate/NewsItemTag;->_id:J

    iget-object v9, p1, Lcom/perm/kate/NewsItemTag;->ad_data:Ljava/lang/String;

    invoke-static/range {v1 .. v9}, Lcom/perm/kate/NewsFragment;->access$1000(Lcom/perm/kate/NewsFragment;Ljava/lang/String;JJJLjava/lang/String;)V

    goto/16 :goto_0

    .line 706
    :cond_1
    iget-boolean p1, p0, Lcom/perm/kate/NewsFragment$13;->val$is_ad:Z

    if-nez p1, :cond_2

    .line 707
    new-instance v0, Lcom/perm/kate/ReportHelper;

    iget-object p1, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v2, v1, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    iget-object v1, v1, Lcom/perm/kate/NewsItemTag;->copy_text:Ljava/lang/String;

    invoke-direct {v0, p1, v2, v1}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/perm/kate/NewsFragment$13;->val$post_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object p1, p0, Lcom/perm/kate/NewsFragment$13;->val$post_owner_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/ReportHelper;->showReportPostDialog(JJZ)V

    goto/16 :goto_0

    .line 709
    :cond_2
    new-instance p1, Lcom/perm/kate/ReportHelper;

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v2, v1, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    iget-object v1, v1, Lcom/perm/kate/NewsItemTag;->copy_text:Ljava/lang/String;

    invoke-direct {p1, v0, v2, v1}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->ad_data:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/perm/kate/ReportHelper;->showReportAdDialog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 703
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$13;->val$post_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->val$post_owner_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {p1, v1, v0, v2}, Lcom/perm/kate/NewsFragment;->showLikes(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;)V

    goto/16 :goto_0

    .line 697
    :cond_4
    iget-boolean p1, p0, Lcom/perm/kate/NewsFragment$13;->val$is_ad:Z

    if-nez p1, :cond_5

    .line 698
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->val$post_owner_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v2, v1, Lcom/perm/kate/NewsItemTag;->copy_owner_group:Lcom/perm/kate/api/Group;

    iget-object v1, v1, Lcom/perm/kate/NewsItemTag;->copy_owner_user:Lcom/perm/kate/api/User;

    invoke-static {p1, v0, v2, v1}, Lcom/perm/kate/NewsFragment;->access$1100(Lcom/perm/kate/NewsFragment;Ljava/lang/Long;Lcom/perm/kate/api/Group;Lcom/perm/kate/api/User;)V

    goto/16 :goto_0

    .line 700
    :cond_5
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->val$post_owner_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v1, v1, Lcom/perm/kate/NewsItemTag;->ad_data:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/perm/kate/NewsFragment;->access$1200(Lcom/perm/kate/NewsFragment;Ljava/lang/Long;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 691
    :cond_6
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object p1, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-wide v1, p1, Lcom/perm/kate/NewsItemTag;->_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-boolean v2, p0, Lcom/perm/kate/NewsFragment$13;->val$is_ad:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v3, v3, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v3, v3, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v4, p1, Lcom/perm/kate/NewsItemTag;->ad_data:Ljava/lang/String;

    iget-object v5, p1, Lcom/perm/kate/NewsItemTag;->track_code:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/NewsFragment;->access$900(Lcom/perm/kate/NewsFragment;Ljava/lang/Long;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 685
    :cond_7
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$13;->val$post_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->val$post_owner_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/perm/kate/NewsFragment;->showLikes(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 688
    :cond_8
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, p1, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    iget-object v1, p1, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    iget-object p1, p1, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/perm/kate/Helper;->createCopyContextMenu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 682
    :cond_9
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$13;->val$photo_owner_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->val$album_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/perm/kate/Helper;->ShowAlbum(Ljava/lang/String;JLandroid/content/Context;)V

    goto :goto_0

    .line 676
    :cond_a
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$13;->val$post_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->val$post_owner_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/perm/kate/Helper;->ShowCreateComment(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 679
    :cond_b
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$13;->val$post_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->val$post_owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v0, p1, v1, v2, v3}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    .line 712
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/NewsFragment$13;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/16 v0, 0x64

    if-lt p1, v0, :cond_c

    iget-object p1, p0, Lcom/perm/kate/NewsFragment$13;->val$friend_ids:Ljava/lang/String;

    if-eqz p1, :cond_c

    const-string v1, ","

    .line 713
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 714
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/MenuItemDetails;

    iget p2, p2, Lcom/perm/kate/MenuItemDetails;->code:I

    sub-int/2addr p2, v0

    if-ltz p2, :cond_c

    if-eqz p1, :cond_c

    .line 715
    array-length v0, p1

    if-ge p2, v0, :cond_c

    .line 716
    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 719
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 720
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_c
    :goto_1
    return-void
.end method
