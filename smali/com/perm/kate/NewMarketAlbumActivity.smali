.class public Lcom/perm/kate/NewMarketAlbumActivity;
.super Lcom/perm/kate/BaseActivity;
.source "NewMarketAlbumActivity.java"


# instance fields
.field private addMainImageClickListener:Landroid/view/View$OnClickListener;

.field private album:Lcom/perm/kate/api/MarketAlbum;

.field private btn_add_main_image:Landroid/widget/Button;

.field private btn_cancel:Landroid/widget/Button;

.field private btn_save:Landroid/widget/Button;

.field private callback:Lcom/perm/kate/session/Callback;

.field private callback_edit:Lcom/perm/kate/session/Callback;

.field private cancel_ClickListener:Landroid/view/View$OnClickListener;

.field private ed_title:Landroid/widget/EditText;

.field private group_id:J

.field private is_edit:Z

.field private iv_main_photo:Landroid/widget/ImageView;

.field private main_photo_id:Ljava/lang/Long;

.field private photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

.field private save_ClickListener:Landroid/view/View$OnClickListener;

.field private title:Ljava/lang/String;

.field protected uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;


# direct methods
.method public static synthetic $r8$lambda$37CPVzW_XDRSEq75TvaVMHwF-Bw(Lcom/perm/kate/NewMarketAlbumActivity;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/NewMarketAlbumActivity;->lambda$displayNewMarketPhotoInUi$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->title:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->main_photo_id:Ljava/lang/Long;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->is_edit:Z

    .line 65
    new-instance v0, Lcom/perm/kate/NewMarketAlbumActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMarketAlbumActivity$1;-><init>(Lcom/perm/kate/NewMarketAlbumActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->addMainImageClickListener:Landroid/view/View$OnClickListener;

    .line 72
    new-instance v0, Lcom/perm/kate/NewMarketAlbumActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMarketAlbumActivity$2;-><init>(Lcom/perm/kate/NewMarketAlbumActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->save_ClickListener:Landroid/view/View$OnClickListener;

    .line 82
    new-instance v0, Lcom/perm/kate/NewMarketAlbumActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMarketAlbumActivity$3;-><init>(Lcom/perm/kate/NewMarketAlbumActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->cancel_ClickListener:Landroid/view/View$OnClickListener;

    .line 102
    new-instance v0, Lcom/perm/kate/NewMarketAlbumActivity$5;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/NewMarketAlbumActivity$5;-><init>(Lcom/perm/kate/NewMarketAlbumActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->callback_edit:Lcom/perm/kate/session/Callback;

    .line 132
    new-instance v0, Lcom/perm/kate/NewMarketAlbumActivity$7;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/NewMarketAlbumActivity$7;-><init>(Lcom/perm/kate/NewMarketAlbumActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 160
    new-instance v0, Lcom/perm/kate/NewMarketAlbumActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMarketAlbumActivity$8;-><init>(Lcom/perm/kate/NewMarketAlbumActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    .line 171
    new-instance v0, Lcom/perm/kate/NewMarketAlbumActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMarketAlbumActivity$9;-><init>(Lcom/perm/kate/NewMarketAlbumActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    return-void
.end method

.method private ResultOK()V
    .locals 1

    const v0, 0x7f0f00c9

    .line 141
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    const/4 v0, -0x1

    .line 142
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/NewMarketAlbumActivity;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->is_edit:Z

    return p0
.end method

.method static synthetic access$100(Lcom/perm/kate/NewMarketAlbumActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/NewMarketAlbumActivity;->editMarketAlbum()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/NewMarketAlbumActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/NewMarketAlbumActivity;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/NewMarketAlbumActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/perm/kate/NewMarketAlbumActivity;->displayNewMarketPhotoInUi(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/NewMarketAlbumActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/NewMarketAlbumActivity;->createMarketAlbum()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/NewMarketAlbumActivity;)J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->group_id:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/perm/kate/NewMarketAlbumActivity;)Lcom/perm/kate/api/MarketAlbum;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->album:Lcom/perm/kate/api/MarketAlbum;

    return-object p0
.end method

.method static synthetic access$500(Lcom/perm/kate/NewMarketAlbumActivity;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->title:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/NewMarketAlbumActivity;)Ljava/lang/Long;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->main_photo_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$700(Lcom/perm/kate/NewMarketAlbumActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->callback_edit:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/NewMarketAlbumActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/perm/kate/NewMarketAlbumActivity;->ResultOK()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/NewMarketAlbumActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method private checkValues()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->ed_title:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->title:Ljava/lang/String;

    .line 125
    invoke-static {v0}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f0537

    .line 126
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private createMarketAlbum()V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/perm/kate/NewMarketAlbumActivity;->checkValues()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    new-instance v0, Lcom/perm/kate/NewMarketAlbumActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMarketAlbumActivity$6;-><init>(Lcom/perm/kate/NewMarketAlbumActivity;)V

    .line 120
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private displayNewMarketPhoto(Lcom/perm/kate/api/Photo;)V
    .locals 2

    .line 197
    iget-wide v0, p1, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->main_photo_id:Ljava/lang/Long;

    .line 198
    iget-object p1, p1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/perm/kate/NewMarketAlbumActivity;->updateMainPhoto(Ljava/lang/String;)V

    return-void
.end method

.method private displayNewMarketPhotoInUi(Ljava/util/ArrayList;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 189
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 193
    :cond_1
    new-instance v0, Lcom/perm/kate/NewMarketAlbumActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/NewMarketAlbumActivity$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/NewMarketAlbumActivity;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private displayValues()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->ed_title:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/NewMarketAlbumActivity;->album:Lcom/perm/kate/api/MarketAlbum;

    iget-object v1, v1, Lcom/perm/kate/api/MarketAlbum;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->album:Lcom/perm/kate/api/MarketAlbum;

    iget-object v0, v0, Lcom/perm/kate/api/MarketAlbum;->photo:Lcom/perm/kate/api/Photo;

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, v0, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/perm/kate/NewMarketAlbumActivity;->updateMainPhoto(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private editMarketAlbum()V
    .locals 1

    .line 90
    invoke-direct {p0}, Lcom/perm/kate/NewMarketAlbumActivity;->checkValues()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    new-instance v0, Lcom/perm/kate/NewMarketAlbumActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMarketAlbumActivity$4;-><init>(Lcom/perm/kate/NewMarketAlbumActivity;)V

    .line 99
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private editPhotoBeforeUpload(Ljava/util/ArrayList;)V
    .locals 2

    .line 182
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uris"

    .line 183
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x7

    .line 184
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private synthetic lambda$displayNewMarketPhotoInUi$0(Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    .line 193
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Photo;

    invoke-direct {p0, p1}, Lcom/perm/kate/NewMarketAlbumActivity;->displayNewMarketPhoto(Lcom/perm/kate/api/Photo;)V

    return-void
.end method

.method private updateMainPhoto(Ljava/lang/String;)V
    .locals 8

    .line 202
    iget-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->iv_main_photo:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 203
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    iget-object v3, p0, Lcom/perm/kate/NewMarketAlbumActivity;->iv_main_photo:Landroid/widget/ImageView;

    const/4 v4, 0x1

    const/16 v5, 0x5a

    .line 204
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v6

    const/4 v7, 0x0

    move-object v2, p1

    .line 203
    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    .line 150
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 151
    iget-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/perm/kate/photoupload/PhotoChooser;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/perm/kate/photoupload/PhotoChooser$Callback;)Landroid/net/Uri;

    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    const-string p1, "uris"

    .line 153
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    const-string v0, "resize_option"

    .line 154
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string p2, "rotate"

    const/4 v0, 0x0

    .line 155
    invoke-virtual {p3, p2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 156
    new-instance p2, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Landroid/net/Uri;

    iget-wide v4, p0, Lcom/perm/kate/NewMarketAlbumActivity;->group_id:J

    iget-object v7, p0, Lcom/perm/kate/NewMarketAlbumActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;JILcom/perm/kate/photoupload/UploadCallback;I)V

    invoke-virtual {p2}, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->upload()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 36
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "album"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/MarketAlbum;

    iput-object p1, p0, Lcom/perm/kate/NewMarketAlbumActivity;->album:Lcom/perm/kate/api/MarketAlbum;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/perm/kate/NewMarketAlbumActivity;->is_edit:Z

    :cond_0
    const p1, 0x7f0c00c9

    .line 40
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    .line 41
    iget-boolean p1, p0, Lcom/perm/kate/NewMarketAlbumActivity;->is_edit:Z

    if-eqz p1, :cond_1

    const p1, 0x7f0f01ec

    goto :goto_0

    :cond_1
    const p1, 0x7f0f0034

    :goto_0
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 42
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setButtonsBg()V

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string v2, "group_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->group_id:J

    const p1, 0x7f09010c

    .line 44
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/NewMarketAlbumActivity;->ed_title:Landroid/widget/EditText;

    const p1, 0x7f090199

    .line 45
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/perm/kate/NewMarketAlbumActivity;->iv_main_photo:Landroid/widget/ImageView;

    .line 46
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    const p1, 0x7f090061

    .line 47
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/NewMarketAlbumActivity;->btn_add_main_image:Landroid/widget/Button;

    .line 48
    iget-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->addMainImageClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090078

    .line 49
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/NewMarketAlbumActivity;->btn_save:Landroid/widget/Button;

    .line 50
    iget-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->save_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006a

    .line 51
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/NewMarketAlbumActivity;->btn_cancel:Landroid/widget/Button;

    .line 52
    iget-object v0, p0, Lcom/perm/kate/NewMarketAlbumActivity;->cancel_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    iget-boolean p1, p0, Lcom/perm/kate/NewMarketAlbumActivity;->is_edit:Z

    if-eqz p1, :cond_2

    .line 54
    invoke-direct {p0}, Lcom/perm/kate/NewMarketAlbumActivity;->displayValues()V

    goto :goto_1

    .line 56
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/NewMarketAlbumActivity;->ed_title:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    :goto_1
    return-void
.end method
