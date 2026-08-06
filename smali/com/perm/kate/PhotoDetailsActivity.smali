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

    .prologue
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
    .param p0, "x0"    # Lcom/perm/kate/PhotoDetailsActivity;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->photo_owner_id:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/perm/kate/PhotoDetailsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoDetailsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoDetailsActivity;->openProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/PhotoDetailsActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotoDetailsActivity;
    .param p1, "x1"    # J

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/PhotoDetailsActivity;->openGroup(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/PhotoDetailsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoDetailsActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/perm/kate/PhotoDetailsActivity;->displayPhotoOwnerInUIThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/PhotoDetailsActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoDetailsActivity;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/perm/kate/PhotoDetailsActivity;->displayPhotoOwner()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/PhotoDetailsActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotoDetailsActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->owner_id:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/perm/kate/PhotoDetailsActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/PhotoDetailsActivity;

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->photo_album_id:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/perm/kate/PhotoDetailsActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotoDetailsActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->album_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/perm/kate/PhotoDetailsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/PhotoDetailsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/perm/kate/PhotoDetailsActivity;->updateAlbumTitleOnUiThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/PhotoDetailsActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/PhotoDetailsActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_album:Landroid/widget/TextView;

    return-object v0
.end method

.method private displayAlbum()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->owner_id:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->photo_album_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->photo_album_id:J

    const-wide/16 v2, -0x7

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->photo_album_id:J

    const-wide/16 v2, -0x6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->photo_album_id:J

    const-wide/16 v2, -0xf

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_album:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    invoke-direct {p0}, Lcom/perm/kate/PhotoDetailsActivity;->getAlbumInThread()V

    .line 178
    :cond_1
    return-void
.end method

.method private displayData()V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    .line 60
    :try_start_0
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v6, p0, Lcom/perm/kate/PhotoDetailsActivity;->photo_id:J

    iget-object v8, p0, Lcom/perm/kate/PhotoDetailsActivity;->owner_id:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/perm/kate/db/DataHelper;->fetchPhotoFull(JJ)Lcom/perm/kate/api/Photo;

    move-result-object v3

    .line 61
    .local v3, "photo":Lcom/perm/kate/api/Photo;
    if-eqz v3, :cond_0

    iget-object v5, v3, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, v3, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 62
    iget-object v5, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_phototext:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v5, v3, Lcom/perm/kate/api/Photo;->phototext:Ljava/lang/String;

    invoke-direct {v0, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 68
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-static {v0}, Lcom/perm/utils/Linkify;->addWebLinks(Landroid/text/Spannable;)V

    .line 69
    const/4 v5, 0x1

    invoke-static {v0, p0, v5}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    .line 71
    iget-object v5, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_phototext:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object v5, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_phototext:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 74
    .end local v0    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_0
    if-eqz v3, :cond_1

    iget-wide v6, v3, Lcom/perm/kate/api/Photo;->created:J

    cmp-long v5, v6, v10

    if-lez v5, :cond_1

    .line 75
    iget-object v5, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_upload_data_label:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    iget-object v5, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_upload_data:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v5, "d MMMM yyyy"

    invoke-direct {v1, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 78
    .local v1, "df":Ljava/text/SimpleDateFormat;
    new-instance v5, Ljava/util/Date;

    iget-wide v6, v3, Lcom/perm/kate/api/Photo;->created:J

    invoke-static {v6, v7}, Lcom/perm/utils/TimeFix;->fix(J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, "text_date":Ljava/lang/String;
    iget-object v5, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_upload_data:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .end local v1    # "df":Ljava/text/SimpleDateFormat;
    .end local v4    # "text_date":Ljava/lang/String;
    :cond_1
    iget-wide v6, p0, Lcom/perm/kate/PhotoDetailsActivity;->photo_owner_id:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_2

    .line 82
    invoke-direct {p0}, Lcom/perm/kate/PhotoDetailsActivity;->displayPhotoOwner()V

    .line 84
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/PhotoDetailsActivity;->displayAlbum()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v3    # "photo":Lcom/perm/kate/api/Photo;
    :goto_0
    return-void

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 87
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/perm/kate/PhotoDetailsActivity;->displayToast(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private displayPhotoOwner()V
    .locals 8

    .prologue
    .line 93
    iget-wide v2, p0, Lcom/perm/kate/PhotoDetailsActivity;->photo_owner_id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 94
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p0, Lcom/perm/kate/PhotoDetailsActivity;->photo_owner_id:J

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    .line 95
    .local v1, "u":Lcom/perm/kate/api/User;
    if-eqz v1, :cond_0

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/perm/kate/PhotoDetailsActivity;->showSenderName(Ljava/lang/String;)V

    .line 107
    .end local v1    # "u":Lcom/perm/kate/api/User;
    :goto_0
    return-void

    .line 98
    .restart local v1    # "u":Lcom/perm/kate/api/User;
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/PhotoDetailsActivity;->getUserInThread()V

    goto :goto_0

    .line 101
    .end local v1    # "u":Lcom/perm/kate/api/User;
    :cond_1
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const-wide/16 v4, -0x1

    iget-wide v6, p0, Lcom/perm/kate/PhotoDetailsActivity;->photo_owner_id:J

    mul-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    .line 102
    .local v0, "g":Lcom/perm/kate/api/Group;
    if-eqz v0, :cond_2

    .line 103
    iget-object v2, v0, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/perm/kate/PhotoDetailsActivity;->showSenderName(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/PhotoDetailsActivity;->getGroupInThread()V

    goto :goto_0
.end method

.method private displayPhotoOwnerInUIThread()V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/perm/kate/PhotoDetailsActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 165
    :cond_0
    new-instance v0, Lcom/perm/kate/PhotoDetailsActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoDetailsActivity$4;-><init>(Lcom/perm/kate/PhotoDetailsActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getAlbumInThread()V
    .locals 1

    .prologue
    .line 188
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoDetailsActivity;->showProgressBar(Z)V

    .line 189
    new-instance v0, Lcom/perm/kate/PhotoDetailsActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoDetailsActivity$6;-><init>(Lcom/perm/kate/PhotoDetailsActivity;)V

    .line 196
    invoke-virtual {v0}, Lcom/perm/kate/PhotoDetailsActivity$6;->start()V

    .line 197
    return-void
.end method

.method private getGroupInThread()V
    .locals 2

    .prologue
    .line 151
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/PhotoDetailsActivity$3;

    invoke-direct {v1, p0}, Lcom/perm/kate/PhotoDetailsActivity$3;-><init>(Lcom/perm/kate/PhotoDetailsActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 159
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 160
    return-void
.end method

.method private getUserInThread()V
    .locals 2

    .prologue
    .line 139
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/PhotoDetailsActivity$2;

    invoke-direct {v1, p0}, Lcom/perm/kate/PhotoDetailsActivity$2;-><init>(Lcom/perm/kate/PhotoDetailsActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 147
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 148
    return-void
.end method

.method private openGroup(J)V
    .locals 5
    .param p1, "gid"    # J

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/GroupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v0, "group_intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.group_id"

    const-wide/16 v2, -0x1

    mul-long/2addr v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 135
    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 136
    return-void
.end method

.method private openProfile(Ljava/lang/String;)V
    .locals 2
    .param p1, "user_id"    # Ljava/lang/String;

    .prologue
    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 127
    .local v0, "profile_intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/ProfileInfoActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 128
    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoDetailsActivity;->startActivity(Landroid/content/Intent;)V

    .line 130
    return-void
.end method

.method private showSenderName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 110
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_sender_label:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_sender:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_sender:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    return-void
.end method

.method private updateAlbumTitleOnUiThread(Ljava/lang/String;)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/perm/kate/PhotoDetailsActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 226
    :goto_0
    return-void

    .line 219
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f070128

    invoke-virtual {p0, v2}, Lcom/perm/kate/PhotoDetailsActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "text":Ljava/lang/String;
    new-instance v1, Lcom/perm/kate/PhotoDetailsActivity$8;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/PhotoDetailsActivity$8;-><init>(Lcom/perm/kate/PhotoDetailsActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/perm/kate/PhotoDetailsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v2, 0x0

    .line 39
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v0, 0x7f0300d1

    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoDetailsActivity;->setContentView(I)V

    .line 41
    const v0, 0x7f07047f

    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoDetailsActivity;->setHeaderTitle(I)V

    .line 42
    const v0, 0x7f0e0282

    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_phototext:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f0e0284

    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_upload_data_label:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0e0285

    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_upload_data:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0e0286

    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_sender_label:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0e0287

    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_sender:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_sender:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/PhotoDetailsActivity;->sender_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const v0, 0x7f0e0283

    invoke-virtual {p0, v0}, Lcom/perm/kate/PhotoDetailsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_album:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->tv_album:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/PhotoDetailsActivity;->album_OnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {p0}, Lcom/perm/kate/PhotoDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.photo_owner_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->photo_owner_id:J

    .line 51
    invoke-virtual {p0}, Lcom/perm/kate/PhotoDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.photo_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->photo_id:J

    .line 52
    invoke-virtual {p0}, Lcom/perm/kate/PhotoDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.album_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->photo_album_id:J

    .line 53
    invoke-virtual {p0}, Lcom/perm/kate/PhotoDetailsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/PhotoDetailsActivity;->owner_id:Ljava/lang/String;

    .line 54
    invoke-direct {p0}, Lcom/perm/kate/PhotoDetailsActivity;->displayData()V

    .line 55
    return-void
.end method
