.class public Lcom/perm/kate/SearchWallAdapter;
.super Landroid/widget/BaseAdapter;
.source "SearchWallAdapter.java"


# instance fields
.field account_id:J

.field private activity:Lcom/perm/kate/BaseActivity;

.field attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

.field big_photos:Z

.field card_style_news:Z

.field collapse_news:Z

.field gray_color:I

.field groupCache:Lcom/perm/utils/GroupCache;

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/WallMessage;",
            ">;"
        }
    .end annotation
.end field

.field old_style_news:Z

.field userCache:Lcom/perm/utils/UserCache;

.field private user_photo_OnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/perm/kate/BaseActivity;I)V
    .locals 9
    .param p1, "a"    # Lcom/perm/kate/BaseActivity;
    .param p2, "source"    # I

    .prologue
    const/16 v6, 0x14

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 40
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 29
    new-instance v0, Lcom/perm/utils/GroupCache;

    invoke-direct {v0}, Lcom/perm/utils/GroupCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    .line 31
    new-instance v0, Lcom/perm/utils/UserCache;

    invoke-direct {v0}, Lcom/perm/utils/UserCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->userCache:Lcom/perm/utils/UserCache;

    .line 32
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->shouldDisplayBigPhotos()Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/SearchWallAdapter;->big_photos:Z

    .line 33
    iput-boolean v8, p0, Lcom/perm/kate/SearchWallAdapter;->collapse_news:Z

    .line 35
    iput-boolean v5, p0, Lcom/perm/kate/SearchWallAdapter;->old_style_news:Z

    .line 37
    iput-boolean v5, p0, Lcom/perm/kate/SearchWallAdapter;->card_style_news:Z

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->items:Ljava/util/ArrayList;

    .line 232
    new-instance v0, Lcom/perm/kate/SearchWallAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/SearchWallAdapter$1;-><init>(Lcom/perm/kate/SearchWallAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    .line 41
    iput-object p1, p0, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    .line 42
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/SearchWallAdapter;->account_id:J

    .line 43
    const/4 v3, 0x0

    .line 44
    .local v3, "left_pane_offset":I
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v0, :cond_0

    .line 45
    sget v3, Lcom/perm/kate/KApplication;->LEFT_PANE_PROFILE_MIN_WIDTH:I

    .line 47
    :cond_0
    invoke-static {p1}, Lcom/perm/kate/NewsCursorAdapter;->getCardStyleFlag(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v5, v6

    .line 49
    .local v5, "bubble_offset":I
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    const/4 v5, 0x0

    .line 52
    :cond_2
    new-instance v0, Lcom/perm/kate/AttachmentsHelper;

    iget-object v1, p0, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    iget-boolean v2, p0, Lcom/perm/kate/SearchWallAdapter;->big_photos:Z

    iget-object v4, p0, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v4}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result v4

    move v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/AttachmentsHelper;-><init>(Lcom/perm/kate/BaseActivity;ZIZIII)V

    iput-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    .line 53
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_collapse_news"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/SearchWallAdapter;->collapse_news:Z

    .line 56
    iget-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getReadMoreColor(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/SearchWallAdapter;->gray_color:I

    .line 59
    iget-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getOldStyleFlag(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/SearchWallAdapter;->old_style_news:Z

    .line 61
    iget-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0}, Lcom/perm/kate/NewsCursorAdapter;->getCardStyleFlag(Landroid/app/Activity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/SearchWallAdapter;->card_style_news:Z

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/SearchWallAdapter;)Lcom/perm/kate/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/SearchWallAdapter;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    invoke-virtual {v0}, Lcom/perm/kate/AttachmentsHelper;->destroy()V

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    .line 261
    return-void
.end method

.method public displayNewData(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/WallMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "_items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/WallMessage;>;"
    iget-object v1, p0, Lcom/perm/kate/SearchWallAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 66
    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    .line 68
    .local v0, "m":Lcom/perm/kate/api/WallMessage;
    iget-object v2, p0, Lcom/perm/kate/SearchWallAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    .end local v0    # "m":Lcom/perm/kate/api/WallMessage;
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/SearchWallAdapter;->notifyDataSetChanged()V

    .line 71
    return-void
.end method

.method public fillView(Landroid/view/View;Landroid/content/Context;Lcom/perm/kate/api/WallMessage;)V
    .locals 53
    .param p1, "vi"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "wall_message"    # Lcom/perm/kate/api/WallMessage;

    .prologue
    .line 75
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perm/kate/NewsItemTag;

    .line 76
    .local v14, "tag":Lcom/perm/kate/NewsItemTag;
    if-nez v14, :cond_1

    .line 219
    .end local v14    # "tag":Lcom/perm/kate/NewsItemTag;
    :cond_0
    :goto_0
    return-void

    .line 78
    .restart local v14    # "tag":Lcom/perm/kate/NewsItemTag;
    :cond_1
    iget-object v4, v14, Lcom/perm/kate/NewsItemTag;->view_holder:Lcom/perm/kate/ViewHolder;

    .line 79
    .local v4, "h":Lcom/perm/kate/ViewHolder;
    if-eqz v4, :cond_0

    .line 81
    invoke-static {v4}, Lcom/perm/kate/NewsCursorAdapter;->hideFields(Lcom/perm/kate/ViewHolder;)V

    .line 83
    invoke-static/range {p3 .. p3}, Lcom/perm/kate/db/DataHelper;->repostCompatibilityHack(Lcom/perm/kate/api/WallMessage;)V

    .line 85
    move-object/from16 v0, p3

    iget-wide v6, v0, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v39

    .line 86
    .local v39, "post_id":Ljava/lang/String;
    move-object/from16 v0, p3

    iget-wide v6, v0, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v23

    .line 87
    .local v23, "owner_id":Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    move-object/from16 v48, v0

    .line 88
    .local v48, "text":Ljava/lang/String;
    move-object/from16 v0, p3

    iget-wide v6, v0, Lcom/perm/kate/api/WallMessage;->from_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v51

    .line 89
    .local v51, "uid":Ljava/lang/Long;
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/perm/kate/api/WallMessage;->date:J

    move-wide/from16 v36, v0

    .line 91
    .local v36, "long_date":J
    move-wide/from16 v0, v36

    iput-wide v0, v14, Lcom/perm/kate/NewsItemTag;->date:J

    .line 92
    move-object/from16 v0, v39

    iput-object v0, v14, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    .line 93
    move-object/from16 v0, v23

    iput-object v0, v14, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    .line 94
    move-object/from16 v0, p3

    iget-boolean v6, v0, Lcom/perm/kate/api/WallMessage;->user_like:Z

    iput-boolean v6, v14, Lcom/perm/kate/NewsItemTag;->i_like:Z

    .line 95
    move-object/from16 v0, v48

    iput-object v0, v14, Lcom/perm/kate/NewsItemTag;->text:Ljava/lang/String;

    .line 96
    move-object/from16 v0, v51

    iput-object v0, v14, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    .line 98
    sget-object v6, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, p3

    iget-wide v12, v0, Lcom/perm/kate/api/WallMessage;->from_id:J

    invoke-virtual {v6, v12, v13}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v52

    .line 99
    .local v52, "user":Lcom/perm/kate/api/User;
    const-string v5, ""

    .line 100
    .local v5, "display_name":Ljava/lang/String;
    if-eqz v52, :cond_2

    .line 101
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    iget-object v7, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v52

    iget-object v7, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 104
    :cond_2
    const v6, 0x7f0e022b

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    .line 105
    .local v38, "onlineView":Landroid/view/View;
    if-eqz v52, :cond_7

    move-object/from16 v0, v52

    iget-object v6, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, v38

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 107
    if-eqz v52, :cond_8

    move-object/from16 v0, v52

    iget-object v9, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 108
    .local v9, "url_from_user":Ljava/lang/String;
    :goto_2
    invoke-virtual/range {v51 .. v51}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/SearchWallAdapter;->user_photo_OnClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/perm/kate/SearchWallAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    invoke-static/range {v4 .. v10}, Lcom/perm/kate/NewsCursorAdapter;->displayProfile(Lcom/perm/kate/ViewHolder;Ljava/lang/String;JLandroid/view/View$OnClickListener;Ljava/lang/String;Lcom/perm/utils/GroupCache;)V

    .line 110
    const v6, 0x7f0e026c

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v50

    check-cast v50, Landroid/widget/TextView;

    .line 111
    .local v50, "tv_wall_text":Landroid/widget/TextView;
    if-eqz v48, :cond_9

    const-string v6, ""

    move-object/from16 v0, v48

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 112
    const/4 v6, 0x0

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    new-instance v41, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v41

    move-object/from16 v1, v48

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 114
    .local v41, "preview":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v7, 0x0

    move-object/from16 v0, v41

    invoke-static {v0, v6, v7}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 115
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/perm/kate/SearchWallAdapter;->collapse_news:Z

    if-eqz v6, :cond_3

    .line 116
    move-object/from16 v0, p0

    iget v6, v0, Lcom/perm/kate/SearchWallAdapter;->gray_color:I

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    invoke-static {v0, v1, v6}, Lcom/perm/kate/NewsCursorAdapter;->cropLongText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;I)V

    .line 118
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v0, v41

    invoke-static {v6, v0}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v41

    .line 119
    move-object/from16 v0, p3

    iget v6, v0, Lcom/perm/kate/api/WallMessage;->post_type:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    const v8, 0x7f07044b

    invoke-virtual {v7, v8}, Lcom/perm/kate/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 121
    .local v42, "reply_title":Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v0, v41

    move-object/from16 v1, v42

    invoke-virtual {v0, v6, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 122
    new-instance v6, Landroid/text/style/StyleSpan;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v7, 0x0

    invoke-virtual/range {v42 .. v42}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v10, 0x21

    move-object/from16 v0, v41

    invoke-virtual {v0, v6, v7, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 124
    .end local v42    # "reply_title":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, v50

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .end local v41    # "preview":Landroid/text/SpannableStringBuilder;
    :goto_3
    move-object/from16 v0, p3

    iget-wide v6, v0, Lcom/perm/kate/api/WallMessage;->copy_owner_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    .line 129
    .local v11, "copy_owner_id":Ljava/lang/Long;
    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/perm/kate/api/WallMessage;->copy_text:Ljava/lang/String;

    .line 130
    .local v15, "copy_text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/perm/kate/SearchWallAdapter;->groupCache:Lcom/perm/utils/GroupCache;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/perm/kate/SearchWallAdapter;->userCache:Lcom/perm/utils/UserCache;

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v10, v4

    invoke-static/range {v10 .. v17}, Lcom/perm/kate/NewsCursorAdapter;->displayRetweet(Lcom/perm/kate/ViewHolder;Ljava/lang/Long;Lcom/perm/utils/GroupCache;Lcom/perm/utils/UserCache;Lcom/perm/kate/NewsItemTag;Ljava/lang/String;ZLandroid/app/Activity;)V

    .line 131
    iput-object v11, v14, Lcom/perm/kate/NewsItemTag;->copy_owner_id:Ljava/lang/Long;

    .line 132
    iput-object v15, v14, Lcom/perm/kate/NewsItemTag;->copy_text:Ljava/lang/String;

    .line 134
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-wide/from16 v0, v36

    invoke-static {v6, v0, v1}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v31

    .line 135
    .local v31, "ago_text":Ljava/lang/String;
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_ago:Landroid/widget/TextView;

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    move-object/from16 v0, p3

    iget v0, v0, Lcom/perm/kate/api/WallMessage;->post_type:I

    move/from16 v40, v0

    .line 139
    .local v40, "post_type":I
    const/4 v6, 0x2

    move/from16 v0, v40

    if-ge v0, v6, :cond_a

    .line 140
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/perm/kate/api/WallMessage;->comment_count:J

    move-wide/from16 v34, v0

    .line 141
    .local v34, "comment_count":J
    const/4 v6, 0x0

    move-wide/from16 v0, v34

    invoke-static {v4, v0, v1, v6}, Lcom/perm/kate/NewsCursorAdapter;->displayCommentsCount(Lcom/perm/kate/ViewHolder;JZ)V

    .line 143
    move-object/from16 v0, p3

    iget v6, v0, Lcom/perm/kate/api/WallMessage;->like_count:I

    int-to-long v0, v6

    move-wide/from16 v16, v0

    .line 144
    .local v16, "like_count":J
    iget-boolean v0, v14, Lcom/perm/kate/NewsItemTag;->i_like:Z

    move/from16 v18, v0

    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    move-object/from16 v19, v0

    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->tv_posts_news_like_count:Landroid/widget/TextView;

    move-object/from16 v20, v0

    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->likes_heart:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-static/range {v16 .. v22}, Lcom/perm/kate/NewsCursorAdapter;->displayLikeCount(JZLandroid/view/View;Landroid/widget/TextView;Landroid/widget/ImageView;Z)V

    .line 146
    move-object/from16 v0, p3

    iget v6, v0, Lcom/perm/kate/api/WallMessage;->reposts_count:I

    int-to-long v0, v6

    move-wide/from16 v44, v0

    .line 147
    .local v44, "reposts_count":J
    const/4 v6, 0x0

    move-wide/from16 v0, v44

    invoke-static {v4, v0, v1, v6}, Lcom/perm/kate/NewsCursorAdapter;->displayRepostsCount(Lcom/perm/kate/ViewHolder;JZ)V

    .line 156
    .end local v16    # "like_count":J
    .end local v34    # "comment_count":J
    .end local v44    # "reposts_count":J
    :goto_4
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/perm/kate/api/WallMessage;->id:J

    move-wide/from16 v32, v0

    .line 157
    .local v32, "_id":J
    move-wide/from16 v0, v32

    iput-wide v0, v14, Lcom/perm/kate/NewsItemTag;->_id:J

    .line 158
    const v6, 0x7f0e0086

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/view/ViewGroup;

    .line 159
    .local v28, "audio_container":Landroid/view/ViewGroup;
    const v6, 0x7f0e0087

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/view/ViewGroup;

    .line 160
    .local v29, "gift_container":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchWallAdapter;->attachmentsHelper:Lcom/perm/kate/AttachmentsHelper;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v25, v0

    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->photo_container:Landroid/view/ViewGroup;

    move-object/from16 v26, v0

    iget-object v0, v4, Lcom/perm/kate/ViewHolder;->links_container:Landroid/widget/LinearLayout;

    move-object/from16 v27, v0

    const/16 v30, 0x0

    move-object/from16 v20, v14

    move-object/from16 v21, v4

    move-object/from16 v22, v39

    invoke-virtual/range {v18 .. v30}, Lcom/perm/kate/AttachmentsHelper;->displayAttachments(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    .line 164
    move-object/from16 v0, p3

    iget-wide v0, v0, Lcom/perm/kate/api/WallMessage;->signer_id:J

    move-wide/from16 v46, v0

    .line 165
    .local v46, "signer_id":J
    const v6, 0x7f0e02b6

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    check-cast v43, Landroid/widget/TextView;

    .line 166
    .local v43, "signerView":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/SearchWallAdapter;->userCache:Lcom/perm/utils/UserCache;

    move-wide/from16 v0, v46

    move-object/from16 v2, v43

    invoke-static {v0, v1, v2, v6}, Lcom/perm/kate/NewsCursorAdapter;->displaySigner(JLandroid/widget/TextView;Lcom/perm/utils/UserCache;)V

    .line 169
    const/4 v6, -0x1

    move/from16 v0, v40

    if-eq v0, v6, :cond_f

    .line 170
    const/4 v6, 0x2

    move/from16 v0, v40

    if-ne v0, v6, :cond_b

    .line 171
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    if-eqz v6, :cond_5

    .line 172
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 173
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    const v7, 0x7f070219

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 175
    :cond_5
    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, v14, Lcom/perm/kate/NewsItemTag;->publish_date:Ljava/lang/Long;

    .line 176
    const/4 v6, 0x0

    iput-boolean v6, v14, Lcom/perm/kate/NewsItemTag;->is_suggested:Z

    .line 196
    :goto_5
    const/4 v6, 0x2

    move/from16 v0, v40

    if-ge v0, v6, :cond_6

    .line 198
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    const v7, 0x7f0e0231

    iget-object v8, v14, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 199
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    const v7, 0x7f0e0237

    iget-object v8, v14, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 200
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->likes_view:Landroid/view/View;

    const v7, 0x7f0e023a

    iget-boolean v8, v14, Lcom/perm/kate/NewsItemTag;->i_like:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 202
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    const v7, 0x7f0e0231

    iget-object v8, v14, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 203
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->comments_view:Landroid/view/View;

    const v7, 0x7f0e0237

    iget-object v8, v14, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 205
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    const v7, 0x7f0e0231

    iget-object v8, v14, Lcom/perm/kate/NewsItemTag;->post_id:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 206
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    const v7, 0x7f0e0237

    iget-object v8, v14, Lcom/perm/kate/NewsItemTag;->wall_owner_id:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 207
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->reposts_view:Landroid/view/View;

    const v7, 0x7f0e0062

    iget-object v8, v14, Lcom/perm/kate/NewsItemTag;->post_owner_id:Ljava/lang/Long;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 210
    :cond_6
    const/4 v6, 0x4

    move/from16 v0, v40

    if-ne v0, v6, :cond_11

    .line 211
    const-string v6, "reply"

    iput-object v6, v14, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;

    .line 214
    :goto_6
    move-object/from16 v0, p3

    iget-object v6, v0, Lcom/perm/kate/api/WallMessage;->views:Ljava/lang/Integer;

    invoke-static {v6, v4}, Lcom/perm/kate/NewsCursorAdapter;->displayViews(Ljava/lang/Integer;Lcom/perm/kate/ViewHolder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 215
    .end local v4    # "h":Lcom/perm/kate/ViewHolder;
    .end local v5    # "display_name":Ljava/lang/String;
    .end local v9    # "url_from_user":Ljava/lang/String;
    .end local v11    # "copy_owner_id":Ljava/lang/Long;
    .end local v14    # "tag":Lcom/perm/kate/NewsItemTag;
    .end local v15    # "copy_text":Ljava/lang/String;
    .end local v23    # "owner_id":Ljava/lang/String;
    .end local v28    # "audio_container":Landroid/view/ViewGroup;
    .end local v29    # "gift_container":Landroid/view/ViewGroup;
    .end local v31    # "ago_text":Ljava/lang/String;
    .end local v32    # "_id":J
    .end local v36    # "long_date":J
    .end local v38    # "onlineView":Landroid/view/View;
    .end local v39    # "post_id":Ljava/lang/String;
    .end local v40    # "post_type":I
    .end local v43    # "signerView":Landroid/widget/TextView;
    .end local v46    # "signer_id":J
    .end local v48    # "text":Ljava/lang/String;
    .end local v50    # "tv_wall_text":Landroid/widget/TextView;
    .end local v51    # "uid":Ljava/lang/Long;
    .end local v52    # "user":Lcom/perm/kate/api/User;
    :catch_0
    move-exception v49

    .line 216
    .local v49, "th":Ljava/lang/Throwable;
    invoke-static/range {v49 .. v49}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 217
    invoke-virtual/range {v49 .. v49}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 105
    .end local v49    # "th":Ljava/lang/Throwable;
    .restart local v4    # "h":Lcom/perm/kate/ViewHolder;
    .restart local v5    # "display_name":Ljava/lang/String;
    .restart local v14    # "tag":Lcom/perm/kate/NewsItemTag;
    .restart local v23    # "owner_id":Ljava/lang/String;
    .restart local v36    # "long_date":J
    .restart local v38    # "onlineView":Landroid/view/View;
    .restart local v39    # "post_id":Ljava/lang/String;
    .restart local v48    # "text":Ljava/lang/String;
    .restart local v51    # "uid":Ljava/lang/Long;
    .restart local v52    # "user":Lcom/perm/kate/api/User;
    :cond_7
    const/16 v6, 0x8

    goto/16 :goto_1

    .line 107
    :cond_8
    :try_start_1
    const-string v9, ""

    goto/16 :goto_2

    .line 126
    .restart local v9    # "url_from_user":Ljava/lang/String;
    .restart local v50    # "tv_wall_text":Landroid/widget/TextView;
    :cond_9
    const/16 v6, 0x8

    move-object/from16 v0, v50

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 155
    .restart local v11    # "copy_owner_id":Ljava/lang/Long;
    .restart local v15    # "copy_text":Ljava/lang/String;
    .restart local v31    # "ago_text":Ljava/lang/String;
    .restart local v40    # "post_type":I
    :cond_a
    invoke-static {v4}, Lcom/perm/kate/NewsCursorAdapter;->hideCountViews(Lcom/perm/kate/ViewHolder;)V

    goto/16 :goto_4

    .line 177
    .restart local v28    # "audio_container":Landroid/view/ViewGroup;
    .restart local v29    # "gift_container":Landroid/view/ViewGroup;
    .restart local v32    # "_id":J
    .restart local v43    # "signerView":Landroid/widget/TextView;
    .restart local v46    # "signer_id":J
    :cond_b
    const/4 v6, 0x3

    move/from16 v0, v40

    if-ne v0, v6, :cond_d

    .line 178
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    if-eqz v6, :cond_c

    .line 179
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    const v7, 0x7f07027a

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 182
    :cond_c
    const/4 v6, 0x0

    iput-object v6, v14, Lcom/perm/kate/NewsItemTag;->publish_date:Ljava/lang/Long;

    .line 183
    const/4 v6, 0x1

    iput-boolean v6, v14, Lcom/perm/kate/NewsItemTag;->is_suggested:Z

    goto/16 :goto_5

    .line 185
    :cond_d
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    if-eqz v6, :cond_e

    .line 186
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 187
    :cond_e
    const/4 v6, 0x0

    iput-object v6, v14, Lcom/perm/kate/NewsItemTag;->publish_date:Ljava/lang/Long;

    .line 188
    const/4 v6, 0x0

    iput-boolean v6, v14, Lcom/perm/kate/NewsItemTag;->is_suggested:Z

    goto/16 :goto_5

    .line 191
    :cond_f
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    if-eqz v6, :cond_10

    .line 192
    iget-object v6, v4, Lcom/perm/kate/ViewHolder;->tv_post_type:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    :cond_10
    const/4 v6, 0x0

    iput-object v6, v14, Lcom/perm/kate/NewsItemTag;->publish_date:Ljava/lang/Long;

    .line 194
    const/4 v6, 0x0

    iput-boolean v6, v14, Lcom/perm/kate/NewsItemTag;->is_suggested:Z

    goto/16 :goto_5

    .line 213
    :cond_11
    const-string v6, "post"

    iput-object v6, v14, Lcom/perm/kate/NewsItemTag;->type:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 270
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 271
    iget-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 272
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 277
    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 278
    iget-object v0, p0, Lcom/perm/kate/SearchWallAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    iget-wide v0, v0, Lcom/perm/kate/api/WallMessage;->id:J

    .line 279
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getNewView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 222
    iget-boolean v3, p0, Lcom/perm/kate/SearchWallAdapter;->big_photos:Z

    iget-boolean v2, p0, Lcom/perm/kate/SearchWallAdapter;->old_style_news:Z

    if-eqz v2, :cond_1

    const v2, 0x7f0300e1

    :goto_0
    invoke-static {p1, p2, v3, v2}, Lcom/perm/kate/NewsCursorAdapter;->createView(Landroid/content/Context;Landroid/view/ViewGroup;ZI)Landroid/view/View;

    move-result-object v1

    .line 223
    .local v1, "v":Landroid/view/View;
    iget-boolean v2, p0, Lcom/perm/kate/SearchWallAdapter;->old_style_news:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/perm/kate/SearchWallAdapter;->card_style_news:Z

    if-eqz v2, :cond_0

    .line 224
    const v2, 0x7f0e02b0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 225
    .local v0, "root_news_item":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->getCardBgByTheme()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 229
    .end local v0    # "root_news_item":Landroid/view/View;
    :cond_0
    return-object v1

    .line 222
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    const v2, 0x7f0300e0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 246
    move-object v1, p2

    .line 248
    .local v1, "view":Landroid/view/View;
    if-nez v1, :cond_0

    .line 249
    :try_start_0
    iget-object v3, p0, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {p0, v3, p3}, Lcom/perm/kate/SearchWallAdapter;->getNewView(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 250
    :cond_0
    iget-object v3, p0, Lcom/perm/kate/SearchWallAdapter;->items:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/WallMessage;

    .line 251
    .local v2, "wall_message":Lcom/perm/kate/api/WallMessage;
    iget-object v3, p0, Lcom/perm/kate/SearchWallAdapter;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {p0, v1, v3, v2}, Lcom/perm/kate/SearchWallAdapter;->fillView(Landroid/view/View;Landroid/content/Context;Lcom/perm/kate/api/WallMessage;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .end local v2    # "wall_message":Lcom/perm/kate/api/WallMessage;
    :goto_0
    return-object v1

    .line 252
    :catch_0
    move-exception v0

    .line 253
    .local v0, "th":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 241
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 242
    return-void
.end method
