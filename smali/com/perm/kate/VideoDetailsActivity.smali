.class public Lcom/perm/kate/VideoDetailsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "VideoDetailsActivity.java"


# instance fields
.field private group_callback:Lcom/perm/kate/session/Callback;

.field private ownerOnClickListener:Landroid/view/View$OnClickListener;

.field private owner_id:J

.field private profile_callback:Lcom/perm/kate/session/Callback;

.field private tv_date_text:Landroid/widget/TextView;

.field private tv_description_label:Landroid/widget/TextView;

.field private tv_description_text:Landroid/widget/TextView;

.field private tv_owner_text:Landroid/widget/TextView;

.field private tv_title_text:Landroid/widget/TextView;

.field private video_id:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 119
    new-instance v0, Lcom/perm/kate/VideoDetailsActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/VideoDetailsActivity$3;-><init>(Lcom/perm/kate/VideoDetailsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoDetailsActivity;->profile_callback:Lcom/perm/kate/session/Callback;

    .line 150
    new-instance v0, Lcom/perm/kate/VideoDetailsActivity$5;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/VideoDetailsActivity$5;-><init>(Lcom/perm/kate/VideoDetailsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoDetailsActivity;->group_callback:Lcom/perm/kate/session/Callback;

    .line 169
    new-instance v0, Lcom/perm/kate/VideoDetailsActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoDetailsActivity$6;-><init>(Lcom/perm/kate/VideoDetailsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoDetailsActivity;->ownerOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/VideoDetailsActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/VideoDetailsActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/perm/kate/VideoDetailsActivity;->displayOwner(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/VideoDetailsActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/VideoDetailsActivity;

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/perm/kate/VideoDetailsActivity;->owner_id:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/perm/kate/VideoDetailsActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoDetailsActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/VideoDetailsActivity;->profile_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/VideoDetailsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/VideoDetailsActivity;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/perm/kate/VideoDetailsActivity;->displayOwnerInUiThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/VideoDetailsActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoDetailsActivity;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/perm/kate/VideoDetailsActivity;->group_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/VideoDetailsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/VideoDetailsActivity;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/perm/kate/VideoDetailsActivity;->openVideoOwner()V

    return-void
.end method

.method private displayData()V
    .locals 8

    .prologue
    .line 51
    :try_start_0
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p0, Lcom/perm/kate/VideoDetailsActivity;->video_id:J

    iget-wide v6, p0, Lcom/perm/kate/VideoDetailsActivity;->owner_id:J

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchVideoDescription(JJ)Lcom/perm/kate/api/Video;

    move-result-object v2

    .line 52
    .local v2, "video":Lcom/perm/kate/api/Video;
    if-eqz v2, :cond_0

    .line 53
    iget-object v3, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_title_text:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v3, v2, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 55
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v3, v2, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 56
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-static {v0}, Lcom/perm/utils/Linkify;->addWebLinks(Landroid/text/Spannable;)V

    .line 57
    const/4 v3, 0x1

    invoke-static {v0, p0, v3}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 58
    iget-object v3, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_description_text:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object v3, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_description_text:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 64
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_date_text:Landroid/widget/TextView;

    iget-wide v4, v2, Lcom/perm/kate/api/Video;->date:J

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    :cond_0
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/perm/kate/VideoDetailsActivity;->displayOwner(Z)V

    .line 72
    .end local v2    # "video":Lcom/perm/kate/api/Video;
    :goto_1
    return-void

    .line 61
    .restart local v2    # "video":Lcom/perm/kate/api/Video;
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_description_label:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object v3, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_description_text:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    .end local v2    # "video":Lcom/perm/kate/api/Video;
    :catch_0
    move-exception v1

    .line 68
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 69
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/perm/kate/VideoDetailsActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 70
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private displayOwner(Z)V
    .locals 8
    .param p1, "isAllowGet"    # Z

    .prologue
    .line 75
    iget-wide v2, p0, Lcom/perm/kate/VideoDetailsActivity;->owner_id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 76
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p0, Lcom/perm/kate/VideoDetailsActivity;->owner_id:J

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    .line 77
    .local v1, "user":Lcom/perm/kate/api/User;
    if-eqz v1, :cond_1

    .line 78
    iget-object v2, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_owner_text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    .end local v1    # "user":Lcom/perm/kate/api/User;
    :cond_0
    :goto_0
    return-void

    .line 80
    .restart local v1    # "user":Lcom/perm/kate/api/User;
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_owner_text:Landroid/widget/TextView;

    const v3, 0x7f070299

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/perm/kate/VideoDetailsActivity;->getUserInThread()V

    goto :goto_0

    .line 85
    .end local v1    # "user":Lcom/perm/kate/api/User;
    :cond_2
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const-wide/16 v4, -0x1

    iget-wide v6, p0, Lcom/perm/kate/VideoDetailsActivity;->owner_id:J

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    .line 86
    .local v0, "group":Lcom/perm/kate/api/Group;
    if-eqz v0, :cond_3

    .line 87
    iget-object v2, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_owner_text:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 89
    :cond_3
    iget-object v2, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_owner_text:Landroid/widget/TextView;

    const v3, 0x7f0700bf

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 90
    if-eqz p1, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/perm/kate/VideoDetailsActivity;->getGroupInThread()V

    goto :goto_0
.end method

.method private displayOwnerInUiThread()V
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/perm/kate/VideoDetailsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    :goto_0
    return-void

    .line 99
    :cond_0
    new-instance v0, Lcom/perm/kate/VideoDetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoDetailsActivity$1;-><init>(Lcom/perm/kate/VideoDetailsActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/VideoDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getGroupInThread()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/VideoDetailsActivity;->showProgressBar(Z)V

    .line 140
    new-instance v0, Lcom/perm/kate/VideoDetailsActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoDetailsActivity$4;-><init>(Lcom/perm/kate/VideoDetailsActivity;)V

    .line 147
    invoke-virtual {v0}, Lcom/perm/kate/VideoDetailsActivity$4;->start()V

    .line 148
    return-void
.end method

.method private getUserInThread()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/VideoDetailsActivity;->showProgressBar(Z)V

    .line 109
    new-instance v0, Lcom/perm/kate/VideoDetailsActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoDetailsActivity$2;-><init>(Lcom/perm/kate/VideoDetailsActivity;)V

    .line 116
    invoke-virtual {v0}, Lcom/perm/kate/VideoDetailsActivity$2;->start()V

    .line 117
    return-void
.end method

.method private openVideoOwner()V
    .locals 6

    .prologue
    .line 177
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 178
    .local v0, "intent":Landroid/content/Intent;
    iget-wide v2, p0, Lcom/perm/kate/VideoDetailsActivity;->owner_id:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 179
    const-class v1, Lcom/perm/kate/ProfileInfoActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 180
    const-string v1, "com.perm.kate.user_id"

    iget-wide v2, p0, Lcom/perm/kate/VideoDetailsActivity;->owner_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    :goto_0
    invoke-virtual {p0, v0}, Lcom/perm/kate/VideoDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 186
    return-void

    .line 182
    :cond_0
    const-class v1, Lcom/perm/kate/GroupActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 183
    const-string v1, "com.perm.kate.group_id"

    const-wide/16 v2, -0x1

    iget-wide v4, p0, Lcom/perm/kate/VideoDetailsActivity;->owner_id:J

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x0

    .line 31
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f030116

    invoke-virtual {p0, v0}, Lcom/perm/kate/VideoDetailsActivity;->setContentView(I)V

    .line 33
    const v0, 0x7f07047f

    invoke-virtual {p0, v0}, Lcom/perm/kate/VideoDetailsActivity;->setHeaderTitle(I)V

    .line 34
    const v0, 0x7f0e0354

    invoke-virtual {p0, v0}, Lcom/perm/kate/VideoDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_owner_text:Landroid/widget/TextView;

    .line 35
    const v0, 0x7f0e0355

    invoke-virtual {p0, v0}, Lcom/perm/kate/VideoDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_title_text:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f0e0357

    invoke-virtual {p0, v0}, Lcom/perm/kate/VideoDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_description_text:Landroid/widget/TextView;

    .line 37
    const v0, 0x7f0e0356

    invoke-virtual {p0, v0}, Lcom/perm/kate/VideoDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_description_label:Landroid/widget/TextView;

    .line 38
    const v0, 0x7f0e0358

    invoke-virtual {p0, v0}, Lcom/perm/kate/VideoDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_date_text:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_owner_text:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/VideoDetailsActivity;->ownerOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    invoke-virtual {p0}, Lcom/perm/kate/VideoDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.video_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/VideoDetailsActivity;->video_id:J

    .line 41
    invoke-virtual {p0}, Lcom/perm/kate/VideoDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/VideoDetailsActivity;->owner_id:J

    .line 42
    iget-wide v0, p0, Lcom/perm/kate/VideoDetailsActivity;->video_id:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/perm/kate/VideoDetailsActivity;->owner_id:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/VideoDetailsActivity;->finish()V

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/VideoDetailsActivity;->displayData()V

    goto :goto_0
.end method
