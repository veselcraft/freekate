.class Lcom/perm/kate/SearchWallActivity$11;
.super Ljava/lang/Object;
.source "SearchWallActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/SearchWallActivity;->CreateContextMenu(Lcom/perm/kate/NewsItemTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchWallActivity;

.field final synthetic val$long_post_id:J

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$post_id:Ljava/lang/String;

.field final synthetic val$post_owner_id:Ljava/lang/String;

.field final synthetic val$tag:Lcom/perm/kate/NewsItemTag;

.field final synthetic val$wall_owner_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchWallActivity;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/perm/kate/NewsItemTag;)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/SearchWallActivity;

    .prologue
    .line 393
    iput-object p1, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    iput-object p2, p0, Lcom/perm/kate/SearchWallActivity$11;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/SearchWallActivity$11;->val$post_id:Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/kate/SearchWallActivity$11;->val$wall_owner_id:Ljava/lang/String;

    iput-wide p5, p0, Lcom/perm/kate/SearchWallActivity$11;->val$long_post_id:J

    iput-object p7, p0, Lcom/perm/kate/SearchWallActivity$11;->val$post_owner_id:Ljava/lang/String;

    iput-object p8, p0, Lcom/perm/kate/SearchWallActivity$11;->val$tag:Lcom/perm/kate/NewsItemTag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 12
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 397
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 444
    :goto_0
    :pswitch_0
    return-void

    .line 399
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->val$post_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$11;->val$wall_owner_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->ShowCreateComment(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 440
    :catch_0
    move-exception v11

    .line 441
    .local v11, "th":Ljava/lang/Throwable;
    invoke-virtual {v11}, Ljava/lang/Throwable;->printStackTrace()V

    .line 442
    invoke-static {v11}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 402
    .end local v11    # "th":Ljava/lang/Throwable;
    :pswitch_2
    const/4 v0, 0x1

    :try_start_1
    iget-wide v6, p0, Lcom/perm/kate/SearchWallActivity$11;->val$long_post_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/SearchWallActivity$11;->val$wall_owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v2, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0, v1, v6, v7, v2}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto :goto_0

    .line 405
    :pswitch_3
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$11;->val$post_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/SearchWallActivity$11;->val$wall_owner_id:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-static {v0, v1, v2, v5}, Lcom/perm/kate/SearchWallActivity;->access$1500(Lcom/perm/kate/SearchWallActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 408
    :pswitch_4
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->val$post_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$11;->val$wall_owner_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0, v1, v2}, Lcom/perm/kate/NewsFragment;->showLikes(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 411
    :pswitch_5
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$11;->val$post_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/SearchWallActivity$11;->val$wall_owner_id:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0, v1, v2, v5}, Lcom/perm/kate/SearchWallActivity;->access$1500(Lcom/perm/kate/SearchWallActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 414
    :pswitch_6
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->val$wall_owner_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/SearchWallActivity$11;->val$post_owner_id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 415
    .local v4, "can_publish_to_group":Z
    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchWallActivity;->access$1600(Lcom/perm/kate/SearchWallActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 416
    .local v3, "can_publish_like":Z
    :goto_1
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$11;->val$post_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/SearchWallActivity$11;->val$post_owner_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v5}, Lcom/perm/kate/SearchWallActivity;->access$1700(Lcom/perm/kate/SearchWallActivity;)Lcom/perm/utils/RepostHelper$RepostCallback;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/perm/kate/Helper;->showShareDialog(Lcom/perm/kate/BaseActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/perm/utils/RepostHelper$RepostCallback;Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .end local v3    # "can_publish_like":Z
    :cond_0
    move v3, v1

    .line 415
    goto :goto_1

    .line 419
    .end local v4    # "can_publish_to_group":Z
    :pswitch_7
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v0, v0, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$11;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v1, v1, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/SearchWallActivity$11;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v2, v2, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0, v1, v2, v5}, Lcom/perm/kate/Helper;->createCopyContextMenu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 422
    :pswitch_8
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$11;->val$post_id:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/SearchWallActivity$11;->val$wall_owner_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/SearchWallActivity;->removePost(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 425
    :pswitch_9
    iget-wide v0, p0, Lcom/perm/kate/SearchWallActivity$11;->val$long_post_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$11;->val$wall_owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0, v1, v2, v5, v6}, Lcom/perm/kate/Helper;->showWallPost(Ljava/lang/Long;Ljava/lang/Long;ZZLandroid/content/Context;)V

    goto/16 :goto_0

    .line 428
    :pswitch_a
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->val$post_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$11;->val$post_owner_id:Ljava/lang/String;

    const/4 v2, 0x1

    iget-object v5, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0, v1, v2, v5}, Lcom/perm/kate/NewsFragment;->showLikes(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;)V

    goto/16 :goto_0

    .line 431
    :pswitch_b
    const-wide/16 v0, -0x1

    iget-object v2, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v2}, Lcom/perm/kate/SearchWallActivity;->access$100(Lcom/perm/kate/SearchWallActivity;)J

    move-result-wide v6

    mul-long/2addr v0, v6

    iget-object v2, p0, Lcom/perm/kate/SearchWallActivity$11;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object v2, v2, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v2, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0, v1, v6, v7, v2}, Lcom/perm/kate/Helper;->showGroupBlockActivity(JJLandroid/app/Activity;)V

    goto/16 :goto_0

    .line 434
    :pswitch_c
    iget-object v5, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchWallActivity;->access$100(Lcom/perm/kate/SearchWallActivity;)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/perm/kate/SearchWallActivity$11;->val$long_post_id:J

    const/4 v10, 0x1

    invoke-static/range {v5 .. v10}, Lcom/perm/kate/SearchWallActivity;->access$1800(Lcom/perm/kate/SearchWallActivity;JJZ)V

    goto/16 :goto_0

    .line 437
    :pswitch_d
    iget-object v5, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchWallActivity;->access$100(Lcom/perm/kate/SearchWallActivity;)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/perm/kate/SearchWallActivity$11;->val$long_post_id:J

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/perm/kate/SearchWallActivity;->access$1800(Lcom/perm/kate/SearchWallActivity;JJZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 397
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
