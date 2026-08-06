.class public Lcom/perm/kate/NotificationsFragment;
.super Lcom/perm/kate/BaseFragment;
.source "NotificationsFragment.java"


# static fields
.field public static count:I


# instance fields
.field account_id:J

.field adapter:Lcom/perm/kate/NotificationsAdapter;

.field callback:Lcom/perm/kate/session/Callback;

.field private lv_posts_news_list:Landroid/widget/ListView;

.field notifications:Lcom/perm/kate/api/Notifications;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field scroll_to_pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    const/16 v0, 0x1e

    sput v0, Lcom/perm/kate/NotificationsFragment;->count:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/perm/kate/NotificationsFragment;->scroll_to_pos:I

    .line 98
    new-instance v0, Lcom/perm/kate/NotificationsFragment$3;

    invoke-virtual {p0}, Lcom/perm/kate/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/NotificationsFragment$3;-><init>(Lcom/perm/kate/NotificationsFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NotificationsFragment;->callback:Lcom/perm/kate/session/Callback;

    .line 137
    new-instance v0, Lcom/perm/kate/NotificationsFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/NotificationsFragment$5;-><init>(Lcom/perm/kate/NotificationsFragment;)V

    iput-object v0, p0, Lcom/perm/kate/NotificationsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/NotificationsFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NotificationsFragment;

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/perm/kate/NotificationsFragment;->requeryOnUiThread()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/NotificationsFragment;Lcom/perm/kate/api/Notification;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NotificationsFragment;
    .param p1, "x1"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->displayContextMenu(Lcom/perm/kate/api/Notification;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/NotificationsFragment;Lcom/perm/kate/api/Notification;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NotificationsFragment;
    .param p1, "x1"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->commentsNotification(Lcom/perm/kate/api/Notification;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/NotificationsFragment;Lcom/perm/kate/api/Notification;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NotificationsFragment;
    .param p1, "x1"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->openNotification(Lcom/perm/kate/api/Notification;)V

    return-void
.end method

.method private commentPostClick(Lcom/perm/kate/api/Notification;)V
    .locals 8
    .param p1, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 188
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    .line 189
    .local v0, "message":Lcom/perm/kate/api/WallMessage;
    iget-object v7, p1, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v7, Lcom/perm/kate/api/Comment;

    .line 190
    .local v7, "feedback":Lcom/perm/kate/api/Comment;
    iget-wide v2, v0, Lcom/perm/kate/api/WallMessage;->id:J

    iget-wide v4, v0, Lcom/perm/kate/api/WallMessage;->to_id:J

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/NotificationsFragment;->replyForComment(JJILcom/perm/kate/api/Comment;)V

    .line 191
    return-void
.end method

.method private commentsNotification(Lcom/perm/kate/api/Notification;)V
    .locals 11
    .param p1, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 261
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "reply_topic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v9, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v9, Lcom/perm/kate/api/GroupTopic;

    .line 263
    .local v9, "topic":Lcom/perm/kate/api/GroupTopic;
    const/4 v0, 0x4

    iget-wide v2, v9, Lcom/perm/kate/api/GroupTopic;->tid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, v9, Lcom/perm/kate/api/GroupTopic;->gid:J

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/perm/kate/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JZLandroid/content/Context;)V

    .line 292
    .end local v9    # "topic":Lcom/perm/kate/api/GroupTopic;
    :cond_0
    :goto_0
    return-void

    .line 264
    :cond_1
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "comment_post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "mention_comments"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 265
    :cond_2
    iget-object v7, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v7, Lcom/perm/kate/api/WallMessage;

    .line 266
    .local v7, "message":Lcom/perm/kate/api/WallMessage;
    const/4 v0, 0x1

    iget-wide v2, v7, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, v7, Lcom/perm/kate/api/WallMessage;->to_id:J

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/perm/kate/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JZLandroid/content/Context;)V

    goto :goto_0

    .line 267
    .end local v7    # "message":Lcom/perm/kate/api/WallMessage;
    :cond_3
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "reply_comment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 268
    iget-object v6, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v6, Lcom/perm/kate/api/Comment;

    .line 269
    .local v6, "comment":Lcom/perm/kate/api/Comment;
    const/4 v0, 0x1

    iget-object v1, v6, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v1, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, v6, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v2, Lcom/perm/kate/api/WallMessage;->to_id:J

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/perm/kate/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JZLandroid/content/Context;)V

    goto :goto_0

    .line 270
    .end local v6    # "comment":Lcom/perm/kate/api/Comment;
    :cond_4
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "comment_photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 271
    iget-object v8, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v8, Lcom/perm/kate/api/Photo;

    .line 272
    .local v8, "photo":Lcom/perm/kate/api/Photo;
    const/4 v0, 0x0

    iget-wide v2, v8, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, v8, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/perm/kate/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto :goto_0

    .line 273
    .end local v8    # "photo":Lcom/perm/kate/api/Photo;
    :cond_5
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "mention_comment_photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 274
    iget-object v8, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v8, Lcom/perm/kate/api/Photo;

    .line 275
    .restart local v8    # "photo":Lcom/perm/kate/api/Photo;
    const/4 v0, 0x0

    iget-wide v2, v8, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, v8, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/perm/kate/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto/16 :goto_0

    .line 276
    .end local v8    # "photo":Lcom/perm/kate/api/Photo;
    :cond_6
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "mention_comment_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 277
    iget-object v10, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v10, Lcom/perm/kate/api/Video;

    .line 278
    .local v10, "video":Lcom/perm/kate/api/Video;
    const/4 v0, 0x2

    iget-wide v2, v10, Lcom/perm/kate/api/Video;->vid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, v10, Lcom/perm/kate/api/Video;->owner_id:J

    invoke-virtual {p0}, Lcom/perm/kate/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto/16 :goto_0

    .line 279
    .end local v10    # "video":Lcom/perm/kate/api/Video;
    :cond_7
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "comment_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 280
    iget-object v10, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v10, Lcom/perm/kate/api/Video;

    .line 281
    .restart local v10    # "video":Lcom/perm/kate/api/Video;
    const/4 v0, 0x2

    iget-wide v2, v10, Lcom/perm/kate/api/Video;->vid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, v10, Lcom/perm/kate/api/Video;->owner_id:J

    invoke-virtual {p0}, Lcom/perm/kate/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto/16 :goto_0

    .line 282
    .end local v10    # "video":Lcom/perm/kate/api/Video;
    :cond_8
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "reply_comment_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 283
    iget-object v10, p1, Lcom/perm/kate/api/Notification;->video:Lcom/perm/kate/api/Video;

    .line 284
    .restart local v10    # "video":Lcom/perm/kate/api/Video;
    const/4 v0, 0x2

    iget-wide v2, v10, Lcom/perm/kate/api/Video;->vid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, v10, Lcom/perm/kate/api/Video;->owner_id:J

    invoke-virtual {p0}, Lcom/perm/kate/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto/16 :goto_0

    .line 285
    .end local v10    # "video":Lcom/perm/kate/api/Video;
    :cond_9
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "reply_comment_market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 286
    iget-object v10, p1, Lcom/perm/kate/api/Notification;->market:Lcom/perm/kate/api/MarketItem;

    .line 287
    .local v10, "video":Lcom/perm/kate/api/MarketItem;
    const/4 v0, 0x5

    iget-wide v2, v10, Lcom/perm/kate/api/MarketItem;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, v10, Lcom/perm/kate/api/MarketItem;->owner_id:J

    invoke-virtual {p0}, Lcom/perm/kate/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto/16 :goto_0

    .line 288
    .end local v10    # "video":Lcom/perm/kate/api/MarketItem;
    :cond_a
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "reply_comment_photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v8, p1, Lcom/perm/kate/api/Notification;->photo:Lcom/perm/kate/api/Photo;

    .line 290
    .restart local v8    # "photo":Lcom/perm/kate/api/Photo;
    const/4 v0, 0x0

    iget-wide v2, v8, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, v8, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/perm/kate/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private displayContextMenu(Lcom/perm/kate/api/Notification;)V
    .locals 8
    .param p1, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 346
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v1, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    iget-object v2, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    .line 348
    .local v2, "t":Ljava/lang/String;
    const-string v5, "like_post"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "comment_post"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "mention"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "like_comment"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "wall"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "wall_publish"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "copy_post"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "reply_comment"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "mention_comments"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 349
    :cond_0
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f07034a

    const/4 v7, 0x3

    invoke-direct {v5, v6, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_1
    const-string v5, "reply_topic"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "wall"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "wall_publish"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "comment_post"

    .line 351
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "reply_comment"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "comment_photo"

    .line 352
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "comment_video"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "mention_comment_photo"

    .line 353
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "mention_comment_video"

    .line 354
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "mention_comments"

    .line 355
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "reply_comment_video"

    .line 356
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "reply_comment_photo"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "reply_comment_market"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 357
    :cond_2
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f070244

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    const-string v5, "wall"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "wall_publish"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 359
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f0701d2

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_4

    .line 391
    .end local v1    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .end local v2    # "t":Ljava/lang/String;
    :goto_0
    return-void

    .line 363
    .restart local v1    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .restart local v2    # "t":Ljava/lang/String;
    :cond_4
    new-instance v5, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 364
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/perm/kate/NotificationsFragment$6;

    invoke-direct {v7, p0, v1, p1}, Lcom/perm/kate/NotificationsFragment$6;-><init>(Lcom/perm/kate/NotificationsFragment;Ljava/util/ArrayList;Lcom/perm/kate/api/Notification;)V

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 384
    .local v4, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 385
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 386
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 387
    .end local v0    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v1    # "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    .end local v2    # "t":Ljava/lang/String;
    .end local v4    # "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    :catch_0
    move-exception v3

    .line 388
    .local v3, "th":Ljava/lang/Throwable;
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 389
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private onRefresh()V
    .locals 0

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/perm/kate/NotificationsFragment;->refreshInThread()V

    .line 334
    return-void
.end method

.method private openNotification(Lcom/perm/kate/api/Notification;)V
    .locals 6
    .param p1, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 296
    iget-object v2, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "like_post"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "comment_post"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "copy_post"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "mention_comments"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 297
    :cond_0
    iget-object v1, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v1, Lcom/perm/kate/api/WallMessage;

    .line 302
    .local v1, "wall_message":Lcom/perm/kate/api/WallMessage;
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/perm/kate/WallMessageActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 303
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "post_id"

    iget-wide v4, v1, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 304
    const-string v2, "owner_id"

    iget-wide v4, v1, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0, v0}, Lcom/perm/kate/NotificationsFragment;->startActivity(Landroid/content/Intent;)V

    .line 306
    return-void

    .line 298
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "wall_message":Lcom/perm/kate/api/WallMessage;
    :cond_1
    iget-object v2, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "like_comment"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v3, "reply_comment"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 299
    :cond_2
    iget-object v2, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v2, Lcom/perm/kate/api/Comment;

    iget-object v1, v2, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    .restart local v1    # "wall_message":Lcom/perm/kate/api/WallMessage;
    goto :goto_0

    .line 301
    .end local v1    # "wall_message":Lcom/perm/kate/api/WallMessage;
    :cond_3
    iget-object v1, p1, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v1, Lcom/perm/kate/api/WallMessage;

    .restart local v1    # "wall_message":Lcom/perm/kate/api/WallMessage;
    goto :goto_0
.end method

.method private photoCommentClick(Lcom/perm/kate/api/Notification;)V
    .locals 8
    .param p1, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 219
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Photo;

    .line 220
    .local v0, "photo":Lcom/perm/kate/api/Photo;
    iget-object v7, p1, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v7, Lcom/perm/kate/api/Comment;

    .line 221
    .local v7, "feedback":Lcom/perm/kate/api/Comment;
    iget-wide v2, v0, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v1, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/NotificationsFragment;->replyForComment(JJILcom/perm/kate/api/Comment;)V

    .line 222
    return-void
.end method

.method private readCacheAndRefreshInThread()V
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/NotificationsFragment;->showProgressBar(Z)V

    .line 71
    new-instance v0, Lcom/perm/kate/NotificationsFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NotificationsFragment$1;-><init>(Lcom/perm/kate/NotificationsFragment;)V

    .line 79
    invoke-virtual {v0}, Lcom/perm/kate/NotificationsFragment$1;->start()V

    .line 80
    return-void
.end method

.method private replyCommentClick(Lcom/perm/kate/api/Notification;)V
    .locals 8
    .param p1, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 194
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Comment;

    .line 195
    .local v0, "comment":Lcom/perm/kate/api/Comment;
    iget-object v7, p1, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v7, Lcom/perm/kate/api/Comment;

    .line 196
    .local v7, "feedback":Lcom/perm/kate/api/Comment;
    iget-object v1, v0, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v1, Lcom/perm/kate/api/WallMessage;->id:J

    iget-object v1, v0, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    iget-wide v4, v1, Lcom/perm/kate/api/WallMessage;->to_id:J

    const/4 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/NotificationsFragment;->replyForComment(JJILcom/perm/kate/api/Comment;)V

    .line 197
    return-void
.end method

.method private replyForComment(JJILcom/perm/kate/api/Comment;)V
    .locals 9
    .param p1, "post_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "type"    # I
    .param p6, "feedback"    # Lcom/perm/kate/api/Comment;

    .prologue
    .line 200
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 201
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 202
    const-string v3, "com.perm.kate.pid"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 203
    const-string v3, "com.perm.kate.owner_id"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    const-string v3, "com.perm.kate.comment_type"

    invoke-virtual {v1, v3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    const-string v3, "com.perm.kate.reply_to_cid"

    iget-wide v4, p6, Lcom/perm/kate/api/Comment;->cid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    iget-wide v4, p6, Lcom/perm/kate/api/Comment;->from_id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 207
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p6, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-virtual {v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v2

    .line 208
    .local v2, "re":Lcom/perm/kate/api/User;
    if-eqz v2, :cond_0

    .line 209
    const-string v3, "com.perm.kate.reply_to_user_name"

    iget-object v4, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    .end local v2    # "re":Lcom/perm/kate/api/User;
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/perm/kate/NotificationsFragment;->startActivity(Landroid/content/Intent;)V

    .line 216
    return-void

    .line 211
    :cond_1
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const-wide/16 v4, -0x1

    iget-wide v6, p6, Lcom/perm/kate/api/Comment;->from_id:J

    mul-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    .line 212
    .local v0, "from_group":Lcom/perm/kate/api/Group;
    if-eqz v0, :cond_0

    .line 213
    const-string v3, "com.perm.kate.reply_to_user_name"

    iget-object v4, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private replyMarketCommentClick(Lcom/perm/kate/api/Notification;)V
    .locals 8
    .param p1, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 237
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->market:Lcom/perm/kate/api/MarketItem;

    .line 238
    .local v0, "video":Lcom/perm/kate/api/MarketItem;
    iget-object v7, p1, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v7, Lcom/perm/kate/api/Comment;

    .line 239
    .local v7, "feedback":Lcom/perm/kate/api/Comment;
    iget-wide v2, v0, Lcom/perm/kate/api/MarketItem;->id:J

    iget-wide v4, v0, Lcom/perm/kate/api/MarketItem;->owner_id:J

    const/4 v6, 0x5

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/NotificationsFragment;->replyForComment(JJILcom/perm/kate/api/Comment;)V

    .line 240
    return-void
.end method

.method private replyMentionPhotoCommentClick(Lcom/perm/kate/api/Notification;)V
    .locals 8
    .param p1, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 255
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Photo;

    .line 256
    .local v0, "photo":Lcom/perm/kate/api/Photo;
    iget-object v7, p1, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v7, Lcom/perm/kate/api/Comment;

    .line 257
    .local v7, "feedback":Lcom/perm/kate/api/Comment;
    iget-wide v2, v0, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v1, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/NotificationsFragment;->replyForComment(JJILcom/perm/kate/api/Comment;)V

    .line 258
    return-void
.end method

.method private replyMentionVideoCommentClick(Lcom/perm/kate/api/Notification;)V
    .locals 8
    .param p1, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 243
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 244
    .local v0, "video":Lcom/perm/kate/api/Video;
    iget-object v7, p1, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v7, Lcom/perm/kate/api/Comment;

    .line 245
    .local v7, "feedback":Lcom/perm/kate/api/Comment;
    iget-wide v2, v0, Lcom/perm/kate/api/Video;->vid:J

    iget-wide v4, v0, Lcom/perm/kate/api/Video;->owner_id:J

    const/4 v6, 0x2

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/NotificationsFragment;->replyForComment(JJILcom/perm/kate/api/Comment;)V

    .line 246
    return-void
.end method

.method private replyPhotoCommentClick(Lcom/perm/kate/api/Notification;)V
    .locals 8
    .param p1, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 249
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->photo:Lcom/perm/kate/api/Photo;

    .line 250
    .local v0, "photo":Lcom/perm/kate/api/Photo;
    iget-object v7, p1, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v7, Lcom/perm/kate/api/Comment;

    .line 251
    .local v7, "feedback":Lcom/perm/kate/api/Comment;
    iget-wide v2, v0, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v1, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/NotificationsFragment;->replyForComment(JJILcom/perm/kate/api/Comment;)V

    .line 252
    return-void
.end method

.method private replyTopicClick(Lcom/perm/kate/api/Notification;)V
    .locals 8
    .param p1, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 182
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/GroupTopic;

    .line 183
    .local v0, "topic":Lcom/perm/kate/api/GroupTopic;
    iget-object v7, p1, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v7, Lcom/perm/kate/api/Comment;

    .line 184
    .local v7, "feedback":Lcom/perm/kate/api/Comment;
    iget-wide v2, v0, Lcom/perm/kate/api/GroupTopic;->tid:J

    iget-wide v4, v0, Lcom/perm/kate/api/GroupTopic;->gid:J

    neg-long v4, v4

    const/4 v6, 0x4

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/NotificationsFragment;->replyForComment(JJILcom/perm/kate/api/Comment;)V

    .line 185
    return-void
.end method

.method private replyVideoCommentClick(Lcom/perm/kate/api/Notification;)V
    .locals 8
    .param p1, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 231
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->video:Lcom/perm/kate/api/Video;

    .line 232
    .local v0, "video":Lcom/perm/kate/api/Video;
    iget-object v7, p1, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v7, Lcom/perm/kate/api/Comment;

    .line 233
    .local v7, "feedback":Lcom/perm/kate/api/Comment;
    iget-wide v2, v0, Lcom/perm/kate/api/Video;->vid:J

    iget-wide v4, v0, Lcom/perm/kate/api/Video;->owner_id:J

    const/4 v6, 0x2

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/NotificationsFragment;->replyForComment(JJILcom/perm/kate/api/Comment;)V

    .line 234
    return-void
.end method

.method private requeryOnUiThread()V
    .locals 2

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/perm/kate/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/perm/kate/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/NotificationsFragment$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/NotificationsFragment$4;-><init>(Lcom/perm/kate/NotificationsFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private videoCommentClick(Lcom/perm/kate/api/Notification;)V
    .locals 8
    .param p1, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 225
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->parent:Ljava/lang/Object;

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 226
    .local v0, "video":Lcom/perm/kate/api/Video;
    iget-object v7, p1, Lcom/perm/kate/api/Notification;->feedback:Ljava/lang/Object;

    check-cast v7, Lcom/perm/kate/api/Comment;

    .line 227
    .local v7, "feedback":Lcom/perm/kate/api/Comment;
    iget-wide v2, v0, Lcom/perm/kate/api/Video;->vid:J

    iget-wide v4, v0, Lcom/perm/kate/api/Video;->owner_id:J

    const/4 v6, 0x2

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/NotificationsFragment;->replyForComment(JJILcom/perm/kate/api/Comment;)V

    .line 228
    return-void
.end method

.method private wallClick()V
    .locals 4

    .prologue
    .line 177
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 178
    .local v0, "user_id":J
    invoke-virtual {p0}, Lcom/perm/kate/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/perm/kate/ProfileFragment;->ShowWallAcivity(Landroid/app/Activity;Ljava/lang/Long;)V

    .line 179
    return-void
.end method


# virtual methods
.method Refresh()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 93
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v6, p0, Lcom/perm/kate/NotificationsFragment;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Lcom/perm/kate/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getNotifications(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 94
    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 318
    const/4 v0, 0x0

    const/16 v1, 0x17

    const/16 v2, 0x1f4

    const v3, 0x7f0703a5

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 319
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/NotificationsFragment;->setHasOptionsMenu(Z)V

    .line 48
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 50
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/NotificationsFragment;->account_id:J

    .line 51
    invoke-virtual {p0}, Lcom/perm/kate/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/perm/kate/notifications/RepliesNotification;->cancel(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 310
    invoke-virtual {p0, p1}, Lcom/perm/kate/NotificationsFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 311
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 312
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    const v1, 0x7f0300cb

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 57
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/perm/kate/NotificationsFragment;->initSwipeRefreshLayout(Landroid/view/View;)V

    .line 58
    const v1, 0x7f0e027c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/perm/kate/NotificationsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    .line 59
    iget-object v1, p0, Lcom/perm/kate/NotificationsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/NotificationsFragment;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 60
    new-instance v2, Lcom/perm/kate/NotificationsAdapter;

    invoke-virtual {p0}, Lcom/perm/kate/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/BaseActivity;

    invoke-direct {v2, v1}, Lcom/perm/kate/NotificationsAdapter;-><init>(Lcom/perm/kate/BaseActivity;)V

    iput-object v2, p0, Lcom/perm/kate/NotificationsFragment;->adapter:Lcom/perm/kate/NotificationsAdapter;

    .line 61
    iget-object v1, p0, Lcom/perm/kate/NotificationsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/perm/kate/NotificationsFragment;->adapter:Lcom/perm/kate/NotificationsAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 63
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-eqz v1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/perm/kate/NotificationsFragment;->readCacheAndRefreshInThread()V

    .line 66
    :cond_0
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 132
    iput-object v1, p0, Lcom/perm/kate/NotificationsFragment;->adapter:Lcom/perm/kate/NotificationsAdapter;

    .line 133
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment;->lv_posts_news_list:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 135
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 324
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 329
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 326
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/NotificationsFragment;->onRefresh()V

    .line 327
    const/4 v0, 0x1

    goto :goto_0

    .line 324
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0}, Lcom/perm/kate/NotificationsFragment;->onRefresh()V

    .line 339
    return-void
.end method

.method refreshInThread()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Lcom/perm/kate/NotificationsFragment$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/NotificationsFragment$2;-><init>(Lcom/perm/kate/NotificationsFragment;)V

    .line 89
    invoke-virtual {v0}, Lcom/perm/kate/NotificationsFragment$2;->start()V

    .line 90
    return-void
.end method

.method protected replyNotification(Lcom/perm/kate/api/Notification;)V
    .locals 2
    .param p1, "notification"    # Lcom/perm/kate/api/Notification;

    .prologue
    .line 148
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "reply_topic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->replyTopicClick(Lcom/perm/kate/api/Notification;)V

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 150
    :cond_1
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "wall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 151
    invoke-direct {p0}, Lcom/perm/kate/NotificationsFragment;->wallClick()V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "wall_publish"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 153
    invoke-direct {p0}, Lcom/perm/kate/NotificationsFragment;->wallClick()V

    goto :goto_0

    .line 154
    :cond_3
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "comment_post"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->commentPostClick(Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 156
    :cond_4
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "mention_comments"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 157
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->commentPostClick(Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 158
    :cond_5
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "reply_comment"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 159
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->replyCommentClick(Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 160
    :cond_6
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "comment_photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 161
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->photoCommentClick(Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 162
    :cond_7
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "comment_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 163
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->videoCommentClick(Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 164
    :cond_8
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "reply_comment_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 165
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->replyVideoCommentClick(Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 166
    :cond_9
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "reply_comment_market"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 167
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->replyMarketCommentClick(Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 168
    :cond_a
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "reply_comment_photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 169
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->replyPhotoCommentClick(Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 170
    :cond_b
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "mention_comment_photo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 171
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->replyMentionPhotoCommentClick(Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0

    .line 172
    :cond_c
    iget-object v0, p1, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    const-string v1, "mention_comment_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-direct {p0, p1}, Lcom/perm/kate/NotificationsFragment;->replyMentionVideoCommentClick(Lcom/perm/kate/api/Notification;)V

    goto/16 :goto_0
.end method
