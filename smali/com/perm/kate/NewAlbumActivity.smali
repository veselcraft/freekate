.class public Lcom/perm/kate/NewAlbumActivity;
.super Lcom/perm/kate/BaseActivity;
.source "NewAlbumActivity.java"


# instance fields
.field private aid:J

.field private album_privacy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private btn_status_cancel:Landroid/widget/Button;

.field private btn_status_save:Landroid/widget/Button;

.field private callback_save:Lcom/perm/kate/session/Callback;

.field private cancel_OnClickListerer:Landroid/view/View$OnClickListener;

.field private comments_privacy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

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

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "all"

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->album_privacy:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "all"

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->comments_privacy:Ljava/util/ArrayList;

    .line 25
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perm/kate/NewAlbumActivity;->aid:J

    .line 26
    iput-boolean v3, p0, Lcom/perm/kate/NewAlbumActivity;->edit_mode:Z

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->gid:Ljava/lang/Long;

    .line 111
    new-instance v0, Lcom/perm/kate/NewAlbumActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewAlbumActivity$2;-><init>(Lcom/perm/kate/NewAlbumActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->itemClickListener1:Landroid/view/View$OnClickListener;

    .line 118
    new-instance v0, Lcom/perm/kate/NewAlbumActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewAlbumActivity$3;-><init>(Lcom/perm/kate/NewAlbumActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->itemClickListener2:Landroid/view/View$OnClickListener;

    .line 153
    new-instance v0, Lcom/perm/kate/NewAlbumActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewAlbumActivity$4;-><init>(Lcom/perm/kate/NewAlbumActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 175
    new-instance v0, Lcom/perm/kate/NewAlbumActivity$5;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/NewAlbumActivity$5;-><init>(Lcom/perm/kate/NewAlbumActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->callback_save:Lcom/perm/kate/session/Callback;

    .line 220
    new-instance v0, Lcom/perm/kate/NewAlbumActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewAlbumActivity$6;-><init>(Lcom/perm/kate/NewAlbumActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/NewAlbumActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewAlbumActivity;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/perm/kate/NewAlbumActivity;->displayPrivacy1()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/NewAlbumActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewAlbumActivity;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/perm/kate/NewAlbumActivity;->displayPrivacy2()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/NewAlbumActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewAlbumActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->callback_save:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/NewAlbumActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewAlbumActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->album_privacy:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/NewAlbumActivity;Ljava/util/ArrayList;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewAlbumActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/NewAlbumActivity;->showPrivacyItemActivity(Ljava/util/ArrayList;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/NewAlbumActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewAlbumActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->comments_privacy:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/NewAlbumActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewAlbumActivity;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/perm/kate/NewAlbumActivity;->edit_mode:Z

    return v0
.end method

.method static synthetic access$600(Lcom/perm/kate/NewAlbumActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/NewAlbumActivity;

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/perm/kate/NewAlbumActivity;->aid:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/perm/kate/NewAlbumActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewAlbumActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->gid:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$800(Lcom/perm/kate/NewAlbumActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewAlbumActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->tb_create_album_title:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$900(Lcom/perm/kate/NewAlbumActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewAlbumActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->tb_create_album_description:Landroid/widget/EditText;

    return-object v0
.end method

.method private displayPrivacy1()V
    .locals 2

    .prologue
    .line 98
    iget-object v1, p0, Lcom/perm/kate/NewAlbumActivity;->album_privacy:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 99
    const v1, 0x7f0e0257

    invoke-virtual {p0, v1}, Lcom/perm/kate/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 100
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/perm/kate/NewAlbumActivity;->album_privacy:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/perm/kate/PrivacyActivity;->getTextByValue(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private displayPrivacy2()V
    .locals 2

    .prologue
    .line 105
    iget-object v1, p0, Lcom/perm/kate/NewAlbumActivity;->comments_privacy:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 106
    const v1, 0x7f0e0259

    invoke-virtual {p0, v1}, Lcom/perm/kate/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 107
    .local v0, "tv":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/perm/kate/NewAlbumActivity;->comments_privacy:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/perm/kate/PrivacyActivity;->getTextByValue(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    .end local v0    # "tv":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private populateFields()V
    .locals 4

    .prologue
    .line 84
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/NewAlbumActivity;->aid:J

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchAlbum(J)Lcom/perm/kate/api/Album;

    move-result-object v0

    .line 85
    .local v0, "a":Lcom/perm/kate/api/Album;
    if-eqz v0, :cond_1

    .line 86
    iget-object v1, p0, Lcom/perm/kate/NewAlbumActivity;->tb_create_album_title:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v1, p0, Lcom/perm/kate/NewAlbumActivity;->tb_create_album_description:Landroid/widget/EditText;

    iget-object v2, v0, Lcom/perm/kate/api/Album;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v1, v0, Lcom/perm/kate/api/Album;->privacy:Lcom/perm/kate/api/Privacy;

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, v0, Lcom/perm/kate/api/Album;->privacy:Lcom/perm/kate/api/Privacy;

    iget-object v1, v1, Lcom/perm/kate/api/Privacy;->privacy:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/perm/kate/NewAlbumActivity;->album_privacy:Ljava/util/ArrayList;

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/NewAlbumActivity;->displayPrivacy1()V

    .line 93
    invoke-direct {p0}, Lcom/perm/kate/NewAlbumActivity;->displayPrivacy2()V

    .line 95
    :cond_1
    return-void
.end method

.method private showPrivacyItemActivity(Ljava/util/ArrayList;I)V
    .locals 7
    .param p2, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, "pi":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 127
    new-instance v1, Lcom/perm/kate/api/PrivacyItem;

    invoke-direct {v1}, Lcom/perm/kate/api/PrivacyItem;-><init>()V

    .line 128
    .local v1, "item":Lcom/perm/kate/api/PrivacyItem;
    const v2, 0x7f070129

    invoke-virtual {p0, v2}, Lcom/perm/kate/NewAlbumActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/perm/kate/api/PrivacyItem;->title:Ljava/lang/String;

    .line 129
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "all"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    const-string v5, "friends"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "friends_of_friends"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "only_me"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "some"

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Lcom/perm/kate/api/PrivacyItem;->supported_values:Ljava/util/ArrayList;

    .line 130
    iput-object p1, v1, Lcom/perm/kate/api/PrivacyItem;->value:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/perm/kate/PrivacyItemActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "privacy_item"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 133
    const-string v2, "save"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 134
    invoke-virtual {p0, v0, p2}, Lcom/perm/kate/NewAlbumActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 135
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v1, -0x1

    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/perm/kate/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 143
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 144
    const-string v0, "value"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->album_privacy:Ljava/util/ArrayList;

    .line 145
    invoke-direct {p0}, Lcom/perm/kate/NewAlbumActivity;->displayPrivacy1()V

    .line 147
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 148
    const-string v0, "value"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/perm/kate/NewAlbumActivity;->comments_privacy:Ljava/util/ArrayList;

    .line 149
    invoke-direct {p0}, Lcom/perm/kate/NewAlbumActivity;->displayPrivacy2()V

    .line 151
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v8, 0x7f0e0258

    const v7, 0x7f0e0256

    const/16 v6, 0x8

    const-wide/16 v4, 0x0

    .line 31
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v2, 0x7f0300b4

    invoke-virtual {p0, v2}, Lcom/perm/kate/NewAlbumActivity;->setContentView(I)V

    .line 33
    const v2, 0x7f0e0254

    invoke-virtual {p0, v2}, Lcom/perm/kate/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/perm/kate/NewAlbumActivity;->tb_create_album_title:Landroid/widget/EditText;

    .line 34
    const v2, 0x7f0e0255

    invoke-virtual {p0, v2}, Lcom/perm/kate/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/perm/kate/NewAlbumActivity;->tb_create_album_description:Landroid/widget/EditText;

    .line 35
    const v2, 0x7f0e019d

    invoke-virtual {p0, v2}, Lcom/perm/kate/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/perm/kate/NewAlbumActivity;->btn_status_save:Landroid/widget/Button;

    .line 36
    iget-object v2, p0, Lcom/perm/kate/NewAlbumActivity;->btn_status_save:Landroid/widget/Button;

    iget-object v3, p0, Lcom/perm/kate/NewAlbumActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 37
    const v2, 0x7f0e019b

    invoke-virtual {p0, v2}, Lcom/perm/kate/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/perm/kate/NewAlbumActivity;->btn_status_cancel:Landroid/widget/Button;

    .line 38
    iget-object v2, p0, Lcom/perm/kate/NewAlbumActivity;->btn_status_cancel:Landroid/widget/Button;

    iget-object v3, p0, Lcom/perm/kate/NewAlbumActivity;->cancel_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    invoke-virtual {p0}, Lcom/perm/kate/NewAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.perm.kate.aid"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/perm/kate/NewAlbumActivity;->aid:J

    .line 40
    invoke-virtual {p0}, Lcom/perm/kate/NewAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.perm.kate.oid"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 41
    .local v0, "oid":J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 42
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/NewAlbumActivity;->gid:Ljava/lang/Long;

    .line 43
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/NewAlbumActivity;->gid:Ljava/lang/Long;

    if-nez v2, :cond_1

    .line 44
    invoke-virtual {p0, v7}, Lcom/perm/kate/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/NewAlbumActivity;->itemClickListener1:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    invoke-virtual {p0, v8}, Lcom/perm/kate/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/NewAlbumActivity;->itemClickListener2:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/perm/kate/NewAlbumActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.perm.kate.edit_mode"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/perm/kate/NewAlbumActivity;->edit_mode:Z

    .line 51
    iget-boolean v2, p0, Lcom/perm/kate/NewAlbumActivity;->edit_mode:Z

    if-eqz v2, :cond_2

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/NewAlbumActivity;->populateFields()V

    .line 57
    :goto_1
    iget-boolean v2, p0, Lcom/perm/kate/NewAlbumActivity;->edit_mode:Z

    if-eqz v2, :cond_3

    const v2, 0x7f070467

    :goto_2
    invoke-virtual {p0, v2}, Lcom/perm/kate/NewAlbumActivity;->setHeaderTitle(I)V

    .line 62
    new-instance v2, Lcom/perm/kate/NewAlbumActivity$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/NewAlbumActivity$1;-><init>(Lcom/perm/kate/NewAlbumActivity;)V

    .line 79
    invoke-virtual {v2}, Lcom/perm/kate/NewAlbumActivity$1;->start()V

    .line 80
    return-void

    .line 47
    :cond_1
    invoke-virtual {p0, v7}, Lcom/perm/kate/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 48
    invoke-virtual {p0, v8}, Lcom/perm/kate/NewAlbumActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/NewAlbumActivity;->displayPrivacy1()V

    .line 55
    invoke-direct {p0}, Lcom/perm/kate/NewAlbumActivity;->displayPrivacy2()V

    goto :goto_1

    .line 57
    :cond_3
    const v2, 0x7f070478

    goto :goto_2
.end method
