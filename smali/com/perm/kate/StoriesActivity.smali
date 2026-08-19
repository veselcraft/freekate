.class public Lcom/perm/kate/StoriesActivity;
.super Lcom/perm/kate/BaseActivity;
.source "StoriesActivity.java"


# instance fields
.field private adapter:Lcom/perm/kate/StoriesAdapter;

.field callback_delete:Lcom/perm/kate/session/Callback;

.field private game_callback:Lcom/perm/kate/session/Callback;

.field games:Ljava/util/ArrayList;

.field private lv_list:Landroid/widget/GridView;

.field private onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field owner_id:Ljava/lang/Long;

.field private photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

.field private photo_long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

.field protected uploadCallback:Lcom/perm/kate/photoupload/StoryUploadCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 64
    new-instance v0, Lcom/perm/kate/StoriesActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/StoriesActivity$2;-><init>(Lcom/perm/kate/StoriesActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/StoriesActivity;->game_callback:Lcom/perm/kate/session/Callback;

    .line 97
    new-instance v0, Lcom/perm/kate/StoriesActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/StoriesActivity$3;-><init>(Lcom/perm/kate/StoriesActivity;)V

    iput-object v0, p0, Lcom/perm/kate/StoriesActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 227
    new-instance v0, Lcom/perm/kate/StoriesActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/StoriesActivity$5;-><init>(Lcom/perm/kate/StoriesActivity;)V

    iput-object v0, p0, Lcom/perm/kate/StoriesActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    .line 246
    new-instance v0, Lcom/perm/kate/StoriesActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/StoriesActivity$6;-><init>(Lcom/perm/kate/StoriesActivity;)V

    iput-object v0, p0, Lcom/perm/kate/StoriesActivity;->uploadCallback:Lcom/perm/kate/photoupload/StoryUploadCallback;

    .line 267
    new-instance v0, Lcom/perm/kate/StoriesActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/StoriesActivity$7;-><init>(Lcom/perm/kate/StoriesActivity;)V

    iput-object v0, p0, Lcom/perm/kate/StoriesActivity;->photo_long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 322
    new-instance v0, Lcom/perm/kate/StoriesActivity$8;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/StoriesActivity$8;-><init>(Lcom/perm/kate/StoriesActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/StoriesActivity;->callback_delete:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/StoriesActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/StoriesActivity;->game_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/StoriesActivity;)Lcom/perm/kate/StoriesAdapter;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/StoriesActivity;->adapter:Lcom/perm/kate/StoriesAdapter;

    return-object p0
.end method

.method static synthetic access$102(Lcom/perm/kate/StoriesActivity;Lcom/perm/kate/StoriesAdapter;)Lcom/perm/kate/StoriesAdapter;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/perm/kate/StoriesActivity;->adapter:Lcom/perm/kate/StoriesAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lcom/perm/kate/StoriesActivity;)Landroid/widget/GridView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/perm/kate/StoriesActivity;->lv_list:Landroid/widget/GridView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/StoriesActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/perm/kate/StoriesActivity;->displayUploadOptions(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/StoriesActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/perm/kate/StoriesActivity;->refreshInThread()V

    return-void
.end method

.method private displayUploadOptions(Ljava/util/ArrayList;)V
    .locals 2

    .line 239
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uris"

    .line 241
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string p1, "show_caption"

    const/4 v1, 0x1

    .line 242
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x7

    .line 243
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static getMissingUsers(Ljava/util/ArrayList;)V
    .locals 7

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Story;

    .line 89
    iget-wide v2, v2, Lcom/perm/kate/api/Story;->owner_id:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 90
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    neg-long v2, v2

    .line 92
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 93
    :cond_1
    invoke-static {v0}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 94
    invoke-static {v1}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    return-void
.end method

.method static getVideoUrl(Lcom/perm/kate/api/Video;)Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/perm/kate/api/Video;->mp4_480:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object p0, p0, Lcom/perm/kate/api/Video;->mp4_480:Ljava/lang/String;

    return-object p0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/api/Video;->mp4_720:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    iget-object p0, p0, Lcom/perm/kate/api/Video;->mp4_720:Ljava/lang/String;

    return-object p0

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/api/Video;->mp4_360:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 131
    iget-object p0, p0, Lcom/perm/kate/api/Video;->mp4_360:Ljava/lang/String;

    return-object p0

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/api/Video;->mp4_240:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 133
    iget-object p0, p0, Lcom/perm/kate/api/Video;->mp4_240:Ljava/lang/String;

    return-object p0

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/api/Video;->mp4_1080:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 135
    iget-object p0, p0, Lcom/perm/kate/api/Video;->mp4_1080:Ljava/lang/String;

    return-object p0

    :cond_4
    const-string p0, ""

    return-object p0
.end method

.method private static openPhoto(Lcom/perm/kate/api/Story;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 3

    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    const-class v1, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 142
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 143
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Story;

    .line 144
    iget-object v2, v2, Lcom/perm/kate/api/Story;->photo:Lcom/perm/kate/api/Photo;

    if-eqz v2, :cond_0

    .line 145
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "com.perm.kate.photos"

    .line 146
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 147
    iget-object p0, p0, Lcom/perm/kate/api/Story;->photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const-string p1, "com.perm.kate.position"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p0, 0x0

    const-string p1, "com.perm.kate.info_position_offset"

    .line 148
    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const-string p1, "com.perm.kate.info_total_count"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 151
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static openStory(Lcom/perm/kate/api/Story;Ljava/util/ArrayList;Landroid/content/Context;)V
    .locals 2

    .line 106
    iget-boolean v0, p0, Lcom/perm/kate/api/Story;->is_expired:Z

    if-eqz v0, :cond_0

    .line 107
    move-object v0, p2

    check-cast v0, Lcom/perm/kate/BaseActivity;

    const v1, 0x7f0f0496

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/api/Story;->photo:Lcom/perm/kate/api/Photo;

    if-eqz v0, :cond_1

    .line 109
    invoke-static {p0, p1, p2}, Lcom/perm/kate/StoriesActivity;->openPhoto(Lcom/perm/kate/api/Story;Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/api/Story;->video:Lcom/perm/kate/api/Video;

    if-eqz p1, :cond_2

    .line 111
    invoke-static {p0, p2}, Lcom/perm/kate/StoriesActivity;->openVideo(Lcom/perm/kate/api/Story;Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method private static openVideo(Lcom/perm/kate/api/Story;Landroid/content/Context;)V
    .locals 2

    .line 115
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 116
    const-class v1, Lcom/perm/kate/VideoViewActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 120
    iget-object p0, p0, Lcom/perm/kate/api/Story;->video:Lcom/perm/kate/api/Video;

    invoke-static {p0}, Lcom/perm/kate/StoriesActivity;->getVideoUrl(Lcom/perm/kate/api/Video;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "video_url"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 52
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 53
    new-instance v0, Lcom/perm/kate/StoriesActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/StoriesActivity$1;-><init>(Lcom/perm/kate/StoriesActivity;)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private selectDialog()V
    .locals 5

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0265

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0f051d

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0f00f7

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 174
    new-instance v2, Lcom/perm/kate/MenuItemDetails;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 176
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Lcom/perm/kate/StoriesActivity$4;

    invoke-direct {v4, p0, v0}, Lcom/perm/kate/StoriesActivity$4;-><init>(Lcom/perm/kate/StoriesActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 194
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 195
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 12

    .line 202
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/StoriesActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/perm/kate/photoupload/PhotoChooser;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/perm/kate/photoupload/PhotoChooser$Callback;)Landroid/net/Uri;

    const/4 v0, 0x7

    const/4 v1, -0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    const-string v0, "uris"

    .line 207
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v2, "resize_option"

    const/4 v3, 0x2

    .line 209
    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v2, "rotate"

    const/4 v3, 0x0

    .line 210
    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const v4, 0x7f0f0519

    .line 211
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v4, 0x7f0f03e1

    .line 212
    invoke-virtual {p0, v4}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 213
    new-instance v11, Lcom/perm/kate/photoupload/StoryPhotoUploader;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/net/Uri;

    iget-object v8, p0, Lcom/perm/kate/StoriesActivity;->uploadCallback:Lcom/perm/kate/photoupload/StoryUploadCallback;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v4, v11

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/perm/kate/photoupload/StoryPhotoUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;ILcom/perm/kate/photoupload/StoryUploadCallback;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v11}, Lcom/perm/kate/photoupload/StoryPhotoUploader;->upload()V

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    if-ne p2, v1, :cond_1

    .line 216
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    const p2, 0x7f0f051a

    .line 217
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f0f057e

    .line 218
    invoke-virtual {p0, p3}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 219
    new-instance p3, Lcom/perm/kate/photoupload/StoryVideoUploader;

    iget-object v0, p0, Lcom/perm/kate/StoriesActivity;->uploadCallback:Lcom/perm/kate/photoupload/StoryUploadCallback;

    invoke-direct {p3, p0, p1, v0, p2}, Lcom/perm/kate/photoupload/StoryVideoUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;Lcom/perm/kate/photoupload/StoryUploadCallback;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/perm/kate/photoupload/StoryVideoUploader;->upload()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 222
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 223
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onAddButton()V
    .locals 0

    .line 165
    invoke-direct {p0}, Lcom/perm/kate/StoriesActivity;->selectDialog()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 33
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0120

    .line 34
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "owner_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/StoriesActivity;->owner_id:Ljava/lang/Long;

    .line 36
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 37
    iget-object p1, p0, Lcom/perm/kate/StoriesActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/perm/kate/StoriesActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupAddButton()V

    :cond_1
    const p1, 0x7f090212

    .line 39
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/GridView;

    iput-object p1, p0, Lcom/perm/kate/StoriesActivity;->lv_list:Landroid/widget/GridView;

    .line 40
    iget-object v0, p0, Lcom/perm/kate/StoriesActivity;->onItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 41
    iget-object p1, p0, Lcom/perm/kate/StoriesActivity;->lv_list:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/perm/kate/StoriesActivity;->photo_long_click_listener:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const p1, 0x7f0f0495

    .line 42
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 43
    invoke-direct {p0}, Lcom/perm/kate/StoriesActivity;->refreshInThread()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/perm/kate/StoriesActivity;->adapter:Lcom/perm/kate/StoriesAdapter;

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {v0}, Lcom/perm/kate/StoriesAdapter;->Destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 158
    iput-object v0, p0, Lcom/perm/kate/StoriesActivity;->adapter:Lcom/perm/kate/StoriesAdapter;

    .line 159
    iget-object v1, p0, Lcom/perm/kate/StoriesActivity;->lv_list:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 160
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/perm/kate/StoriesActivity;->refreshInThread()V

    return-void
.end method
