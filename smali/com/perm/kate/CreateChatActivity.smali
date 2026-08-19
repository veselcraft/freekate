.class public Lcom/perm/kate/CreateChatActivity;
.super Lcom/perm/kate/BaseActivity;
.source "CreateChatActivity.java"


# instance fields
.field private btn_create_chat:Landroid/widget/Button;

.field private callback:Lcom/perm/kate/session/Callback;

.field private chat_members:Ljava/util/ArrayList;

.field private chat_name:Ljava/lang/String;

.field private et_chat_name:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/perm/kate/CreateChatActivity;->chat_name:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/perm/kate/CreateChatActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/CreateChatActivity$3;-><init>(Lcom/perm/kate/CreateChatActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/CreateChatActivity;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/CreateChatActivity;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/perm/kate/CreateChatActivity;->createChat()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/CreateChatActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perm/kate/CreateChatActivity;->chat_members:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/CreateChatActivity;)Ljava/lang/String;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perm/kate/CreateChatActivity;->chat_name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/CreateChatActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/perm/kate/CreateChatActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/CreateChatActivity;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/perm/kate/CreateChatActivity;->getLocalChatName()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/CreateChatActivity;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/perm/kate/CreateChatActivity;->failedToastInUIThread()V

    return-void
.end method

.method private createChat()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/perm/kate/CreateChatActivity;->chat_members:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/CreateChatActivity;->et_chat_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 52
    iget-object v0, p0, Lcom/perm/kate/CreateChatActivity;->et_chat_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/CreateChatActivity;->chat_name:Ljava/lang/String;

    .line 53
    :cond_1
    new-instance v0, Lcom/perm/kate/CreateChatActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/CreateChatActivity$2;-><init>(Lcom/perm/kate/CreateChatActivity;)V

    .line 59
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_2
    :goto_0
    const v0, 0x7f0f0533

    .line 48
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private failedToastInUIThread()V
    .locals 1

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 94
    :cond_0
    new-instance v0, Lcom/perm/kate/CreateChatActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/CreateChatActivity$4;-><init>(Lcom/perm/kate/CreateChatActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getLocalChatName()V
    .locals 5

    const-string v0, ""

    .line 103
    iput-object v0, p0, Lcom/perm/kate/CreateChatActivity;->chat_name:Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/perm/kate/CreateChatActivity;->chat_members:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 105
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/perm/kate/CreateChatActivity;->chat_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/CreateChatActivity;->chat_name:Ljava/lang/String;

    goto :goto_0

    .line 109
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/CreateChatActivity;->chat_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 110
    iget-object v0, p0, Lcom/perm/kate/CreateChatActivity;->chat_name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/CreateChatActivity;->chat_name:Ljava/lang/String;

    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 27
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.chat_members"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/CreateChatActivity;->chat_members:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    iget-object v1, p0, Lcom/perm/kate/CreateChatActivity;->chat_members:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const p1, 0x7f0c004b

    .line 33
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f01de

    .line 34
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    const v0, 0x7f09011b

    .line 35
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/perm/kate/CreateChatActivity;->et_chat_name:Landroid/widget/EditText;

    const v0, 0x7f090090

    .line 36
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/perm/kate/CreateChatActivity;->btn_create_chat:Landroid/widget/Button;

    .line 37
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 38
    iget-object p1, p0, Lcom/perm/kate/CreateChatActivity;->btn_create_chat:Landroid/widget/Button;

    new-instance v0, Lcom/perm/kate/CreateChatActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/CreateChatActivity$1;-><init>(Lcom/perm/kate/CreateChatActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
