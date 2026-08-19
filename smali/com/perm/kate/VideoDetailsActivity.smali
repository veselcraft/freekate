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

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 121
    new-instance v0, Lcom/perm/kate/VideoDetailsActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/VideoDetailsActivity$3;-><init>(Lcom/perm/kate/VideoDetailsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoDetailsActivity;->profile_callback:Lcom/perm/kate/session/Callback;

    .line 152
    new-instance v0, Lcom/perm/kate/VideoDetailsActivity$5;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/VideoDetailsActivity$5;-><init>(Lcom/perm/kate/VideoDetailsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoDetailsActivity;->group_callback:Lcom/perm/kate/session/Callback;

    .line 171
    new-instance v0, Lcom/perm/kate/VideoDetailsActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoDetailsActivity$6;-><init>(Lcom/perm/kate/VideoDetailsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoDetailsActivity;->ownerOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/VideoDetailsActivity;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/VideoDetailsActivity;->displayOwner(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/VideoDetailsActivity;)J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/perm/kate/VideoDetailsActivity;->owner_id:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/perm/kate/VideoDetailsActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/VideoDetailsActivity;->profile_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/VideoDetailsActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/VideoDetailsActivity;->displayOwnerInUiThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/VideoDetailsActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/VideoDetailsActivity;->group_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$500(Lcom/perm/kate/VideoDetailsActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/VideoDetailsActivity;->openVideoOwner()V

    return-void
.end method

.method private displayData()V
    .locals 5

    .line 52
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/VideoDetailsActivity;->video_id:J

    iget-wide v3, p0, Lcom/perm/kate/VideoDetailsActivity;->owner_id:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchVideoDescription(JJ)Lcom/perm/kate/api/Video;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 54
    iget-object v2, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_title_text:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v2, v0, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 56
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v3, v0, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 57
    invoke-static {v2}, Lcom/perm/utils/Linkify;->addWebLinks(Landroid/text/Spannable;)V

    .line 58
    invoke-static {v2, p0, v1}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 59
    iget-object v3, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_description_text:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v2, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_description_text:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    .line 62
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_description_label:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v2, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_description_text:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_date_text:Landroid/widget/TextView;

    iget-wide v3, v0, Lcom/perm/kate/api/Video;->date:J

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDate(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    :cond_1
    invoke-direct {p0, v1}, Lcom/perm/kate/VideoDetailsActivity;->displayOwner(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 69
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 70
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private displayOwner(Z)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 77
    iget-wide v0, p0, Lcom/perm/kate/VideoDetailsActivity;->owner_id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 78
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 80
    iget-object p1, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_owner_text:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_owner_text:Landroid/widget/TextView;

    const v1, 0x7f0f02f1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    if-eqz p1, :cond_3

    .line 84
    invoke-direct {p0}, Lcom/perm/kate/VideoDetailsActivity;->getUserInThread()V

    goto :goto_0

    .line 87
    :cond_1
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const-wide/16 v3, -0x1

    mul-long v0, v0, v3

    invoke-virtual {v2, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 89
    iget-object p1, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_owner_text:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_owner_text:Landroid/widget/TextView;

    const v1, 0x7f0f0108

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    if-eqz p1, :cond_3

    .line 93
    invoke-direct {p0}, Lcom/perm/kate/VideoDetailsActivity;->getGroupInThread()V

    :cond_3
    :goto_0
    return-void
.end method

.method private displayOwnerInUiThread()V
    .locals 1

    .line 99
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 101
    :cond_0
    new-instance v0, Lcom/perm/kate/VideoDetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoDetailsActivity$1;-><init>(Lcom/perm/kate/VideoDetailsActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getGroupInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 141
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 142
    new-instance v0, Lcom/perm/kate/VideoDetailsActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoDetailsActivity$4;-><init>(Lcom/perm/kate/VideoDetailsActivity;)V

    .line 149
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getUserInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 110
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 111
    new-instance v0, Lcom/perm/kate/VideoDetailsActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoDetailsActivity$2;-><init>(Lcom/perm/kate/VideoDetailsActivity;)V

    .line 118
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private openVideoOwner()V
    .locals 6

    .line 179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 180
    iget-wide v1, p0, Lcom/perm/kate/VideoDetailsActivity;->owner_id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 181
    const-class v1, Lcom/perm/kate/ProfileInfoActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 182
    iget-wide v1, p0, Lcom/perm/kate/VideoDetailsActivity;->owner_id:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.perm.kate.user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 184
    :cond_0
    const-class v1, Lcom/perm/kate/GroupActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-wide/16 v1, -0x1

    .line 185
    iget-wide v3, p0, Lcom/perm/kate/VideoDetailsActivity;->owner_id:J

    mul-long v3, v3, v1

    const-string v1, "com.perm.kate.group_id"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 187
    :goto_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 32
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0136

    .line 33
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f050e

    .line 34
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f090393

    .line 35
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_owner_text:Landroid/widget/TextView;

    const p1, 0x7f0903df

    .line 36
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_title_text:Landroid/widget/TextView;

    const p1, 0x7f090366

    .line 37
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_description_text:Landroid/widget/TextView;

    const p1, 0x7f090365

    .line 38
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_description_label:Landroid/widget/TextView;

    const p1, 0x7f090362

    .line 39
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_date_text:Landroid/widget/TextView;

    .line 40
    iget-object p1, p0, Lcom/perm/kate/VideoDetailsActivity;->tv_owner_text:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/perm/kate/VideoDetailsActivity;->ownerOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.video_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/VideoDetailsActivity;->video_id:J

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.owner_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/VideoDetailsActivity;->owner_id:J

    .line 43
    iget-wide v5, p0, Lcom/perm/kate/VideoDetailsActivity;->video_id:J

    cmp-long p1, v5, v1

    if-eqz p1, :cond_1

    cmp-long p1, v3, v1

    if-nez p1, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/VideoDetailsActivity;->displayData()V

    return-void

    .line 44
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
