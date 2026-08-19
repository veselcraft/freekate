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
    .locals 0

    .line 391
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
    .locals 10

    .line 395
    :try_start_0
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$11;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    const/4 v0, 0x3

    if-eq p1, v0, :cond_b

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_a

    const/4 v0, 0x6

    if-eq p1, v0, :cond_9

    const/4 v0, 0x7

    if-eq p1, v0, :cond_8

    const/16 v0, 0x8

    if-eq p1, v0, :cond_7

    const/16 v0, 0xd

    if-eq p1, v0, :cond_6

    const/16 v0, 0xf

    if-eq p1, v0, :cond_4

    const/16 v0, 0x12

    if-eq p1, v0, :cond_3

    const/16 p2, 0x15

    if-eq p1, p2, :cond_2

    const/16 p2, 0x19

    if-eq p1, p2, :cond_1

    const/16 p2, 0x1a

    if-eq p1, p2, :cond_0

    goto/16 :goto_1

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchWallActivity;->access$100(Lcom/perm/kate/SearchWallActivity;)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/perm/kate/SearchWallActivity$11;->val$long_post_id:J

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/SearchWallActivity;->access$1800(Lcom/perm/kate/SearchWallActivity;JJZ)V

    goto/16 :goto_1

    .line 432
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchWallActivity;->access$100(Lcom/perm/kate/SearchWallActivity;)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/perm/kate/SearchWallActivity$11;->val$long_post_id:J

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/SearchWallActivity;->access$1800(Lcom/perm/kate/SearchWallActivity;JJZ)V

    goto/16 :goto_1

    :cond_2
    const-wide/16 p1, -0x1

    .line 429
    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchWallActivity;->access$100(Lcom/perm/kate/SearchWallActivity;)J

    move-result-wide v0

    mul-long v0, v0, p1

    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$11;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object p1, p1, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object v2, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {v0, v1, p1, p2, v2}, Lcom/perm/kate/Helper;->showGroupBlockActivity(JJLandroid/app/Activity;)V

    goto/16 :goto_1

    .line 426
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$11;->val$post_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->val$post_owner_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {p1, v0, p2, v1}, Lcom/perm/kate/NewsFragment;->showLikes(Ljava/lang/String;Ljava/lang/String;ZLandroid/app/Activity;)V

    goto/16 :goto_1

    .line 412
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$11;->val$wall_owner_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->val$post_owner_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 413
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchWallActivity;->access$1600(Lcom/perm/kate/SearchWallActivity;)Z

    move-result p1

    if-nez p1, :cond_5

    const/4 v5, 0x1

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    .line 414
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    iget-object v3, p0, Lcom/perm/kate/SearchWallActivity$11;->val$post_id:Ljava/lang/String;

    iget-object v4, p0, Lcom/perm/kate/SearchWallActivity$11;->val$post_owner_id:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/kate/SearchWallActivity;->access$1700(Lcom/perm/kate/SearchWallActivity;)Lcom/perm/utils/RepostHelper$RepostCallback;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/perm/kate/Helper;->showShareDialog(Lcom/perm/kate/BaseActivity;Ljava/lang/String;Ljava/lang/String;ZZLcom/perm/utils/RepostHelper$RepostCallback;Landroidx/fragment/app/Fragment;Z)V

    goto/16 :goto_1

    .line 423
    :cond_6
    iget-wide p1, p0, Lcom/perm/kate/SearchWallActivity$11;->val$long_post_id:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/SearchWallActivity$11;->val$wall_owner_id:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {p1, p2, v1, v1, v0}, Lcom/perm/kate/Helper;->showWallPost(Ljava/lang/Long;Ljava/lang/Long;ZZLandroid/content/Context;)V

    goto :goto_1

    .line 406
    :cond_7
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$11;->val$post_id:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/SearchWallActivity$11;->val$wall_owner_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {p1, p2, v0}, Lcom/perm/kate/NewsFragment;->showLikes(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_1

    .line 420
    :cond_8
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    iget-object p2, p0, Lcom/perm/kate/SearchWallActivity$11;->val$post_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->val$wall_owner_id:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/perm/kate/SearchWallActivity;->removePost(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 417
    :cond_9
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$11;->val$tag:Lcom/perm/kate/NewsItemTag;

    iget-object p2, p1, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    iget-object v0, p1, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    iget-object p1, p1, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {p2, v0, p1, v1}, Lcom/perm/kate/Helper;->createCopyContextMenu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 409
    :cond_a
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    iget-object p2, p0, Lcom/perm/kate/SearchWallActivity$11;->val$post_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->val$wall_owner_id:Ljava/lang/String;

    invoke-static {p1, p2, v0, v1}, Lcom/perm/kate/SearchWallActivity;->access$1500(Lcom/perm/kate/SearchWallActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 403
    :cond_b
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->val$post_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/SearchWallActivity$11;->val$wall_owner_id:Ljava/lang/String;

    invoke-static {p1, v0, v1, p2}, Lcom/perm/kate/SearchWallActivity;->access$1500(Lcom/perm/kate/SearchWallActivity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    .line 397
    :cond_c
    iget-object p1, p0, Lcom/perm/kate/SearchWallActivity$11;->val$post_id:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/SearchWallActivity$11;->val$wall_owner_id:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {p1, p2, v0}, Lcom/perm/kate/Helper;->ShowCreateComment(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_1

    .line 400
    :cond_d
    iget-wide v0, p0, Lcom/perm/kate/SearchWallActivity$11;->val$long_post_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/SearchWallActivity$11;->val$wall_owner_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/perm/kate/SearchWallActivity$11;->this$0:Lcom/perm/kate/SearchWallActivity;

    invoke-static {p2, p1, v0, v1, v2}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 439
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 440
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
