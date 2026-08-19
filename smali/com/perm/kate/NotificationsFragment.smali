.class public Lcom/perm/kate/NotificationsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "NotificationsFragment.java"


# static fields
.field public static count:I = 0x1e


# instance fields
.field adapter:Lcom/perm/kate/NotificationsAdapter;

.field callback:Lcom/perm/kate/session/Callback;

.field callback_more:Lcom/perm/kate/session/Callback;

.field private lv_posts_news_list:Landroid/widget/ListView;

.field notifications:Lcom/perm/kate/api/Notifications;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/perm/kate/NotificationsFragment;->state:I

    .line 113
    new-instance v0, Lcom/perm/kate/NotificationsFragment$3;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/NotificationsFragment$3;-><init>(Lcom/perm/kate/NotificationsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NotificationsFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 150
    new-instance v0, Lcom/perm/kate/NotificationsFragment$5;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/NotificationsFragment$5;-><init>(Lcom/perm/kate/NotificationsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NotificationsFragment;->callback_more:Lcom/perm/kate/session/Callback;

    .line 174
    new-instance v0, Lcom/perm/kate/NotificationsFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/NotificationsFragment$6;-><init>(Lcom/perm/kate/NotificationsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/NotificationsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 216
    new-instance v0, Lcom/perm/kate/NotificationsFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/NotificationsFragment$8;-><init>(Lcom/perm/kate/NotificationsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/NotificationsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/NotificationsFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/perm/kate/NotificationsFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/NotificationsFragment;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/perm/kate/NotificationsFragment;->state:I

    return p0
.end method

.method static synthetic access$102(Lcom/perm/kate/NotificationsFragment;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/perm/kate/NotificationsFragment;->state:I

    return p1
.end method

.method static synthetic access$200(Lcom/perm/kate/NotificationsFragment;Lcom/perm/kate/api/Notification;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->displayContextMenu(Lcom/perm/kate/api/Notification;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/NotificationsFragment;Lcom/perm/kate/api/Notification;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->commentsNotification(Lcom/perm/kate/api/Notification;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/NotificationsFragment;Lcom/perm/kate/api/Notification;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->openNotification(Lcom/perm/kate/api/Notification;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/NotificationsFragment;Lcom/perm/kate/api/Notification;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->openCommentNotification(Lcom/perm/kate/api/Notification;)V

    return-void
.end method

.method private commentPostClick(Lcom/perm/kate/api/Notification;)V
    .locals 8

    .line 267
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    .line 268
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lcom/perm/kate/api/Comment;

    .line 269
    iget-wide v2, v0, Lcom/perm/kate/api/WallMessage;->id:J

    iget-wide v4, v0, Lcom/perm/kate/api/WallMessage;->to_id:J

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/NotificationsFragment;->replyForComment(JJILcom/perm/kate/api/Comment;)V

    return-void
.end method

.method private commentsNotification(Lcom/perm/kate/api/Notification;)V
    .locals 6

    .line 340
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "reply_topic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast p1, Lcom/perm/kate/api/GroupTopic;

    const/4 v0, 0x4

    .line 342
    iget-wide v1, p1, Lcom/perm/kate/api/GroupTopic;->tid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p1, Lcom/perm/kate/api/GroupTopic;->gid:J

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JZLandroid/content/Context;)V

    goto/16 :goto_1

    .line 343
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "comment_post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "mention_comments"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_0

    .line 346
    :cond_1
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "reply_comment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 347
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast p1, Lcom/perm/kate/api/Comment;

    const/4 v0, 0x1

    .line 348
    iget-object v1, p1, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    iget-wide v1, v1, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object p1, p1, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, p1, Lcom/perm/kate/api/WallMessage;->to_id:J

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JZLandroid/content/Context;)V

    goto/16 :goto_1

    .line 349
    :cond_2
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "comment_photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 350
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast p1, Lcom/perm/kate/api/Photo;

    .line 351
    iget-wide v2, p1, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object p1, p1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v1, v0, v2, v3, p1}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto/16 :goto_1

    .line 352
    :cond_3
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "mention_comment_photo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 353
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast p1, Lcom/perm/kate/api/Photo;

    .line 354
    iget-wide v2, p1, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object p1, p1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v1, v0, v2, v3, p1}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto/16 :goto_1

    .line 355
    :cond_4
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "mention_comment_video"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 356
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast p1, Lcom/perm/kate/api/Video;

    .line 357
    iget-wide v0, p1, Lcom/perm/kate/api/Video;->vid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v3, p1, Lcom/perm/kate/api/Video;->owner_id:J

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v2, v0, v3, v4, p1}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto/16 :goto_1

    .line 358
    :cond_5
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "comment_video"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 359
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast p1, Lcom/perm/kate/api/Video;

    .line 360
    iget-wide v0, p1, Lcom/perm/kate/api/Video;->vid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v3, p1, Lcom/perm/kate/api/Video;->owner_id:J

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v2, v0, v3, v4, p1}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto/16 :goto_1

    .line 361
    :cond_6
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "reply_comment_video"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 362
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->video:Lcom/perm/kate/api/Video;

    .line 363
    iget-wide v0, p1, Lcom/perm/kate/api/Video;->vid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v3, p1, Lcom/perm/kate/api/Video;->owner_id:J

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v2, v0, v3, v4, p1}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto/16 :goto_1

    .line 364
    :cond_7
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "reply_comment_market"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 365
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->market:Lcom/perm/kate/api/MarketItem;

    const/4 v0, 0x5

    .line 366
    iget-wide v1, p1, Lcom/perm/kate/api/MarketItem;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p1, Lcom/perm/kate/api/MarketItem;->owner_id:J

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v0, v1, v2, v3, p1}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto :goto_1

    .line 367
    :cond_8
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "reply_comment_photo"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 368
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->photo:Lcom/perm/kate/api/Photo;

    .line 369
    iget-wide v2, p1, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object p1, p1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v1, v0, v2, v3, p1}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto :goto_1

    .line 370
    :cond_9
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "like_comment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 371
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast p1, Lcom/perm/kate/api/Comment;

    const/4 v0, 0x1

    .line 372
    iget-object v1, p1, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    iget-wide v1, v1, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object p1, p1, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, p1, Lcom/perm/kate/api/WallMessage;->to_id:J

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JZLandroid/content/Context;)V

    goto :goto_1

    .line 344
    :cond_a
    :goto_0
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast p1, Lcom/perm/kate/api/WallMessage;

    const/4 v0, 0x1

    .line 345
    iget-wide v1, p1, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p1, Lcom/perm/kate/api/WallMessage;->to_id:J

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JZLandroid/content/Context;)V

    :cond_b
    :goto_1
    return-void
.end method

.method private displayContextMenu(Lcom/perm/kate/api/Notification;)V
    .locals 14

    .line 465
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 466
    iget-object v1, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v2, "like_post"

    .line 467
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "mention_comments"

    const-string v4, "like_comment"

    const-string v5, "comment_post"

    const-string v6, "wall_publish"

    const-string v7, "wall"

    const-string v8, "reply_comment"

    if-nez v2, :cond_0

    :try_start_1
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "mention"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "copy_post"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 468
    :cond_0
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v9, 0x7f0f03ae

    const/4 v10, 0x3

    invoke-direct {v2, v9, v10}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    :cond_1
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v9, 0x4

    const v10, 0x7f0f04dd

    const-string v11, "reply_topic"

    if-nez v2, :cond_2

    :try_start_2
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "like_comment_topic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 470
    :cond_2
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    invoke-direct {v2, v10, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    :cond_3
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v11, 0x2

    const v12, 0x7f0f022e

    const/4 v13, 0x1

    if-nez v2, :cond_5

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 472
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "comment_photo"

    .line 473
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "comment_video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "mention_comment_photo"

    .line 474
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "mention_comment_video"

    .line 475
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 476
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "reply_comment_video"

    .line 477
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "reply_comment_photo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "reply_comment_market"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 481
    :cond_4
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 483
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    invoke-direct {v1, v10, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    invoke-direct {v1, v12, v11}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 478
    :cond_5
    :goto_0
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const v3, 0x7f0f029e

    invoke-direct {v2, v3, v13}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 480
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    invoke-direct {v1, v12, v11}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_6
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_7

    return-void

    .line 488
    :cond_7
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 489
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/NotificationsFragment$9;

    invoke-direct {v3, p0, v0, p1}, Lcom/perm/kate/NotificationsFragment$9;-><init>(Lcom/perm/kate/NotificationsFragment;Ljava/util/ArrayList;Lcom/perm/kate/api/Notification;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 512
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 513
    invoke-virtual {p1, v13}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 514
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 516
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 517
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private onRefresh()V
    .locals 0

    .line 451
    invoke-virtual {p0}, Lcom/perm/kate/NotificationsFragment;->refreshInThread()V

    return-void
.end method

.method private openCommentNotification(Lcom/perm/kate/api/Notification;)V
    .locals 5

    .line 377
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "like_comment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "reply_comment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Comment;

    .line 380
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 381
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/perm/kate/CommentsActivity;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 382
    iget-object v2, v0, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v2, Lcom/perm/kate/api/WallMessage;->id:J

    const-string v4, "com.perm.kate.current_photo_pid"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 383
    iget-object v2, v0, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v2, Lcom/perm/kate/api/WallMessage;->to_id:J

    const-string v4, "com.perm.kate.current_owner_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "com.perm.kate.comment_type"

    const/4 v3, 0x1

    .line 384
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "last_page"

    .line 385
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "can_post"

    .line 386
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 387
    iget-wide v2, v0, Lcom/perm/kate/api/Comment;->cid:J

    const-string v0, "start_comment_id"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 388
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 390
    :cond_1
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "reply_topic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 392
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->TOPIC_COMMENT:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    .line 393
    iget-object v1, p1, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v1, Lcom/perm/kate/api/Comment;

    .line 394
    iget-object v2, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v2, Lcom/perm/kate/api/GroupTopic;

    .line 395
    iget-wide v3, v2, Lcom/perm/kate/api/GroupTopic;->gid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    .line 396
    iget-wide v2, v2, Lcom/perm/kate/api/GroupTopic;->tid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->topic_id:Ljava/lang/String;

    .line 397
    iget-wide v1, v1, Lcom/perm/kate/api/Comment;->cid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/links/VkLink;->comment_id:Ljava/lang/String;

    .line 398
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->openComment(Lcom/perm/kate/links/VkLink;Landroid/content/Context;)V

    .line 400
    :cond_2
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "like_comment_topic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 402
    new-instance v0, Lcom/perm/kate/links/VkLink;

    sget-object v1, Lcom/perm/kate/links/VkLinkType;->TOPIC_COMMENT:Lcom/perm/kate/links/VkLinkType;

    invoke-direct {v0, v1}, Lcom/perm/kate/links/VkLink;-><init>(Lcom/perm/kate/links/VkLinkType;)V

    .line 403
    iget-object v1, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v1, Lcom/perm/kate/api/Comment;

    .line 404
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->topic:Lcom/perm/kate/api/GroupTopic;

    .line 405
    iget-wide v2, p1, Lcom/perm/kate/api/GroupTopic;->gid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/links/VkLink;->owner_id:Ljava/lang/String;

    .line 406
    iget-wide v2, p1, Lcom/perm/kate/api/GroupTopic;->tid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/perm/kate/links/VkLink;->topic_id:Ljava/lang/String;

    .line 407
    iget-wide v1, v1, Lcom/perm/kate/api/Comment;->cid:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/perm/kate/links/VkLink;->comment_id:Ljava/lang/String;

    .line 408
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/perm/kate/Helper;->openComment(Lcom/perm/kate/links/VkLink;Landroid/content/Context;)V

    :cond_3
    return-void
.end method

.method private openNotification(Lcom/perm/kate/api/Notification;)V
    .locals 4

    .line 414
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "like_post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "comment_post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "copy_post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "mention_comments"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 416
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "like_comment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "reply_comment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 419
    :cond_1
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast p1, Lcom/perm/kate/api/WallMessage;

    goto :goto_2

    .line 417
    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast p1, Lcom/perm/kate/api/Comment;

    iget-object p1, p1, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    goto :goto_2

    .line 415
    :cond_3
    :goto_1
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast p1, Lcom/perm/kate/api/WallMessage;

    .line 420
    :goto_2
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/WallMessageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 421
    iget-wide v1, p1, Lcom/perm/kate/api/WallMessage;->id:J

    const-string v3, "post_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 422
    iget-wide v1, p1, Lcom/perm/kate/api/WallMessage;->to_id:J

    const-string p1, "owner_id"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 423
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private photoCommentClick(Lcom/perm/kate/api/Notification;)V
    .locals 8

    .line 298
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Photo;

    .line 299
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lcom/perm/kate/api/Comment;

    .line 300
    iget-wide v2, v0, Lcom/perm/kate/api/Photo;->pid:J

    iget-object p1, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/NotificationsFragment;->replyForComment(JJILcom/perm/kate/api/Comment;)V

    return-void
.end method

.method private readCacheAndRefreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 85
    new-instance v0, Lcom/perm/kate/NotificationsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NotificationsFragment$1;-><init>(Lcom/perm/kate/NotificationsFragment;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private replyCommentClick(Lcom/perm/kate/api/Notification;)V
    .locals 8

    .line 273
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Comment;

    .line 274
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lcom/perm/kate/api/Comment;

    .line 275
    iget-object p1, v0, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, p1, Lcom/perm/kate/api/WallMessage;->id:J

    iget-wide v4, p1, Lcom/perm/kate/api/WallMessage;->to_id:J

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/NotificationsFragment;->replyForComment(JJILcom/perm/kate/api/Comment;)V

    return-void
.end method

.method private replyForComment(JJILcom/perm/kate/api/Comment;)V
    .locals 3

    .line 279
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 280
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 281
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.perm.kate.pid"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.perm.kate.owner_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.perm.kate.comment_type"

    .line 283
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 284
    iget-wide p1, p6, Lcom/perm/kate/api/Comment;->cid:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.perm.kate.reply_to_cid"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    iget-wide p1, p6, Lcom/perm/kate/api/Comment;->from_id:J

    const-string p3, "com.perm.kate.reply_to_user_name"

    const-wide/16 p4, 0x0

    cmp-long p6, p1, p4

    if-lez p6, :cond_0

    .line 286
    sget-object p4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p4, p1, p2}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 288
    iget-object p1, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 290
    :cond_0
    sget-object p4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const-wide/16 p5, -0x1

    mul-long p1, p1, p5

    invoke-virtual {p4, p1, p2}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 292
    iget-object p1, p1, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private replyMarketCommentClick(Lcom/perm/kate/api/Notification;)V
    .locals 8

    .line 316
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->market:Lcom/perm/kate/api/MarketItem;

    .line 317
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lcom/perm/kate/api/Comment;

    .line 318
    iget-wide v2, v0, Lcom/perm/kate/api/MarketItem;->id:J

    iget-wide v4, v0, Lcom/perm/kate/api/MarketItem;->owner_id:J

    const/4 v6, 0x5

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/NotificationsFragment;->replyForComment(JJILcom/perm/kate/api/Comment;)V

    return-void
.end method

.method private replyMentionPhotoCommentClick(Lcom/perm/kate/api/Notification;)V
    .locals 8

    .line 334
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Photo;

    .line 335
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lcom/perm/kate/api/Comment;

    .line 336
    iget-wide v2, v0, Lcom/perm/kate/api/Photo;->pid:J

    iget-object p1, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/NotificationsFragment;->replyForComment(JJILcom/perm/kate/api/Comment;)V

    return-void
.end method

.method private replyMentionVideoCommentClick(Lcom/perm/kate/api/Notification;)V
    .locals 8

    .line 322
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 323
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lcom/perm/kate/api/Comment;

    .line 324
    iget-wide v2, v0, Lcom/perm/kate/api/Video;->vid:J

    iget-wide v4, v0, Lcom/perm/kate/api/Video;->owner_id:J

    const/4 v6, 0x2

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/NotificationsFragment;->replyForComment(JJILcom/perm/kate/api/Comment;)V

    return-void
.end method

.method private replyPhotoCommentClick(Lcom/perm/kate/api/Notification;)V
    .locals 8

    .line 328
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->photo:Lcom/perm/kate/api/Photo;

    .line 329
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lcom/perm/kate/api/Comment;

    .line 330
    iget-wide v2, v0, Lcom/perm/kate/api/Photo;->pid:J

    iget-object p1, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/NotificationsFragment;->replyForComment(JJILcom/perm/kate/api/Comment;)V

    return-void
.end method

.method private replyTopicClick(Lcom/perm/kate/api/Notification;)V
    .locals 8

    .line 261
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/GroupTopic;

    .line 262
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lcom/perm/kate/api/Comment;

    .line 263
    iget-wide v2, v0, Lcom/perm/kate/api/GroupTopic;->tid:J

    iget-wide v0, v0, Lcom/perm/kate/api/GroupTopic;->gid:J

    neg-long v4, v0

    const/4 v6, 0x4

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/NotificationsFragment;->replyForComment(JJILcom/perm/kate/api/Comment;)V

    return-void
.end method

.method private replyVideoCommentClick(Lcom/perm/kate/api/Notification;)V
    .locals 8

    .line 310
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->video:Lcom/perm/kate/api/Video;

    .line 311
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lcom/perm/kate/api/Comment;

    .line 312
    iget-wide v2, v0, Lcom/perm/kate/api/Video;->vid:J

    iget-wide v4, v0, Lcom/perm/kate/api/Video;->owner_id:J

    const/4 v6, 0x2

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/NotificationsFragment;->replyForComment(JJILcom/perm/kate/api/Comment;)V

    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    .line 195
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 197
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 199
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/NotificationsFragment$7;

    invoke-direct {v1, p0}, Lcom/perm/kate/NotificationsFragment$7;-><init>(Lcom/perm/kate/NotificationsFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private videoCommentClick(Lcom/perm/kate/api/Notification;)V
    .locals 8

    .line 304
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 305
    iget-object p1, p1, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lcom/perm/kate/api/Comment;

    .line 306
    iget-wide v2, v0, Lcom/perm/kate/api/Video;->vid:J

    iget-wide v4, v0, Lcom/perm/kate/api/Video;->owner_id:J

    const/4 v6, 0x2

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/NotificationsFragment;->replyForComment(JJILcom/perm/kate/api/Comment;)V

    return-void
.end method

.method private wallClick()V
    .locals 3

    .line 256
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 257
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/perm/kate/ProfileFragment;->ShowWallAcivity(Landroid/app/Activity;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method Refresh()V
    .locals 8

    .line 108
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    sget v1, Lcom/perm/kate/NotificationsFragment;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v6, p0, Lcom/perm/kate/NotificationsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getNotifications(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const/16 v1, 0x17

    const/16 v2, 0x1f4

    const v3, 0x7f0f0422

    .line 436
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 p1, 0x1

    return p1
.end method

.method loadMore()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment;->notifications:Lcom/perm/kate/api/Notifications;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/perm/kate/api/Notifications;->next_from:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    new-instance v0, Lcom/perm/kate/NotificationsFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/NotificationsFragment$4;-><init>(Lcom/perm/kate/NotificationsFragment;)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_1
    :goto_0
    const-string v0, "NotificationsFragment"

    const-string v1, "loadMore canceled because next_from empty"

    .line 137
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 138
    iput v0, p0, Lcom/perm/kate/NotificationsFragment;->state:I

    const/4 v0, 0x0

    .line 139
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 59
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 60
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez p1, :cond_0

    return-void

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/perm/kate/notifications/RepliesNotification;->cancel(Landroid/content/Context;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 428
    invoke-virtual {p0, p1}, Lcom/perm/kate/NotificationsFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 429
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c00e5

    const/4 v0, 0x0

    .line 68
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->initSwipeRefreshLayout(Landroid/view/View;)V

    const p2, 0x7f09021a

    .line 70
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/perm/kate/NotificationsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    .line 71
    iget-object p3, p0, Lcom/perm/kate/NotificationsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    iget-object p2, p0, Lcom/perm/kate/NotificationsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/perm/kate/NotificationsFragment;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 73
    new-instance p2, Lcom/perm/kate/NotificationsAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/perm/kate/BaseActivity;

    invoke-direct {p2, p3}, Lcom/perm/kate/NotificationsAdapter;-><init>(Lcom/perm/kate/BaseActivity;)V

    iput-object p2, p0, Lcom/perm/kate/NotificationsFragment;->adapter:Lcom/perm/kate/NotificationsAdapter;

    .line 74
    iget-object p3, p0, Lcom/perm/kate/NotificationsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    invoke-virtual {p3, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iput v0, p0, Lcom/perm/kate/NotificationsFragment;->state:I

    .line 77
    sget-object p2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz p2, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/perm/kate/NotificationsFragment;->readCacheAndRefreshInThread()V

    :cond_0
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 211
    iput-object v0, p0, Lcom/perm/kate/NotificationsFragment;->adapter:Lcom/perm/kate/NotificationsAdapter;

    .line 212
    iget-object v1, p0, Lcom/perm/kate/NotificationsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 213
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 442
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    .line 447
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 444
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/NotificationsFragment;->onRefresh()V

    const/4 p1, 0x1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 456
    invoke-direct {p0}, Lcom/perm/kate/NotificationsFragment;->onRefresh()V

    return-void
.end method

.method refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 97
    iput v0, p0, Lcom/perm/kate/NotificationsFragment;->state:I

    .line 98
    new-instance v0, Lcom/perm/kate/NotificationsFragment$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/NotificationsFragment$2;-><init>(Lcom/perm/kate/NotificationsFragment;)V

    .line 104
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected replyNotification(Lcom/perm/kate/api/Notification;)V
    .locals 2

    .line 227
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "reply_topic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->replyTopicClick(Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 229
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "wall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 230
    invoke-direct {p0}, Lcom/perm/kate/NotificationsFragment;->wallClick()V

    goto/16 :goto_0

    .line 231
    :cond_1
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "wall_publish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    invoke-direct {p0}, Lcom/perm/kate/NotificationsFragment;->wallClick()V

    goto/16 :goto_0

    .line 233
    :cond_2
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "comment_post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->commentPostClick(Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 235
    :cond_3
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "mention_comments"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 236
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->commentPostClick(Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 237
    :cond_4
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "reply_comment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 238
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->replyCommentClick(Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 239
    :cond_5
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "comment_photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 240
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->photoCommentClick(Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 241
    :cond_6
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "comment_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 242
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->videoCommentClick(Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 243
    :cond_7
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "reply_comment_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 244
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->replyVideoCommentClick(Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 245
    :cond_8
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "reply_comment_market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 246
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->replyMarketCommentClick(Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 247
    :cond_9
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "reply_comment_photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 248
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->replyPhotoCommentClick(Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 249
    :cond_a
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "mention_comment_photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 250
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->replyMentionPhotoCommentClick(Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 251
    :cond_b
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "mention_comment_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 252
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->replyMentionVideoCommentClick(Lcom/perm/kate/api/Notification;)V

    :cond_c
    :goto_0
    return-void
.end method
