.class public Lcom/perm/kate/CommentListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CommentListAdapter.java"


# static fields
.field private static pattern:Ljava/util/regex/Pattern;

.field private static pattern_string:Ljava/lang/String;


# instance fields
.field private activity:Landroid/app/Activity;

.field attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

.field big_photos:Z

.field groupCache:Lcom/perm/utils/GroupCache;

.field hint:Ljava/lang/String;

.field list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/data/PageCommentList$CommentData;",
            ">;"
        }
    .end annotation
.end field

.field userCache:Lcom/perm/utils/UserCache;

.field user_photo_OnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    const-string v0, "\\[(id|club)(\\d*)(:bp-\\d*_(\\d*))?\\|(.*?)\\]"

    sput-object v0, Lcom/perm/kate/CommentListAdapter;->pattern_string:Ljava/lang/String;

    .line 214
    sget-object v0, Lcom/perm/kate/CommentListAdapter;->pattern_string:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/CommentListAdapter;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lcom/perm/kate/BaseActivity;)V
    .locals 8
    .param p2, "activity"    # Lcom/perm/kate/BaseActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/data/PageCommentList$CommentData;",
            ">;",
            "Lcom/perm/kate/BaseActivity;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/data/PageCommentList$CommentData;>;"
    const/4 v5, 0x0

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

    .line 291
    new-instance v0, Lcom/perm/kate/CommentListAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/CommentListAdapter$1;-><init>(Lcom/perm/kate/CommentListAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/CommentListAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    .line 39
    iput-object p2, p0, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    .line 40
    iput-object p1, p0, Lcom/perm/kate/CommentListAdapter;->list:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Lcom/perm/kate/AttachmentsHelper;

    iget-boolean v2, p0, Lcom/perm/kate/CommentListAdapter;->big_photos:Z

    invoke-virtual {p0}, Lcom/perm/kate/CommentListAdapter;->getGroupedOffset()I

    move-result v1

    add-int/lit8 v3, v1, 0x0

    const/4 v4, 0x1

    const/16 v6, 0x15

    const/16 v7, 0x8

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/AttachmentsHelper;-><init>(Lcom/perm/kate/BaseActivity;ZIZIII)V

    iput-object v0, p0, Lcom/perm/kate/CommentListAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    .line 44
    iget-object v0, p0, Lcom/perm/kate/CommentListAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    iput-boolean v5, v0, Lcom/perm/kate/AttachmentsHelper;->linkMargins:Z

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v2, 0x7f0701db

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/CommentListAdapter;->hint:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/CommentListAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CommentListAdapter;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public static parseProfileLinks(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 260
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 269
    :cond_0
    :goto_0
    return-object p0

    .line 262
    :cond_1
    sget-object v2, Lcom/perm/kate/CommentListAdapter;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 263
    .local v0, "m":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_1

    .line 265
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v1

    .line 266
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 267
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static parseProfileLinks(Lcom/perm/kate/api/Comment;)V
    .locals 8
    .param p0, "comment"    # Lcom/perm/kate/api/Comment;

    .prologue
    .line 225
    :try_start_0
    iget-object v4, p0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    const/4 v0, 0x0

    .line 228
    .local v0, "has_reply":Z
    sget-object v4, Lcom/perm/kate/CommentListAdapter;->pattern:Ljava/util/regex/Pattern;

    iget-object v5, p0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 229
    .local v2, "m":Ljava/util/regex/Matcher;
    :cond_2
    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 230
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 231
    if-eqz v0, :cond_4

    .line 232
    iget-object v4, p0, Lcom/perm/kate/api/Comment;->replyCids:Ljava/util/ArrayList;

    if-nez v4, :cond_3

    .line 233
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/perm/kate/api/Comment;->replyCids:Ljava/util/ArrayList;

    .line 234
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/perm/kate/api/Comment;->replyUsers:Ljava/util/ArrayList;

    .line 236
    :cond_3
    iget-wide v4, p0, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/perm/kate/api/Comment;->reply_to_user_name:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 237
    iget-object v4, p0, Lcom/perm/kate/api/Comment;->replyCids:Ljava/util/ArrayList;

    iget-wide v6, p0, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    iget-object v4, p0, Lcom/perm/kate/api/Comment;->replyUsers:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/perm/kate/api/Comment;->reply_to_user_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_4
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    .line 242
    const-string v4, "club"

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 243
    .local v1, "is_group":Z
    if-eqz v1, :cond_5

    .line 244
    iget-wide v4, p0, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    const-wide/16 v6, -0x1

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    .line 245
    :cond_5
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 246
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    .line 247
    :cond_6
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/perm/kate/api/Comment;->reply_to_user_name:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    const/4 v0, 0x1

    .line 249
    goto :goto_1

    .line 251
    .end local v0    # "has_reply":Z
    .end local v1    # "is_group":Z
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v3

    .line 252
    .local v3, "th":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 253
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method

.method public static removeProfileLinks(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 274
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 283
    :cond_0
    :goto_0
    return-object p0

    .line 276
    :cond_1
    sget-object v2, Lcom/perm/kate/CommentListAdapter;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 277
    .local v0, "m":Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    goto :goto_1

    .line 279
    .end local v0    # "m":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v1

    .line 280
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 281
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public Destroy()V
    .locals 1

    .prologue
    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    .line 288
    iget-object v0, p0, Lcom/perm/kate/CommentListAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    invoke-virtual {v0}, Lcom/perm/kate/AttachmentsHelper;->destroy()V

    .line 289
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/CommentListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getGroupedOffset()I
    .locals 1

    .prologue
    .line 209
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTablet:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 67
    iget-object v0, p0, Lcom/perm/kate/CommentListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 72
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lcom/perm/kate/CommentListAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/data/PageCommentList$CommentData;

    iget-object v0, v0, Lcom/perm/kate/data/PageCommentList$CommentData;->type:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    sget-object v1, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->COMMENT:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    if-ne v0, v1, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 48
    .param p1, "pos"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 77
    invoke-virtual/range {p0 .. p1}, Lcom/perm/kate/CommentListAdapter;->getItemViewType(I)I

    move-result v44

    .line 78
    .local v44, "type":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/CommentListAdapter;->list:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/perm/kate/data/PageCommentList$CommentData;

    .line 79
    .local v28, "commentData":Lcom/perm/kate/data/PageCommentList$CommentData;
    move-object/from16 v47, p2

    .line 80
    .local v47, "vi":Landroid/view/View;
    if-nez v47, :cond_0

    .line 81
    if-nez v44, :cond_3

    .line 82
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030041

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v47

    .line 87
    :cond_0
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/CommentListAdapter;->list:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/data/PageCommentList$CommentData;

    iget-object v2, v2, Lcom/perm/kate/data/PageCommentList$CommentData;->type:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    sget-object v3, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->COMMENT:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    if-ne v2, v3, :cond_b

    .line 88
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/perm/kate/data/PageCommentList$CommentData;->comment:Lcom/perm/kate/api/Comment;

    move-object/from16 v27, v0

    .line 89
    .local v27, "comment":Lcom/perm/kate/api/Comment;
    move-object/from16 v0, v27

    iget-wide v2, v0, Lcom/perm/kate/api/Comment;->from_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v45

    .line 90
    .local v45, "uid":Ljava/lang/Long;
    const v2, 0x7f0e006f

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 91
    .local v4, "img_comment_photo":Landroid/widget/ImageView;
    const-string v37, ""

    .line 92
    .local v37, "name":Ljava/lang/String;
    const-string v31, ""

    .line 93
    .local v31, "full_name":Ljava/lang/String;
    invoke-virtual/range {v45 .. v45}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_5

    .line 94
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/CommentListAdapter;->userCache:Lcom/perm/utils/UserCache;

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v46

    .line 95
    .local v46, "user":Lcom/perm/kate/api/User;
    if-eqz v46, :cond_4

    .line 96
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 97
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 96
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 98
    move-object/from16 v0, v46

    iget-object v0, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    move-object/from16 v37, v0

    .line 99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 116
    .end local v46    # "user":Lcom/perm/kate/api/User;
    :goto_1
    const v2, 0x7f0e0070

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    check-cast v42, Landroid/widget/TextView;

    .line 117
    .local v42, "tv_comment_name":Landroid/widget/TextView;
    move-object/from16 v0, v42

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/CommentListAdapter;->hint:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    const v2, 0x7f0e0071

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    check-cast v41, Landroid/widget/TextView;

    .line 122
    .local v41, "tv_comment_message":Landroid/widget/TextView;
    invoke-static/range {v27 .. v27}, Lcom/perm/kate/CommentListAdapter;->parseProfileLinks(Lcom/perm/kate/api/Comment;)V

    .line 123
    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    move-object/from16 v36, v0

    .line 124
    .local v36, "message":Ljava/lang/String;
    new-instance v26, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v26

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 126
    .local v26, "builder":Landroid/text/SpannableStringBuilder;
    invoke-static/range {v26 .. v26}, Lcom/perm/utils/Linkify;->addWebLinks(Landroid/text/Spannable;)V

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-static {v0, v2, v3}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 131
    const/16 v2, 0x8

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/CommentListAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    const v2, 0x7f0e026f

    move-object/from16 v0, v45

    invoke-virtual {v4, v2, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 139
    const v2, 0x7f0e0075

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 140
    .local v10, "tv_posts_news_like_count":Landroid/widget/TextView;
    const v2, 0x7f0e0073

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 141
    .local v9, "likes_view":Landroid/view/View;
    const v2, 0x7f0e0074

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 142
    .local v11, "likes_heart":Landroid/widget/ImageView;
    move-object/from16 v0, v27

    iget v0, v0, Lcom/perm/kate/api/Comment;->like_count:I

    move/from16 v33, v0

    .line 143
    .local v33, "like_count":I
    move-object/from16 v0, v27

    iget-boolean v8, v0, Lcom/perm/kate/api/Comment;->user_like:Z

    .line 144
    .local v8, "like":Z
    move/from16 v0, v33

    int-to-long v6, v0

    const/4 v12, 0x1

    invoke-static/range {v6 .. v12}, Lcom/perm/kate/NewsCursorAdapter;->displayLikeCount(JZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    .line 146
    move-object/from16 v0, v27

    iget-wide v2, v0, Lcom/perm/kate/api/Comment;->cid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    .line 147
    .local v29, "comment_id":Ljava/lang/Long;
    new-instance v30, Lcom/perm/kate/CommentTag;

    invoke-direct/range {v30 .. v30}, Lcom/perm/kate/CommentTag;-><init>()V

    .line 148
    .local v30, "ctag":Lcom/perm/kate/CommentTag;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v30

    iput-wide v2, v0, Lcom/perm/kate/CommentTag;->comment_id:J

    .line 149
    invoke-virtual/range {v45 .. v45}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    move-object/from16 v0, v30

    iput-wide v2, v0, Lcom/perm/kate/CommentTag;->user_id:J

    .line 150
    move-object/from16 v0, v37

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/perm/kate/CommentTag;->user_name:Ljava/lang/String;

    .line 151
    move-object/from16 v0, v36

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/perm/kate/CommentTag;->message:Ljava/lang/String;

    .line 152
    move-object/from16 v0, v30

    iput-boolean v8, v0, Lcom/perm/kate/CommentTag;->like:Z

    .line 153
    move-object/from16 v0, v27

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/perm/kate/CommentTag;->comment:Lcom/perm/kate/api/Comment;

    .line 154
    move-object/from16 v0, v47

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 157
    const v2, 0x7f0e0076

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/TextView;

    .line 158
    .local v43, "tv_message_ago":Landroid/widget/TextView;
    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/perm/kate/api/Comment;->date:J

    move-wide/from16 v34, v0

    .line 159
    .local v34, "long_date":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    move-wide/from16 v0, v34

    invoke-static {v2, v0, v1}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v25

    .line 160
    .local v25, "ago_text":Ljava/lang/String;
    move-object/from16 v0, v43

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    const v2, 0x7f0e0082

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 164
    .local v20, "photo_container":Landroid/view/ViewGroup;
    const v2, 0x7f0e0084

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/LinearLayout;

    .line 165
    .local v21, "links_container":Landroid/widget/LinearLayout;
    const v2, 0x7f0e0086

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/view/ViewGroup;

    .line 166
    .local v22, "audio_container":Landroid/view/ViewGroup;
    const v2, 0x7f0e0087

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/view/ViewGroup;

    .line 167
    .local v23, "gift_container":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/perm/kate/CommentListAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    move-object/from16 v19, v0

    const/16 v24, 0x0

    invoke-virtual/range {v12 .. v24}, Lcom/perm/kate/AttachmentsHelper;->displayAttachments(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 171
    const v2, 0x7f0e0072

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    check-cast v38, Landroid/widget/TextView;

    .line 172
    .local v38, "reply":Landroid/widget/TextView;
    move-object/from16 v0, v27

    iget-wide v2, v0, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-eqz v2, :cond_9

    .line 173
    const-string v39, ""

    .line 174
    .local v39, "reply_name":Ljava/lang/String;
    move-object/from16 v0, v27

    iget-wide v2, v0, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_8

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/CommentListAdapter;->userCache:Lcom/perm/utils/UserCache;

    move-object/from16 v0, v27

    iget-wide v6, v0, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    invoke-virtual {v2, v6, v7}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v46

    .line 176
    .restart local v46    # "user":Lcom/perm/kate/api/User;
    if-eqz v46, :cond_1

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v46

    iget-object v3, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    .line 183
    .end local v46    # "user":Lcom/perm/kate/api/User;
    :cond_1
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    const v5, 0x7f0703b8

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    const/4 v2, 0x0

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    .end local v39    # "reply_name":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, v28

    iget v2, v0, Lcom/perm/kate/data/PageCommentList$CommentData;->offset:I

    if-lez v2, :cond_a

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/CommentListAdapter;->getGroupedOffset()I

    move-result v2

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    .end local v4    # "img_comment_photo":Landroid/widget/ImageView;
    .end local v8    # "like":Z
    .end local v9    # "likes_view":Landroid/view/View;
    .end local v10    # "tv_posts_news_like_count":Landroid/widget/TextView;
    .end local v11    # "likes_heart":Landroid/widget/ImageView;
    .end local v20    # "photo_container":Landroid/view/ViewGroup;
    .end local v21    # "links_container":Landroid/widget/LinearLayout;
    .end local v22    # "audio_container":Landroid/view/ViewGroup;
    .end local v23    # "gift_container":Landroid/view/ViewGroup;
    .end local v25    # "ago_text":Ljava/lang/String;
    .end local v26    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v27    # "comment":Lcom/perm/kate/api/Comment;
    .end local v29    # "comment_id":Ljava/lang/Long;
    .end local v30    # "ctag":Lcom/perm/kate/CommentTag;
    .end local v31    # "full_name":Ljava/lang/String;
    .end local v33    # "like_count":I
    .end local v34    # "long_date":J
    .end local v36    # "message":Ljava/lang/String;
    .end local v37    # "name":Ljava/lang/String;
    .end local v38    # "reply":Landroid/widget/TextView;
    .end local v41    # "tv_comment_message":Landroid/widget/TextView;
    .end local v42    # "tv_comment_name":Landroid/widget/TextView;
    .end local v43    # "tv_message_ago":Landroid/widget/TextView;
    .end local v45    # "uid":Ljava/lang/Long;
    :cond_2
    :goto_5
    return-object v47

    .line 84
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030042

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v47

    goto/16 :goto_0

    .line 101
    .restart local v4    # "img_comment_photo":Landroid/widget/ImageView;
    .restart local v27    # "comment":Lcom/perm/kate/api/Comment;
    .restart local v31    # "full_name":Ljava/lang/String;
    .restart local v37    # "name":Ljava/lang/String;
    .restart local v45    # "uid":Ljava/lang/Long;
    .restart local v46    # "user":Lcom/perm/kate/api/User;
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    const-string v31, ""

    goto/16 :goto_1

    .line 105
    .end local v46    # "user":Lcom/perm/kate/api/User;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/CommentListAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    invoke-virtual/range {v45 .. v45}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/perm/utils/GroupCache;->get(J)Lcom/perm/kate/api/Group;

    move-result-object v32

    .line 106
    .local v32, "g":Lcom/perm/kate/api/Group;
    if-eqz v32, :cond_6

    .line 107
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 108
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    move-object/from16 v0, v32

    iget-object v3, v0, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 109
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 108
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 201
    .end local v4    # "img_comment_photo":Landroid/widget/ImageView;
    .end local v27    # "comment":Lcom/perm/kate/api/Comment;
    .end local v31    # "full_name":Ljava/lang/String;
    .end local v32    # "g":Lcom/perm/kate/api/Group;
    .end local v37    # "name":Ljava/lang/String;
    .end local v45    # "uid":Ljava/lang/Long;
    :catch_0
    move-exception v40

    .line 202
    .local v40, "th":Ljava/lang/Throwable;
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    invoke-static/range {v40 .. v40}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_5

    .line 112
    .end local v40    # "th":Ljava/lang/Throwable;
    .restart local v4    # "img_comment_photo":Landroid/widget/ImageView;
    .restart local v27    # "comment":Lcom/perm/kate/api/Comment;
    .restart local v31    # "full_name":Ljava/lang/String;
    .restart local v32    # "g":Lcom/perm/kate/api/Group;
    .restart local v37    # "name":Ljava/lang/String;
    .restart local v45    # "uid":Ljava/lang/Long;
    :cond_6
    :try_start_2
    const-string v31, ""

    .line 113
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 133
    .end local v32    # "g":Lcom/perm/kate/api/Group;
    .restart local v26    # "builder":Landroid/text/SpannableStringBuilder;
    .restart local v36    # "message":Ljava/lang/String;
    .restart local v41    # "tv_comment_message":Landroid/widget/TextView;
    .restart local v42    # "tv_comment_name":Landroid/widget/TextView;
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 179
    .restart local v8    # "like":Z
    .restart local v9    # "likes_view":Landroid/view/View;
    .restart local v10    # "tv_posts_news_like_count":Landroid/widget/TextView;
    .restart local v11    # "likes_heart":Landroid/widget/ImageView;
    .restart local v20    # "photo_container":Landroid/view/ViewGroup;
    .restart local v21    # "links_container":Landroid/widget/LinearLayout;
    .restart local v22    # "audio_container":Landroid/view/ViewGroup;
    .restart local v23    # "gift_container":Landroid/view/ViewGroup;
    .restart local v25    # "ago_text":Ljava/lang/String;
    .restart local v29    # "comment_id":Ljava/lang/Long;
    .restart local v30    # "ctag":Lcom/perm/kate/CommentTag;
    .restart local v33    # "like_count":I
    .restart local v34    # "long_date":J
    .restart local v38    # "reply":Landroid/widget/TextView;
    .restart local v39    # "reply_name":Ljava/lang/String;
    .restart local v43    # "tv_message_ago":Landroid/widget/TextView;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/CommentListAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    move-object/from16 v0, v27

    iget-wide v6, v0, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    invoke-virtual {v2, v6, v7}, Lcom/perm/utils/GroupCache;->get(J)Lcom/perm/kate/api/Group;

    move-result-object v32

    .line 180
    .restart local v32    # "g":Lcom/perm/kate/api/Group;
    if-eqz v32, :cond_1

    .line 181
    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    move-object/from16 v39, v0

    goto/16 :goto_3

    .line 186
    .end local v32    # "g":Lcom/perm/kate/api/Group;
    .end local v39    # "reply_name":Ljava/lang/String;
    :cond_9
    const/16 v2, 0x8

    move-object/from16 v0, v38

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 193
    :cond_a
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v47

    invoke-virtual {v0, v2, v3, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_5

    .line 195
    .end local v4    # "img_comment_photo":Landroid/widget/ImageView;
    .end local v8    # "like":Z
    .end local v9    # "likes_view":Landroid/view/View;
    .end local v10    # "tv_posts_news_like_count":Landroid/widget/TextView;
    .end local v11    # "likes_heart":Landroid/widget/ImageView;
    .end local v20    # "photo_container":Landroid/view/ViewGroup;
    .end local v21    # "links_container":Landroid/widget/LinearLayout;
    .end local v22    # "audio_container":Landroid/view/ViewGroup;
    .end local v23    # "gift_container":Landroid/view/ViewGroup;
    .end local v25    # "ago_text":Ljava/lang/String;
    .end local v26    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v27    # "comment":Lcom/perm/kate/api/Comment;
    .end local v29    # "comment_id":Ljava/lang/Long;
    .end local v30    # "ctag":Lcom/perm/kate/CommentTag;
    .end local v31    # "full_name":Ljava/lang/String;
    .end local v33    # "like_count":I
    .end local v34    # "long_date":J
    .end local v36    # "message":Ljava/lang/String;
    .end local v37    # "name":Ljava/lang/String;
    .end local v38    # "reply":Landroid/widget/TextView;
    .end local v41    # "tv_comment_message":Landroid/widget/TextView;
    .end local v42    # "tv_comment_name":Landroid/widget/TextView;
    .end local v43    # "tv_message_ago":Landroid/widget/TextView;
    .end local v45    # "uid":Ljava/lang/Long;
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/CommentListAdapter;->list:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/data/PageCommentList$CommentData;

    iget-object v2, v2, Lcom/perm/kate/data/PageCommentList$CommentData;->type:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    sget-object v3, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->EMPTY_PAGE:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    if-ne v2, v3, :cond_c

    .line 196
    const v2, 0x7f0e00e5

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    const v5, 0x7f0702c0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v28

    iget v12, v0, Lcom/perm/kate/data/PageCommentList$CommentData;->page_number:I

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 198
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/CommentListAdapter;->list:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/data/PageCommentList$CommentData;

    iget-object v2, v2, Lcom/perm/kate/data/PageCommentList$CommentData;->type:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    sget-object v3, Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;->LOADING_PAGE:Lcom/perm/kate/data/PageCommentList$CommentData$ItemType;

    if-ne v2, v3, :cond_2

    .line 199
    const v2, 0x7f0e00e5

    move-object/from16 v0, v47

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/CommentListAdapter;->activity:Landroid/app/Activity;

    const v5, 0x7f0702c1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, v28

    iget v12, v0, Lcom/perm/kate/data/PageCommentList$CommentData;->page_number:I

    add-int/lit8 v12, v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_5
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x2

    return v0
.end method
