.class public Lcom/perm/kate/PhotoViewerActrivity;
.super Lcom/perm/kate/BaseActivity;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Lcom/perm/kate/ContentLayout$ViewChangeListener;


# instance fields
.field private final REQUEST_PHOTO_EDIT:I

.field private final REQUEST_PHOTO_MOVE:I

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

.field private iv_comments_marker:Landroid/widget/ImageView;

.field private iv_liked_marker:Landroid/widget/ImageView;

.field private iv_tags_marker:Landroid/widget/ImageView;

.field private likes_OnClickListerer:Landroid/view/View$OnClickListener;

.field private likes_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

.field private ll_counters:Landroid/widget/LinearLayout;

.field private ll_placeholder_info:Landroid/widget/LinearLayout;

.field private ll_zoom_buttons:Landroid/widget/LinearLayout;

.field owner_id:J

.field private photoTags:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/PhotoTag;",
            ">;"
        }
    .end annotation
.end field

.field private photoTagsState:I

.field private photo_copy_callback:Lcom/perm/kate/session/Callback;

.field private photo_viewer_adapter:Lcom/perm/kate/PhotoViewerAdapter;

.field private share_OnClickListerer:Landroid/view/View$OnClickListener;

.field private tag_callback:Lcom/perm/kate/session/Callback;

.field private tags_OnClickListerer:Landroid/view/View$OnClickListener;

.field private tv_comments_count:Landroid/widget/TextView;

.field private tv_description:Landroid/widget/TextView;

.field private tv_likes_count:Landroid/widget/TextView;

.field private tv_tags_count:Landroid/widget/TextView;

.field private updated_counts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private zoom_centerListener:Landroid/view/View$OnClickListener;

.field private zoom_leftListener:Landroid/view/View$OnClickListener;

.field private zoom_rightListener:Landroid/view/View$OnClickListener;

.field private zooming_listener:Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 57
    const/16 v0, 0xc

    iput v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->REQUEST_PHOTO_EDIT:I

    .line 58
    const/16 v0, 0xd

    iput v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->REQUEST_PHOTO_MOVE:I

    .line 97
    iput-boolean v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->is_graffiti:Z

    .line 233
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$1;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->zoom_leftListener:Landroid/view/View$OnClickListener;

    .line 239
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$2;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->zoom_centerListener:Landroid/view/View$OnClickListener;

    .line 245
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$3;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->zoom_rightListener:Landroid/view/View$OnClickListener;

    .line 259
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$4;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->zooming_listener:Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;

    .line 816
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$10;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PhotoViewerActrivity$10;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tag_callback:Lcom/perm/kate/session/Callback;

    .line 843
    iput v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTagsState:I

    .line 931
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->handlerTimer:Landroid/os/Handler;

    .line 1103
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$20;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PhotoViewerActrivity$20;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->callback_like:Lcom/perm/kate/session/Callback;

    .line 1113
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$21;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PhotoViewerActrivity$21;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->callback_unlike:Lcom/perm/kate/session/Callback;

    .line 1259
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$22;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$22;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->likes_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 1271
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$23;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$23;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->likes_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

    .line 1281
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$24;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$24;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->details_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 1287
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$25;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$25;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->comments_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 1293
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$26;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$26;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->comments_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

    .line 1303
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$27;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$27;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tags_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 1311
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$28;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$28;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->share_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 1341
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$30;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PhotoViewerActrivity$30;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->counters_callback:Lcom/perm/kate/session/Callback;

    .line 1428
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->updated_counts:Ljava/util/HashMap;

    .line 1477
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$33;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PhotoViewerActrivity$33;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photo_copy_callback:Lcom/perm/kate/session/Callback;

    .line 1514
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$36;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PhotoViewerActrivity$36;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->callback_delete:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method private OnPhotoTags()V
    .locals 2

    .prologue
    .line 794
    iget v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTagsState:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTagsState:I

    .line 795
    iget v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTagsState:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 796
    const/4 v0, 0x0

    iput v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTagsState:I

    .line 797
    :cond_0
    iget v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTagsState:I

    if-nez v0, :cond_1

    .line 798
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->hidePhotoTags()V

    .line 802
    :goto_0
    return-void

    .line 800
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/perm/kate/PhotoViewerActrivity;->showPhotoTags(Z)V

    goto :goto_0
.end method

.method private SetAs()V
    .locals 8

    .prologue
    .line 1138
    const-string v2, "image/jpg"

    .line 1139
    .local v2, "mimeType":Ljava/lang/String;
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v7, v7, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1140
    .local v0, "cache_file":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 1143
    .local v5, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static {}, Lcom/perm/kate/PhotoViewerActrivity;->getTempFile()Ljava/io/File;

    move-result-object v3

    .line 1144
    .local v3, "temp_file":Ljava/io/File;
    invoke-virtual {p0, v0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 1145
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1151
    .end local v3    # "temp_file":Ljava/io/File;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.ATTACH_DATA"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1152
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1153
    const-string v6, "mimeType"

    invoke-virtual {v1, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    const-string v6, "Set As"

    invoke-static {v1, v6}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/perm/kate/PhotoViewerActrivity;->startActivity(Landroid/content/Intent;)V

    .line 1157
    return-void

    .line 1147
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 1148
    .local v4, "th":Ljava/lang/Throwable;
    invoke-static {v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 1149
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private ShowCommentsActivity()V
    .locals 6

    .prologue
    .line 1200
    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    if-nez v2, :cond_0

    .line 1209
    :goto_0
    return-void

    .line 1202
    :cond_0
    const-wide/16 v0, 0x0

    .line 1203
    .local v0, "owner_id1":J
    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 1204
    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1207
    :cond_1
    :goto_1
    iget-boolean v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->is_graffiti:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v4, v3, Lcom/perm/kate/api/Photo;->pid:J

    .line 1208
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1207
    invoke-static {v2, v3, v0, v1, p0}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto :goto_0

    .line 1205
    :cond_2
    iget-wide v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->owner_id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 1206
    iget-wide v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->owner_id:J

    goto :goto_1

    .line 1207
    :cond_3
    const/4 v2, 0x0

    goto :goto_2
.end method

.method private ShowNewCommentActivity()V
    .locals 4

    .prologue
    .line 1190
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1191
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1192
    const-string v1, "com.perm.kate.pid"

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v2, v2, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1193
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1194
    const-string v1, "com.perm.kate.owner_id"

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1195
    :cond_0
    const-string v2, "com.perm.kate.comment_type"

    iget-boolean v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->is_graffiti:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1196
    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoViewerActrivity;->startActivity(Landroid/content/Intent;)V

    .line 1197
    return-void

    .line 1195
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/perm/kate/PhotoViewerActrivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->setZoom(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/ContentLayout;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/PhotoViewerActrivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;
    .param p1, "x1"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/PhotoViewerActrivity;->showWallPostForCurrentPhoto(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->shareTo()V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->sharePhoto()V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->repostToGroup()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/PhotoViewerActrivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;
    .param p1, "x1"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->copyDirectPhotoLink(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tag_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/perm/kate/PhotoViewerActrivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTags:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/perm/kate/PhotoViewerActrivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTags:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->showPhotoTagsUI()V

    return-void
.end method

.method static synthetic access$1800(Lcom/perm/kate/PhotoViewerActrivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->showPhotoTags(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/PhotoTag;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;
    .param p1, "x1"    # Lcom/perm/kate/api/PhotoTag;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->onClickByPhotoTag(Lcom/perm/kate/api/PhotoTag;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->hidePhotoTags()V

    return-void
.end method

.method static synthetic access$2000(Lcom/perm/kate/PhotoViewerActrivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->openProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/PhotoTag;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;
    .param p1, "x1"    # Lcom/perm/kate/api/PhotoTag;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->deletePhotoTag(Lcom/perm/kate/api/PhotoTag;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/perm/kate/PhotoViewerActrivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    iget v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTagsState:I

    return v0
.end method

.method static synthetic access$2300(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->displayCounts()V

    return-void
.end method

.method static synthetic access$2400(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->callback_unlike:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->callback_like:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->unlike()V

    return-void
.end method

.method static synthetic access$2700(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->like()V

    return-void
.end method

.method static synthetic access$2800(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->wholikes()V

    return-void
.end method

.method static synthetic access$2900(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->showPhotoDetailsActivity()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->postRunShowPhotoTags()V

    return-void
.end method

.method static synthetic access$3000(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->ShowCommentsActivity()V

    return-void
.end method

.method static synthetic access$3100(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->ShowNewCommentActivity()V

    return-void
.end method

.method static synthetic access$3200(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->OnPhotoTags()V

    return-void
.end method

.method static synthetic access$3300(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->showShareDialog()V

    return-void
.end method

.method static synthetic access$3400(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->counters_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/Photo;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;
    .param p1, "x1"    # Lcom/perm/kate/api/Photo;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->updatePhotoCounts(Lcom/perm/kate/api/Photo;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/Photo;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;
    .param p1, "x1"    # Lcom/perm/kate/api/Photo;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->displayCountsInUiThread(Lcom/perm/kate/api/Photo;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photo_copy_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/perm/kate/PhotoViewerActrivity;Ljava/lang/Long;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->onSuccessPhotoCopy(Ljava/lang/Long;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/Photo;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;
    .param p1, "x1"    # Lcom/perm/kate/api/Photo;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->deletePhoto(Lcom/perm/kate/api/Photo;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/PhotoViewerActrivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->isPhotoClickEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->callback_delete:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->selectPhotoSize()V

    return-void
.end method

.method static synthetic access$4200(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->showAlbums()V

    return-void
.end method

.method static synthetic access$4300(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->photoEdit()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->setShowHideInfoPanels()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->searchInGoogle()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->searchInYandex()V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    return-object v0
.end method

.method static synthetic access$900(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->sendToFriend()V

    return-void
.end method

.method public static canDelete(Lcom/perm/kate/api/Photo;)Z
    .locals 12
    .param p0, "currentPhoto"    # Lcom/perm/kate/api/Photo;

    .prologue
    .line 447
    :try_start_0
    iget-wide v8, p0, Lcom/perm/kate/api/Photo;->pid:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 448
    const/4 v7, 0x0

    .line 465
    :goto_0
    return v7

    .line 449
    :cond_0
    iget-object v7, p0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 450
    const/4 v7, 0x0

    goto :goto_0

    .line 451
    :cond_1
    sget-object v7, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v8, p0, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v10, p0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/perm/kate/db/DataHelper;->fetchPhotoFull(JJ)Lcom/perm/kate/api/Photo;

    move-result-object v6

    .line 452
    .local v6, "photo":Lcom/perm/kate/api/Photo;
    if-nez v6, :cond_2

    .line 453
    const/4 v7, 0x0

    goto :goto_0

    .line 454
    :cond_2
    iget-object v7, p0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 455
    .local v0, "_owner_id":J
    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-gez v7, :cond_3

    .line 457
    const/4 v7, 0x1

    goto :goto_0

    .line 458
    :cond_3
    sget-object v7, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v7}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 459
    .local v2, "account_id":J
    cmp-long v7, v0, v2

    if-nez v7, :cond_4

    const/4 v7, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    goto :goto_0

    .line 460
    .end local v0    # "_owner_id":J
    .end local v2    # "account_id":J
    .end local v6    # "photo":Lcom/perm/kate/api/Photo;
    :catch_0
    move-exception v4

    .line 461
    .local v4, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 462
    .local v5, "info":Ljava/lang/String;
    if-eqz p0, :cond_5

    .line 463
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 464
    :cond_5
    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 465
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public static canEdit(Lcom/perm/kate/api/Photo;)Z
    .locals 12
    .param p0, "currentPhoto"    # Lcom/perm/kate/api/Photo;

    .prologue
    .line 421
    :try_start_0
    iget-wide v8, p0, Lcom/perm/kate/api/Photo;->pid:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 422
    const/4 v7, 0x0

    .line 441
    :goto_0
    return v7

    .line 423
    :cond_0
    iget-object v7, p0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 424
    const/4 v7, 0x0

    goto :goto_0

    .line 425
    :cond_1
    sget-object v7, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v8, p0, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v10, p0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/perm/kate/db/DataHelper;->fetchPhotoFull(JJ)Lcom/perm/kate/api/Photo;

    move-result-object v6

    .line 426
    .local v6, "photo":Lcom/perm/kate/api/Photo;
    if-nez v6, :cond_2

    .line 427
    const/4 v7, 0x0

    goto :goto_0

    .line 429
    :cond_2
    iget-wide v8, v6, Lcom/perm/kate/api/Photo;->aid:J

    const-wide/16 v10, -0x6

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    .line 430
    const/4 v7, 0x0

    goto :goto_0

    .line 431
    :cond_3
    iget-object v7, p0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 432
    .local v0, "_owner_id":J
    sget-object v7, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v7}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 433
    .local v2, "account_id":J
    const-wide/16 v8, 0x0

    cmp-long v7, v0, v8

    if-gez v7, :cond_4

    .line 434
    const/4 v7, 0x1

    goto :goto_0

    .line 435
    :cond_4
    cmp-long v7, v0, v2

    if-nez v7, :cond_5

    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    .line 436
    .end local v0    # "_owner_id":J
    .end local v2    # "account_id":J
    .end local v6    # "photo":Lcom/perm/kate/api/Photo;
    :catch_0
    move-exception v4

    .line 437
    .local v4, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 438
    .local v5, "info":Ljava/lang/String;
    if-eqz p0, :cond_6

    .line 439
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-wide v8, p0, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 440
    :cond_6
    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 441
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private changeInfoPanelsFlag()V
    .locals 5

    .prologue
    .line 1450
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1451
    .local v1, "mPrefs":Landroid/content/SharedPreferences;
    const-string v3, "key_info_panels"

    const-string v4, "1"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1452
    .local v2, "value":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "0"

    .line 1453
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1454
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v3, "key_info_panels"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1455
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1456
    return-void

    .line 1452
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_0
    const-string v2, "1"

    goto :goto_0
.end method

.method private chooseSearchEngine()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 576
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const-string v4, "Yandex"

    invoke-direct {v3, v4, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const-string v4, "Google"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 580
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/PhotoViewerActrivity$5;

    invoke-direct {v5, p0, v1}, Lcom/perm/kate/PhotoViewerActrivity$5;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 590
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 591
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 592
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 593
    return-void
.end method

.method private clearPhotoTags()V
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->fl_tags_placeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 922
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTags:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTags:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 924
    :cond_0
    return-void
.end method

.method private confirmDeletePhoto(Lcom/perm/kate/api/Photo;)V
    .locals 6
    .param p1, "photo"    # Lcom/perm/kate/api/Photo;

    .prologue
    .line 1486
    new-instance v2, Lcom/perm/kate/PhotoViewerActrivity$34;

    invoke-direct {v2, p0, p1}, Lcom/perm/kate/PhotoViewerActrivity$34;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/Photo;)V

    .line 1492
    .local v2, "yesClick":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070170

    .line 1493
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07051d

    .line 1494
    invoke-virtual {v3, v4, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070319

    const/4 v5, 0x0

    .line 1495
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 1496
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 1497
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1498
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1499
    return-void
.end method

.method private copyDirectPhotoLink(I)V
    .locals 2
    .param p1, "photo_size"    # I

    .prologue
    .line 1554
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1555
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v1, Lcom/perm/kate/api/Photo;->src_xbig:Ljava/lang/String;

    .line 1563
    .local v0, "url":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p0}, Lcom/perm/kate/Helper;->copyText(Ljava/lang/String;Landroid/content/Context;)V

    .line 1564
    return-void

    .line 1556
    .end local v0    # "url":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1557
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v1, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    .restart local v0    # "url":Ljava/lang/String;
    goto :goto_0

    .line 1558
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1559
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v1, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    .restart local v0    # "url":Ljava/lang/String;
    goto :goto_0

    .line 1561
    .end local v0    # "url":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .restart local v0    # "url":Ljava/lang/String;
    goto :goto_0
.end method

.method private deletePhoto(Lcom/perm/kate/api/Photo;)V
    .locals 6
    .param p1, "photo"    # Lcom/perm/kate/api/Photo;

    .prologue
    .line 1502
    iget-object v2, p1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1503
    .local v0, "owner_id":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 1504
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p1, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/perm/kate/db/DataHelper;->deletePhoto(JJ)Z

    .line 1506
    :cond_0
    new-instance v2, Lcom/perm/kate/PhotoViewerActrivity$35;

    invoke-direct {v2, p0, v0, v1, p1}, Lcom/perm/kate/PhotoViewerActrivity$35;-><init>(Lcom/perm/kate/PhotoViewerActrivity;JLcom/perm/kate/api/Photo;)V

    .line 1511
    invoke-virtual {v2}, Lcom/perm/kate/PhotoViewerActrivity$35;->start()V

    .line 1512
    return-void
.end method

.method private deletePhotoTag(Lcom/perm/kate/api/PhotoTag;)V
    .locals 2
    .param p1, "pt"    # Lcom/perm/kate/api/PhotoTag;

    .prologue
    .line 995
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$16;

    invoke-direct {v0, p0, p0, p1}, Lcom/perm/kate/PhotoViewerActrivity$16;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;Lcom/perm/kate/api/PhotoTag;)V

    .line 1019
    .local v0, "remove_callback":Lcom/perm/kate/session/Callback;
    new-instance v1, Lcom/perm/kate/PhotoViewerActrivity$17;

    invoke-direct {v1, p0, p1, v0}, Lcom/perm/kate/PhotoViewerActrivity$17;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/PhotoTag;Lcom/perm/kate/session/Callback;)V

    .line 1024
    invoke-virtual {v1}, Lcom/perm/kate/PhotoViewerActrivity$17;->start()V

    .line 1025
    return-void
.end method

.method private displayCounts()V
    .locals 8

    .prologue
    const v7, 0x7f020102

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1387
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v0, v0, Lcom/perm/kate/api/Photo;->pid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->high_quality:Z

    if-eqz v0, :cond_1

    .line 1388
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->ll_counters:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1426
    :goto_0
    return-void

    .line 1392
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 1393
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_likes_count:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1394
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_likes_count:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1397
    :goto_1
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->iv_liked_marker:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f020105

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1399
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_4

    .line 1400
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_comments_count:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1401
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_comments_count:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1402
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_comments:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1403
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->iv_comments_marker:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1416
    :goto_3
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->tags_count:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->tags_count:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_5

    .line 1417
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_tags:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1418
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->iv_tags_marker:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1419
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_tags_count:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->tags_count:Ljava/lang/Integer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1420
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_tags_count:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1396
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_likes_count:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1397
    :cond_3
    const v0, 0x7f020106

    goto :goto_2

    .line 1410
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_comments_count:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1411
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_comments:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1412
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->iv_comments_marker:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 1422
    :cond_5
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_tags:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1423
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->iv_tags_marker:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1424
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_tags_count:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private displayCountsInUiThread(Lcom/perm/kate/api/Photo;)V
    .locals 1
    .param p1, "photo"    # Lcom/perm/kate/api/Photo;

    .prologue
    .line 1362
    invoke-virtual {p0}, Lcom/perm/kate/PhotoViewerActrivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1370
    :goto_0
    return-void

    .line 1364
    :cond_0
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$31;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$31;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoViewerActrivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private displayPhotoInfo()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 311
    iget v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->info_position_offset:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->info_total_count:I

    if-lez v1, :cond_0

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {v2}, Lcom/perm/kate/ContentLayout;->getCurrentScreen()I

    move-result v2

    iget v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->info_position_offset:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->info_total_count:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "info_position_text":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_description:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {v1}, Lcom/perm/kate/ContentLayout;->getScreenCount()I

    move-result v1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 319
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_description:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    :goto_1
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->displayCounts()V

    .line 329
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->refreshCounts()V

    .line 330
    return-void

    .line 313
    .end local v0    # "info_position_text":Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->info_total_count:I

    if-lez v1, :cond_1

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {v2}, Lcom/perm/kate/ContentLayout;->getCurrentScreen()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->info_total_count:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "info_position_text":Ljava/lang/String;
    goto :goto_0

    .line 316
    .end local v0    # "info_position_text":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {v2}, Lcom/perm/kate/ContentLayout;->getCurrentScreen()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {v2}, Lcom/perm/kate/ContentLayout;->getScreenCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "info_position_text":Ljava/lang/String;
    goto/16 :goto_0

    .line 320
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {v1}, Lcom/perm/kate/ContentLayout;->getScreenCount()I

    move-result v1

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 321
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_description:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 322
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 323
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_description:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v3, v3, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 325
    :cond_4
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_description:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method private getInfoPanelsFlag()Z
    .locals 4

    .prologue
    .line 1444
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1445
    .local v0, "mPrefs":Landroid/content/SharedPreferences;
    const-string v2, "key_info_panels"

    const-string v3, "1"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1446
    .local v1, "value":Ljava/lang/String;
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private getPhotoTags()V
    .locals 1

    .prologue
    .line 805
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$9;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    .line 813
    invoke-virtual {v0}, Lcom/perm/kate/PhotoViewerActrivity$9;->start()V

    .line 814
    return-void
.end method

.method public static getTempFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 1125
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "image.jpg"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private hidePhotoTags()V
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->fl_tags_placeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 928
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->fl_tags_placeholder:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 929
    :cond_0
    return-void
.end method

.method static isGraffiti(Ljava/lang/String;)Z
    .locals 1
    .param p0, "title"    # Ljava/lang/String;

    .prologue
    .line 208
    if-eqz p0, :cond_1

    const-string v0, "GRAF_"

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

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    :cond_0
    const/4 v0, 0x1

    .line 210
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isMeOrFriend()Z
    .locals 12

    .prologue
    .line 471
    :try_start_0
    iget-object v7, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v8, v7, Lcom/perm/kate/api/Photo;->pid:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-nez v7, :cond_0

    .line 472
    const/4 v7, 0x0

    .line 488
    :goto_0
    return v7

    .line 473
    :cond_0
    iget-object v7, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v7, v7, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 474
    const/4 v7, 0x0

    goto :goto_0

    .line 475
    :cond_1
    sget-object v7, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v8, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v8, v8, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v10, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v10, v10, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/perm/kate/db/DataHelper;->fetchPhotoFull(JJ)Lcom/perm/kate/api/Photo;

    move-result-object v6

    .line 476
    .local v6, "photo":Lcom/perm/kate/api/Photo;
    if-nez v6, :cond_2

    .line 477
    const/4 v7, 0x0

    goto :goto_0

    .line 478
    :cond_2
    iget-wide v8, v6, Lcom/perm/kate/api/Photo;->aid:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_3

    .line 479
    const/4 v7, 0x0

    goto :goto_0

    .line 480
    :cond_3
    iget-object v7, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v7, v7, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 481
    .local v0, "_owner_id":J
    sget-object v7, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v7}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 482
    .local v2, "account_id":J
    cmp-long v7, v0, v2

    if-eqz v7, :cond_4

    sget-object v7, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v7, v2, v3, v0, v1}, Lcom/perm/kate/db/DataHelper;->isFriend(JJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_5

    :cond_4
    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    goto :goto_0

    .line 483
    .end local v0    # "_owner_id":J
    .end local v2    # "account_id":J
    .end local v6    # "photo":Lcom/perm/kate/api/Photo;
    :catch_0
    move-exception v4

    .line 484
    .local v4, "e":Ljava/lang/Exception;
    const/4 v5, 0x0

    .line 485
    .local v5, "info":Ljava/lang/String;
    iget-object v7, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    if-eqz v7, :cond_6

    .line 486
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "pid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v8, v8, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 487
    :cond_6
    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 488
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private isMeizu()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 216
    :try_start_0
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "M040"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "M353"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "M351"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    .line 219
    :cond_1
    :goto_0
    return v1

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private isMy(J)Z
    .locals 3
    .param p1, "photo_owner_id"    # J

    .prologue
    .line 350
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 351
    .local v0, "account_id":J
    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isPhotoClickEnabled()Z
    .locals 3

    .prologue
    .line 1459
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_photo_click"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private like()V
    .locals 2

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1101
    :goto_0
    return-void

    .line 1092
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    .line 1093
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 1094
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v0, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    iget-object v1, v0, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    .line 1095
    :cond_1
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$19;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$19;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    .line 1100
    invoke-virtual {v0}, Lcom/perm/kate/PhotoViewerActrivity$19;->start()V

    goto :goto_0
.end method

.method private makeMainProfilePhoto()V
    .locals 1

    .prologue
    .line 619
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$6;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    .line 650
    invoke-virtual {v0}, Lcom/perm/kate/PhotoViewerActrivity$6;->start()V

    .line 651
    return-void
.end method

.method private moveToAlbum(J)V
    .locals 3
    .param p1, "target_album_id"    # J

    .prologue
    .line 1614
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$39;

    invoke-direct {v0, p0, p0, p1, p2}, Lcom/perm/kate/PhotoViewerActrivity$39;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;J)V

    .line 1631
    .local v0, "move_callback":Lcom/perm/kate/session/Callback;
    new-instance v1, Lcom/perm/kate/PhotoViewerActrivity$40;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/perm/kate/PhotoViewerActrivity$40;-><init>(Lcom/perm/kate/PhotoViewerActrivity;JLcom/perm/kate/session/Callback;)V

    .line 1636
    invoke-virtual {v1}, Lcom/perm/kate/PhotoViewerActrivity$40;->start()V

    .line 1637
    return-void
.end method

.method private onClickByPhotoTag(Lcom/perm/kate/api/PhotoTag;)V
    .locals 6
    .param p1, "pt"    # Lcom/perm/kate/api/PhotoTag;

    .prologue
    .line 946
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 949
    .local v0, "account_id":J
    iget-wide v4, p1, Lcom/perm/kate/api/PhotoTag;->uid:J

    cmp-long v3, v4, v0

    if-nez v3, :cond_0

    .line 950
    const/4 v2, 0x1

    .line 960
    .local v2, "can_remove":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 961
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->showPhotoTagDialog(Lcom/perm/kate/api/PhotoTag;)V

    .line 964
    :goto_1
    return-void

    .line 952
    .end local v2    # "can_remove":Z
    :cond_0
    iget-wide v4, p1, Lcom/perm/kate/api/PhotoTag;->placer_id:J

    cmp-long v3, v4, v0

    if-nez v3, :cond_1

    .line 953
    const/4 v2, 0x1

    .restart local v2    # "can_remove":Z
    goto :goto_0

    .line 956
    .end local v2    # "can_remove":Z
    :cond_1
    iget-object v3, p1, Lcom/perm/kate/api/PhotoTag;->owner_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, v4, v0

    if-nez v3, :cond_2

    .line 957
    const/4 v2, 0x1

    .restart local v2    # "can_remove":Z
    goto :goto_0

    .line 959
    .end local v2    # "can_remove":Z
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "can_remove":Z
    goto :goto_0

    .line 963
    :cond_3
    iget-wide v4, p1, Lcom/perm/kate/api/PhotoTag;->uid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->openProfile(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private onSuccessPhotoCopy(Ljava/lang/Long;)V
    .locals 1
    .param p1, "photo_id"    # Ljava/lang/Long;

    .prologue
    .line 1472
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/perm/kate/PhotoViewerActrivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1473
    const v0, 0x7f0704c5

    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoViewerActrivity;->displayToast(I)V

    .line 1475
    :cond_0
    return-void
.end method

.method private openGroup(J)V
    .locals 5
    .param p1, "gid"    # J

    .prologue
    .line 1036
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/GroupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1037
    .local v0, "group_intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.group_id"

    const-wide/16 v2, -0x1

    mul-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1038
    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoViewerActrivity;->startActivity(Landroid/content/Intent;)V

    .line 1039
    return-void
.end method

.method private openHighQuality()V
    .locals 4

    .prologue
    .line 566
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 567
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 568
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 569
    .local v1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 570
    const-string v2, "com.perm.kate.photos"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 571
    const-string v2, "high_quality"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 572
    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoViewerActrivity;->startActivity(Landroid/content/Intent;)V

    .line 573
    return-void
.end method

.method private openPhotoOwner()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 1043
    const-wide/16 v0, 0x0

    .line 1044
    .local v0, "_id":J
    :try_start_0
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v3, v3, Lcom/perm/kate/api/Photo;->user_id:Ljava/lang/String;

    invoke-static {v3}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1045
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v3, v3, Lcom/perm/kate/api/Photo;->user_id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1046
    :cond_0
    const-wide/16 v4, 0x64

    cmp-long v3, v0, v4

    if-nez v3, :cond_1

    .line 1047
    const-wide/16 v0, 0x0

    .line 1048
    :cond_1
    cmp-long v3, v0, v6

    if-nez v3, :cond_2

    .line 1049
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v3, v3, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v3, v3, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1050
    :cond_2
    :goto_0
    cmp-long v3, v0, v6

    if-lez v3, :cond_5

    .line 1051
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->openProfile(Ljava/lang/String;)V

    .line 1058
    :cond_3
    :goto_1
    return-void

    .line 1049
    :cond_4
    iget-wide v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->owner_id:J

    goto :goto_0

    .line 1052
    :cond_5
    cmp-long v3, v0, v6

    if-gez v3, :cond_3

    .line 1053
    invoke-direct {p0, v0, v1}, Lcom/perm/kate/PhotoViewerActrivity;->openGroup(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1054
    :catch_0
    move-exception v2

    .line 1055
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1056
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private openProfile(Ljava/lang/String;)V
    .locals 2
    .param p1, "user_id"    # Ljava/lang/String;

    .prologue
    .line 1029
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1030
    .local v0, "profile_intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/ProfileInfoActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1031
    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1032
    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoViewerActrivity;->startActivity(Landroid/content/Intent;)V

    .line 1033
    return-void
.end method

.method private openSinglePhotoViewer()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 704
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 705
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/SinglePhotoViewer;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 706
    const-string v1, "com.perm.kate.put_tag"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 707
    const-string v1, "com.perm.kate.photo"

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 708
    invoke-virtual {p0, v0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 709
    return-void
.end method

.method private photoEdit()V
    .locals 4

    .prologue
    .line 1070
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1071
    .local v0, "pe_intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/PhotoEditActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1072
    const-string v1, "com.perm.kate.pid"

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v2, v2, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1073
    const-string v1, "com.perm.kate.owner_id"

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1074
    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/PhotoViewerActrivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1075
    return-void
.end method

.method private postRunShowPhotoTags()V
    .locals 4

    .prologue
    .line 934
    iget v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTagsState:I

    if-nez v0, :cond_0

    .line 943
    :goto_0
    return-void

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->handlerTimer:Landroid/os/Handler;

    new-instance v1, Lcom/perm/kate/PhotoViewerActrivity$14;

    invoke-direct {v1, p0}, Lcom/perm/kate/PhotoViewerActrivity$14;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private refreshCounts()V
    .locals 4

    .prologue
    .line 1319
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v0, v0, Lcom/perm/kate/api/Photo;->pid:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1339
    :cond_0
    :goto_0
    return-void

    .line 1321
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->updated_counts:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v2, v1, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1323
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$29;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$29;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    .line 1338
    invoke-virtual {v0}, Lcom/perm/kate/PhotoViewerActrivity$29;->start()V

    goto :goto_0
.end method

.method private repostToGroup()V
    .locals 3

    .prologue
    .line 712
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 713
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/GroupsActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 714
    const-string v1, "com.perm.kate.select_group"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 715
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/PhotoViewerActrivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 716
    return-void
.end method

.method private savePhotoToSD()V
    .locals 4

    .prologue
    .line 787
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 788
    .local v1, "settings":Landroid/content/SharedPreferences;
    const-string v2, "key_size_saved_photo"

    const-string v3, "0"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 789
    .local v0, "photo_size":I
    invoke-virtual {p0}, Lcom/perm/kate/PhotoViewerActrivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    invoke-static {v2, v3, v0}, Lcom/perm/kate/PhotoSaver;->savePhoto(Landroid/content/Context;Lcom/perm/kate/api/Photo;I)V

    .line 790
    return-void
.end method

.method private saveToMyAlbum()V
    .locals 1

    .prologue
    .line 1463
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$32;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$32;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    .line 1468
    invoke-virtual {v0}, Lcom/perm/kate/PhotoViewerActrivity$32;->start()V

    .line 1469
    return-void
.end method

.method private searchInGoogle()V
    .locals 5

    .prologue
    .line 598
    :try_start_0
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v3, v3, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, "query":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "http://www.google.com/searchbyimage?image_url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 600
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2, p0}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 605
    .end local v0    # "query":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 601
    :catch_0
    move-exception v1

    .line 602
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 603
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private searchInYandex()V
    .locals 5

    .prologue
    .line 609
    :try_start_0
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v3, v3, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "query":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://yandex.ru/images/search?url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&rpt=imageview"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 611
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2, p0}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    .end local v0    # "query":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 612
    :catch_0
    move-exception v1

    .line 613
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 614
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private selectPhotoSize()V
    .locals 4

    .prologue
    .line 771
    const v1, 0x7f0d002a

    .line 772
    .local v1, "items_id":I
    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->src_xxxbig:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 773
    const v1, 0x7f0d002b

    .line 776
    :cond_0
    :goto_0
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 777
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v2, 0x7f07045f

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 778
    new-instance v2, Lcom/perm/kate/PhotoViewerActrivity$8;

    invoke-direct {v2, p0}, Lcom/perm/kate/PhotoViewerActrivity$8;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 783
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 784
    return-void

    .line 774
    .end local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->src_xxbig:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 775
    const v1, 0x7f0d0029

    goto :goto_0
.end method

.method private sendToFriend()V
    .locals 8

    .prologue
    .line 744
    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    if-nez v4, :cond_0

    .line 762
    :goto_0
    return-void

    .line 750
    :cond_0
    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v4}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 751
    .local v0, "account_id":J
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v5, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    invoke-virtual {v4, v5, v0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhoto(Lcom/perm/kate/api/Photo;J)V

    .line 753
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "photo"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v5, v5, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v6, v5, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 754
    .local v3, "photo_attachment":Ljava/lang/String;
    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v4, v4, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 755
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v5, v5, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 756
    :cond_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 757
    .local v2, "intent":Landroid/content/Intent;
    const-class v4, Lcom/perm/kate/MembersActivity;

    invoke-virtual {v2, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 758
    const-string v4, "com.perm.kate.only_members"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 759
    const-string v4, "com.perm.kate.new_message"

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 760
    const-string v4, "com.perm.kate.photo_attachment"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 761
    invoke-virtual {p0, v2}, Lcom/perm/kate/PhotoViewerActrivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private setShowHideInfoPanels()V
    .locals 0

    .prologue
    .line 1437
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->changeInfoPanelsFlag()V

    .line 1438
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->showHideInfoPanels()V

    .line 1439
    return-void
.end method

.method private setZoom(I)V
    .locals 3
    .param p1, "z"    # I

    .prologue
    .line 253
    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {v2}, Lcom/perm/kate/ContentLayout;->getCurrentScreenView()Landroid/view/View;

    move-result-object v1

    .line 254
    .local v1, "rl":Landroid/view/View;
    const v2, 0x7f0e0295

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 255
    .local v0, "im":Landroid/view/View;
    instance-of v2, v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    if-eqz v2, :cond_0

    .line 256
    check-cast v0, Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    .end local v0    # "im":Landroid/view/View;
    invoke-virtual {v0, p1}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setZoom(I)V

    .line 257
    :cond_0
    return-void
.end method

.method private sharePhoto()V
    .locals 8

    .prologue
    .line 1161
    const-string v2, "image/jpg"

    .line 1162
    .local v2, "mimeType":Ljava/lang/String;
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v7, v7, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1163
    .local v0, "cache_file":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    .line 1166
    .local v5, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-static {}, Lcom/perm/kate/PhotoViewerActrivity;->getTempFile()Ljava/io/File;

    move-result-object v3

    .line 1167
    .local v3, "temp_file":Ljava/io/File;
    invoke-virtual {p0, v0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->copyFile(Ljava/io/File;Ljava/io/File;)V

    .line 1168
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1174
    .end local v3    # "temp_file":Ljava/io/File;
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEND"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1176
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1183
    const-string v6, "android.intent.extra.STREAM"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1186
    invoke-virtual {p0, v1}, Lcom/perm/kate/PhotoViewerActrivity;->startActivity(Landroid/content/Intent;)V

    .line 1187
    return-void

    .line 1170
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v4

    .line 1171
    .local v4, "th":Ljava/lang/Throwable;
    invoke-static {v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 1172
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private shareTo()V
    .locals 4

    .prologue
    .line 765
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    if-nez v0, :cond_0

    .line 768
    :goto_0
    return-void

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v2, v1, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/perm/kate/Helper;->sharePhoto(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private showAlbums()V
    .locals 4

    .prologue
    .line 1606
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1607
    .local v0, "a_intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/AlbumsActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1608
    const-string v1, "com.perm.kate.owner_id"

    iget-wide v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->owner_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1609
    const-string v1, "com.perm.kate.select_for_move"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1610
    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/PhotoViewerActrivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1611
    return-void
.end method

.method private showCopyPhotoLinkDialog()V
    .locals 6

    .prologue
    .line 1522
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1523
    .local v1, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070268

    const/16 v5, 0xd

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1524
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070188

    const/16 v5, 0x1e

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1525
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070175

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 1526
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/PhotoViewerActrivity$37;

    invoke-direct {v5, p0, v1}, Lcom/perm/kate/PhotoViewerActrivity$37;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 1547
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1548
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1549
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1550
    return-void
.end method

.method private showEditDialog()V
    .locals 13

    .prologue
    const v12, 0x7f0701e8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1568
    iget-object v7, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v8, v7, Lcom/perm/kate/api/Photo;->aid:J

    const-wide/16 v10, -0xf

    cmp-long v7, v8, v10

    if-nez v7, :cond_2

    move v1, v5

    .line 1570
    .local v1, "is_saved_photos_album":Z
    :goto_0
    iget-object v7, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v8, v7, Lcom/perm/kate/api/Photo;->aid:J

    const-wide/16 v10, -0x7

    cmp-long v7, v8, v10

    if-nez v7, :cond_3

    move v2, v5

    .line 1571
    .local v2, "is_wall_photos_album":Z
    :goto_1
    if-nez v1, :cond_0

    if-eqz v2, :cond_4

    :cond_0
    move v7, v5

    :goto_2
    new-array v3, v7, [Ljava/lang/CharSequence;

    .line 1572
    .local v3, "items":[Ljava/lang/CharSequence;
    if-eqz v1, :cond_5

    .line 1573
    invoke-virtual {p0, v12}, Lcom/perm/kate/PhotoViewerActrivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v3, v6

    .line 1579
    :cond_1
    :goto_3
    new-instance v6, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0701d7

    invoke-virtual {v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    new-instance v7, Lcom/perm/kate/PhotoViewerActrivity$38;

    invoke-direct {v7, p0, v1}, Lcom/perm/kate/PhotoViewerActrivity$38;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Z)V

    .line 1580
    invoke-virtual {v6, v3, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 1600
    .local v4, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 1601
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1602
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1603
    return-void

    .end local v0    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v1    # "is_saved_photos_album":Z
    .end local v2    # "is_wall_photos_album":Z
    .end local v3    # "items":[Ljava/lang/CharSequence;
    .end local v4    # "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_2
    move v1, v6

    .line 1568
    goto :goto_0

    .restart local v1    # "is_saved_photos_album":Z
    :cond_3
    move v2, v6

    .line 1570
    goto :goto_1

    .line 1571
    .restart local v2    # "is_wall_photos_album":Z
    :cond_4
    const/4 v7, 0x2

    goto :goto_2

    .line 1575
    .restart local v3    # "items":[Ljava/lang/CharSequence;
    :cond_5
    const v7, 0x7f070163

    invoke-virtual {p0, v7}, Lcom/perm/kate/PhotoViewerActrivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v3, v6

    .line 1576
    if-nez v2, :cond_1

    .line 1577
    invoke-virtual {p0, v12}, Lcom/perm/kate/PhotoViewerActrivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v3, v5

    goto :goto_3
.end method

.method private showHideInfoPanels()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1431
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->getInfoPanelsFlag()Z

    move-result v0

    .line 1432
    .local v0, "showInfoPanels":Z
    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity;->ll_counters:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1433
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->ll_placeholder_info:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1434
    return-void

    :cond_0
    move v1, v3

    .line 1432
    goto :goto_0

    :cond_1
    move v2, v3

    .line 1433
    goto :goto_1
.end method

.method private showPhotoDetailsActivity()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 1214
    iget-object v5, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v6, v5, Lcom/perm/kate/api/Photo;->pid:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    .line 1215
    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v5}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1216
    .local v2, "account_id":J
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v6, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    invoke-virtual {v5, v6, v2, v3}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhoto(Lcom/perm/kate/api/Photo;J)V

    .line 1219
    .end local v2    # "account_id":J
    :cond_0
    const-wide/16 v0, 0x0

    .line 1220
    .local v0, "_id":J
    iget-object v5, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v5, v5, Lcom/perm/kate/api/Photo;->user_id:Ljava/lang/String;

    invoke-static {v5}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1221
    iget-object v5, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v5, v5, Lcom/perm/kate/api/Photo;->user_id:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1222
    :cond_1
    const-wide/16 v6, 0x64

    cmp-long v5, v0, v6

    if-nez v5, :cond_2

    .line 1223
    const-wide/16 v0, 0x0

    .line 1224
    :cond_2
    cmp-long v5, v0, v8

    if-nez v5, :cond_3

    .line 1225
    iget-object v5, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v5, v5, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v5, v5, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1226
    :cond_3
    :goto_0
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1227
    .local v4, "intent":Landroid/content/Intent;
    const-class v5, Lcom/perm/kate/PhotoDetailsActivity;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1228
    const-string v5, "com.perm.kate.photo_owner_id"

    invoke-virtual {v4, v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1229
    const-string v5, "com.perm.kate.photo_id"

    iget-object v6, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v6, v6, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1230
    const-string v5, "com.perm.kate.album_id"

    iget-object v6, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v6, v6, Lcom/perm/kate/api/Photo;->aid:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1231
    const-string v5, "com.perm.kate.owner_id"

    iget-object v6, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v6, v6, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1232
    invoke-virtual {p0, v4}, Lcom/perm/kate/PhotoViewerActrivity;->startActivity(Landroid/content/Intent;)V

    .line 1233
    return-void

    .line 1225
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_4
    iget-wide v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->owner_id:J

    goto :goto_0
.end method

.method private showPhotoTagDialog(Lcom/perm/kate/api/PhotoTag;)V
    .locals 7
    .param p1, "pt"    # Lcom/perm/kate/api/PhotoTag;

    .prologue
    const/4 v6, 0x1

    .line 967
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 968
    .local v1, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070202

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070086

    invoke-direct {v3, v4, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 970
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p1, Lcom/perm/kate/api/PhotoTag;->tagged_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 971
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/PhotoViewerActrivity$15;

    invoke-direct {v5, p0, v1, p1}, Lcom/perm/kate/PhotoViewerActrivity$15;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Ljava/util/ArrayList;Lcom/perm/kate/api/PhotoTag;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 989
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 990
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 991
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 992
    return-void
.end method

.method private showPhotoTags(Z)V
    .locals 34
    .param p1, "allow_to_get"    # Z

    .prologue
    .line 856
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/PhotoViewerActrivity;->hidePhotoTags()V

    .line 857
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/PhotoViewerActrivity;->photoTagsState:I

    move/from16 v28, v0

    if-nez v28, :cond_1

    .line 918
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/PhotoViewerActrivity;->photoTags:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    if-eqz v28, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/PhotoViewerActrivity;->photoTags:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    if-eqz v28, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/perm/kate/api/Photo;->pid:J

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/PhotoViewerActrivity;->photoTags:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/perm/kate/api/PhotoTag;

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/perm/kate/api/PhotoTag;->pid:J

    move-wide/from16 v28, v0

    cmp-long v28, v30, v28

    if-eqz v28, :cond_3

    .line 860
    :cond_2
    if-eqz p1, :cond_0

    .line 861
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/PhotoViewerActrivity;->getPhotoTags()V

    goto :goto_0

    .line 864
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/perm/kate/ContentLayout;->getCurrentScreenView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout;

    .line 865
    .local v5, "current_view":Landroid/widget/RelativeLayout;
    const v28, 0x7f0e0295

    move/from16 v0, v28

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/imagezoom/ImageViewTouchBase;

    .line 866
    .local v7, "image":Lcom/perm/kate/imagezoom/ImageViewTouchBase;
    if-eqz v7, :cond_0

    .line 868
    new-instance v28, Lcom/perm/kate/PhotoViewerActrivity$12;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/perm/kate/PhotoViewerActrivity$12;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 880
    invoke-virtual {v7}, Lcom/perm/kate/imagezoom/ImageViewTouchBase;->getValues()[Ljava/lang/Object;

    move-result-object v18

    .line 881
    .local v18, "values":[Ljava/lang/Object;
    const/16 v28, 0x0

    aget-object v28, v18, v28

    check-cast v28, [D

    move-object/from16 v17, v28

    check-cast v17, [D

    .line 882
    .local v17, "size":[D
    const/16 v28, 0x0

    aget-wide v28, v17, v28

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_0

    const/16 v28, 0x1

    aget-wide v28, v17, v28

    const-wide/16 v30, 0x0

    cmpl-double v28, v28, v30

    if-eqz v28, :cond_0

    .line 884
    const/16 v28, 0x1

    aget-object v28, v18, v28

    check-cast v28, [D

    move-object/from16 v4, v28

    check-cast v4, [D

    .line 885
    .local v4, "bitmap_size":[D
    const/16 v28, 0x2

    aget-object v28, v18, v28

    check-cast v28, [F

    move-object/from16 v13, v28

    check-cast v13, [F

    .line 886
    .local v13, "matrix":[F
    const/16 v28, 0x0

    aget v28, v13, v28

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    const/16 v30, 0x0

    aget-wide v30, v4, v30

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4059000000000000L    # 100.0

    div-double v8, v28, v30

    .line 887
    .local v8, "kx":D
    const/16 v28, 0x4

    aget v28, v13, v28

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    const/16 v30, 0x1

    aget-wide v30, v4, v30

    mul-double v28, v28, v30

    const-wide/high16 v30, 0x4059000000000000L    # 100.0

    div-double v10, v28, v30

    .line 888
    .local v10, "ky":D
    const/16 v28, 0x2

    aget v28, v13, v28

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v22, v0

    .line 889
    .local v22, "x0":D
    const/16 v28, 0x5

    aget v28, v13, v28

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v26, v0

    .line 890
    .local v26, "y0":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/PhotoViewerActrivity;->photoTags:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_4
    :goto_1
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_0

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/perm/kate/api/PhotoTag;

    .line 891
    .local v15, "pt":Lcom/perm/kate/api/PhotoTag;
    iget-wide v0, v15, Lcom/perm/kate/api/PhotoTag;->x:D

    move-wide/from16 v30, v0

    mul-double v30, v30, v8

    add-double v20, v22, v30

    .line 892
    .local v20, "x":D
    iget-wide v0, v15, Lcom/perm/kate/api/PhotoTag;->y:D

    move-wide/from16 v30, v0

    mul-double v30, v30, v10

    add-double v24, v26, v30

    .line 893
    .local v24, "y":D
    iget-wide v0, v15, Lcom/perm/kate/api/PhotoTag;->x2:D

    move-wide/from16 v30, v0

    iget-wide v0, v15, Lcom/perm/kate/api/PhotoTag;->x:D

    move-wide/from16 v32, v0

    sub-double v30, v30, v32

    mul-double v30, v30, v8

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v19, v0

    .line 894
    .local v19, "width":I
    iget-wide v0, v15, Lcom/perm/kate/api/PhotoTag;->y2:D

    move-wide/from16 v30, v0

    iget-wide v0, v15, Lcom/perm/kate/api/PhotoTag;->y:D

    move-wide/from16 v32, v0

    sub-double v30, v30, v32

    mul-double v30, v30, v10

    move-wide/from16 v0, v30

    double-to-int v6, v0

    .line 895
    .local v6, "height":I
    const/16 v28, 0x0

    aget-wide v30, v17, v28

    cmpl-double v28, v20, v30

    if-gtz v28, :cond_4

    const-wide/high16 v30, -0x3fb7000000000000L    # -50.0

    cmpg-double v28, v20, v30

    if-ltz v28, :cond_4

    const/16 v28, 0x1

    aget-wide v30, v17, v28

    cmpl-double v28, v24, v30

    if-gtz v28, :cond_4

    const-wide/high16 v30, -0x3fb7000000000000L    # -50.0

    cmpg-double v28, v24, v30

    if-ltz v28, :cond_4

    .line 897
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v28, -0x2

    const/16 v30, -0x2

    move/from16 v0, v28

    move/from16 v1, v30

    invoke-direct {v12, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 898
    .local v12, "lp":Landroid/widget/RelativeLayout$LayoutParams;
    move-wide/from16 v0, v20

    double-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 899
    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v28, v0

    move/from16 v0, v28

    iput v0, v12, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 900
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/PhotoViewerActrivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v28

    const v30, 0x7f0300d7

    const/16 v31, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v16

    .line 901
    .local v16, "pt_view":Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/perm/kate/PhotoViewerActrivity;->photoTagsState:I

    move/from16 v28, v0

    const/16 v30, 0x2

    move/from16 v0, v28

    move/from16 v1, v30

    if-ne v0, v1, :cond_5

    .line 902
    const v28, 0x7f0e0290

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    const/16 v30, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 903
    const v28, 0x7f0e0290

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    iget-object v0, v15, Lcom/perm/kate/api/PhotoTag;->tagged_name:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 904
    const v28, 0x7f0e0290

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 905
    const v28, 0x7f0e0290

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    new-instance v30, Lcom/perm/kate/PhotoViewerActrivity$13;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/perm/kate/PhotoViewerActrivity$13;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 914
    :cond_5
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    move/from16 v0, v19

    invoke-direct {v14, v0, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 915
    .local v14, "params":Landroid/widget/LinearLayout$LayoutParams;
    const v28, 0x7f0e028f

    move-object/from16 v0, v16

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/ImageView;

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/PhotoViewerActrivity;->fl_tags_placeholder:Landroid/widget/RelativeLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1
.end method

.method private showPhotoTagsUI()V
    .locals 1

    .prologue
    .line 846
    invoke-virtual {p0}, Lcom/perm/kate/PhotoViewerActrivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 847
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$11;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoViewerActrivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 853
    :cond_0
    return-void
.end method

.method private showPlaceholderInfo(I)V
    .locals 1
    .param p1, "visible"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->ll_placeholder_info:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 277
    return-void
.end method

.method private showShareDialog()V
    .locals 8

    .prologue
    .line 654
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 655
    .local v1, "menus":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0701df

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 657
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v4, v3, Lcom/perm/kate/api/Photo;->aid:J

    const-wide/16 v6, -0x3

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 658
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070396

    const/16 v5, 0x19

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    :cond_0
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070397

    const/16 v5, 0x25

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f07025a

    const/16 v5, 0x16

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070259

    const/16 v5, 0x1c

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 663
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/PhotoViewerActrivity$7;

    invoke-direct {v5, p0, v1}, Lcom/perm/kate/PhotoViewerActrivity$7;-><init>(Lcom/perm/kate/PhotoViewerActrivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 689
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 690
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 691
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 692
    return-void
.end method

.method private showWallPostForCurrentPhoto(J)V
    .locals 5
    .param p1, "owner_id"    # J

    .prologue
    .line 695
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 696
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 697
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 698
    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 699
    :cond_0
    const-string v1, "com.perm.kate.photo"

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 700
    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoViewerActrivity;->startActivity(Landroid/content/Intent;)V

    .line 701
    return-void
.end method

.method private showZoomButtons()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 281
    invoke-static {p0}, Lcom/perm/kate/Settings;->upgradeZoomButtonsKey(Landroid/app/Activity;)Z

    .line 283
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 284
    .local v0, "mPrefs":Landroid/content/SharedPreferences;
    const-string v3, "key2_show_zoom_buttons"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 285
    .local v1, "show_zoom":Z
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->ll_zoom_buttons:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 286
    return-void

    .line 285
    :cond_0
    const/16 v2, 0x8

    goto :goto_0
.end method

.method private unlike()V
    .locals 2

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    .line 1079
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v0, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    iget-object v1, v0, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    .line 1081
    :cond_0
    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$18;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$18;-><init>(Lcom/perm/kate/PhotoViewerActrivity;)V

    .line 1086
    invoke-virtual {v0}, Lcom/perm/kate/PhotoViewerActrivity$18;->start()V

    .line 1087
    return-void
.end method

.method private updatePhotoCounts(Lcom/perm/kate/api/Photo;)V
    .locals 4
    .param p1, "photo"    # Lcom/perm/kate/api/Photo;

    .prologue
    .line 1373
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v0, v0, Lcom/perm/kate/api/Photo;->pid:J

    iget-wide v2, p1, Lcom/perm/kate/api/Photo;->pid:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 1384
    :goto_0
    return-void

    .line 1376
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, p1, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->user_likes:Ljava/lang/Boolean;

    .line 1377
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, p1, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->like_count:Ljava/lang/Integer;

    .line 1378
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, p1, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->comments_count:Ljava/lang/Integer;

    .line 1379
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, p1, Lcom/perm/kate/api/Photo;->can_comment:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->can_comment:Ljava/lang/Boolean;

    .line 1380
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, p1, Lcom/perm/kate/api/Photo;->tags_count:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->tags_count:Ljava/lang/Integer;

    .line 1381
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, p1, Lcom/perm/kate/api/Photo;->user_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->user_id:Ljava/lang/String;

    .line 1382
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->updated_counts:Ljava/util/HashMap;

    iget-wide v2, p1, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private wholikes()V
    .locals 4

    .prologue
    .line 1061
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1062
    .local v0, "likes_intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/LikesActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1063
    const-string v1, "com.perm.kate.item_id"

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v2, v2, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1064
    const-string v1, "com.perm.kate.owner_id"

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1065
    const-string v1, "com.perm.kate.item_type"

    const-string v2, "photo"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1066
    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoViewerActrivity;->startActivity(Landroid/content/Intent;)V

    .line 1067
    return-void
.end method


# virtual methods
.method copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 2
    .param p1, "from"    # Ljava/io/File;
    .param p2, "to"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1129
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 1130
    .local v0, "inputStream":Ljava/io/FileInputStream;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 1131
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->CopyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 1132
    invoke-static {v0}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 1133
    invoke-static {v1}, Lcom/perm/kate/Helper;->closeStream(Ljava/io/Closeable;)V

    .line 1134
    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 11
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const v10, 0x108004e

    const/16 v9, 0x2729

    const/16 v8, 0xf

    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    .line 365
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    if-nez v1, :cond_0

    .line 416
    :goto_0
    return v0

    .line 368
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v2, v1, Lcom/perm/kate/api/Photo;->pid:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_1

    .line 373
    const/16 v1, 0x8

    const/16 v2, 0x3e9

    const v3, 0x7f070518

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 383
    :cond_1
    const/4 v1, 0x3

    const/16 v2, 0x3f1

    const v3, 0x7f07024c

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 385
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v2, v1, Lcom/perm/kate/api/Photo;->pid:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_2

    .line 386
    const/16 v1, 0x1a

    const/16 v2, 0x3f3

    const v3, 0x7f070261

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080050

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 387
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->isMeOrFriend()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 388
    const/16 v1, 0xb

    const/16 v2, 0x271f

    const v3, 0x7f0701dc

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 389
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->canEdit(Lcom/perm/kate/api/Photo;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 390
    const/16 v1, 0xc

    const/16 v2, 0x2721

    const v3, 0x7f0701d7

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 391
    :cond_4
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v2, v1, Lcom/perm/kate/api/Photo;->pid:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_5

    .line 392
    const/16 v1, 0xd

    const/16 v2, 0x2723

    const v3, 0x7f070175

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 393
    const/16 v1, 0xe

    const/16 v2, 0x2725

    const v3, 0x7f07020c

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 394
    const/16 v1, 0x1b

    const/16 v2, 0x2726

    const v3, 0x7f07047f

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 396
    :cond_5
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/perm/kate/PhotoViewerActrivity;->isMy(J)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v2, v1, Lcom/perm/kate/api/Photo;->aid:J

    const-wide/16 v4, -0x6

    cmp-long v1, v2, v4

    if-nez v1, :cond_6

    .line 397
    const/16 v1, 0x23

    const/16 v2, 0x2727

    const v3, 0x7f0702d0

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 398
    :cond_6
    const/4 v1, 0x4

    const/16 v2, 0x2728

    const v3, 0x7f0703e2

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080051

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 399
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->isPhotoClickEnabled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 400
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->getInfoPanelsFlag()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 401
    const v1, 0x7f0701b5

    invoke-interface {p1, v0, v8, v9, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 405
    :cond_7
    :goto_1
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/perm/kate/PhotoViewerActrivity;->isMy(J)Z

    move-result v1

    if-nez v1, :cond_8

    .line 406
    const/16 v1, 0x18

    const/16 v2, 0x403

    const v3, 0x7f07024e

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 407
    :cond_8
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->canDelete(Lcom/perm/kate/api/Photo;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 408
    const/16 v1, 0x1d

    const/16 v2, 0x405

    const v3, 0x7f070084

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 409
    :cond_9
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/perm/kate/PhotoViewerActrivity;->isMy(J)Z

    move-result v1

    if-nez v1, :cond_a

    .line 410
    const/16 v1, 0x22

    const/16 v2, 0x2731

    const v3, 0x7f07016f

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 411
    :cond_a
    const/16 v1, 0x26

    const/16 v2, 0x273b

    const v3, 0x7f0703d1

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 414
    iget-boolean v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->high_quality:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v2, v1, Lcom/perm/kate/api/Photo;->pid:J

    cmp-long v1, v2, v6

    if-eqz v1, :cond_b

    .line 415
    const/16 v1, 0x27

    const/16 v2, 0x2745

    const v3, 0x7f07034e

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 416
    :cond_b
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 403
    :cond_c
    const v1, 0x7f070265

    invoke-interface {p1, v0, v8, v9, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    const/4 v6, -0x1

    .line 720
    if-ne p1, v7, :cond_1

    if-ne p2, v6, :cond_1

    .line 721
    iget v5, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTagsState:I

    if-lez v5, :cond_1

    .line 722
    iget-object v5, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTags:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 723
    iget-object v5, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTags:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 724
    :cond_0
    invoke-direct {p0, v7}, Lcom/perm/kate/PhotoViewerActrivity;->showPhotoTags(Z)V

    .line 727
    :cond_1
    const/16 v5, 0xc

    if-ne p1, v5, :cond_2

    if-ne p2, v6, :cond_2

    .line 728
    const-string v5, "com.perm.kate.photo_caption"

    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 729
    .local v4, "photo_caption":Ljava/lang/String;
    iget-object v5, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iput-object v4, v5, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    .line 730
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->displayPhotoInfo()V

    .line 732
    .end local v4    # "photo_caption":Ljava/lang/String;
    :cond_2
    const/16 v5, 0xd

    if-ne p1, v5, :cond_3

    if-ne p2, v6, :cond_3

    .line 733
    const-string v5, "com.perm.kate.aid"

    invoke-virtual {p3, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 734
    .local v0, "aid":J
    cmp-long v5, v0, v8

    if-lez v5, :cond_3

    .line 735
    invoke-direct {p0, v0, v1}, Lcom/perm/kate/PhotoViewerActrivity;->moveToAlbum(J)V

    .line 737
    .end local v0    # "aid":J
    :cond_3
    const/16 v5, 0xb

    if-ne p1, v5, :cond_4

    if-ne p2, v6, :cond_4

    .line 738
    const-string v5, "group_id"

    invoke-virtual {p3, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 739
    .local v2, "group_id":J
    const-wide/16 v6, -0x1

    mul-long/2addr v6, v2

    invoke-direct {p0, v6, v7}, Lcom/perm/kate/PhotoViewerActrivity;->showWallPostForCurrentPhoto(J)V

    .line 741
    .end local v2    # "group_id":J
    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 121
    :try_start_0
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->isMeizu()Z

    move-result v3

    if-nez v3, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/perm/kate/PhotoViewerActrivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x400

    const/16 v5, 0x400

    invoke-virtual {v3, v4, v5}, Landroid/view/Window;->setFlags(II)V

    .line 124
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->no_translucent_status:Z

    .line 125
    const v3, 0x7f0300db

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->setContentView(I)V

    .line 126
    const v3, 0x7f07020b

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->setTitle(I)V

    .line 127
    invoke-virtual {p0}, Lcom/perm/kate/PhotoViewerActrivity;->setupMenuButton()V

    .line 128
    const v3, 0x7f0e0297

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/ContentLayout;

    iput-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    .line 129
    const v3, 0x7f0e00f0

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_description:Landroid/widget/TextView;

    .line 130
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_description:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity;->details_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    const v3, 0x7f0e0298

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->ll_placeholder_info:Landroid/widget/LinearLayout;

    .line 132
    const v3, 0x7f0e029a

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->ll_zoom_buttons:Landroid/widget/LinearLayout;

    .line 133
    const v3, 0x7f0e0299

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    iput-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->fl_tags_placeholder:Landroid/widget/RelativeLayout;

    .line 134
    const v3, 0x7f0e029b

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity;->zoom_leftListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v3, 0x7f0e029c

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity;->zoom_centerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v3, 0x7f0e029d

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity;->zoom_rightListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    const v3, 0x7f0e0224

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_likes:Landroid/widget/ImageButton;

    .line 142
    const v3, 0x7f0e0227

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_comments:Landroid/widget/ImageButton;

    .line 143
    const v3, 0x7f0e02a0

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    iput-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_tags:Landroid/widget/ImageButton;

    .line 144
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_likes:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity;->likes_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_likes:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity;->likes_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 146
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_comments:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity;->comments_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_comments:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity;->comments_OnLongClickListerer:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 148
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->btn_tags:Landroid/widget/ImageButton;

    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity;->tags_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    const v3, 0x7f0e02a3

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity;->share_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    const v3, 0x7f0e0226

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_likes_count:Landroid/widget/TextView;

    .line 151
    const v3, 0x7f0e01f0

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_comments_count:Landroid/widget/TextView;

    .line 152
    const v3, 0x7f0e02a2

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->tv_tags_count:Landroid/widget/TextView;

    .line 153
    const v3, 0x7f0e0225

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->iv_liked_marker:Landroid/widget/ImageView;

    .line 154
    const v3, 0x7f0e029f

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->iv_comments_marker:Landroid/widget/ImageView;

    .line 155
    const v3, 0x7f0e02a1

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->iv_tags_marker:Landroid/widget/ImageView;

    .line 156
    const v3, 0x7f0e029e

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->ll_counters:Landroid/widget/LinearLayout;

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v0, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    invoke-virtual {p0}, Lcom/perm/kate/PhotoViewerActrivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.position"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 161
    .local v1, "pos":I
    invoke-virtual {p0}, Lcom/perm/kate/PhotoViewerActrivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "high_quality"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->high_quality:Z

    .line 164
    if-eqz p1, :cond_1

    .line 165
    const-string v3, "position"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 166
    const-string v3, "panels_visible"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 167
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->showPlaceholderInfo(I)V

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/PhotoViewerActrivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.photos"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .end local v0    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    check-cast v0, Ljava/util/ArrayList;

    .line 171
    .restart local v0    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    invoke-virtual {p0}, Lcom/perm/kate/PhotoViewerActrivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.info_position_offset"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->info_position_offset:I

    .line 172
    invoke-virtual {p0}, Lcom/perm/kate/PhotoViewerActrivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.info_total_count"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->info_total_count:I

    .line 173
    invoke-virtual {p0}, Lcom/perm/kate/PhotoViewerActrivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.is_graffiti"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->is_graffiti:Z

    .line 174
    invoke-virtual {p0}, Lcom/perm/kate/PhotoViewerActrivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "com.perm.kate.owner_id"

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/perm/kate/PhotoViewerActrivity;->owner_id:J

    .line 175
    if-nez v0, :cond_3

    .line 200
    .end local v0    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    .end local v1    # "pos":I
    :cond_2
    :goto_0
    return-void

    .line 177
    .restart local v0    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    .restart local v1    # "pos":I
    :cond_3
    new-instance v3, Lcom/perm/kate/PhotoViewerAdapter;

    invoke-direct {v3, v0, p0}, Lcom/perm/kate/PhotoViewerAdapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->photo_viewer_adapter:Lcom/perm/kate/PhotoViewerAdapter;

    .line 178
    iget-boolean v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->high_quality:Z

    if-eqz v3, :cond_4

    .line 179
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->photo_viewer_adapter:Lcom/perm/kate/PhotoViewerAdapter;

    invoke-virtual {v3}, Lcom/perm/kate/PhotoViewerAdapter;->setHighQuality()V

    .line 180
    :cond_4
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->photo_viewer_adapter:Lcom/perm/kate/PhotoViewerAdapter;

    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity;->zooming_listener:Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;

    invoke-virtual {v3, v4}, Lcom/perm/kate/PhotoViewerAdapter;->setOnZoomingListener(Lcom/perm/kate/PhotoViewerAdapter$OnPhotoZoomingListener;)V

    .line 181
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity;->photo_viewer_adapter:Lcom/perm/kate/PhotoViewerAdapter;

    invoke-virtual {v3, v4}, Lcom/perm/kate/ContentLayout;->setAdapter(Landroid/widget/Adapter;)V

    .line 182
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {v3, v1}, Lcom/perm/kate/ContentLayout;->setCurrentScreen(I)V

    .line 183
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Photo;

    iput-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    .line 185
    iget-object v3, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {v3, p0}, Lcom/perm/kate/ContentLayout;->setViewChangeListener(Lcom/perm/kate/ContentLayout$ViewChangeListener;)V

    .line 186
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->showPlaceholderInfo(I)V

    .line 187
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->showZoomButtons()V

    .line 188
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->showHideInfoPanels()V

    .line 189
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->displayPhotoInfo()V

    .line 192
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Photo;

    iget-object v3, v3, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    invoke-static {v3}, Lcom/perm/kate/PhotoViewerActrivity;->isGraffiti(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 193
    const v3, 0x7f0e0296

    invoke-virtual {p0, v3}, Lcom/perm/kate/PhotoViewerActrivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 194
    .end local v0    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    .end local v1    # "pos":I
    :catch_0
    move-exception v2

    .line 195
    .local v2, "th":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 196
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 197
    instance-of v3, v2, Ljava/lang/OutOfMemoryError;

    if-eqz v3, :cond_2

    .line 198
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1246
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photo_viewer_adapter:Lcom/perm/kate/PhotoViewerAdapter;

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->photo_viewer_adapter:Lcom/perm/kate/PhotoViewerAdapter;

    invoke-virtual {v0}, Lcom/perm/kate/PhotoViewerAdapter;->Destroy()V

    .line 1248
    iput-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->photo_viewer_adapter:Lcom/perm/kate/PhotoViewerAdapter;

    .line 1250
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    if-eqz v0, :cond_1

    .line 1251
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {v0, v1}, Lcom/perm/kate/ContentLayout;->setAdapter(Landroid/widget/Adapter;)V

    .line 1252
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {v0, v1}, Lcom/perm/kate/ContentLayout;->setViewChangeListener(Lcom/perm/kate/ContentLayout$ViewChangeListener;)V

    .line 1253
    iput-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    .line 1256
    :cond_1
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 1257
    return-void
.end method

.method public onFinishedScroll(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 301
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {v1}, Lcom/perm/kate/ContentLayout;->getCurrentScreenView()Landroid/view/View;

    move-result-object v0

    .line 302
    .local v0, "vi":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Photo;

    iput-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    .line 303
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->displayPhotoInfo()V

    .line 304
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->clearPhotoTags()V

    .line 305
    const/4 v1, 0x0

    iput v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->photoTagsState:I

    .line 307
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 494
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 559
    :pswitch_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 496
    :pswitch_1
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->ShowCommentsActivity()V

    goto :goto_0

    .line 499
    :pswitch_2
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->ShowNewCommentActivity()V

    goto :goto_0

    .line 502
    :pswitch_3
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->savePhotoToSD()V

    goto :goto_0

    .line 505
    :pswitch_4
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->SetAs()V

    goto :goto_0

    .line 508
    :pswitch_5
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->like()V

    goto :goto_0

    .line 511
    :pswitch_6
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->unlike()V

    goto :goto_0

    .line 514
    :pswitch_7
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->wholikes()V

    goto :goto_0

    .line 517
    :pswitch_8
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->OnPhotoTags()V

    goto :goto_0

    .line 520
    :pswitch_9
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->openSinglePhotoViewer()V

    goto :goto_0

    .line 523
    :pswitch_a
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->showEditDialog()V

    goto :goto_0

    .line 526
    :pswitch_b
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->showCopyPhotoLinkDialog()V

    goto :goto_0

    .line 529
    :pswitch_c
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->openPhotoOwner()V

    goto :goto_0

    .line 532
    :pswitch_d
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->showPhotoDetailsActivity()V

    goto :goto_0

    .line 535
    :pswitch_e
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->setShowHideInfoPanels()V

    goto :goto_0

    .line 538
    :pswitch_f
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->saveToMyAlbum()V

    goto :goto_0

    .line 541
    :pswitch_10
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->showShareDialog()V

    goto :goto_0

    .line 544
    :pswitch_11
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    invoke-direct {p0, v1}, Lcom/perm/kate/PhotoViewerActrivity;->confirmDeletePhoto(Lcom/perm/kate/api/Photo;)V

    goto :goto_0

    .line 547
    :pswitch_12
    new-instance v1, Lcom/perm/kate/ReportHelper;

    invoke-direct {v1, p0}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-wide v2, v2, Lcom/perm/kate/api/Photo;->pid:J

    iget-object v4, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    iget-object v4, v4, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/perm/kate/ReportHelper;->showReportPhotoDialog(JJ)V

    goto :goto_0

    .line 550
    :pswitch_13
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->makeMainProfilePhoto()V

    goto :goto_0

    .line 553
    :pswitch_14
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->chooseSearchEngine()V

    goto :goto_0

    .line 556
    :pswitch_15
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->openHighQuality()V

    goto :goto_0

    .line 494
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_d
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 356
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 357
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->currentPhoto:Lcom/perm/kate/api/Photo;

    if-nez v0, :cond_0

    .line 358
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 360
    :goto_0
    return v0

    .line 359
    :cond_0
    invoke-virtual {p0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 360
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1238
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    if-nez v0, :cond_0

    .line 1242
    :goto_0
    return-void

    .line 1240
    :cond_0
    const-string v0, "position"

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity;->content_layout:Lcom/perm/kate/ContentLayout;

    invoke-virtual {v1}, Lcom/perm/kate/ContentLayout;->getCurrentScreen()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1241
    const-string v1, "panels_visible"

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity;->ll_placeholder_info:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onScroll()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Lcom/perm/kate/PhotoViewerActrivity;->hidePhotoTags()V

    .line 291
    return-void
.end method

.method public onVerticalSwipe()V
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/perm/kate/PhotoViewerActrivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    invoke-virtual {p0}, Lcom/perm/kate/PhotoViewerActrivity;->finish()V

    .line 297
    :cond_0
    return-void
.end method
