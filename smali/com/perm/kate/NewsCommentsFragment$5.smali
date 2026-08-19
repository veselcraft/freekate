.class Lcom/perm/kate/NewsCommentsFragment$5;
.super Ljava/lang/Object;
.source "NewsCommentsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewsCommentsFragment;

.field final synthetic val$album_id:Ljava/lang/String;

.field final synthetic val$friend_ids:Ljava/lang/String;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$photo_owner_id:Ljava/lang/String;

.field final synthetic val$post_id:Ljava/lang/String;

.field final synthetic val$post_owner_id:Ljava/lang/String;

.field final synthetic val$tag:Lcom/perm/kate/NewsItemTag;

.field final synthetic val$urls:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewsCommentsFragment;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Ljava/lang/String;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    iput-object p2, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_id:Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_owner_id:Ljava/lang/String;

    iput-object p5, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$photo_owner_id:Ljava/lang/String;

    iput-object p6, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$album_id:Ljava/lang/String;

    iput-object p7, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$urls:Ljava/util/ArrayList;

    iput-object p8, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$tag:Lcom/perm/kate/NewsItemTag;

    iput-object p9, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$friend_ids:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 223
    iget-object v2, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/MenuItemDetails;

    iget v2, v2, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 271
    :pswitch_1
    iget-object v2, v0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    iget-object v3, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v5, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_owner_id:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Lcom/perm/kate/NewsCommentsFragment;->access$200(Lcom/perm/kate/NewsCommentsFragment;JJ)V

    goto/16 :goto_0

    .line 268
    :pswitch_2
    iget-object v2, v0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    iget-object v3, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$tag:Lcom/perm/kate/NewsItemTag;

    invoke-static {v2, v3}, Lcom/perm/kate/NewsCommentsFragment;->access$100(Lcom/perm/kate/NewsCommentsFragment;Lcom/perm/kate/NewsItemTag;)V

    goto/16 :goto_0

    .line 262
    :pswitch_3
    iget-object v2, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_id:Ljava/lang/String;

    iget-object v3, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_owner_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/perm/kate/Helper;->showCreateVideoComment(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_0

    :pswitch_4
    const/4 v2, 0x2

    .line 265
    iget-object v3, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_owner_id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v6, v0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto/16 :goto_0

    .line 256
    :pswitch_5
    iget-object v2, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v2, v2, Lcom/perm/kate/NewsItemTag;->photo_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$photo_owner_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/perm/kate/Helper;->showCreatePhotoComment(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_0

    :pswitch_6
    const/4 v2, 0x0

    .line 259
    iget-object v3, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v3, v3, Lcom/perm/kate/NewsItemTag;->photo_id:Ljava/lang/Long;

    iget-object v4, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$photo_owner_id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v6, v0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v6}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v2, v3, v4, v5, v6}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto/16 :goto_0

    .line 249
    :pswitch_7
    iget-object v2, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v2, v2, Lcom/perm/kate/NewsItemTag;->user_id:Ljava/lang/String;

    .line 250
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 251
    iget-object v3, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v3, v3, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v5, 0x4

    .line 252
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v9, 0x1

    iget-object v2, v0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-static/range {v5 .. v10}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JZLandroid/content/Context;)V

    goto/16 :goto_0

    .line 237
    :pswitch_8
    iget-object v2, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_id:Ljava/lang/String;

    iget-object v3, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_owner_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/perm/kate/NewsCommentsFragment;->showLikes(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 246
    :pswitch_9
    iget-object v2, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v2, v2, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    iget-object v3, v0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 243
    :pswitch_a
    iget-object v2, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$urls:Ljava/util/ArrayList;

    iget-object v3, v0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->displayLinksMenu(Ljava/util/ArrayList;Landroid/app/Activity;)V

    goto :goto_0

    .line 240
    :pswitch_b
    iget-object v4, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_id:Ljava/lang/String;

    iget-object v5, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_owner_id:Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v2, v0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    iget-object v2, v0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    iget-object v8, v2, Lcom/perm/kate/NewsCommentsFragment;->cursor:Landroid/database/Cursor;

    iget-wide v9, v2, Lcom/perm/kate/NewsCommentsFragment;->account_id:J

    invoke-static/range {v4 .. v10}, Lcom/perm/kate/NewsCommentsFragment;->setLike(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/database/Cursor;J)V

    goto :goto_0

    .line 234
    :pswitch_c
    iget-object v11, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_id:Ljava/lang/String;

    iget-object v12, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_owner_id:Ljava/lang/String;

    const/4 v13, 0x1

    iget-object v2, v0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v14

    iget-object v2, v0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    iget-object v15, v2, Lcom/perm/kate/NewsCommentsFragment;->cursor:Landroid/database/Cursor;

    iget-wide v2, v2, Lcom/perm/kate/NewsCommentsFragment;->account_id:J

    move-wide/from16 v16, v2

    invoke-static/range {v11 .. v17}, Lcom/perm/kate/NewsCommentsFragment;->setLike(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/database/Cursor;J)V

    goto :goto_0

    .line 231
    :pswitch_d
    iget-object v2, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$photo_owner_id:Ljava/lang/String;

    iget-object v3, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$album_id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v5, v0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v5}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/perm/kate/Helper;->ShowAlbum(Ljava/lang/String;JLandroid/content/Context;)V

    goto :goto_0

    .line 225
    :pswitch_e
    iget-object v2, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_id:Ljava/lang/String;

    iget-object v3, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_owner_id:Ljava/lang/String;

    iget-object v4, v0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/perm/kate/Helper;->ShowCreateComment(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    :pswitch_f
    const/4 v5, 0x1

    .line 228
    iget-object v2, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-object v2, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    const/4 v9, 0x1

    iget-object v2, v0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-static/range {v5 .. v10}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JZLandroid/content/Context;)V

    .line 274
    :goto_0
    iget-object v2, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/MenuItemDetails;

    iget v2, v2, Lcom/perm/kate/MenuItemDetails;->code:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    .line 275
    iget-object v2, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$friend_ids:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 276
    iget-object v4, v0, Lcom/perm/kate/NewsCommentsFragment$5;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/MenuItemDetails;

    iget v1, v1, Lcom/perm/kate/MenuItemDetails;->code:I

    sub-int/2addr v1, v3

    if-ltz v1, :cond_0

    if-eqz v2, :cond_0

    .line 277
    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 278
    aget-object v1, v2, v1

    iget-object v2, v0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
