.class public Lcom/perm/kate/PhotoViewerActrivity;
.super Lcom/perm/kate/BaseActivity;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Lcom/perm/kate/ContentLayout$ViewChangeListener;


# instance fields
.field private btn_comments:Landroid/widget/ImageButton;

.field private btn_likes:Landroid/widget/ImageButton;

.field private btn_tags:Landroid/widget/ImageButton;

.field private callback_delete:Lcom/perm/kate/session/Callback;

.field private callback_like:Lcom/perm/kate/session/Callback;

.field private callback_unlike:Lcom/perm/kate/session/Callback;

.field private comments_OnClickListerer:Landroid/view/View$OnClickListener;

.field private comments_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

.field private content_layout:Lcom/perm/kate/ContentLayout;

.field private counters_callback:Lcom/perm/kate/session/Callback;

.field private currentPhoto:Lcom/perm/kate/api/Photo;

.field private details_OnClickListerer:Landroid/view/View$OnClickListener;

.field private fl_tags_placeholder:Landroid/widget/RelativeLayout;

.field private handlerTimer:Landroid/os/Handler;

.field high_quality:Z

.field private info_position_offset:I

.field private info_total_count:I

.field private is_graffiti:Z

.field is_story:Z

.field private iv_comments_marker:Landroid/widget/ImageView;

.field private iv_liked_marker:Landroid/widget/ImageView;

.field private iv_tags_marker:Landroid/widget/ImageView;

.field private likes_OnClickListerer:Landroid/view/View$OnClickListener;

.field private likes_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

.field private ll_counters:Landroid/widget/LinearLayout;

.field private ll_placeholder_info:Landroid/widget/LinearLayout;

.field private ll_zoom_buttons:Landroid/widget/LinearLayout;

.field owner_id:J

.field photoList:Lcom/perm/kate/PhotoList;

.field private photoTags:Ljava/util/ArrayList;

.field private photoTagsState:I

.field private photo_copy_callback:Lcom/perm/kate/session/Callback;

.field private photo_viewer_adapter:Lcom/perm/kate/PhotoViewerAdapter;

.field private photos:Ljava/util/ArrayList;

.field private share_OnClickListerer:Landroid/view/View$OnClickListener;

.field private tag_callback:Lcom/perm/kate/session/Callback;

.field private tags_OnClickListerer:Landroid/view/View$OnClickListener;

.field private tv_comments_count:Landroid/widget/TextView;

.field private tv_description:Landroid/widget/TextView;

.field private tv_likes_count:Landroid/widget/TextView;

.field private tv_tags_count:Landroid/widget/TextView;

.field private updated_counts:Ljava/util/HashMap;

.field private zoom_centerListener:Landroid/view/View$OnClickListener;

.field private zoom_leftListener:Landroid/view/View$OnClickListener;

.field private zoom_rightListener:Landroid/view/View$OnClickListener;

.field private zooming_listener:Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;


# direct methods
.method public static synthetic $r8$lambda$-KRJXrBZvI0sSgUh7yhPCQZmie8(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->lambda$onCreate$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$j9AHjeaT4nQppz-lDmo7A7cYeqo(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->lambda$onCreate$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photos:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->is_graffiti:Z

    .line 279
    new-instance v1, Lcom/perm/kate/PhotoViewerActrivity$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/PhotoViewerActrivity$2;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    iput-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->zoom_leftListener:Landroid/view/View$OnClickListener;

    .line 285
    new-instance v1, Lcom/perm/kate/PhotoViewerActrivity$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/PhotoViewerActrivity$3;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    iput-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->zoom_centerListener:Landroid/view/View$OnClickListener;

    .line 291
    new-instance v1, Lcom/perm/kate/PhotoViewerActrivity$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/PhotoViewerActrivity$4;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    iput-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->zoom_rightListener:Landroid/view/View$OnClickListener;

    .line 305
    new-instance v1, Lcom/perm/kate/PhotoViewerActrivity$5;

    invoke-direct {v1, p0}, Lcom/perm/kate/PhotoViewerActrivity$5;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    iput-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->zooming_listener:Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;

    .line 942
    new-instance v1, Lcom/perm/kate/PhotoViewerActrivity$12;

    invoke-direct {v1, p0, p0}, Lcom/perm/kate/PhotoViewerActrivity$12;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->tag_callback:Lcom/perm/kate/session/Callback;

    .line 969
    iput v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTagsState:I

    .line 1061
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->handlerTimer:Landroid/os/Handler;

    .line 1235
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$22;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PhotoViewerActrivity$22;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->callback_like:Lcom/perm/kate/session/Callback;

    .line 1245
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$23;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PhotoViewerActrivity$23;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->callback_unlike:Lcom/perm/kate/session/Callback;

    .line 1407
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$24;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$24;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->likes_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 1419
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$25;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$25;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->likes_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

    .line 1429
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$26;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$26;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->details_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 1435
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$27;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$27;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->comments_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 1441
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$28;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$28;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->comments_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

    .line 1451
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$29;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$29;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tags_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 1459
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$30;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$30;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->share_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 1524
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$32;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PhotoViewerActrivity$32;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->counters_callback:Lcom/perm/kate/session/Callback;

    .line 1609
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->updated_counts:Ljava/util/HashMap;

    .line 1658
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$35;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PhotoViewerActrivity$35;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photo_copy_callback:Lcom/perm/kate/session/Callback;

    .line 1695
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$38;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PhotoViewerActrivity$38;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->callback_delete:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method private OnPhotoTags()V
    .locals 2

    .line 920
    iget v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTagsState:I

    const/4 v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTagsState:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 922
    iput v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTagsState:I

    .line 923
    :cond_0
    iget v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTagsState:I

    if-nez v0, :cond_1

    .line 924
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->hidePhotoTags()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 926
    invoke-direct {p0, v0}, Lcom/perm/kate/PhotoViewerActrivity;->showPhotoTags(Z)V

    :goto_0
    return-void
.end method

.method private SetAs()V
    .locals 5

    :try_start_0
    const-string v0, "image/jpg"

    .line 1271
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1272
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1275
    :try_start_1
    invoke-static {}, Lcom/perm/kate/PhotoViewerActrivity;->getTempFile()Ljava/io/File;

    move-result-object v3

    .line 1276
    invoke-static {v1, v3}, Lcom/perm/kate/PhotoViewerActrivity;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 1277
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 1281
    :try_start_2
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 1282
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1284
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    const-string v2, "com.perm.kate.provider"

    .line 1285
    invoke-static {p0, v2, v1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 1286
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.ATTACH_DATA"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1287
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "mimeType"

    .line 1288
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "Set As"

    .line 1290
    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 1292
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1293
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private ShowCommentsActivity()V
    .locals 5

    .line 1341
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    if-nez v0, :cond_0

    return-void

    .line 1344
    :cond_0
    iget-object v0, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 1345
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_0

    .line 1346
    :cond_1
    iget-wide v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->owner_id:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    move-wide v1, v3

    .line 1348
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->is_graffiti:Z

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v3, v3, Lcom/perm/kate/api/Photo;->pid:J

    .line 1349
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1348
    invoke-static {v0, v3, v1, v2, p0}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    return-void
.end method

.method private ShowNewCommentActivity()V
    .locals 3

    .line 1331
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1332
    const-class v1, Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1333
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v1, v1, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.perm.kate.pid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1334
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "com.perm.kate.owner_id"

    .line 1335
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1336
    :cond_0
    iget-boolean v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->is_graffiti:Z

    const-string v2, "com.perm.kate.comment_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1337
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/PhotoViewerActrivity;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->setZoom(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->sendToFriend()V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/PhotoViewerActrivity;J)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/PhotoViewerActrivity;->showWallPostForCurrentPhoto(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->shareTo()V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->sharePhoto()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->repostToGroup()V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/PhotoViewerActrivity;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->savePhotoToSD(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/perm/kate/PhotoViewerActrivity;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->copyDirectPhotoLink(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tag_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/perm/kate/PhotoViewerActrivity;)Ljava/util/ArrayList;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTags:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/perm/kate/PhotoViewerActrivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTags:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->showPhotoTagsUI()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/ContentLayout;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/perm/kate/PhotoViewerActrivity;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->showPhotoTags(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/PhotoTag;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->onClickByPhotoTag(Lcom/perm/kate/api/PhotoTag;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/perm/kate/PhotoViewerActrivity;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->openProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/PhotoTag;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->deletePhotoTag(Lcom/perm/kate/api/PhotoTag;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/perm/kate/PhotoViewerActrivity;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTagsState:I

    return p0
.end method

.method static synthetic access$2500(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->displayCounts()V

    return-void
.end method

.method static synthetic access$2600(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/perm/kate/PhotoViewerActrivity;->callback_unlike:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/perm/kate/PhotoViewerActrivity;->callback_like:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->unlike()V

    return-void
.end method

.method static synthetic access$2900(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->like()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->hidePhotoTags()V

    return-void
.end method

.method static synthetic access$3000(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->wholikes()V

    return-void
.end method

.method static synthetic access$3100(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->showPhotoDetailsActivity()V

    return-void
.end method

.method static synthetic access$3200(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->ShowCommentsActivity()V

    return-void
.end method

.method static synthetic access$3300(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->ShowNewCommentActivity()V

    return-void
.end method

.method static synthetic access$3400(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->OnPhotoTags()V

    return-void
.end method

.method static synthetic access$3500(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->showShareDialog()V

    return-void
.end method

.method static synthetic access$3600(Lcom/perm/kate/PhotoViewerActrivity;Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->photosToParam(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$3700(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/perm/kate/PhotoViewerActrivity;->counters_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/Photo;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->updatePhotoCounts(Lcom/perm/kate/api/Photo;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/Photo;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->displayCountsInUiThread(Lcom/perm/kate/api/Photo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->postRunShowPhotoTags()V

    return-void
.end method

.method static synthetic access$4000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photo_copy_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$4100(Lcom/perm/kate/PhotoViewerActrivity;Ljava/lang/Long;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->onSuccessPhotoCopy(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/Photo;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->deletePhoto(Lcom/perm/kate/api/Photo;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/perm/kate/PhotoViewerActrivity;->callback_delete:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$4400(Lcom/perm/kate/PhotoViewerActrivity;Z)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->selectPhotoSize(Z)V

    return-void
.end method

.method static synthetic access$4500(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->showAlbums()V

    return-void
.end method

.method static synthetic access$4600(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->photoEdit()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/PhotoViewerActrivity;)Z
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->isPhotoClickEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->setShowHideInfoPanels()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->describeForBlind()V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->searchInGoogle()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->searchInYandex()V

    return-void
.end method

.method public static canDelete(Lcom/perm/kate/api/Photo;)Z
    .locals 9

    const/4 v0, 0x0

    .line 499
    :try_start_0
    iget-wide v1, p0, Lcom/perm/kate/api/Photo;->pid:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return v0

    .line 501
    :cond_0
    iget-object v5, p0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    if-nez v5, :cond_1

    return v0

    .line 503
    :cond_1
    sget-object v6, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v1, v2, v7, v8}, Lcom/perm/kate/db/DataHelper;->fetchPhotoFull(JJ)Lcom/perm/kate/api/Photo;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    .line 506
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/4 v5, 0x1

    cmp-long v6, v1, v3

    if-gez v6, :cond_3

    return v5

    .line 510
    :cond_3
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p0, v1, v3

    if-nez p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    if-eqz p0, :cond_5

    .line 515
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 516
    :cond_5
    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0
.end method

.method public static canEdit(Lcom/perm/kate/api/Photo;)Z
    .locals 9

    const/4 v0, 0x0

    .line 473
    :try_start_0
    iget-wide v1, p0, Lcom/perm/kate/api/Photo;->pid:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return v0

    .line 475
    :cond_0
    iget-object v5, p0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    if-nez v5, :cond_1

    return v0

    .line 477
    :cond_1
    sget-object v6, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v1, v2, v7, v8}, Lcom/perm/kate/db/DataHelper;->fetchPhotoFull(JJ)Lcom/perm/kate/api/Photo;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    .line 481
    :cond_2
    iget-wide v1, v1, Lcom/perm/kate/api/Photo;->aid:J

    const-wide/16 v5, -0x6

    cmp-long v7, v1, v5

    if-nez v7, :cond_3

    return v0

    .line 483
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 484
    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v5}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    cmp-long v7, v1, v3

    if-gez v7, :cond_4

    return p0

    :cond_4
    cmp-long v3, v1, v5

    if-nez v3, :cond_5

    const/4 v0, 0x1

    :cond_5
    return v0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    if-eqz p0, :cond_6

    .line 491
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 492
    :cond_6
    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0
.end method

.method private changeInfoPanelsFlag()V
    .locals 4

    .line 1631
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_info_panels"

    const-string v2, "1"

    .line 1632
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1633
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "0"

    .line 1634
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1635
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1636
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private chooseSearchEngine()V
    .locals 5

    .line 696
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 697
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const-string v2, "Yandex"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 698
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const-string v2, "Google"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 700
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Lcom/perm/kate/PhotoViewerActrivity$7;

    invoke-direct {v4, p0, v0}, Lcom/perm/kate/PhotoViewerActrivity$7;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 710
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 711
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 712
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private clearPhotoTags()V
    .locals 1

    .line 1051
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->fl_tags_placeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 1052
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTags:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1053
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    return-void
.end method

.method private confirmDeletePhoto(Lcom/perm/kate/api/Photo;)V
    .locals 2

    .line 1667
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$36;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/PhotoViewerActrivity$36;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/Photo;)V

    .line 1673
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f01d8

    .line 1674
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f0f05a7

    .line 1675
    invoke-virtual {p1, v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0f037a

    const/4 v1, 0x0

    .line 1676
    invoke-virtual {p1, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 1677
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 1678
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1679
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private copyDirectPhotoLink(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1735
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1736
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object p1, p1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1737
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1738
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object p1, p1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1739
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object p1, p1, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 1740
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object p1, p1, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    goto :goto_0

    .line 1742
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object p1, p1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 1744
    :goto_0
    invoke-static {p1, p0}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .line 1261
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1262
    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1263
    invoke-static {v0, p0}, Lcom/perm/kate/Helper;->CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1264
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 1265
    invoke-static {p0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    return-void
.end method

.method private deletePhoto(Lcom/perm/kate/api/Photo;)V
    .locals 5

    .line 1683
    iget-object v0, p1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1685
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v3, p1, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/perm/kate/db/DataHelper;->deletePhoto(JJ)Z

    .line 1687
    :cond_0
    new-instance v2, Lcom/perm/kate/PhotoViewerActrivity$37;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/perm/kate/PhotoViewerActrivity$37;-><init>(Lcom/perm/kate/PhotoViewerActrivity;JLcom/perm/kate/api/Photo;)V

    .line 1692
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private deletePhotoTag(Lcom/perm/kate/api/PhotoTag;)V
    .locals 2

    .line 1125
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$18;

    invoke-direct {v0, p0, p0, p1}, Lcom/perm/kate/PhotoViewerActrivity$18;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;Lcom/perm/kate/api/PhotoTag;)V

    .line 1148
    new-instance v1, Lcom/perm/kate/PhotoViewerActrivity$19;

    invoke-direct {v1, p0, p1, v0}, Lcom/perm/kate/PhotoViewerActrivity$19;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/PhotoTag;Lcom/perm/kate/session/Callback;)V

    .line 1153
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private describeForBlind()V
    .locals 5

    .line 671
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/NewMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, -0xb0eabbe

    .line 672
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.perm.kate.user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 673
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v3, v3, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 674
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v3, v3, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 675
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v2, "com.perm.kate.photo_attachment"

    .line 676
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 677
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const-string v0, "DESCRIBE_PHOTO_HUMAN"

    .line 679
    invoke-static {v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method private describeForBlindPrompt()V
    .locals 3

    .line 653
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u041f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u043e\u043f\u0438\u0441\u0430\u043d\u0438\u0435"

    .line 654
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0412\u043e\u0437\u043c\u043e\u0436\u043d\u043e\u0441\u0442\u044c \u0434\u043b\u044f \u043b\u044e\u0434\u0435\u0439 \u0441 \u043f\u0440\u043e\u0431\u043b\u0435\u043c\u0430\u043c\u0438 \u0437\u0440\u0435\u043d\u0438\u044f \u043f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u043e\u043f\u0438\u0441\u0430\u043d\u0438\u0435 \u0444\u043e\u0442\u043e. \u0420\u0430\u0431\u043e\u0442\u0430\u0435\u0442 \u0431\u043b\u0430\u0433\u043e\u0434\u0430\u0440\u044f \u0431\u043e\u0442\u0443 Vision Bot https://vk.com/visiontest1"

    .line 655
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/PhotoViewerActrivity$6;

    invoke-direct {v1, p0}, Lcom/perm/kate/PhotoViewerActrivity$6;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    const-string v2, "\u041e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c \u0437\u0430\u043f\u0440\u043e\u0441 \u0431\u043e\u0442\u0443"

    .line 656
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f01c5

    const/4 v2, 0x0

    .line 662
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 663
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 664
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 665
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private displayCounts()V
    .locals 7

    .line 1567
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    const/16 v1, 0x8

    if-eqz v0, :cond_5

    iget-wide v2, v0, Lcom/perm/kate/api/Photo;->pid:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_5

    iget-boolean v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->high_quality:Z

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 1572
    :cond_0
    iget-object v0, v0, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 1573
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_likes_count:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v3, v3, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1574
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_likes_count:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1576
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_likes_count:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1577
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->iv_liked_marker:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v3, v3, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perm/kate/theme/ColorTheme;->getLikeColor()I

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, -0x1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1579
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    const v3, 0x7f0801b5

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    .line 1580
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_comments_count:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v5, v5, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1581
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_comments_count:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1582
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_comments:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1583
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->iv_comments_marker:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1590
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_comments_count:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1591
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_comments:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1592
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->iv_comments_marker:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1596
    :goto_2
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->tags_count:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_4

    .line 1597
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_tags:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1598
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->iv_tags_marker:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1599
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_tags_count:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->tags_count:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1600
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_tags_count:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1602
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_tags:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1603
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->iv_tags_marker:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1604
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_tags_count:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_3
    return-void

    .line 1568
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->ll_counters:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private displayCountsInUiThread(Lcom/perm/kate/api/Photo;)V
    .locals 0

    .line 1541
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1543
    :cond_0
    new-instance p1, Lcom/perm/kate/PhotoViewerActrivity$33;

    invoke-direct {p1, p0}, Lcom/perm/kate/PhotoViewerActrivity$33;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displayPhotoInfo()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 360
    iget v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->info_position_offset:I

    const-string v1, "/"

    const/4 v2, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->info_total_count:I

    if-lez v0, :cond_0

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {v3}, Lcom/perm/kate/ContentLayout;->getCurrentScreen()I

    move-result v3

    iget v4, p0, Lcom/perm/kate/PhotoViewerActrivity;->info_position_offset:I

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->info_total_count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 362
    :cond_0
    iget v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->info_total_count:I

    if-lez v0, :cond_1

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {v3}, Lcom/perm/kate/ContentLayout;->getCurrentScreen()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->info_total_count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 365
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {v3}, Lcom/perm/kate/ContentLayout;->getCurrentScreen()I

    move-result v3

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {v1}, Lcom/perm/kate/ContentLayout;->getScreenCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_description:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {v1}, Lcom/perm/kate/ContentLayout;->getScreenCount()I

    move-result v1

    const/16 v4, 0x8

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 368
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_description:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 369
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {v1}, Lcom/perm/kate/ContentLayout;->getScreenCount()I

    move-result v1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 370
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_description:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 371
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 372
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_description:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 374
    :cond_4
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_description:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v0, 0x7f090203

    .line 375
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->lat:Ljava/lang/String;

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const/16 v3, 0x8

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 378
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->displayCounts()V

    .line 379
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->refreshCounts()V

    return-void
.end method

.method private getInfoPanelsFlag()Z
    .locals 3

    .line 1625
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_info_panels"

    const-string v2, "1"

    .line 1626
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1627
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getPhotoTags()V
    .locals 1

    .line 931
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$11;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    .line 939
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getPhotosToRequest()Ljava/util/ArrayList;
    .locals 7

    .line 1513
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1514
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    add-int/lit8 v2, v0, -0x1

    :goto_0
    add-int/lit8 v3, v0, 0x1

    if-gt v2, v3, :cond_3

    if-ltz v2, :cond_2

    .line 1516
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    goto :goto_1

    .line 1517
    :cond_0
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Photo;

    .line 1518
    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity;->updated_counts:Ljava/util/HashMap;

    iget-wide v5, v3, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 1519
    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public static getTempFile()Ljava/io/File;
    .locals 3

    .line 1257
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "image.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private hidePhotoTags()V
    .locals 1

    .line 1057
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->fl_tags_placeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1058
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->fl_tags_placeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    :cond_0
    return-void
.end method

.method static isBlind()Z
    .locals 2

    .line 1822
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 1829
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    return v0
.end method

.method static isGraffiti(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "GRAF_"

    .line 254
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "graffiti"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "stickers_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private isMeOrFriend()Z
    .locals 9

    const/4 v0, 0x0

    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v2, v1, Lcom/perm/kate/api/Photo;->pid:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return v0

    .line 525
    :cond_0
    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    if-nez v1, :cond_1

    return v0

    .line 527
    :cond_1
    sget-object v6, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v6, v2, v3, v7, v8}, Lcom/perm/kate/db/DataHelper;->fetchPhotoFull(JJ)Lcom/perm/kate/api/Photo;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    .line 530
    :cond_2
    iget-wide v1, v1, Lcom/perm/kate/api/Photo;->aid:J

    cmp-long v3, v1, v4

    if-gez v3, :cond_3

    return v0

    .line 532
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 533
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    .line 534
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v5, v3, v4, v1, v2}, Lcom/perm/kate/db/DataHelper;->isFriend(JJ)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_5

    :cond_4
    const/4 v0, 0x1

    :cond_5
    return v0

    :catch_0
    move-exception v1

    const/4 v2, 0x0

    .line 537
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    if-eqz v3, :cond_6

    .line 538
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v3, v3, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 539
    :cond_6
    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    return v0
.end method

.method static isMeizu()Z
    .locals 3

    const/4 v0, 0x0

    .line 262
    :try_start_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "M040"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "M353"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "M351"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :catchall_0
    move-exception v1

    .line 264
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method private isMy(J)Z
    .locals 3

    .line 400
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isPhotoClickEnabled()Z
    .locals 3

    .line 1640
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_photo_click"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoList:Lcom/perm/kate/PhotoList;

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->photo_viewer_adapter:Lcom/perm/kate/PhotoViewerAdapter;

    iget-object v0, v0, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/perm/kate/PhotoViewerAdapter;->setPhotos(Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$onCreate$1()V
    .locals 1

    .line 198
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$$ExternalSyntheticLambda1;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private like()V
    .locals 2

    .line 1222
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    .line 1224
    :cond_0
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    .line 1225
    iget-object v1, v0, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 1226
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    .line 1227
    :cond_1
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$21;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$21;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    .line 1232
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private makeMainProfilePhoto()V
    .locals 1

    .line 739
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$8;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    .line 770
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private moveToAlbum(J)V
    .locals 2

    .line 1795
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$41;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/perm/kate/PhotoViewerActrivity$41;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;J)V

    .line 1812
    new-instance v1, Lcom/perm/kate/PhotoViewerActrivity$42;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/perm/kate/PhotoViewerActrivity$42;-><init>(Lcom/perm/kate/PhotoViewerActrivity;JLcom/perm/kate/session/Callback;)V

    .line 1817
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private onClickByPhotoTag(Lcom/perm/kate/api/PhotoTag;)V
    .locals 6

    .line 1076
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1079
    iget-wide v2, p1, Lcom/perm/kate/api/PhotoTag;->uid:J

    const/4 v4, 0x1

    cmp-long v5, v2, v0

    if-nez v5, :cond_0

    goto :goto_0

    .line 1082
    :cond_0
    iget-wide v2, p1, Lcom/perm/kate/api/PhotoTag;->placer_id:J

    cmp-long v5, v2, v0

    if-nez v5, :cond_1

    goto :goto_0

    .line 1086
    :cond_1
    iget-object v2, p1, Lcom/perm/kate/api/PhotoTag;->owner_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v5, v2, v0

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    .line 1091
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->showPhotoTagDialog(Lcom/perm/kate/api/PhotoTag;)V

    goto :goto_1

    .line 1093
    :cond_3
    iget-wide v0, p1, Lcom/perm/kate/api/PhotoTag;->uid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->openProfile(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private onSuccessPhotoCopy(Ljava/lang/Long;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1653
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f0f054a

    .line 1654
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    :cond_0
    return-void
.end method

.method private openGroup(J)V
    .locals 3

    .line 1168
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/GroupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-wide/16 v1, -0x1

    mul-long p1, p1, v1

    const-string v1, "com.perm.kate.group_id"

    .line 1169
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1170
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private openHighQuality()V
    .locals 3

    .line 686
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 687
    const-class v1, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 688
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 689
    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.perm.kate.photos"

    .line 690
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "high_quality"

    const/4 v2, 0x1

    .line 691
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 692
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private openPhotoOwner()V
    .locals 7

    .line 1176
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->user_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 1177
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->user_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    const-wide/16 v5, 0x64

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    move-wide v3, v1

    :cond_1
    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    .line 1181
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    goto :goto_1

    :cond_2
    iget-wide v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->owner_id:J

    :cond_3
    :goto_1
    cmp-long v0, v3, v1

    if-lez v0, :cond_4

    .line 1183
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/perm/kate/PhotoViewerActrivity;->openProfile(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    cmp-long v0, v3, v1

    if-gez v0, :cond_5

    .line 1185
    invoke-direct {p0, v3, v4}, Lcom/perm/kate/PhotoViewerActrivity;->openGroup(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1187
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1188
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private openProfile(Ljava/lang/String;)V
    .locals 2

    const-string v0, "0"

    .line 1158
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1161
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1162
    const-class v1, Lcom/perm/kate/ProfileInfoActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.user_id"

    .line 1163
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1164
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private openSinglePhotoViewer()V
    .locals 4

    .line 827
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 828
    const-class v1, Lcom/perm/kate/SinglePhotoViewer;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.put_tag"

    const/4 v2, 0x1

    .line 829
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 830
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    const-string v3, "com.perm.kate.photo"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 831
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private photoEdit()V
    .locals 4

    .line 1202
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1203
    const-class v1, Lcom/perm/kate/PhotoEditActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1204
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v1, v1, Lcom/perm/kate/api/Photo;->pid:J

    const-string v3, "com.perm.kate.pid"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1205
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    const-string v2, "com.perm.kate.owner_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0xc

    .line 1206
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private photosToParam(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5

    .line 1502
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v0, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Photo;

    .line 1503
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1504
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1505
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v1, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1506
    iget-object v3, v1, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private postRunShowPhotoTags()V
    .locals 4

    .line 1064
    iget v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTagsState:I

    if-nez v0, :cond_0

    return-void

    .line 1066
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->handlerTimer:Landroid/os/Handler;

    new-instance v1, Lcom/perm/kate/PhotoViewerActrivity$16;

    invoke-direct {v1, p0}, Lcom/perm/kate/PhotoViewerActrivity$16;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private refreshCounts()V
    .locals 5

    .line 1467
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v0, v0, Lcom/perm/kate/api/Photo;->pid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 1470
    :cond_0
    iget-boolean v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->is_story:Z

    if-eqz v2, :cond_1

    return-void

    .line 1473
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->updated_counts:Ljava/util/HashMap;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1478
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->getPhotosToRequest()Ljava/util/ArrayList;

    move-result-object v0

    .line 1479
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 1481
    :cond_3
    new-instance v1, Lcom/perm/kate/PhotoViewerActrivity$31;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/PhotoViewerActrivity$31;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Ljava/util/ArrayList;)V

    .line 1497
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private repostToGroup()V
    .locals 3

    .line 835
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 836
    const-class v1, Lcom/perm/kate/GroupsActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.select_group"

    const/4 v2, 0x1

    .line 837
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0xb

    .line 838
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private savePhotoToSD()V
    .locals 3

    .line 637
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_size_saved_photo"

    const-string v2, "0"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 639
    invoke-direct {p0, v0}, Lcom/perm/kate/PhotoViewerActrivity;->savePhotoToSD(I)V

    goto :goto_1

    .line 641
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 642
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    .line 645
    invoke-direct {p0, v0}, Lcom/perm/kate/PhotoViewerActrivity;->selectPhotoSize(Z)V

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 643
    invoke-direct {p0, v0}, Lcom/perm/kate/PhotoViewerActrivity;->savePhotoToSD(I)V

    :goto_1
    return-void
.end method

.method private savePhotoToSD(I)V
    .locals 2

    .line 915
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    invoke-static {v0, v1, p1}, Lcom/perm/kate/PhotoSaver;->savePhoto(Landroid/content/Context;Lcom/perm/kate/api/Photo;I)V

    return-void
.end method

.method private saveToMyAlbum()V
    .locals 1

    .line 1644
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$34;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$34;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    .line 1649
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private searchInGoogle()V
    .locals 3

    .line 718
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://www.google.com/searchbyimage?image_url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    invoke-static {v0, p0}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 722
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 723
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private searchInYandex()V
    .locals 3

    .line 729
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 730
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://yandex.ru/images/search?url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&rpt=imageview"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 731
    invoke-static {v0, p0}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 733
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 734
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private selectPhotoSize(Z)V
    .locals 3

    .line 897
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f03002c

    goto :goto_0

    .line 899
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f03002a

    goto :goto_0

    :cond_1
    const v0, 0x7f03002b

    .line 901
    :goto_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f04ef

    .line 902
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 903
    new-instance v2, Lcom/perm/kate/PhotoViewerActrivity$10;

    invoke-direct {v2, p0, p1}, Lcom/perm/kate/PhotoViewerActrivity$10;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Z)V

    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 911
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private sendToFriend()V
    .locals 4

    .line 868
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    if-nez v0, :cond_0

    return-void

    .line 874
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 875
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    invoke-virtual {v2, v3, v0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhoto(Lcom/perm/kate/api/Photo;J)V

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v2, v2, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 878
    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 879
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 880
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 881
    const-class v2, Lcom/perm/kate/MembersActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "com.perm.kate.only_members"

    .line 882
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x1

    const-string v3, "com.perm.kate.new_message"

    .line 883
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "com.perm.kate.photo_attachment"

    .line 884
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 885
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private setShowHideInfoPanels()V
    .locals 0

    .line 1618
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->changeInfoPanelsFlag()V

    .line 1619
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->showHideInfoPanels()V

    return-void
.end method

.method private setZoom(I)V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {v0}, Lcom/perm/kate/ContentLayout;->getCurrentScreenView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090185

    .line 300
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 301
    instance-of v1, v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    if-eqz v1, :cond_0

    .line 302
    check-cast v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    invoke-virtual {v0, p1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setZoom(I)V

    :cond_0
    return-void
.end method

.method private sharePhoto()V
    .locals 4

    .line 1300
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    invoke-static {}, Lcom/perm/kate/PhotoViewerAdapter;->getQualityPreference()I

    move-result v2

    invoke-static {v1, v2}, Lcom/perm/kate/PhotoViewerAdapter;->getPhotoUrl(Lcom/perm/kate/api/Photo;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1301
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1304
    :try_start_0
    invoke-static {}, Lcom/perm/kate/PhotoViewerActrivity;->getTempFile()Ljava/io/File;

    move-result-object v2

    .line 1305
    invoke-static {v0, v2}, Lcom/perm/kate/PhotoViewerActrivity;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 1306
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 1310
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 1311
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1313
    :goto_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    const-string v1, "com.perm.kate.provider"

    .line 1314
    invoke-static {p0, v1, v0}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 1315
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "image/jpg"

    .line 1317
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    .line 1324
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 1327
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private shareTo()V
    .locals 4

    .line 889
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    if-nez v0, :cond_0

    return-void

    .line 891
    :cond_0
    iget-object v1, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    iget-wide v2, v0, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p0}, Lcom/perm/kate/Helper;->sharePhoto(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private showAlbums()V
    .locals 4

    .line 1787
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1788
    const-class v1, Lcom/perm/kate/AlbumsActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1789
    iget-wide v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->owner_id:J

    const-string v3, "com.perm.kate.owner_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.perm.kate.select_for_move"

    const/4 v2, 0x1

    .line 1790
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0xd

    .line 1791
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showCopyPhotoLinkDialog()V
    .locals 4

    .line 1703
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1704
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f02c1

    const/16 v3, 0xd

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1705
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f01e7

    const/16 v3, 0x1e

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1706
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f01db

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 1707
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/PhotoViewerActrivity$39;

    invoke-direct {v3, p0, v0}, Lcom/perm/kate/PhotoViewerActrivity$39;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1728
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 1729
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1730
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showEditDialog()V
    .locals 8

    .line 1749
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v0, v0, Lcom/perm/kate/api/Photo;->aid:J

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, -0xf

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-wide/16 v5, -0x7

    cmp-long v7, v0, v5

    if-nez v7, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v4, :cond_3

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x2

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v1, 0x1

    .line 1752
    :goto_3
    new-array v1, v1, [Ljava/lang/CharSequence;

    const v5, 0x7f0f0243

    if-eqz v4, :cond_4

    .line 1754
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v1, v2

    goto :goto_4

    :cond_4
    const v6, 0x7f0f01cb

    .line 1756
    invoke-virtual {p0, v6}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v1, v2

    if-nez v0, :cond_5

    .line 1758
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v1, v3

    .line 1760
    :cond_5
    :goto_4
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0233

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/perm/kate/PhotoViewerActrivity$40;

    invoke-direct {v2, p0, v4}, Lcom/perm/kate/PhotoViewerActrivity$40;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Z)V

    .line 1761
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1781
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 1782
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1783
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showHideInfoPanels()V
    .locals 5

    .line 1612
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->getInfoPanelsFlag()Z

    move-result v0

    .line 1613
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->ll_counters:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v0, :cond_0

    iget-boolean v4, p0, Lcom/perm/kate/PhotoViewerActrivity;->is_story:Z

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1614
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->ll_placeholder_info:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showPhotoDetailsActivity()V
    .locals 7

    .line 1353
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    if-nez v0, :cond_0

    return-void

    .line 1358
    :cond_0
    iget-wide v0, v0, Lcom/perm/kate/api/Photo;->pid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 1359
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1360
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v5, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    invoke-virtual {v4, v5, v0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhoto(Lcom/perm/kate/api/Photo;J)V

    .line 1364
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->user_id:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1365
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->user_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    :goto_0
    const-wide/16 v4, 0x64

    cmp-long v6, v0, v4

    if-nez v6, :cond_3

    move-wide v0, v2

    :cond_3
    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    .line 1369
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_1

    :cond_4
    iget-wide v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->owner_id:J

    .line 1370
    :cond_5
    :goto_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1371
    const-class v3, Lcom/perm/kate/PhotoDetailsActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "com.perm.kate.photo_owner_id"

    .line 1372
    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1373
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v0, v0, Lcom/perm/kate/api/Photo;->pid:J

    const-string v3, "com.perm.kate.photo_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1374
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v0, v0, Lcom/perm/kate/api/Photo;->aid:J

    const-string v3, "com.perm.kate.album_id"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1375
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1376
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showPhotoTagDialog(Lcom/perm/kate/api/PhotoTag;)V
    .locals 5

    .line 1097
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1098
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f025c

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f00bd

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1100
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p1, Lcom/perm/kate/api/PhotoTag;->tagged_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 1101
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Lcom/perm/kate/PhotoViewerActrivity$17;

    invoke-direct {v4, p0, v0, p1}, Lcom/perm/kate/PhotoViewerActrivity$17;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Ljava/util/ArrayList;Lcom/perm/kate/api/PhotoTag;)V

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 1119
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 1120
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1121
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showPhotoTags(Z)V
    .locals 24
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 983
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/PhotoViewerActrivity;->hidePhotoTags()V

    .line 984
    iget v1, v0, Lcom/perm/kate/PhotoViewerActrivity;->photoTagsState:I

    if-nez v1, :cond_0

    return-void

    .line 986
    :cond_0
    iget-object v1, v0, Lcom/perm/kate/PhotoViewerActrivity;->photoTags:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v1, v1, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v3, v0, Lcom/perm/kate/PhotoViewerActrivity;->photoTags:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/PhotoTag;

    iget-wide v5, v3, Lcom/perm/kate/api/PhotoTag;->pid:J

    cmp-long v3, v1, v5

    if-eqz v3, :cond_1

    goto/16 :goto_4

    .line 991
    :cond_1
    iget-object v1, v0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    if-nez v1, :cond_2

    return-void

    .line 993
    :cond_2
    invoke-virtual {v1}, Lcom/perm/kate/ContentLayout;->getCurrentScreenView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f090185

    .line 994
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    if-nez v1, :cond_3

    return-void

    .line 997
    :cond_3
    new-instance v2, Lcom/perm/kate/PhotoViewerActrivity$14;

    invoke-direct {v2, v0}, Lcom/perm/kate/PhotoViewerActrivity$14;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1009
    invoke-virtual {v1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getValues()[Ljava/lang/Object;

    move-result-object v1

    .line 1010
    aget-object v2, v1, v4

    check-cast v2, [D

    .line 1011
    aget-wide v5, v2, v4

    const-wide/16 v7, 0x0

    cmpl-double v3, v5, v7

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    aget-wide v5, v2, v3

    cmpl-double v9, v5, v7

    if-nez v9, :cond_4

    goto/16 :goto_3

    .line 1013
    :cond_4
    aget-object v5, v1, v3

    check-cast v5, [D

    const/4 v6, 0x2

    .line 1014
    aget-object v1, v1, v6

    check-cast v1, [F

    .line 1015
    aget v7, v1, v4

    float-to-double v7, v7

    aget-wide v9, v5, v4

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    div-double/2addr v7, v9

    const/4 v11, 0x4

    .line 1016
    aget v11, v1, v11

    float-to-double v11, v11

    aget-wide v13, v5, v3

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    div-double/2addr v11, v9

    .line 1017
    aget v5, v1, v6

    float-to-double v9, v5

    const/4 v5, 0x5

    .line 1018
    aget v1, v1, v5

    float-to-double v13, v1

    .line 1019
    iget-object v1, v0, Lcom/perm/kate/PhotoViewerActrivity;->photoTags:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/api/PhotoTag;

    .line 1020
    iget-wide v3, v5, Lcom/perm/kate/api/PhotoTag;->x:D

    mul-double v16, v3, v7

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move-wide/from16 v18, v7

    add-double v6, v9, v16

    move-wide/from16 v16, v9

    .line 1021
    iget-wide v8, v5, Lcom/perm/kate/api/PhotoTag;->y:D

    mul-double v20, v8, v11

    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-object v10, v1

    add-double v0, v13, v20

    move-wide/from16 v20, v13

    .line 1022
    iget-wide v13, v5, Lcom/perm/kate/api/PhotoTag;->x2:D

    sub-double/2addr v13, v3

    mul-double v13, v13, v18

    double-to-int v3, v13

    .line 1023
    iget-wide v13, v5, Lcom/perm/kate/api/PhotoTag;->y2:D

    sub-double/2addr v13, v8

    mul-double v13, v13, v11

    double-to-int v4, v13

    const/4 v8, 0x0

    .line 1024
    aget-wide v13, v2, v8

    cmpl-double v8, v6, v13

    if-gtz v8, :cond_7

    const-wide/high16 v8, -0x3fb7000000000000L    # -50.0

    cmpg-double v13, v6, v8

    if-ltz v13, :cond_7

    const/4 v13, 0x1

    aget-wide v22, v2, v13

    cmpl-double v14, v0, v22

    if-gtz v14, :cond_7

    cmpg-double v14, v0, v8

    if-gez v14, :cond_5

    goto/16 :goto_2

    .line 1026
    :cond_5
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    invoke-direct {v8, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    double-to-int v6, v6

    .line 1027
    iput v6, v8, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    double-to-int v0, v0

    .line 1028
    iput v0, v8, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1030
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00f2

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object/from16 v1, p0

    .line 1031
    iget v6, v1, Lcom/perm/kate/PhotoViewerActrivity;->photoTagsState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    const v6, 0x7f090395

    .line 1032
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v9, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1033
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v15, v5, Lcom/perm/kate/api/PhotoTag;->tagged_name:Ljava/lang/String;

    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1034
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1035
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-instance v6, Lcom/perm/kate/PhotoViewerActrivity$15;

    invoke-direct {v6, v1}, Lcom/perm/kate/PhotoViewerActrivity$15;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_6
    const/4 v14, 0x0

    .line 1044
    :goto_1
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v3, 0x7f09019e

    .line 1045
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1046
    iget-object v3, v1, Lcom/perm/kate/PhotoViewerActrivity;->fl_tags_placeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v0, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v0, v1

    move-object v1, v10

    move-wide/from16 v9, v16

    move-wide/from16 v7, v18

    move-wide/from16 v13, v20

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x2

    goto/16 :goto_0

    :cond_7
    :goto_2
    move-object v1, v10

    move-wide/from16 v9, v16

    move-wide/from16 v7, v18

    move-wide/from16 v13, v20

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_8
    move-object v1, v0

    return-void

    :cond_9
    :goto_3
    move-object v1, v0

    return-void

    :cond_a
    :goto_4
    move-object v1, v0

    if-eqz p1, :cond_b

    .line 988
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/PhotoViewerActrivity;->getPhotoTags()V

    :cond_b
    return-void
.end method

.method private showPhotoTagsUI()V
    .locals 1

    .line 972
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 973
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$13;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private showPlaceholderInfo(I)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->ll_placeholder_info:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showShareDialog()V
    .locals 6

    .line 774
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    if-nez v0, :cond_0

    return-void

    .line 777
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 778
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f023a

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 780
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v1, v1, Lcom/perm/kate/api/Photo;->aid:J

    const-wide/16 v3, -0x3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 781
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0411

    const/16 v3, 0x19

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 782
    :cond_1
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0412

    const/16 v3, 0x25

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f02b4

    const/16 v3, 0x16

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 784
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f02b3

    const/16 v3, 0x1c

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 786
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/PhotoViewerActrivity$9;

    invoke-direct {v3, p0, v0}, Lcom/perm/kate/PhotoViewerActrivity$9;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 812
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 813
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 814
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showWallPostForCurrentPhoto(J)V
    .locals 4

    .line 818
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 819
    const-class v1, Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-eqz v3, :cond_0

    const-string v1, "com.perm.kate.owner_id"

    .line 821
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 822
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    const-string p2, "com.perm.kate.photo"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 823
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showZoomButtons()V
    .locals 3

    .line 326
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key2_show_zoom_buttons"

    const/4 v2, 0x0

    .line 327
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 328
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->ll_zoom_buttons:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private unlike()V
    .locals 2

    .line 1210
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    .line 1211
    iget-object v1, v0, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1212
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    .line 1213
    :cond_0
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$20;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$20;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    .line 1218
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updatePhotoCounts(Lcom/perm/kate/api/Photo;)V
    .locals 7

    .line 1552
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Photo;

    .line 1553
    iget-wide v2, v1, Lcom/perm/kate/api/Photo;->pid:J

    iget-wide v4, p1, Lcom/perm/kate/api/Photo;->pid:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 1554
    iget-object v0, p1, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    iput-object v0, v1, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    .line 1555
    iget-object v0, p1, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    iput-object v0, v1, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    .line 1556
    iget-object v0, p1, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    iput-object v0, v1, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    .line 1557
    iget-object v0, p1, Lcom/perm/kate/api/Photo;->can_comment:Ljava/lang/Boolean;

    iput-object v0, v1, Lcom/perm/kate/api/Photo;->can_comment:Ljava/lang/Boolean;

    .line 1558
    iget-object v0, p1, Lcom/perm/kate/api/Photo;->tags_count:Ljava/lang/Integer;

    iput-object v0, v1, Lcom/perm/kate/api/Photo;->tags_count:Ljava/lang/Integer;

    .line 1559
    iget-object p1, p1, Lcom/perm/kate/api/Photo;->user_id:Ljava/lang/String;

    iput-object p1, v1, Lcom/perm/kate/api/Photo;->user_id:Ljava/lang/String;

    .line 1560
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->updated_counts:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private wholikes()V
    .locals 4

    .line 1193
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1194
    const-class v1, Lcom/perm/kate/LikesActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1195
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v1, v1, Lcom/perm/kate/api/Photo;->pid:J

    const-string v3, "com.perm.kate.item_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1196
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "com.perm.kate.owner_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.perm.kate.item_type"

    const-string v2, "photo"

    .line 1197
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1198
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 10

    .line 415
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 418
    :cond_0
    iget-wide v2, v0, Lcom/perm/kate/api/Photo;->pid:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    const/16 v2, 0x3e9

    const v3, 0x7f0f05a2

    .line 423
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_1
    const/4 v0, 0x3

    const/16 v2, 0x3f1

    const v3, 0x7f0f02a6

    .line 433
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x108004e

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 435
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v6, v0, Lcom/perm/kate/api/Photo;->pid:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_2

    const/16 v0, 0x1a

    const/16 v3, 0x3f3

    const v6, 0x7f0f02ba

    .line 436
    invoke-interface {p1, v1, v0, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x1080050

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 437
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->isMeOrFriend()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xb

    const/16 v3, 0x271f

    const v6, 0x7f0f0237

    .line 438
    invoke-interface {p1, v1, v0, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 439
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->canEdit(Lcom/perm/kate/api/Photo;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0xc

    const/16 v3, 0x2721

    const v6, 0x7f0f0233

    .line 440
    invoke-interface {p1, v1, v0, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 441
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v6, v0, Lcom/perm/kate/api/Photo;->pid:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_5

    const/16 v0, 0xd

    const/16 v3, 0x2723

    const v6, 0x7f0f01db

    .line 442
    invoke-interface {p1, v1, v0, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v0, 0xe

    const/16 v3, 0x2725

    const v6, 0x7f0f0266

    .line 443
    invoke-interface {p1, v1, v0, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v0, 0x1b

    const/16 v3, 0x2726

    const v6, 0x7f0f050e

    .line 444
    invoke-interface {p1, v1, v0, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 446
    :cond_5
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/perm/kate/PhotoViewerActrivity;->isMy(J)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v6, v0, Lcom/perm/kate/api/Photo;->aid:J

    const-wide/16 v8, -0x6

    cmp-long v0, v6, v8

    if-nez v0, :cond_6

    const/16 v0, 0x23

    const/16 v3, 0x2727

    const v6, 0x7f0f032d

    .line 447
    invoke-interface {p1, v1, v0, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_6
    const/4 v0, 0x4

    const/16 v3, 0x2728

    const v6, 0x7f0f046c

    .line 448
    invoke-interface {p1, v1, v0, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x1080051

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 449
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->isPhotoClickEnabled()Z

    move-result v0

    if-nez v0, :cond_8

    .line 450
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->getInfoPanelsFlag()Z

    move-result v0

    const/16 v3, 0x2729

    const/16 v6, 0xf

    if-eqz v0, :cond_7

    const v0, 0x7f0f0211

    .line 451
    invoke-interface {p1, v1, v6, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    :cond_7
    const v0, 0x7f0f02be

    .line 453
    invoke-interface {p1, v1, v6, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 455
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/perm/kate/PhotoViewerActrivity;->isMy(J)Z

    move-result v0

    if-nez v0, :cond_9

    const/16 v0, 0x18

    const/16 v3, 0x403

    const v6, 0x7f0f02a8

    .line 456
    invoke-interface {p1, v1, v0, v3, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 457
    :cond_9
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->canDelete(Lcom/perm/kate/api/Photo;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x1d

    const/16 v2, 0x405

    const v3, 0x7f0f00ba

    .line 458
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v2, 0x108003c

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 459
    :cond_a
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/perm/kate/PhotoViewerActrivity;->isMy(J)Z

    move-result v0

    if-nez v0, :cond_b

    const/16 v0, 0x22

    const/16 v2, 0x2731

    const v3, 0x7f0f01d7

    .line 460
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_b
    const/16 v0, 0x26

    const/16 v2, 0x273b

    const v3, 0x7f0f045a

    .line 461
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 464
    iget-boolean v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->high_quality:Z

    const/16 v2, 0x2745

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v6, v0, Lcom/perm/kate/api/Photo;->pid:J

    cmp-long v0, v6, v4

    if-eqz v0, :cond_c

    const/16 v0, 0x27

    const v3, 0x7f0f03b2

    .line 465
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 466
    :cond_c
    invoke-static {}, Lcom/perm/kate/PhotoViewerActrivity;->isBlind()Z

    move-result v0

    if-eqz v0, :cond_d

    const/16 v0, 0x28

    const-string v3, "\u041f\u043e\u043b\u0443\u0447\u0438\u0442\u044c \u043e\u043f\u0438\u0441\u0430\u043d\u0438\u0435"

    .line 467
    invoke-interface {p1, v1, v0, v2, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    :cond_d
    const/4 p1, 0x1

    return p1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 843
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 845
    iget v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTagsState:I

    if-lez v2, :cond_1

    .line 846
    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTags:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 847
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 848
    :cond_0
    invoke-direct {p0, v0}, Lcom/perm/kate/PhotoViewerActrivity;->showPhotoTags(Z)V

    :cond_1
    const/16 v0, 0xc

    if-ne p1, v0, :cond_2

    if-ne p2, v1, :cond_2

    const-string v0, "com.perm.kate.photo_caption"

    .line 852
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 853
    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iput-object v0, v2, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    .line 854
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->displayPhotoInfo()V

    :cond_2
    const/16 v0, 0xd

    const-wide/16 v2, 0x0

    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_3

    const-string v0, "com.perm.kate.aid"

    .line 857
    invoke-virtual {p3, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-lez v0, :cond_3

    .line 859
    invoke-direct {p0, v4, v5}, Lcom/perm/kate/PhotoViewerActrivity;->moveToAlbum(J)V

    :cond_3
    const/16 v0, 0xb

    if-ne p1, v0, :cond_4

    if-ne p2, v1, :cond_4

    const-string p1, "group_id"

    .line 862
    invoke-virtual {p3, p1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    const-wide/16 v0, -0x1

    mul-long p1, p1, v0

    .line 863
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/PhotoViewerActrivity;->showWallPostForCurrentPhoto(J)V

    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    const-string v0, "com.perm.kate.photos"

    .line 132
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    :try_start_0
    invoke-static {}, Lcom/perm/kate/PhotoViewerActrivity;->isMeizu()Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x400

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    :cond_0
    const/4 v1, 0x1

    .line 138
    iput-boolean v1, p0, Lcom/perm/kate/BaseActivity;->no_translucent_status:Z

    const v2, 0x7f0c00f5

    .line 139
    invoke-virtual {p0, v2}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const v2, 0x7f0f0265

    .line 140
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(I)V

    const v2, 0x7f090179

    .line 141
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/ContentLayout;

    iput-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    const v2, 0x7f090364

    .line 142
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_description:Landroid/widget/TextView;

    .line 143
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->details_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0901dc

    .line 144
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->ll_placeholder_info:Landroid/widget/LinearLayout;

    const v2, 0x7f090201

    .line 145
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->ll_zoom_buttons:Landroid/widget/LinearLayout;

    const v2, 0x7f090147

    .line 146
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->fl_tags_placeholder:Landroid/widget/RelativeLayout;

    const v2, 0x7f0901ac

    .line 147
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->zoom_leftListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0901ab

    .line 148
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->zoom_centerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0901ad

    .line 149
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->zoom_rightListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09007e

    .line 154
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_likes:Landroid/widget/ImageButton;

    const v2, 0x7f090071

    .line 155
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_comments:Landroid/widget/ImageButton;

    const v2, 0x7f090097

    .line 156
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_tags:Landroid/widget/ImageButton;

    .line 157
    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_likes:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->likes_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_likes:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->likes_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 159
    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_comments:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->comments_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_comments:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->comments_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 161
    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_tags:Landroid/widget/ImageButton;

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->tags_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090093

    .line 162
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->share_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090382

    .line 163
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_likes_count:Landroid/widget/TextView;

    const v2, 0x7f09035e

    .line 164
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_comments_count:Landroid/widget/TextView;

    const v2, 0x7f0903dd

    .line 165
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_tags_count:Landroid/widget/TextView;

    const v2, 0x7f090197

    .line 166
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->iv_liked_marker:Landroid/widget/ImageView;

    const v2, 0x7f090193

    .line 167
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->iv_comments_marker:Landroid/widget/ImageView;

    const v2, 0x7f0901a5

    .line 168
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->iv_tags_marker:Landroid/widget/ImageView;

    const v2, 0x7f0901cf

    .line 169
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->ll_counters:Landroid/widget/LinearLayout;

    const v2, 0x7f090203

    .line 170
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/PhotoViewerActrivity$1;

    invoke-direct {v3, p0}, Lcom/perm/kate/PhotoViewerActrivity$1;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.perm.kate.position"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "high_quality"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->high_quality:Z

    if-eqz p1, :cond_1

    const-string v2, "position"

    .line 185
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "panels_visible"

    .line 186
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 187
    invoke-direct {p0, v4}, Lcom/perm/kate/PhotoViewerActrivity;->showPlaceholderInfo(I)V

    .line 190
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "com.perm.kate.owner_id"

    const-wide/16 v5, 0x0

    invoke-virtual {p1, v3, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/perm/kate/PhotoViewerActrivity;->owner_id:J

    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 193
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->photos:Ljava/util/ArrayList;

    goto :goto_0

    .line 195
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "album_id"

    invoke-virtual {p1, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 198
    new-instance p1, Lcom/perm/kate/PhotoList;

    iget-wide v8, p0, Lcom/perm/kate/PhotoViewerActrivity;->owner_id:J

    new-instance v12, Lcom/perm/kate/PhotoViewerActrivity$$ExternalSyntheticLambda0;

    invoke-direct {v12, p0}, Lcom/perm/kate/PhotoViewerActrivity$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Lcom/perm/kate/PhotoList;-><init>(JJLcom/perm/utils/SimpleListener;)V

    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoList:Lcom/perm/kate/PhotoList;

    .line 206
    invoke-virtual {p1}, Lcom/perm/kate/PhotoList;->fetchPhotos()V

    .line 207
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoList:Lcom/perm/kate/PhotoList;

    iget-object v0, p1, Lcom/perm/kate/PhotoList;->photos:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photos:Ljava/util/ArrayList;

    .line 208
    iput v4, p1, Lcom/perm/kate/PhotoList;->state:I

    .line 210
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.info_position_offset"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->info_position_offset:I

    .line 211
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.info_total_count"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->info_total_count:I

    .line 212
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.is_graffiti"

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->is_graffiti:Z

    .line 213
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->photos:Ljava/util/ArrayList;

    if-nez p1, :cond_3

    return-void

    .line 215
    :cond_3
    new-instance p1, Lcom/perm/kate/PhotoViewerAdapter;

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photos:Ljava/util/ArrayList;

    invoke-direct {p1, v0, p0}, Lcom/perm/kate/PhotoViewerAdapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->photo_viewer_adapter:Lcom/perm/kate/PhotoViewerAdapter;

    .line 216
    iget-boolean v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->high_quality:Z

    if-eqz v0, :cond_4

    .line 217
    invoke-virtual {p1}, Lcom/perm/kate/PhotoViewerAdapter;->setHighQuality()V

    .line 218
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->photo_viewer_adapter:Lcom/perm/kate/PhotoViewerAdapter;

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->zooming_listener:Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;

    invoke-virtual {p1, v0}, Lcom/perm/kate/PhotoViewerAdapter;->setOnZoomingListener(Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;)V

    .line 219
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photo_viewer_adapter:Lcom/perm/kate/PhotoViewerAdapter;

    invoke-virtual {p1, v0}, Lcom/perm/kate/ContentLayout;->setAdapter(Landroid/widget/Adapter;)V

    .line 220
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {p1, v2}, Lcom/perm/kate/ContentLayout;->setCurrentScreen(I)V

    .line 221
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Photo;

    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    .line 223
    iget-object p1, p1, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    if-eqz p1, :cond_5

    const-string v0, "story"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->is_story:Z

    if-nez p1, :cond_6

    .line 226
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 228
    :cond_6
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {p1, p0}, Lcom/perm/kate/ContentLayout;->setViewChangeListener(Lcom/perm/kate/ContentLayout$ViewChangeListener;)V

    .line 229
    invoke-direct {p0, v4}, Lcom/perm/kate/PhotoViewerActrivity;->showPlaceholderInfo(I)V

    .line 230
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->showZoomButtons()V

    .line 231
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->showHideInfoPanels()V

    .line 232
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->displayPhotoInfo()V

    .line 235
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_7

    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Photo;

    iget-object p1, p1, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->isGraffiti(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    const p1, 0x7f0902aa

    .line 236
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 237
    invoke-static {p0, v1}, Lcom/perm/kate/Helper;->fixNavBarColor(Landroid/app/Activity;Z)V

    goto :goto_2

    .line 239
    :cond_7
    invoke-static {p0, v4}, Lcom/perm/kate/Helper;->fixNavBarColor(Landroid/app/Activity;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 241
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 242
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 243
    instance-of p1, p1, Ljava/lang/OutOfMemoryError;

    if-eqz p1, :cond_8

    .line 244
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    :cond_8
    :goto_2
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1391
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photo_viewer_adapter:Lcom/perm/kate/PhotoViewerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1392
    invoke-virtual {v0}, Lcom/perm/kate/PhotoViewerAdapter;->Destroy()V

    .line 1393
    iput-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->photo_viewer_adapter:Lcom/perm/kate/PhotoViewerAdapter;

    .line 1395
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    if-eqz v0, :cond_1

    .line 1396
    invoke-virtual {v0, v1}, Lcom/perm/kate/ContentLayout;->setAdapter(Landroid/widget/Adapter;)V

    .line 1397
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {v0, v1}, Lcom/perm/kate/ContentLayout;->setViewChangeListener(Lcom/perm/kate/ContentLayout$ViewChangeListener;)V

    .line 1398
    iput-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    .line 1400
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoList:Lcom/perm/kate/PhotoList;

    if-eqz v0, :cond_2

    .line 1401
    iput-object v1, v0, Lcom/perm/kate/PhotoList;->listener:Lcom/perm/utils/SimpleListener;

    .line 1402
    :cond_2
    iput-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoList:Lcom/perm/kate/PhotoList;

    .line 1404
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method public onFinishedScroll(Landroid/view/View;)V
    .locals 1

    .line 344
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {p1}, Lcom/perm/kate/ContentLayout;->getCurrentScreenView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 347
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Photo;

    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    .line 348
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->displayPhotoInfo()V

    .line 349
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->clearPhotoTags()V

    const/4 p1, 0x0

    .line 350
    iput p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTagsState:I

    .line 353
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoList:Lcom/perm/kate/PhotoList;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {p1}, Lcom/perm/kate/ContentLayout;->getCurrentScreen()I

    move-result p1

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photo_viewer_adapter:Lcom/perm/kate/PhotoViewerAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/PhotoViewerAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-lt p1, v0, :cond_1

    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoList:Lcom/perm/kate/PhotoList;

    iget v0, p1, Lcom/perm/kate/PhotoList;->state:I

    if-nez v0, :cond_1

    .line 354
    invoke-virtual {p1, p0}, Lcom/perm/kate/PhotoList;->loadMore(Lcom/perm/kate/BaseActivity;)V

    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 548
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    const/4 v2, 0x4

    if-eq v0, v2, :cond_6

    const/16 v2, 0x18

    if-eq v0, v2, :cond_5

    const/16 v2, 0x1d

    if-eq v0, v2, :cond_4

    const/16 v2, 0x1a

    if-eq v0, v2, :cond_3

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_2

    const/16 v2, 0x22

    if-eq v0, v2, :cond_1

    const/16 v2, 0x23

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 616
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->describeForBlindPrompt()V

    .line 619
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 613
    :pswitch_1
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->openHighQuality()V

    return v1

    .line 610
    :pswitch_2
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->chooseSearchEngine()V

    return v1

    .line 592
    :pswitch_3
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->setShowHideInfoPanels()V

    return v1

    .line 586
    :pswitch_4
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->openPhotoOwner()V

    return v1

    .line 583
    :pswitch_5
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->showCopyPhotoLinkDialog()V

    return v1

    .line 580
    :pswitch_6
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->showEditDialog()V

    return v1

    .line 577
    :pswitch_7
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->openSinglePhotoViewer()V

    return v1

    .line 574
    :pswitch_8
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->OnPhotoTags()V

    return v1

    .line 571
    :pswitch_9
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->wholikes()V

    return v1

    .line 568
    :pswitch_a
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->unlike()V

    return v1

    .line 565
    :pswitch_b
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->like()V

    return v1

    .line 607
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->makeMainProfilePhoto()V

    return v1

    .line 604
    :cond_1
    new-instance p1, Lcom/perm/kate/ReportHelper;

    invoke-direct {p1, p0}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v2, v0, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/perm/kate/ReportHelper;->showReportPhotoDialog(JJ)V

    return v1

    .line 589
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->showPhotoDetailsActivity()V

    return v1

    .line 598
    :cond_3
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->showShareDialog()V

    return v1

    .line 601
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->confirmDeletePhoto(Lcom/perm/kate/api/Photo;)V

    return v1

    .line 595
    :cond_5
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->saveToMyAlbum()V

    return v1

    .line 562
    :cond_6
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->SetAs()V

    return v1

    .line 556
    :cond_7
    invoke-static {}, Lcom/perm/kate/PhotoSaver;->isScopedStorage()Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_8

    new-array v0, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 557
    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_1

    .line 559
    :cond_8
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->savePhotoToSD()V

    :goto_1
    return v1

    .line 553
    :cond_9
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->ShowNewCommentActivity()V

    return v1

    .line 550
    :cond_a
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->ShowCommentsActivity()V

    return v1

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x26
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .line 406
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 407
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    if-nez v0, :cond_0

    .line 408
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1

    .line 409
    :cond_0
    invoke-virtual {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 410
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    return-void

    .line 627
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 628
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->savePhotoToSD()V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1381
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1383
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    if-nez v0, :cond_0

    return-void

    .line 1385
    :cond_0
    invoke-virtual {v0}, Lcom/perm/kate/ContentLayout;->getCurrentScreen()I

    move-result v0

    const-string v1, "position"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1386
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->ll_placeholder_info:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "panels_visible"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onScroll()V
    .locals 0

    .line 333
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->hidePhotoTags()V

    return-void
.end method

.method public onVerticalSwipe()V
    .locals 1

    .line 338
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
