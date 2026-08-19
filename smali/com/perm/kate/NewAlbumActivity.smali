.class public Lcom/perm/kate/NewAlbumActivity;
.super Lcom/perm/kate/BaseActivity;
.source "NewAlbumActivity.java"


# instance fields
.field private aid:J

.field private album_privacy:Ljava/util/ArrayList;

.field private btn_status_cancel:Landroid/widget/Button;

.field private btn_status_save:Landroid/widget/Button;

.field private callback_save:Lcom/perm/kate/session/Callback;

.field private cancel_OnClickListerer:Landroid/view/View$OnClickListener;

.field private comments_privacy:Ljava/util/ArrayList;

.field private edit_mode:Z

.field private gid:Ljava/lang/Long;

.field private itemClickListener1:Landroid/view/View$OnClickListener;

.field private itemClickListener2:Landroid/view/View$OnClickListener;

.field private save_OnClickListerer:Landroid/view/View$OnClickListener;

.field private tb_create_album_description:Landroid/widget/EditText;

.field private tb_create_album_title:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 17
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "all"

    aput-object v4, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->album_privacy:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v1, [Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->comments_privacy:Ljava/util/ArrayList;

    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Lcom/perm/kate/NewAlbumActivity;->aid:J

    .line 26
    iput-boolean v3, p0, Lcom/perm/kate/NewAlbumActivity;->edit_mode:Z

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->gid:Ljava/lang/Long;

    .line 113
    new-instance v0, Lcom/perm/kate/NewAlbumActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewAlbumActivity$2;-><init>(Lcom/perm/kate/NewAlbumActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->itemClickListener1:Landroid/view/View$OnClickListener;

    .line 120
    new-instance v0, Lcom/perm/kate/NewAlbumActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewAlbumActivity$3;-><init>(Lcom/perm/kate/NewAlbumActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->itemClickListener2:Landroid/view/View$OnClickListener;

    .line 156
    new-instance v0, Lcom/perm/kate/NewAlbumActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewAlbumActivity$4;-><init>(Lcom/perm/kate/NewAlbumActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 178
    new-instance v0, Lcom/perm/kate/NewAlbumActivity$5;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/NewAlbumActivity$5;-><init>(Lcom/perm/kate/NewAlbumActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->callback_save:Lcom/perm/kate/session/Callback;

    .line 224
    new-instance v0, Lcom/perm/kate/NewAlbumActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewAlbumActivity$6;-><init>(Lcom/perm/kate/NewAlbumActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/NewAlbumActivity;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/perm/kate/NewAlbumActivity;->displayPrivacy1()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/NewAlbumActivity;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/perm/kate/NewAlbumActivity;->displayPrivacy2()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/NewAlbumActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perm/kate/NewAlbumActivity;->callback_save:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/NewAlbumActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perm/kate/NewAlbumActivity;->album_privacy:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/NewAlbumActivity;Ljava/util/ArrayList;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/NewAlbumActivity;->showPrivacyItemActivity(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/NewAlbumActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perm/kate/NewAlbumActivity;->comments_privacy:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/perm/kate/NewAlbumActivity;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/perm/kate/NewAlbumActivity;->edit_mode:Z

    return p0
.end method

.method static synthetic access$600(Lcom/perm/kate/NewAlbumActivity;)J
    .locals 2

    .line 17
    iget-wide v0, p0, Lcom/perm/kate/NewAlbumActivity;->aid:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/perm/kate/NewAlbumActivity;)Ljava/lang/Long;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perm/kate/NewAlbumActivity;->gid:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/NewAlbumActivity;)Landroid/widget/EditText;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perm/kate/NewAlbumActivity;->tb_create_album_title:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$900(Lcom/perm/kate/NewAlbumActivity;)Landroid/widget/EditText;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perm/kate/NewAlbumActivity;->tb_create_album_description:Landroid/widget/EditText;

    return-object p0
.end method

.method private displayPrivacy1()V
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->album_privacy:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const v0, 0x7f090281

    .line 101
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    iget-object v1, p0, Lcom/perm/kate/NewAlbumActivity;->album_privacy:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/perm/kate/PrivacyActivity;->getTextByValue(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private displayPrivacy2()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->comments_privacy:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const v0, 0x7f090282

    .line 108
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 109
    iget-object v1, p0, Lcom/perm/kate/NewAlbumActivity;->comments_privacy:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/perm/kate/PrivacyActivity;->getTextByValue(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private populateFields()V
    .locals 3

    .line 85
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p0, Lcom/perm/kate/NewAlbumActivity;->aid:J

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchAlbum(J)Lcom/perm/kate/api/Album;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 87
    iget-object v1, p0, Lcom/perm/kate/NewAlbumActivity;->tb_create_album_title:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v1, p0, Lcom/perm/kate/NewAlbumActivity;->tb_create_album_description:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/perm/kate/api/Album;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v1, v0, Lcom/perm/kate/api/Album;->privacy:Lcom/perm/kate/api/Privacy;

    if-eqz v1, :cond_0

    .line 91
    iget-object v1, v1, Lcom/perm/kate/api/Privacy;->privacy:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/perm/kate/NewAlbumActivity;->album_privacy:Ljava/util/ArrayList;

    .line 92
    :cond_0
    iget-object v0, v0, Lcom/perm/kate/api/Album;->comment_privacy:Lcom/perm/kate/api/Privacy;

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, v0, Lcom/perm/kate/api/Privacy;->privacy:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->comments_privacy:Ljava/util/ArrayList;

    .line 94
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/NewAlbumActivity;->displayPrivacy1()V

    .line 95
    invoke-direct {p0}, Lcom/perm/kate/NewAlbumActivity;->displayPrivacy2()V

    :cond_2
    return-void
.end method

.method private showPrivacyItemActivity(Ljava/util/ArrayList;I)V
    .locals 6

    .line 129
    new-instance v0, Lcom/perm/kate/api/PrivacyItem;

    invoke-direct {v0}, Lcom/perm/kate/api/PrivacyItem;-><init>()V

    const v1, 0x7f0f0197

    .line 131
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/PrivacyItem;->title:Ljava/lang/String;

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "all"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v5, "friends"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "friends_of_friends"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    const-string v5, "only_me"

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, "some"

    aput-object v5, v2, v3

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/perm/kate/api/PrivacyItem;->supported_values:Ljava/util/ArrayList;

    .line 133
    iput-object p1, v0, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    .line 134
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PrivacyItemActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "privacy_item"

    .line 135
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "save"

    .line 136
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 137
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 145
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "value"

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    if-ne p2, v1, :cond_0

    .line 147
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/perm/kate/NewAlbumActivity;->album_privacy:Ljava/util/ArrayList;

    .line 148
    invoke-direct {p0}, Lcom/perm/kate/NewAlbumActivity;->displayPrivacy1()V

    :cond_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    if-ne p2, v1, :cond_1

    .line 151
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/perm/kate/NewAlbumActivity;->comments_privacy:Ljava/util/ArrayList;

    .line 152
    invoke-direct {p0}, Lcom/perm/kate/NewAlbumActivity;->displayPrivacy2()V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 31
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00c5

    .line 32
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f090321

    .line 33
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/NewAlbumActivity;->tb_create_album_title:Landroid/widget/EditText;

    const p1, 0x7f090320

    .line 34
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/NewAlbumActivity;->tb_create_album_description:Landroid/widget/EditText;

    const p1, 0x7f090078

    .line 35
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/NewAlbumActivity;->btn_status_save:Landroid/widget/Button;

    .line 36
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09006a

    .line 37
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/NewAlbumActivity;->btn_status_cancel:Landroid/widget/Button;

    .line 38
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.aid"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/NewAlbumActivity;->aid:J

    .line 40
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.oid"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-eqz p1, :cond_0

    .line 42
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/NewAlbumActivity;->gid:Ljava/lang/Long;

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/NewAlbumActivity;->gid:Ljava/lang/Long;

    const v0, 0x7f090280

    const v1, 0x7f09027f

    if-nez p1, :cond_1

    .line 44
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v1, p0, Lcom/perm/kate/NewAlbumActivity;->itemClickListener1:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->itemClickListener2:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 48
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "com.perm.kate.edit_mode"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/NewAlbumActivity;->edit_mode:Z

    if-eqz p1, :cond_2

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/NewAlbumActivity;->populateFields()V

    goto :goto_1

    .line 54
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/NewAlbumActivity;->displayPrivacy1()V

    .line 55
    invoke-direct {p0}, Lcom/perm/kate/NewAlbumActivity;->displayPrivacy2()V

    .line 57
    :goto_1
    iget-boolean p1, p0, Lcom/perm/kate/NewAlbumActivity;->edit_mode:Z

    if-eqz p1, :cond_3

    const p1, 0x7f0f04f7

    goto :goto_2

    :cond_3
    const p1, 0x7f0f0507

    :goto_2
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 62
    new-instance p1, Lcom/perm/kate/NewAlbumActivity$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/NewAlbumActivity$1;-><init>(Lcom/perm/kate/NewAlbumActivity;)V

    .line 79
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
