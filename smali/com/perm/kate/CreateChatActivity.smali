.class public Lcom/perm/kate/CreateChatActivity;
.super Lcom/perm/kate/BaseActivity;
.source "CreateChatActivity.java"


# instance fields
.field private btn_create_chat:Landroid/widget/Button;

.field private callback:Lcom/perm/kate/session/Callback;

.field private chat_members:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private chat_name:Ljava/lang/String;

.field private et_chat_name:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 23
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/CreateChatActivity;->chat_name:Ljava/lang/String;

    .line 62
    new-instance v0, Lcom/perm/kate/CreateChatActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/CreateChatActivity$3;-><init>(Lcom/perm/kate/CreateChatActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/CreateChatActivity;->callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/CreateChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/CreateChatActivity;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/perm/kate/CreateChatActivity;->createChat()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/CreateChatActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CreateChatActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/CreateChatActivity;->chat_members:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/CreateChatActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CreateChatActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/CreateChatActivity;->chat_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/CreateChatActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/CreateChatActivity;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/perm/kate/CreateChatActivity;->callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/CreateChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/CreateChatActivity;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/perm/kate/CreateChatActivity;->getLocalChatName()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/CreateChatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/CreateChatActivity;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/perm/kate/CreateChatActivity;->failedToastInUIThread()V

    return-void
.end method

.method private createChat()V
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/perm/kate/CreateChatActivity;->chat_members:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/CreateChatActivity;->chat_members:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 48
    :cond_0
    const v0, 0x7f0704ac

    invoke-virtual {p0, v0}, Lcom/perm/kate/CreateChatActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 60
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/CreateChatActivity;->et_chat_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_2

    .line 52
    iget-object v0, p0, Lcom/perm/kate/CreateChatActivity;->et_chat_name:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/CreateChatActivity;->chat_name:Ljava/lang/String;

    .line 53
    :cond_2
    new-instance v0, Lcom/perm/kate/CreateChatActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/CreateChatActivity$2;-><init>(Lcom/perm/kate/CreateChatActivity;)V

    .line 59
    invoke-virtual {v0}, Lcom/perm/kate/CreateChatActivity$2;->start()V

    goto :goto_0
.end method

.method private failedToastInUIThread()V
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/perm/kate/CreateChatActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 94
    :cond_0
    new-instance v0, Lcom/perm/kate/CreateChatActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/CreateChatActivity$4;-><init>(Lcom/perm/kate/CreateChatActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/CreateChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private getLocalChatName()V
    .locals 6

    .prologue
    .line 103
    const-string v2, ""

    iput-object v2, p0, Lcom/perm/kate/CreateChatActivity;->chat_name:Ljava/lang/String;

    .line 104
    iget-object v2, p0, Lcom/perm/kate/CreateChatActivity;->chat_members:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 105
    .local v0, "member_id":Ljava/lang/Long;
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    .line 106
    .local v1, "u":Lcom/perm/kate/api/User;
    if-eqz v1, :cond_0

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/perm/kate/CreateChatActivity;->chat_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/CreateChatActivity;->chat_name:Ljava/lang/String;

    goto :goto_0

    .line 109
    .end local v0    # "member_id":Ljava/lang/Long;
    .end local v1    # "u":Lcom/perm/kate/api/User;
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/CreateChatActivity;->chat_name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_2

    .line 110
    iget-object v2, p0, Lcom/perm/kate/CreateChatActivity;->chat_name:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/perm/kate/CreateChatActivity;->chat_name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/CreateChatActivity;->chat_name:Ljava/lang/String;

    .line 111
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v6, 0x7f07017e

    .line 27
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/perm/kate/CreateChatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "com.perm.kate.chat_members"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 29
    .local v1, "str_chat_members":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/perm/kate/CreateChatActivity;->chat_members:Ljava/util/ArrayList;

    .line 30
    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 32
    .local v0, "member_id":Ljava/lang/String;
    iget-object v3, p0, Lcom/perm/kate/CreateChatActivity;->chat_members:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    .end local v0    # "member_id":Ljava/lang/String;
    :cond_0
    const v2, 0x7f030046

    invoke-virtual {p0, v2}, Lcom/perm/kate/CreateChatActivity;->setContentView(I)V

    .line 34
    invoke-virtual {p0, v6}, Lcom/perm/kate/CreateChatActivity;->setHeaderTitle(I)V

    .line 35
    const v2, 0x7f0e00f1

    invoke-virtual {p0, v2}, Lcom/perm/kate/CreateChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/perm/kate/CreateChatActivity;->et_chat_name:Landroid/widget/EditText;

    .line 36
    const v2, 0x7f0e019f

    invoke-virtual {p0, v2}, Lcom/perm/kate/CreateChatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/perm/kate/CreateChatActivity;->btn_create_chat:Landroid/widget/Button;

    .line 37
    iget-object v2, p0, Lcom/perm/kate/CreateChatActivity;->btn_create_chat:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setText(I)V

    .line 38
    iget-object v2, p0, Lcom/perm/kate/CreateChatActivity;->btn_create_chat:Landroid/widget/Button;

    new-instance v3, Lcom/perm/kate/CreateChatActivity$1;

    invoke-direct {v3, p0}, Lcom/perm/kate/CreateChatActivity$1;-><init>(Lcom/perm/kate/CreateChatActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method
