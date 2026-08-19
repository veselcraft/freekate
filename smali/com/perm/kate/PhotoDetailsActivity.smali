.class public Lcom/perm/kate/PhotoDetailsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "PhotoDetailsActivity.java"


# instance fields
.field private album_OnClickListener:Landroid/view/View$OnClickListener;

.field private album_callback:Lcom/perm/kate/session/Callback;

.field private owner_id:Ljava/lang/String;

.field private photo_album_id:J

.field private photo_id:J

.field private photo_owner_id:J

.field private sender_OnClickListener:Landroid/view/View$OnClickListener;

.field private tv_album:Landroid/widget/TextView;

.field private tv_phototext:Landroid/widget/TextView;

.field private tv_sender:Landroid/widget/TextView;

.field private tv_sender_label:Landroid/widget/TextView;

.field private tv_upload_data:Landroid/widget/TextView;

.field private tv_upload_data_label:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 115
    new-instance v0, Lcom/perm/kate/PhotoDetailsActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoDetailsActivity$1;-><init>(Lcom/perm/kate/PhotoDetailsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->sender_OnClickListener:Landroid/view/View$OnClickListener;

    .line 180
    new-instance v0, Lcom/perm/kate/PhotoDetailsActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoDetailsActivity$5;-><init>(Lcom/perm/kate/PhotoDetailsActivity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->album_OnClickListener:Landroid/view/View$OnClickListener;

    .line 199
    new-instance v0, Lcom/perm/kate/PhotoDetailsActivity$7;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/PhotoDetailsActivity$7;-><init>(Lcom/perm/kate/PhotoDetailsActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->album_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/PhotoDetailsActivity;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->photo_owner_id:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/PhotoDetailsActivity;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoDetailsActivity;->openProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/PhotoDetailsActivity;J)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/PhotoDetailsActivity;->openGroup(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/PhotoDetailsActivity;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/perm/kate/PhotoDetailsActivity;->displayPhotoOwnerInUIThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/PhotoDetailsActivity;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/perm/kate/PhotoDetailsActivity;->displayPhotoOwner()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/PhotoDetailsActivity;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/perm/kate/PhotoDetailsActivity;->owner_id:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/PhotoDetailsActivity;)J
    .locals 2

    .line 23
    iget-wide v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->photo_album_id:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/perm/kate/PhotoDetailsActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/perm/kate/PhotoDetailsActivity;->album_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/PhotoDetailsActivity;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoDetailsActivity;->updateAlbumTitleOnUiThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/PhotoDetailsActivity;)Landroid/widget/TextView;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_album:Landroid/widget/TextView;

    return-object p0
.end method

.method private displayAlbum()V
    .locals 5

    .line 174
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->owner_id:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->photo_album_id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/16 v2, -0x7

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, -0x6

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const-wide/16 v2, -0xf

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_album:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    invoke-direct {p0}, Lcom/perm/kate/PhotoDetailsActivity;->getAlbumInThread()V

    :cond_1
    return-void
.end method

.method private displayData()V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 60
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/PhotoDetailsActivity;->photo_id:J

    iget-object v3, p0, Lcom/perm/kate/PhotoDetailsActivity;->owner_id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchPhotoFull(JJ)Lcom/perm/kate/api/Photo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 61
    iget-object v2, v0, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_phototext:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v3, v0, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 68
    invoke-static {v2}, Lcom/perm/utils/Linkify;->addWebLinks(Landroid/text/Spannable;)V

    const/4 v3, 0x1

    .line 69
    invoke-static {v2, p0, v3}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 71
    iget-object v3, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_phototext:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v2, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_phototext:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    const-wide/16 v2, 0x0

    if-eqz v0, :cond_1

    .line 74
    iget-wide v4, v0, Lcom/perm/kate/api/Photo;->created:J

    cmp-long v6, v4, v2

    if-lez v6, :cond_1

    .line 75
    iget-object v4, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_upload_data_label:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v4, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_upload_data:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "d MMMM yyyy H:mm"

    invoke-direct {v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 78
    new-instance v4, Ljava/util/Date;

    iget-wide v5, v0, Lcom/perm/kate/api/Photo;->created:J

    invoke-static {v5, v6}, Lcom/perm/utils/TimeFix;->fix(J)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_upload_data:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    :cond_1
    iget-wide v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->photo_owner_id:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 82
    invoke-direct {p0}, Lcom/perm/kate/PhotoDetailsActivity;->displayPhotoOwner()V

    .line 84
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/PhotoDetailsActivity;->displayAlbum()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private displayPhotoOwner()V
    .locals 5

    .line 93
    iget-wide v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->photo_owner_id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 94
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
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

    invoke-direct {p0, v0}, Lcom/perm/kate/PhotoDetailsActivity;->showSenderName(Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PhotoDetailsActivity;->getUserInThread()V

    goto :goto_0

    .line 101
    :cond_1
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const-wide/16 v3, -0x1

    mul-long v0, v0, v3

    invoke-virtual {v2, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 103
    iget-object v0, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/perm/kate/PhotoDetailsActivity;->showSenderName(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/PhotoDetailsActivity;->getGroupInThread()V

    :goto_0
    return-void
.end method

.method private displayPhotoOwnerInUIThread()V
    .locals 1

    .line 163
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 165
    :cond_0
    new-instance v0, Lcom/perm/kate/PhotoDetailsActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoDetailsActivity$4;-><init>(Lcom/perm/kate/PhotoDetailsActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getAlbumInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 188
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 189
    new-instance v0, Lcom/perm/kate/PhotoDetailsActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoDetailsActivity$6;-><init>(Lcom/perm/kate/PhotoDetailsActivity;)V

    .line 196
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getGroupInThread()V
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/PhotoDetailsActivity$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/PhotoDetailsActivity$3;-><init>(Lcom/perm/kate/PhotoDetailsActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 159
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getUserInThread()V
    .locals 2

    .line 139
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/PhotoDetailsActivity$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/PhotoDetailsActivity$2;-><init>(Lcom/perm/kate/PhotoDetailsActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private openGroup(J)V
    .locals 3

    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/GroupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-wide/16 v1, -0x1

    mul-long p1, p1, v1

    const-string v1, "com.perm.kate.group_id"

    .line 134
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private openProfile(Ljava/lang/String;)V
    .locals 2

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    const-class v1, Lcom/perm/kate/ProfileInfoActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.user_id"

    .line 128
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showSenderName(Ljava/lang/String;)V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_sender_label:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_sender:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_sender:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateAlbumTitleOnUiThread(Ljava/lang/String;)V
    .locals 2

    .line 217
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 219
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0f0196

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 220
    new-instance v0, Lcom/perm/kate/PhotoDetailsActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/PhotoDetailsActivity$8;-><init>(Lcom/perm/kate/PhotoDetailsActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 39
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00ec

    .line 40
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f050e

    .line 41
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const p1, 0x7f090398

    .line 42
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_phototext:Landroid/widget/TextView;

    const p1, 0x7f0903e2

    .line 43
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_upload_data_label:Landroid/widget/TextView;

    const p1, 0x7f0903e1

    .line 44
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_upload_data:Landroid/widget/TextView;

    const p1, 0x7f0903d9

    .line 45
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_sender_label:Landroid/widget/TextView;

    const p1, 0x7f0903d8

    .line 46
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_sender:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->sender_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09034c

    .line 48
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_album:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->album_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.photo_owner_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/PhotoDetailsActivity;->photo_owner_id:J

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.photo_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/PhotoDetailsActivity;->photo_id:J

    .line 52
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.album_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->photo_album_id:J

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.owner_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/PhotoDetailsActivity;->owner_id:Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Lcom/perm/kate/PhotoDetailsActivity;->displayData()V

    return-void
.end method
