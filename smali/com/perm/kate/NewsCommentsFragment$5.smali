.class Lcom/perm/kate/NewsCommentsFragment$5;
.super Ljava/lang/Object;
.source "NewsCommentsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewsCommentsFragment;->CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


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
    .param p1, "this$0"    # Lcom/perm/kate/NewsCommentsFragment;

    .prologue
    .line 218
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
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 221
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/MenuItemDetails;

    iget v1, v1, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v1, :pswitch_data_0

    .line 272
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$friend_ids:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 274
    .local v8, "f_ids":[Ljava/lang/String;
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    add-int/lit8 v10, v0, -0x64

    .line 275
    .local v10, "i":I
    if-ltz v10, :cond_0

    if-eqz v8, :cond_0

    array-length v0, v8

    if-ge v10, v0, :cond_0

    .line 276
    aget-object v0, v8, v10

    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v1}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    .line 278
    .end local v8    # "f_ids":[Ljava/lang/String;
    .end local v10    # "i":I
    :cond_0
    return-void

    .line 223
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_owner_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->ShowCreateComment(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 226
    :pswitch_2
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v4}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    move v4, v0

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JZLandroid/content/Context;)V

    goto :goto_0

    .line 229
    :pswitch_3
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$photo_owner_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$album_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v1}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v4, v5, v1}, Lcom/perm/kate/Helper;->ShowAlbum(Ljava/lang/String;JLandroid/content/Context;)V

    goto :goto_0

    .line 232
    :pswitch_4
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_owner_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v4}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    iget-object v5, v5, Lcom/perm/kate/NewsCommentsFragment;->cursor:Landroid/database/Cursor;

    iget-object v6, p0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    iget-wide v6, v6, Lcom/perm/kate/NewsCommentsFragment;->account_id:J

    move v3, v0

    invoke-static/range {v1 .. v7}, Lcom/perm/kate/NewsCommentsFragment;->setLike(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/database/Cursor;J)V

    goto/16 :goto_0

    .line 235
    :pswitch_5
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_owner_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/perm/kate/NewsCommentsFragment;->showLikes(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 238
    :pswitch_6
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_owner_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    iget-object v5, v0, Lcom/perm/kate/NewsCommentsFragment;->cursor:Landroid/database/Cursor;

    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    iget-wide v6, v0, Lcom/perm/kate/NewsCommentsFragment;->account_id:J

    invoke-static/range {v1 .. v7}, Lcom/perm/kate/NewsCommentsFragment;->setLike(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;Landroid/database/Cursor;J)V

    goto/16 :goto_0

    .line 241
    :pswitch_7
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$urls:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v1}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->displayLinksMenu(Ljava/util/ArrayList;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 244
    :pswitch_8
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v1}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 247
    :pswitch_9
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v11, v1, Lcom/perm/kate/NewsItemTag;->user_id:Ljava/lang/String;

    .line 248
    .local v11, "source_id":Ljava/lang/String;
    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    neg-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    .line 249
    .local v9, "group_id":Ljava/lang/Long;
    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v1, v1, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 250
    .local v3, "topic_id":Ljava/lang/Long;
    const/4 v2, 0x4

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v1}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    move v6, v0

    invoke-static/range {v2 .. v7}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JZLandroid/content/Context;)V

    goto/16 :goto_0

    .line 254
    .end local v3    # "topic_id":Ljava/lang/Long;
    .end local v9    # "group_id":Ljava/lang/Long;
    .end local v11    # "source_id":Ljava/lang/String;
    :pswitch_a
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->photo_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$photo_owner_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->showCreatePhotoComment(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 257
    :pswitch_b
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->photo_id:Ljava/lang/Long;

    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$photo_owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v1}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v3, v0, v4, v5, v1}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto/16 :goto_0

    .line 260
    :pswitch_c
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_owner_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->showCreateVideoComment(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 263
    :pswitch_d
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v2, p0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/NewsCommentsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1, v4, v5, v2}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto/16 :goto_0

    .line 266
    :pswitch_e
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$tag:Lcom/perm/kate/NewsItemTag;

    invoke-static {v0, v1}, Lcom/perm/kate/NewsCommentsFragment;->access$100(Lcom/perm/kate/NewsCommentsFragment;Lcom/perm/kate/NewsItemTag;)V

    goto/16 :goto_0

    .line 269
    :pswitch_f
    iget-object v0, p0, Lcom/perm/kate/NewsCommentsFragment$5;->this$0:Lcom/perm/kate/NewsCommentsFragment;

    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v1, p0, Lcom/perm/kate/NewsCommentsFragment$5;->val$post_owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v0, v4, v5, v6, v7}, Lcom/perm/kate/NewsCommentsFragment;->access$200(Lcom/perm/kate/NewsCommentsFragment;JJ)V

    goto/16 :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_9
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
