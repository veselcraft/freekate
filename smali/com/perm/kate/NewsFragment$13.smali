.class Lcom/perm/kate/NewsFragment$13;
.super Ljava/lang/Object;
.source "NewsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewsFragment;->CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsFragment;

.field final synthetic val$album_id:Ljava/lang/String;

.field final synthetic val$friend_ids:Ljava/lang/String;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$photo_owner_id:Ljava/lang/String;

.field final synthetic val$post_id:Ljava/lang/String;

.field final synthetic val$post_owner_id:Ljava/lang/String;

.field final synthetic val$tag:Lcom/perm/kate/NewsItemTag;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/NewsItemTag;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewsFragment;

    .prologue
    .line 645
    iput-object p1, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    iput-object p2, p0, Lcom/perm/kate/NewsFragment$13;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/NewsFragment$13;->val$post_id:Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/kate/NewsFragment$13;->val$post_owner_id:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/NewsFragment$13;->val$photo_owner_id:Ljava/lang/String;

    iput-object p6, p0, Lcom/perm/kate/NewsFragment$13;->val$album_id:Ljava/lang/String;

    iput-object p7, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iput-object p8, p0, Lcom/perm/kate/NewsFragment$13;->val$friend_ids:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 11
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 687
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->val$friend_ids:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->val$friend_ids:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 689
    .local v8, "f_ids":[Ljava/lang/String;
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    add-int/lit8 v9, v0, -0x64

    .line 690
    .local v9, "i":I
    if-ltz v9, :cond_0

    if-eqz v8, :cond_0

    array-length v0, v8

    if-ge v9, v0, :cond_0

    .line 691
    aget-object v0, v8, v9

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v1}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    .line 697
    .end local v8    # "f_ids":[Ljava/lang/String;
    .end local v9    # "i":I
    :cond_0
    :goto_1
    return-void

    .line 651
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->val$post_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->val$post_owner_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->ShowCreateComment(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 693
    :catch_0
    move-exception v10

    .line 694
    .local v10, "th":Ljava/lang/Throwable;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 695
    invoke-static {v10}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 654
    .end local v10    # "th":Ljava/lang/Throwable;
    :pswitch_2
    const/4 v0, 0x1

    :try_start_1
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->val$post_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$13;->val$post_owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v4}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto :goto_0

    .line 657
    :pswitch_3
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->val$photo_owner_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->val$album_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v1}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lcom/perm/kate/Helper;->ShowAlbum(Ljava/lang/String;JLandroid/content/Context;)V

    goto :goto_0

    .line 660
    :pswitch_4
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->val$post_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$13;->val$post_owner_id:Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v5, v0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    iget-wide v6, v0, Lcom/perm/kate/NewsFragment;->account_id:J

    invoke-static/range {v1 .. v7}, Lcom/perm/kate/NewsFragment;->setLike(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/database/Cursor;J)V

    goto/16 :goto_0

    .line 663
    :pswitch_5
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->val$post_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->val$post_owner_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/perm/kate/NewsFragment;->showLikes(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 666
    :pswitch_6
    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->val$post_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$13;->val$post_owner_id:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v5, v0, Lcom/perm/kate/NewsFragment;->cursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    iget-wide v6, v0, Lcom/perm/kate/NewsFragment;->account_id:J

    invoke-static/range {v1 .. v7}, Lcom/perm/kate/NewsFragment;->setLike(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/database/Cursor;J)V

    goto/16 :goto_0

    .line 669
    :pswitch_7
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v1, v1, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v2, v2, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v3}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/Helper;->createCopyContextMenu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 672
    :pswitch_8
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-wide v2, v1, Lcom/perm/kate/NewsItemTag;->_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/NewsFragment;->access$800(Lcom/perm/kate/NewsFragment;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 675
    :pswitch_9
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v1, v1, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$13;->val$post_owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v4, v4, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-wide v6, v6, Lcom/perm/kate/NewsItemTag;->_id:J

    invoke-static/range {v0 .. v7}, Lcom/perm/kate/NewsFragment;->access$900(Lcom/perm/kate/NewsFragment;Ljava/lang/String;JJJ)V

    goto/16 :goto_0

    .line 678
    :pswitch_a
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->val$post_owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v2, v2, Lcom/perm/kate/NewsItemTag;->copy_owner_group:Lcom/perm/kate/api/Group;

    iget-object v3, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v3, v3, Lcom/perm/kate/NewsItemTag;->copy_owner_user:Lcom/perm/kate/api/User;

    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/NewsFragment;->access$1000(Lcom/perm/kate/NewsFragment;Ljava/lang/Long;Lcom/perm/kate/api/Group;Lcom/perm/kate/api/User;)V

    goto/16 :goto_0

    .line 681
    :pswitch_b
    iget-object v0, p0, Lcom/perm/kate/NewsFragment$13;->val$post_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->val$post_owner_id:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v3}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/NewsFragment;->showLikes(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;)V

    goto/16 :goto_0

    .line 684
    :pswitch_c
    new-instance v0, Lcom/perm/kate/ReportHelper;

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->this$0:Lcom/perm/kate/NewsFragment;

    invoke-virtual {v1}, Lcom/perm/kate/NewsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v2, v2, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/NewsFragment$13;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v3, v3, Lcom/perm/kate/NewsItemTag;->copy_text:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->val$post_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/perm/kate/NewsFragment$13;->val$post_owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/perm/kate/ReportHelper;->showReportPostDialog(JJ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 649
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_9
    .end packed-switch
.end method
