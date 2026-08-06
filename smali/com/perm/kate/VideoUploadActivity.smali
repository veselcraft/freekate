.class public Lcom/perm/kate/VideoUploadActivity;
.super Lcom/perm/kate/BaseActivity;
.source "VideoUploadActivity.java"


# instance fields
.field private btn_video_cancel:Landroid/widget/Button;

.field private btn_video_save:Landroid/widget/Button;

.field private cancelClickListener:Landroid/view/View$OnClickListener;

.field private edit_callback:Lcom/perm/kate/session/Callback;

.field private et_video_description:Landroid/widget/EditText;

.field private et_video_name:Landroid/widget/EditText;

.field private fileUri:Landroid/net/Uri;

.field private get_video_callback:Lcom/perm/kate/session/Callback;

.field private is_edit:Z

.field private is_private:Z

.field private lookListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private makeCommentsListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private owner_id:Ljava/lang/Long;

.field private saveClickListener:Landroid/view/View$OnClickListener;

.field private spinner_who_look:Landroid/widget/Spinner;

.field private spinner_who_make_comments:Landroid/widget/Spinner;

.field private tv_who_look_video:Landroid/widget/TextView;

.field private tv_who_make_comments:Landroid/widget/TextView;

.field private video_id:J

.field private who_look:Ljava/lang/String;

.field private who_make_commnets:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 40
    const-string v0, "all"

    iput-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->who_look:Ljava/lang/String;

    .line 41
    const-string v0, "all"

    iput-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->who_make_commnets:Ljava/lang/String;

    .line 45
    iput-boolean v1, p0, Lcom/perm/kate/VideoUploadActivity;->is_edit:Z

    .line 47
    iput-boolean v1, p0, Lcom/perm/kate/VideoUploadActivity;->is_private:Z

    .line 88
    new-instance v0, Lcom/perm/kate/VideoUploadActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoUploadActivity$1;-><init>(Lcom/perm/kate/VideoUploadActivity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->saveClickListener:Landroid/view/View$OnClickListener;

    .line 95
    new-instance v0, Lcom/perm/kate/VideoUploadActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoUploadActivity$2;-><init>(Lcom/perm/kate/VideoUploadActivity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->cancelClickListener:Landroid/view/View$OnClickListener;

    .line 102
    new-instance v0, Lcom/perm/kate/VideoUploadActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoUploadActivity$3;-><init>(Lcom/perm/kate/VideoUploadActivity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->lookListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 112
    new-instance v0, Lcom/perm/kate/VideoUploadActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoUploadActivity$4;-><init>(Lcom/perm/kate/VideoUploadActivity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->makeCommentsListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 181
    new-instance v0, Lcom/perm/kate/VideoUploadActivity$6;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/VideoUploadActivity$6;-><init>(Lcom/perm/kate/VideoUploadActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->get_video_callback:Lcom/perm/kate/session/Callback;

    .line 229
    new-instance v0, Lcom/perm/kate/VideoUploadActivity$9;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/VideoUploadActivity$9;-><init>(Lcom/perm/kate/VideoUploadActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->edit_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/VideoUploadActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/VideoUploadActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/perm/kate/VideoUploadActivity;->runSaveVideo()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/VideoUploadActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoUploadActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->who_look:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/VideoUploadActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoUploadActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->spinner_who_make_comments:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$102(Lcom/perm/kate/VideoUploadActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/VideoUploadActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity;->who_look:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/perm/kate/VideoUploadActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoUploadActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->et_video_name:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/perm/kate/VideoUploadActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoUploadActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->et_video_description:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/perm/kate/VideoUploadActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoUploadActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->edit_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/perm/kate/VideoUploadActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/VideoUploadActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/perm/kate/VideoUploadActivity;->makeToast2(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/VideoUploadActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/VideoUploadActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/perm/kate/VideoUploadActivity;->updateDescription()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/VideoUploadActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoUploadActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->who_make_commnets:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/perm/kate/VideoUploadActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/VideoUploadActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity;->who_make_commnets:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/VideoUploadActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoUploadActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->owner_id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/VideoUploadActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/VideoUploadActivity;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/perm/kate/VideoUploadActivity;->video_id:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/perm/kate/VideoUploadActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoUploadActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->get_video_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/perm/kate/VideoUploadActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/VideoUploadActivity;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/perm/kate/VideoUploadActivity;->setPrivacySpinnersInUI()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/VideoUploadActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoUploadActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->tv_who_look_video:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/perm/kate/VideoUploadActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoUploadActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->spinner_who_look:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$900(Lcom/perm/kate/VideoUploadActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/VideoUploadActivity;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->tv_who_make_comments:Landroid/widget/TextView;

    return-object v0
.end method

.method public static createStubVideo(JLjava/lang/String;)V
    .locals 4
    .param p0, "video_id"    # J
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 130
    new-instance v0, Lcom/perm/kate/api/Video;

    invoke-direct {v0}, Lcom/perm/kate/api/Video;-><init>()V

    .line 131
    .local v0, "v":Lcom/perm/kate/api/Video;
    iput-wide p0, v0, Lcom/perm/kate/api/Video;->vid:J

    .line 132
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/perm/kate/api/Video;->owner_id:J

    .line 133
    iput-object p2, v0, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    .line 135
    iget-object v1, v0, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 136
    const-string v1, " "

    iput-object v1, v0, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    .line 137
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1, v0}, Lcom/perm/kate/db/DataHelper;->createOrUpdateVideo(Lcom/perm/kate/api/Video;)V

    .line 138
    return-void
.end method

.method public static getUriFromGallery(Landroid/app/Activity;Landroid/support/v4/app/Fragment;)V
    .locals 3
    .param p0, "a"    # Landroid/app/Activity;
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 124
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const-string v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    const v1, 0x7f0703d7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, p1, v1, v2}, Lcom/perm/kate/photoupload/PhotoChooser;->startActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 127
    return-void
.end method

.method private makeToast2(Z)V
    .locals 1
    .param p1, "success"    # Z

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/perm/kate/VideoUploadActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    new-instance v0, Lcom/perm/kate/VideoUploadActivity$10;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/VideoUploadActivity$10;-><init>(Lcom/perm/kate/VideoUploadActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/VideoUploadActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 257
    :cond_0
    return-void
.end method

.method private runSaveVideo()V
    .locals 3

    .prologue
    .line 141
    iget-boolean v1, p0, Lcom/perm/kate/VideoUploadActivity;->is_edit:Z

    if-nez v1, :cond_0

    .line 143
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 144
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "uri"

    iget-object v2, p0, Lcom/perm/kate/VideoUploadActivity;->fileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 145
    const-string v1, "name"

    iget-object v2, p0, Lcom/perm/kate/VideoUploadActivity;->et_video_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v1, "desc"

    iget-object v2, p0, Lcom/perm/kate/VideoUploadActivity;->et_video_description:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v1, "who_look"

    iget-object v2, p0, Lcom/perm/kate/VideoUploadActivity;->who_look:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v1, "who_make_comments"

    iget-object v2, p0, Lcom/perm/kate/VideoUploadActivity;->who_make_commnets:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/perm/kate/VideoUploadActivity;->setResult(ILandroid/content/Intent;)V

    .line 150
    invoke-virtual {p0}, Lcom/perm/kate/VideoUploadActivity;->finish()V

    .line 154
    .end local v0    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 153
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/VideoUploadActivity;->saveEditedVideo()V

    goto :goto_0
.end method

.method private saveEditedVideo()V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/VideoUploadActivity;->showProgressBar(Z)V

    .line 221
    new-instance v0, Lcom/perm/kate/VideoUploadActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoUploadActivity$8;-><init>(Lcom/perm/kate/VideoUploadActivity;)V

    .line 226
    invoke-virtual {v0}, Lcom/perm/kate/VideoUploadActivity$8;->start()V

    .line 227
    return-void
.end method

.method private setPrivacySpinnersInUI()V
    .locals 1

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/perm/kate/VideoUploadActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    new-instance v0, Lcom/perm/kate/VideoUploadActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoUploadActivity$7;-><init>(Lcom/perm/kate/VideoUploadActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/VideoUploadActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 217
    :cond_0
    return-void
.end method

.method private showVideoData()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 159
    iget-wide v2, p0, Lcom/perm/kate/VideoUploadActivity;->video_id:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 179
    :goto_0
    return-void

    .line 161
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/VideoUploadActivity;->video_id:J

    iget-object v4, p0, Lcom/perm/kate/VideoUploadActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchVideoDescription(JJ)Lcom/perm/kate/api/Video;

    move-result-object v0

    .line 162
    .local v0, "v":Lcom/perm/kate/api/Video;
    if-eqz v0, :cond_1

    .line 163
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->et_video_name:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->et_video_description:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iput-object v7, p0, Lcom/perm/kate/VideoUploadActivity;->who_look:Ljava/lang/String;

    .line 166
    iput-object v7, p0, Lcom/perm/kate/VideoUploadActivity;->who_make_commnets:Ljava/lang/String;

    .line 167
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->spinner_who_look:Landroid/widget/Spinner;

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 168
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->spinner_who_make_comments:Landroid/widget/Spinner;

    invoke-virtual {v1, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 169
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->tv_who_look_video:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->tv_who_make_comments:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/VideoUploadActivity;->showProgressBar(Z)V

    .line 173
    new-instance v1, Lcom/perm/kate/VideoUploadActivity$5;

    invoke-direct {v1, p0}, Lcom/perm/kate/VideoUploadActivity$5;-><init>(Lcom/perm/kate/VideoUploadActivity;)V

    .line 178
    invoke-virtual {v1}, Lcom/perm/kate/VideoUploadActivity$5;->start()V

    goto :goto_0
.end method

.method private updateDescription()V
    .locals 8

    .prologue
    .line 262
    :try_start_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, p0, Lcom/perm/kate/VideoUploadActivity;->video_id:J

    iget-object v3, p0, Lcom/perm/kate/VideoUploadActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchVideoDescription(JJ)Lcom/perm/kate/api/Video;

    move-result-object v1

    .line 263
    .local v1, "v":Lcom/perm/kate/api/Video;
    if-eqz v1, :cond_0

    .line 264
    iget-object v2, p0, Lcom/perm/kate/VideoUploadActivity;->et_video_name:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    .line 265
    iget-object v2, p0, Lcom/perm/kate/VideoUploadActivity;->et_video_description:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    .line 266
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, v1}, Lcom/perm/kate/db/DataHelper;->updateVideo(Lcom/perm/kate/api/Video;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    .end local v1    # "v":Lcom/perm/kate/api/Video;
    :cond_0
    :goto_0
    return-void

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 270
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 52
    :try_start_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    const v1, 0x7f03011b

    invoke-virtual {p0, v1}, Lcom/perm/kate/VideoUploadActivity;->setContentView(I)V

    .line 54
    const v1, 0x7f0e035c

    invoke-virtual {p0, v1}, Lcom/perm/kate/VideoUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->et_video_name:Landroid/widget/EditText;

    .line 55
    const v1, 0x7f0e035d

    invoke-virtual {p0, v1}, Lcom/perm/kate/VideoUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->et_video_description:Landroid/widget/EditText;

    .line 56
    const v1, 0x7f0e019d

    invoke-virtual {p0, v1}, Lcom/perm/kate/VideoUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->btn_video_save:Landroid/widget/Button;

    .line 57
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->btn_video_save:Landroid/widget/Button;

    iget-object v2, p0, Lcom/perm/kate/VideoUploadActivity;->saveClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v1, 0x7f0e019b

    invoke-virtual {p0, v1}, Lcom/perm/kate/VideoUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->btn_video_cancel:Landroid/widget/Button;

    .line 59
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->btn_video_cancel:Landroid/widget/Button;

    iget-object v2, p0, Lcom/perm/kate/VideoUploadActivity;->cancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v1, 0x7f0e035e

    invoke-virtual {p0, v1}, Lcom/perm/kate/VideoUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->tv_who_look_video:Landroid/widget/TextView;

    .line 61
    const v1, 0x7f0e0360

    invoke-virtual {p0, v1}, Lcom/perm/kate/VideoUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->tv_who_make_comments:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f0e035f

    invoke-virtual {p0, v1}, Lcom/perm/kate/VideoUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->spinner_who_look:Landroid/widget/Spinner;

    .line 63
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->spinner_who_look:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/perm/kate/VideoUploadActivity;->lookListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 64
    const v1, 0x7f0e0361

    invoke-virtual {p0, v1}, Lcom/perm/kate/VideoUploadActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->spinner_who_make_comments:Landroid/widget/Spinner;

    .line 65
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->spinner_who_make_comments:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/perm/kate/VideoUploadActivity;->makeCommentsListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 66
    invoke-virtual {p0}, Lcom/perm/kate/VideoUploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.is_edit"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/perm/kate/VideoUploadActivity;->is_edit:Z

    .line 67
    invoke-virtual {p0}, Lcom/perm/kate/VideoUploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.video_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/VideoUploadActivity;->video_id:J

    .line 68
    iget-boolean v1, p0, Lcom/perm/kate/VideoUploadActivity;->is_edit:Z

    if-eqz v1, :cond_1

    const v1, 0x7f070468

    :goto_0
    invoke-virtual {p0, v1}, Lcom/perm/kate/VideoUploadActivity;->setHeaderTitle(I)V

    .line 69
    invoke-virtual {p0}, Lcom/perm/kate/VideoUploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.owner_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->owner_id:Ljava/lang/Long;

    .line 70
    invoke-virtual {p0}, Lcom/perm/kate/VideoUploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.perm.kate.is_private"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/perm/kate/VideoUploadActivity;->is_private:Z

    .line 71
    iget-boolean v1, p0, Lcom/perm/kate/VideoUploadActivity;->is_edit:Z

    if-nez v1, :cond_2

    .line 72
    invoke-virtual {p0}, Lcom/perm/kate/VideoUploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->fileUri:Landroid/net/Uri;

    .line 73
    iget-boolean v1, p0, Lcom/perm/kate/VideoUploadActivity;->is_private:Z

    if-eqz v1, :cond_0

    .line 74
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->spinner_who_look:Landroid/widget/Spinner;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 75
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->spinner_who_make_comments:Landroid/widget/Spinner;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 76
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->tv_who_look_video:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->tv_who_make_comments:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    :cond_0
    :goto_1
    return-void

    .line 68
    :cond_1
    const v1, 0x7f07048b

    goto :goto_0

    .line 80
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/VideoUploadActivity;->showVideoData()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "th":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 83
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    invoke-virtual {p0}, Lcom/perm/kate/VideoUploadActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
