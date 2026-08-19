.class public Lcom/perm/kate/CommentListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CommentListAdapter.java"


# static fields
.field private static pattern:Ljava/util/regex/Pattern;


# instance fields
.field private activity:Landroid/app/Activity;

.field attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

.field big_photos:Z

.field groupCache:Lcom/perm/utils/GroupCache;

.field hint:Ljava/lang/String;

.field list:Ljava/util/ArrayList;

.field userCache:Lcom/perm/utils/UserCache;

.field user_photo_OnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "\\[(id|club)(\\d*)(:bp-\\d*_(\\d*))?\\|(.*?)\\]"

    .line 225
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/CommentListAdapter;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/perm/kate/BaseActivity;)V
    .locals 10

    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    new-instance v0, Lcom/perm/utils/UserCache;

    invoke-direct {v0}, Lcom/perm/utils/UserCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/CommentListAdapter;->userCache:Lcom/perm/utils/UserCache;

    .line 33
    new-instance v0, Lcom/perm/utils/GroupCache;

    invoke-direct {v0}, Lcom/perm/utils/GroupCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/CommentListAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    .line 35
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->shouldDisplayBigPhotos()Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/CommentListAdapter;->big_photos:Z

    .line 302
    new-instance v0, Lcom/perm/kate/CommentListAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentListAdapter$1;-><init>(Lcom/perm/kate/CommentListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/CommentListAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    .line 39
    iput-object p2, p0, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    .line 40
    iput-object p1, p0, Lcom/perm/kate/CommentListAdapter;->list:Ljava/util/ArrayList;

    .line 42
    new-instance p1, Lcom/perm/kate/AttachmentsHelper;

    iget-boolean v3, p0, Lcom/perm/kate/CommentListAdapter;->big_photos:Z

    invoke-virtual {p0}, Lcom/perm/kate/CommentListAdapter;->getGroupedOffset()I

    move-result v0

    const/4 v9, 0x0

    add-int/lit8 v4, v0, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0x15

    const/16 v8, 0x8

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v1 .. v8}, Lcom/perm/kate/AttachmentsHelper;-><init>(Lcom/perm/kate/BaseActivity;ZIZIII)V

    iput-object p1, p0, Lcom/perm/kate/CommentListAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    .line 44
    iput-boolean v9, p1, Lcom/perm/kate/AttachmentsHelper;->linkMargins:Z

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v0, 0x7f0f0236

    invoke-virtual {p2, v0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/CommentListAdapter;->hint:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/CommentListAdapter;)Landroid/app/Activity;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method public static parseProfileLinks(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 271
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 273
    :cond_0
    sget-object v0, Lcom/perm/kate/CommentListAdapter;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 274
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 275
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 277
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 278
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_1
    return-object p0
.end method

.method public static parseProfileLinks(Lcom/perm/kate/api/Comment;)V
    .locals 7

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 239
    sget-object v1, Lcom/perm/kate/CommentListAdapter;->pattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, 0x1

    .line 240
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x3

    .line 241
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_3

    .line 243
    iget-object v0, p0, Lcom/perm/kate/api/Comment;->replyCids:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 244
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/api/Comment;->replyCids:Ljava/util/ArrayList;

    .line 245
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/api/Comment;->replyUsers:Ljava/util/ArrayList;

    .line 247
    :cond_2
    iget-wide v3, p0, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/perm/kate/api/Comment;->reply_to_user_name:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 248
    iget-object v0, p0, Lcom/perm/kate/api/Comment;->replyCids:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    iget-object v0, p0, Lcom/perm/kate/api/Comment;->replyUsers:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/perm/kate/api/Comment;->reply_to_user_name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const/4 v0, 0x2

    .line 252
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    const-string v0, "club"

    .line 253
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 255
    iget-wide v3, p0, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    const-wide/16 v5, -0x1

    mul-long v3, v3, v5

    iput-wide v3, p0, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    :cond_4
    const/4 v0, 0x4

    .line 256
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 257
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    :cond_5
    const/4 v0, 0x5

    .line 258
    invoke-virtual {v1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/api/Comment;->reply_to_user_name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 263
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 264
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_6
    return-void
.end method

.method public static removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 285
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 287
    :cond_0
    sget-object v0, Lcom/perm/kate/CommentListAdapter;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 288
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 289
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 291
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 292
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_1
    return-object p0
.end method


# virtual methods
.method public Destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 298
    iput-object v0, p0, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    .line 299
    iget-object v0, p0, Lcom/perm/kate/CommentListAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    invoke-virtual {v0}, Lcom/perm/kate/AttachmentsHelper;->destroy()V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/perm/kate/CommentListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getGroupedOffset()I
    .locals 1

    .line 220
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTablet:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/perm/kate/CommentListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/perm/kate/CommentListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/data/PageCommentList$CommentData;

    iget-object p1, p1, Lcom/perm/kate/data/PageCommentList$CommentData;->type:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    sget-object v0, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->COMMENT:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 32
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v2, p3

    .line 78
    invoke-virtual/range {p0 .. p1}, Lcom/perm/kate/CommentListAdapter;->getItemViewType(I)I

    move-result v3

    .line 79
    iget-object v4, v1, Lcom/perm/kate/CommentListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/data/PageCommentList$CommentData;

    const/4 v5, 0x0

    if-nez p2, :cond_1

    if-nez v3, :cond_0

    .line 83
    iget-object v3, v1, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f0c0045

    invoke-virtual {v3, v6, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 85
    :cond_0
    iget-object v3, v1, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v6, 0x7f0c0046

    invoke-virtual {v3, v6, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object/from16 v2, p2

    .line 88
    :goto_0
    :try_start_0
    iget-object v3, v1, Lcom/perm/kate/CommentListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/data/PageCommentList$CommentData;

    iget-object v3, v3, Lcom/perm/kate/data/PageCommentList$CommentData;->type:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    sget-object v6, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->COMMENT:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    if-ne v3, v6, :cond_c

    .line 89
    iget-object v0, v4, Lcom/perm/kate/data/PageCommentList$CommentData;->comment:Lcom/perm/kate/api/Comment;

    .line 90
    iget-wide v6, v0, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const v6, 0x7f09017e

    .line 91
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 94
    iget-boolean v7, v0, Lcom/perm/kate/api/Comment;->deleted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v14, " "

    const-wide/16 v15, 0x0

    const-string v17, ""

    if-eqz v7, :cond_2

    .line 95
    :try_start_1
    iget-object v7, v1, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    const v8, 0x7f0f0091

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 96
    invoke-static {}, Lcom/perm/kate/Helper;->getDeletedAva()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_1
    move-object/from16 v8, v17

    goto/16 :goto_3

    .line 97
    :cond_2
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v9, v7, v15

    if-lez v9, :cond_4

    .line 98
    iget-object v7, v1, Lcom/perm/kate/CommentListAdapter;->userCache:Lcom/perm/utils/UserCache;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v13

    if-eqz v13, :cond_3

    .line 100
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v7

    iget-object v8, v13, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v10, 0x1

    const/16 v11, 0x5a

    .line 101
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v12

    const/16 v18, 0x1

    move-object v9, v6

    move-object v15, v13

    move/from16 v13, v18

    .line 100
    invoke-virtual/range {v7 .. v13}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 102
    iget-object v7, v15, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    .line 103
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v15, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v31, v8

    move-object v8, v7

    move-object/from16 v7, v31

    goto :goto_3

    .line 105
    :cond_3
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 109
    :cond_4
    iget-object v7, v1, Lcom/perm/kate/CommentListAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/perm/utils/GroupCache;->get(J)Lcom/perm/kate/api/Group;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 111
    iget-object v15, v7, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    .line 112
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v8

    iget-object v9, v7, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    const/4 v10, 0x1

    const/16 v11, 0x5a

    .line 113
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v12

    const/4 v13, 0x1

    move-object v7, v8

    move-object v8, v9

    move-object v9, v6

    .line 112
    invoke-virtual/range {v7 .. v13}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    move-object v7, v15

    goto :goto_1

    .line 117
    :cond_5
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    move-object/from16 v7, v17

    move-object v8, v7

    :goto_3
    const v9, 0x7f09035d

    .line 120
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 121
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/perm/kate/CommentListAdapter;->hint:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    const v7, 0x7f09035c

    .line 124
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 126
    iget-object v9, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    .line 127
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10, v9}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 129
    invoke-static {v10}, Lcom/perm/utils/Linkify;->addWebLinks(Landroid/text/Spannable;)V

    .line 131
    iget-object v11, v1, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    invoke-static {v10, v11, v5}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 132
    iget-object v11, v1, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    invoke-static {v11, v10}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const/16 v11, 0x8

    if-eqz v10, :cond_6

    .line 134
    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 136
    :cond_6
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    :goto_4
    iget-boolean v7, v0, Lcom/perm/kate/api/Comment;->deleted:Z

    const v10, 0x7f090186

    if-eqz v7, :cond_7

    const/4 v7, 0x0

    .line 139
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    invoke-virtual {v6, v10, v7}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_5

    .line 142
    :cond_7
    iget-object v7, v1, Lcom/perm/kate/CommentListAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {v6, v10, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    :goto_5
    const v6, 0x7f0903a0

    .line 147
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v22, v6

    check-cast v22, Landroid/widget/TextView;

    const v6, 0x7f0901b9

    .line 148
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    const v6, 0x7f0901b8

    .line 149
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object/from16 v23, v6

    check-cast v23, Landroid/widget/ImageView;

    .line 150
    iget v6, v0, Lcom/perm/kate/api/Comment;->like_count:I

    .line 151
    iget-boolean v7, v0, Lcom/perm/kate/api/Comment;->user_like:Z

    int-to-long v12, v6

    const/16 v24, 0x1

    move-wide/from16 v18, v12

    move/from16 v20, v7

    .line 152
    invoke-static/range {v18 .. v24}, Lcom/perm/kate/NewsCursorAdapter;->displayLikeCount(JZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    .line 154
    iget-wide v12, v0, Lcom/perm/kate/api/Comment;->cid:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 155
    new-instance v10, Lcom/perm/kate/CommentTag;

    invoke-direct {v10}, Lcom/perm/kate/CommentTag;-><init>()V

    .line 156
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v10, Lcom/perm/kate/CommentTag;->comment_id:J

    .line 157
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    iput-wide v12, v10, Lcom/perm/kate/CommentTag;->user_id:J

    .line 158
    iput-object v8, v10, Lcom/perm/kate/CommentTag;->user_name:Ljava/lang/String;

    .line 159
    iput-object v9, v10, Lcom/perm/kate/CommentTag;->message:Ljava/lang/String;

    .line 160
    iput-boolean v7, v10, Lcom/perm/kate/CommentTag;->like:Z

    .line 161
    iput-object v0, v10, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    .line 162
    invoke-virtual {v2, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v3, 0x7f09038c

    .line 165
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 166
    iget-wide v6, v0, Lcom/perm/kate/api/Comment;->date:J

    .line 167
    iget-object v8, v1, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    invoke-static {v8, v6, v7}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 168
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f09026e

    .line 171
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v26, v3

    check-cast v26, Landroid/view/ViewGroup;

    const v3, 0x7f0901bd

    .line 172
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v27, v3

    check-cast v27, Landroid/widget/LinearLayout;

    const v3, 0x7f09004a

    .line 173
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v28, v3

    check-cast v28, Landroid/view/ViewGroup;

    const v3, 0x7f090158

    .line 174
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v29, v3

    check-cast v29, Landroid/view/ViewGroup;

    .line 175
    iget-object v3, v1, Lcom/perm/kate/CommentListAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    iget-object v6, v0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    iget-object v7, v1, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    const/16 v30, 0x0

    move-object/from16 v18, v3

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    invoke-virtual/range {v18 .. v30}, Lcom/perm/kate/AttachmentsHelper;->displayAttachments(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    const v3, 0x7f09029c

    .line 179
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 180
    iget-wide v6, v0, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-eqz v0, :cond_a

    cmp-long v0, v6, v8

    if-lez v0, :cond_8

    .line 183
    iget-object v0, v1, Lcom/perm/kate/CommentListAdapter;->userCache:Lcom/perm/utils/UserCache;

    invoke-virtual {v0, v6, v7}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 185
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_6

    .line 187
    :cond_8
    iget-object v0, v1, Lcom/perm/kate/CommentListAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    invoke-virtual {v0, v6, v7}, Lcom/perm/utils/GroupCache;->get(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 189
    iget-object v0, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    goto :goto_7

    :cond_9
    :goto_6
    move-object/from16 v0, v17

    .line 191
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    const v8, 0x7f0f0438

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 194
    :cond_a
    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 198
    :goto_8
    iget v0, v4, Lcom/perm/kate/data/PageCommentList$CommentData;->offset:I

    if-lez v0, :cond_b

    .line 199
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/CommentListAdapter;->getGroupedOffset()I

    move-result v0

    int-to-double v3, v0

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    invoke-virtual {v2, v0, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_9

    .line 201
    :cond_b
    invoke-virtual {v2, v5, v5, v5, v5}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_9

    .line 203
    :cond_c
    iget-object v3, v1, Lcom/perm/kate/CommentListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/data/PageCommentList$CommentData;

    iget-object v3, v3, Lcom/perm/kate/data/PageCommentList$CommentData;->type:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    sget-object v6, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->EMPTY_PAGE:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    const v7, 0x7f090202

    if-ne v3, v6, :cond_d

    .line 204
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v3, v1, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    const v6, 0x7f0f031c

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    iget v4, v4, Lcom/perm/kate/data/PageCommentList$CommentData;->page_number:I

    add-int/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v5

    invoke-virtual {v3, v6, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 206
    :cond_d
    iget-object v3, v1, Lcom/perm/kate/CommentListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/data/PageCommentList$CommentData;

    iget-object v3, v3, Lcom/perm/kate/data/PageCommentList$CommentData;->type:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    sget-object v4, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->LOADING_PAGE:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    if-ne v3, v4, :cond_e

    .line 207
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0f031d

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_9

    .line 209
    :cond_e
    iget-object v3, v1, Lcom/perm/kate/CommentListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/data/PageCommentList$CommentData;

    iget-object v0, v0, Lcom/perm/kate/data/PageCommentList$CommentData;->type:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    sget-object v3, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->SHOW_ALL_REPLIES:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    if-ne v0, v3, :cond_f

    .line 210
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v3, 0x7f0f0477

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_9

    :catchall_0
    move-exception v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 214
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_f
    :goto_9
    return-object v2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
