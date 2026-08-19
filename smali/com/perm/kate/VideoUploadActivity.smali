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

.field private itemClickListener1:Landroid/view/View$OnClickListener;

.field private itemClickListener2:Landroid/view/View$OnClickListener;

.field private owner_id:Ljava/lang/Long;

.field private saveClickListener:Landroid/view/View$OnClickListener;

.field private spinner_who_look:Landroid/view/View;

.field private spinner_who_make_comments:Landroid/view/View;

.field private video_id:J

.field private who_look:Ljava/util/ArrayList;

.field private who_make_commnets:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 25
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "all"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->who_look:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->who_make_commnets:Ljava/util/ArrayList;

    .line 42
    iput-boolean v3, p0, Lcom/perm/kate/VideoUploadActivity;->is_edit:Z

    .line 44
    iput-boolean v3, p0, Lcom/perm/kate/VideoUploadActivity;->is_private:Z

    .line 111
    new-instance v0, Lcom/perm/kate/VideoUploadActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoUploadActivity$2;-><init>(Lcom/perm/kate/VideoUploadActivity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->saveClickListener:Landroid/view/View$OnClickListener;

    .line 118
    new-instance v0, Lcom/perm/kate/VideoUploadActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoUploadActivity$3;-><init>(Lcom/perm/kate/VideoUploadActivity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->cancelClickListener:Landroid/view/View$OnClickListener;

    .line 125
    new-instance v0, Lcom/perm/kate/VideoUploadActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoUploadActivity$4;-><init>(Lcom/perm/kate/VideoUploadActivity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->itemClickListener1:Landroid/view/View$OnClickListener;

    .line 132
    new-instance v0, Lcom/perm/kate/VideoUploadActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoUploadActivity$5;-><init>(Lcom/perm/kate/VideoUploadActivity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->itemClickListener2:Landroid/view/View$OnClickListener;

    .line 230
    new-instance v0, Lcom/perm/kate/VideoUploadActivity$7;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/VideoUploadActivity$7;-><init>(Lcom/perm/kate/VideoUploadActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->get_video_callback:Lcom/perm/kate/session/Callback;

    .line 280
    new-instance v0, Lcom/perm/kate/VideoUploadActivity$10;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/VideoUploadActivity$10;-><init>(Lcom/perm/kate/VideoUploadActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->edit_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/VideoUploadActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/perm/kate/VideoUploadActivity;->setPrivacySpinnersInUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/VideoUploadActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/perm/kate/VideoUploadActivity;->runSaveVideo()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/VideoUploadActivity;)Landroid/widget/EditText;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/VideoUploadActivity;->et_video_name:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/perm/kate/VideoUploadActivity;)Landroid/widget/EditText;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/VideoUploadActivity;->et_video_description:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/perm/kate/VideoUploadActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/VideoUploadActivity;->edit_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/perm/kate/VideoUploadActivity;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/perm/kate/VideoUploadActivity;->makeToast2(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/VideoUploadActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/perm/kate/VideoUploadActivity;->updateDescription()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/VideoUploadActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/VideoUploadActivity;->who_look:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$202(Lcom/perm/kate/VideoUploadActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity;->who_look:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/VideoUploadActivity;Ljava/util/ArrayList;II)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/perm/kate/VideoUploadActivity;->showPrivacyItemActivity(Ljava/util/ArrayList;II)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/VideoUploadActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/VideoUploadActivity;->who_make_commnets:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$402(Lcom/perm/kate/VideoUploadActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity;->who_make_commnets:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$500(Lcom/perm/kate/VideoUploadActivity;)Ljava/lang/Long;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/VideoUploadActivity;->owner_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/VideoUploadActivity;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/perm/kate/VideoUploadActivity;->video_id:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/perm/kate/VideoUploadActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/VideoUploadActivity;->get_video_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/VideoUploadActivity;)Landroid/view/View;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/VideoUploadActivity;->spinner_who_look:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/perm/kate/VideoUploadActivity;)Landroid/view/View;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/VideoUploadActivity;->spinner_who_make_comments:Landroid/view/View;

    return-object p0
.end method

.method public static createStubVideo(JLjava/lang/String;)V
    .locals 1

    .line 176
    new-instance v0, Lcom/perm/kate/api/Video;

    invoke-direct {v0}, Lcom/perm/kate/api/Video;-><init>()V

    .line 177
    iput-wide p0, v0, Lcom/perm/kate/api/Video;->vid:J

    .line 178
    sget-object p0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    iput-wide p0, v0, Lcom/perm/kate/api/Video;->owner_id:J

    .line 179
    iput-object p2, v0, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    .line 181
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, " "

    .line 182
    iput-object p0, v0, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    .line 183
    :cond_0
    sget-object p0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p0, v0}, Lcom/perm/kate/db/DataHelper;->createOrUpdateVideo(Lcom/perm/kate/api/Video;)V

    return-void
.end method

.method private downloadFriendListsForPrivacy()V
    .locals 5

    .line 93
    iget-boolean v0, p0, Lcom/perm/kate/VideoUploadActivity;->is_private:Z

    if-eqz v0, :cond_0

    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    return-void

    .line 97
    :cond_1
    iget-boolean v0, p0, Lcom/perm/kate/VideoUploadActivity;->is_edit:Z

    if-nez v0, :cond_2

    return-void

    .line 99
    :cond_2
    new-instance v0, Lcom/perm/kate/VideoUploadActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoUploadActivity$1;-><init>(Lcom/perm/kate/VideoUploadActivity;)V

    .line 108
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static getUriFromGallery(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 169
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.GET_CONTENT"

    .line 170
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "video/*"

    .line 171
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f0f0461

    .line 172
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/perm/kate/photoupload/PhotoChooser;->startActivity(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)V

    return-void
.end method

.method private makeToast2(Z)V
    .locals 1

    .line 295
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Lcom/perm/kate/VideoUploadActivity$11;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/VideoUploadActivity$11;-><init>(Lcom/perm/kate/VideoUploadActivity;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private runSaveVideo()V
    .locals 5

    .line 187
    iget-boolean v0, p0, Lcom/perm/kate/VideoUploadActivity;->is_edit:Z

    if-nez v0, :cond_2

    .line 189
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 190
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->fileUri:Landroid/net/Uri;

    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 191
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->et_video_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->et_video_description:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "desc"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->who_look:Ljava/util/ArrayList;

    const-string v2, ","

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    const-string v4, "who_look"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->who_make_commnets:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    :cond_1
    const-string v1, "who_make_comments"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 195
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 196
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 199
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/VideoUploadActivity;->saveEditedVideo()V

    :goto_1
    return-void
.end method

.method private saveEditedVideo()V
    .locals 1

    const/4 v0, 0x1

    .line 269
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 270
    new-instance v0, Lcom/perm/kate/VideoUploadActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoUploadActivity$9;-><init>(Lcom/perm/kate/VideoUploadActivity;)V

    .line 277
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setPrivacySpinnersInUI()V
    .locals 1

    .line 250
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lcom/perm/kate/VideoUploadActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoUploadActivity$8;-><init>(Lcom/perm/kate/VideoUploadActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private showPrivacyItemActivity(Ljava/util/ArrayList;II)V
    .locals 5

    .line 142
    new-instance v0, Lcom/perm/kate/api/PrivacyItem;

    invoke-direct {v0}, Lcom/perm/kate/api/PrivacyItem;-><init>()V

    .line 143
    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, v0, Lcom/perm/kate/api/PrivacyItem;->title:Ljava/lang/String;

    .line 144
    new-instance p3, Ljava/util/ArrayList;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "all"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    const-string v4, "friends"

    aput-object v4, v1, v2

    const/4 v2, 0x2

    const-string v4, "friends_of_friends"

    aput-object v4, v1, v2

    const/4 v2, 0x3

    const-string v4, "only_me"

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v4, "some"

    aput-object v4, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, v0, Lcom/perm/kate/api/PrivacyItem;->supported_values:Ljava/util/ArrayList;

    .line 145
    iput-object p1, v0, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    .line 146
    new-instance p1, Landroid/content/Intent;

    const-class p3, Lcom/perm/kate/PrivacyItemActivity;

    invoke-direct {p1, p0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "privacy_item"

    .line 147
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p3, "save"

    .line 148
    invoke-virtual {p1, p3, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showVideoData()V
    .locals 7

    .line 205
    iget-wide v0, p0, Lcom/perm/kate/VideoUploadActivity;->video_id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 207
    :cond_0
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v5, p0, Lcom/perm/kate/VideoUploadActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v0, v1, v5, v6}, Lcom/perm/kate/db/DataHelper;->fetchVideoDescription(JJ)Lcom/perm/kate/api/Video;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 209
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->et_video_name:Landroid/widget/EditText;

    iget-object v4, v0, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->et_video_description:Landroid/widget/EditText;

    iget-object v0, v0, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 213
    iput-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->who_look:Ljava/util/ArrayList;

    .line 214
    iput-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->who_make_commnets:Ljava/util/ArrayList;

    .line 215
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->spinner_who_look:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->spinner_who_make_comments:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gez v4, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 221
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 222
    new-instance v0, Lcom/perm/kate/VideoUploadActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/VideoUploadActivity$6;-><init>(Lcom/perm/kate/VideoUploadActivity;)V

    .line 227
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private updateDescription()V
    .locals 5

    .line 313
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/VideoUploadActivity;->video_id:J

    iget-object v3, p0, Lcom/perm/kate/VideoUploadActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchVideoDescription(JJ)Lcom/perm/kate/api/Video;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->et_video_name:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    .line 316
    iget-object v1, p0, Lcom/perm/kate/VideoUploadActivity;->et_video_description:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->description:Ljava/lang/String;

    .line 317
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1, v0}, Lcom/perm/kate/db/DataHelper;->updateVideo(Lcom/perm/kate/api/Video;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 320
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 321
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 157
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "value"

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    if-ne p2, v1, :cond_0

    .line 159
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/perm/kate/VideoUploadActivity;->who_look:Ljava/util/ArrayList;

    .line 160
    invoke-direct {p0}, Lcom/perm/kate/VideoUploadActivity;->setPrivacySpinnersInUI()V

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    if-ne p2, v1, :cond_1

    .line 163
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity;->who_make_commnets:Ljava/util/ArrayList;

    .line 164
    invoke-direct {p0}, Lcom/perm/kate/VideoUploadActivity;->setPrivacySpinnersInUI()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 49
    :try_start_0
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c013b

    .line 50
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f090124

    .line 51
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity;->et_video_name:Landroid/widget/EditText;

    const p1, 0x7f090123

    .line 52
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity;->et_video_description:Landroid/widget/EditText;

    const p1, 0x7f090078

    .line 53
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity;->btn_video_save:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->saveClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006a

    .line 55
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity;->btn_video_cancel:Landroid/widget/Button;

    .line 56
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->cancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09027f

    .line 59
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity;->spinner_who_look:Landroid/view/View;

    .line 60
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->itemClickListener1:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090280

    .line 61
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity;->spinner_who_make_comments:Landroid/view/View;

    .line 62
    iget-object v0, p0, Lcom/perm/kate/VideoUploadActivity;->itemClickListener2:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.is_edit"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/VideoUploadActivity;->is_edit:Z

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.video_id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/perm/kate/VideoUploadActivity;->video_id:J

    .line 65
    iget-boolean p1, p0, Lcom/perm/kate/VideoUploadActivity;->is_edit:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0f04f8

    goto :goto_0

    :cond_0
    const p1, 0x7f0f051a

    :goto_0
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.owner_id"

    invoke-virtual {p1, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity;->owner_id:Ljava/lang/Long;

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.is_private"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/VideoUploadActivity;->is_private:Z

    .line 68
    iget-boolean p1, p0, Lcom/perm/kate/VideoUploadActivity;->is_edit:Z

    if-nez p1, :cond_3

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity;->fileUri:Landroid/net/Uri;

    .line 70
    iget-boolean p1, p0, Lcom/perm/kate/VideoUploadActivity;->is_private:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/perm/kate/VideoUploadActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, v2

    if-gez p1, :cond_2

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/VideoUploadActivity;->spinner_who_look:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 72
    iget-object p1, p0, Lcom/perm/kate/VideoUploadActivity;->spinner_who_make_comments:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity;->who_look:Ljava/util/ArrayList;

    .line 75
    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity;->who_make_commnets:Ljava/util/ArrayList;

    .line 77
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/VideoUploadActivity;->setPrivacySpinnersInUI()V

    goto :goto_1

    .line 79
    :cond_3
    invoke-direct {p0}, Lcom/perm/kate/VideoUploadActivity;->showVideoData()V

    .line 80
    :goto_1
    invoke-direct {p0}, Lcom/perm/kate/VideoUploadActivity;->downloadFriendListsForPrivacy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 82
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 83
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method
