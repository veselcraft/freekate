.class public Lcom/perm/kate/ChatInviteActivity;
.super Lcom/perm/kate/BaseActivity;
.source "ChatInviteActivity.java"


# instance fields
.field private join_callback:Lcom/perm/kate/session/Callback;

.field link:Ljava/lang/String;

.field listener:Landroid/view/View$OnClickListener;

.field private preview_callback:Lcom/perm/kate/session/Callback;


# direct methods
.method public static synthetic $r8$lambda$LdH6cUKucWU9Hth3NG8_MKUVd-A(Lcom/perm/kate/ChatInviteActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/ChatInviteActivity;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$R5cLSixxKSBs2MOhPmWaZIzHqOE(Lcom/perm/kate/ChatInviteActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/ChatInviteActivity;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eDIqt_E46pYB1iJvVj7Rd4gKT6o(Lcom/perm/kate/ChatInviteActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/ChatInviteActivity;->lambda$refreshInThread$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 39
    new-instance v0, Lcom/perm/kate/ChatInviteActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/ChatInviteActivity$1;-><init>(Lcom/perm/kate/ChatInviteActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ChatInviteActivity;->preview_callback:Lcom/perm/kate/session/Callback;

    .line 81
    new-instance v0, Lcom/perm/kate/ChatInviteActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/ChatInviteActivity$2;-><init>(Lcom/perm/kate/ChatInviteActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ChatInviteActivity;->join_callback:Lcom/perm/kate/session/Callback;

    .line 103
    new-instance v0, Lcom/perm/kate/ChatInviteActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/perm/kate/ChatInviteActivity$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/ChatInviteActivity;)V

    iput-object v0, p0, Lcom/perm/kate/ChatInviteActivity;->listener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/ChatInviteActivity;J)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/ChatInviteActivity;->openChat(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/ChatInviteActivity;Lcom/perm/kate/api/ChatPreview;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/perm/kate/ChatInviteActivity;->displayData(Lcom/perm/kate/api/ChatPreview;)V

    return-void
.end method

.method private displayData(Lcom/perm/kate/api/ChatPreview;)V
    .locals 8

    const v0, 0x7f09033a

    .line 64
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p1, Lcom/perm/kate/api/ChatPreview;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/perm/kate/ChatInviteActivity;->getChatAvas(Lcom/perm/kate/api/ChatPreview;)Ljava/util/ArrayList;

    move-result-object v3

    .line 67
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const p1, 0x7f09004e

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Landroid/widget/ImageView;

    invoke-static {}, Lcom/perm/kate/Helper;->getSquareStubId()I

    move-result v7

    const/16 v5, 0x50

    const/16 v6, 0x50

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/ImageLoader;->DisplayMultiImage(Ljava/util/ArrayList;Landroid/widget/ImageView;III)V

    return-void
.end method

.method private getChatAvas(Lcom/perm/kate/api/ChatPreview;)Ljava/util/ArrayList;
    .locals 3

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 72
    iget-object p1, p1, Lcom/perm/kate/api/ChatPreview;->profiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/User;

    .line 73
    iget-object v2, v1, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    iget-object v1, v1, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    :cond_1
    return-object v0
.end method

.method private synthetic lambda$new$1()V
    .locals 3

    .line 106
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/ChatInviteActivity;->link:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/ChatInviteActivity;->join_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, v1, v2, p0}, Lcom/perm/kate/session/Session;->messagesJoinChatByInviteLink(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 1

    const/4 p1, 0x1

    .line 104
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 105
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/perm/kate/ChatInviteActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/perm/kate/ChatInviteActivity$$ExternalSyntheticLambda1;-><init>(Lcom/perm/kate/ChatInviteActivity;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 108
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private synthetic lambda$refreshInThread$0()V
    .locals 3

    .line 34
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/ChatInviteActivity;->link:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/ChatInviteActivity;->preview_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, v1, v2, p0}, Lcom/perm/kate/session/Session;->messagesGetChatPreview(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method private openChat(J)V
    .locals 2

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    const-class v1, Lcom/perm/kate/MessageThreadActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.chat_id"

    .line 99
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private refreshInThread()V
    .locals 2

    const/4 v0, 0x1

    .line 32
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 33
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/perm/kate/ChatInviteActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/perm/kate/ChatInviteActivity$$ExternalSyntheticLambda2;-><init>(Lcom/perm/kate/ChatInviteActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 36
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c003d

    .line 22
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0077

    .line 23
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "link"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/ChatInviteActivity;->link:Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Lcom/perm/kate/ChatInviteActivity;->refreshInThread()V

    const p1, 0x7f09005d

    .line 27
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 28
    iget-object v0, p0, Lcom/perm/kate/ChatInviteActivity;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
