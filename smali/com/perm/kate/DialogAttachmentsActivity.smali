.class public Lcom/perm/kate/DialogAttachmentsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "DialogAttachmentsActivity.java"


# instance fields
.field chat_id:J

.field private fragment:Lcom/perm/kate/DialogAttachmentsFragment;

.field private header_text:Landroid/widget/TextView;

.field message_id:J

.field message_uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    return-void
.end method

.method private getTitleText(ZZLjava/lang/String;)I
    .locals 6
    .param p1, "important"    # Z
    .param p2, "thread_start"    # Z
    .param p3, "date"    # Ljava/lang/String;

    .prologue
    const v0, 0x7f0701d5

    .line 66
    iget-wide v2, p0, Lcom/perm/kate/DialogAttachmentsActivity;->message_id:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v0

    .line 68
    :cond_1
    if-eqz p1, :cond_2

    .line 69
    const v0, 0x7f0700e3

    goto :goto_0

    .line 70
    :cond_2
    if-eqz p2, :cond_3

    .line 71
    const v0, 0x7f070456

    goto :goto_0

    .line 72
    :cond_3
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 74
    const v0, 0x7f07008b

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 34
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v6, 0x7f030057

    invoke-virtual {p0, v6}, Lcom/perm/kate/DialogAttachmentsActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "chat_id"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/perm/kate/DialogAttachmentsActivity;->chat_id:J

    .line 37
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "user_id"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/perm/kate/DialogAttachmentsActivity;->message_uid:J

    .line 38
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "message_id"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/perm/kate/DialogAttachmentsActivity;->message_id:J

    .line 39
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "important"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 41
    .local v4, "important":Z
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "thread_start"

    invoke-virtual {v6, v7, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 42
    .local v5, "thread_start":Z
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "date"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    .local v1, "date":Ljava/lang/String;
    invoke-direct {p0, v4, v5, v1}, Lcom/perm/kate/DialogAttachmentsActivity;->getTitleText(ZZLjava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/perm/kate/DialogAttachmentsActivity;->setHeaderTitle(I)V

    .line 44
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 46
    .local v2, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {p0}, Lcom/perm/kate/DialogAttachmentsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    const-string v7, "MessageThreadFragment"

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/DialogAttachmentsFragment;

    iput-object v6, p0, Lcom/perm/kate/DialogAttachmentsActivity;->fragment:Lcom/perm/kate/DialogAttachmentsFragment;

    .line 47
    iget-object v6, p0, Lcom/perm/kate/DialogAttachmentsActivity;->fragment:Lcom/perm/kate/DialogAttachmentsFragment;

    if-nez v6, :cond_0

    .line 48
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 49
    .local v3, "ft":Landroid/support/v4/app/FragmentTransaction;
    new-instance v6, Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-direct {v6}, Lcom/perm/kate/DialogAttachmentsFragment;-><init>()V

    iput-object v6, p0, Lcom/perm/kate/DialogAttachmentsActivity;->fragment:Lcom/perm/kate/DialogAttachmentsFragment;

    .line 50
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v0, "b":Landroid/os/Bundle;
    const-string v6, "com.perm.kate.chat_id"

    iget-wide v8, p0, Lcom/perm/kate/DialogAttachmentsActivity;->chat_id:J

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 52
    const-string v6, "com.perm.kate.message_uid"

    iget-wide v8, p0, Lcom/perm/kate/DialogAttachmentsActivity;->message_uid:J

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 53
    const-string v6, "important"

    invoke-virtual {v0, v6, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    const-string v6, "thread_start"

    invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    const-string v6, "date"

    invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v6, "message_id"

    iget-wide v8, p0, Lcom/perm/kate/DialogAttachmentsActivity;->message_id:J

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 57
    iget-object v6, p0, Lcom/perm/kate/DialogAttachmentsActivity;->fragment:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v6, v0}, Lcom/perm/kate/DialogAttachmentsFragment;->setArguments(Landroid/os/Bundle;)V

    .line 58
    const v6, 0x7f0e007e

    iget-object v7, p0, Lcom/perm/kate/DialogAttachmentsActivity;->fragment:Lcom/perm/kate/DialogAttachmentsFragment;

    const-string v8, "MessageThreadFragment"

    invoke-virtual {v3, v6, v7, v8}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 59
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 62
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v3    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_0
    const v6, 0x7f0e01f6

    invoke-virtual {p0, v6}, Lcom/perm/kate/DialogAttachmentsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/perm/kate/DialogAttachmentsActivity;->header_text:Landroid/widget/TextView;

    .line 63
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/perm/kate/DialogAttachmentsActivity;->fragment:Lcom/perm/kate/DialogAttachmentsFragment;

    .line 80
    iput-object v0, p0, Lcom/perm/kate/DialogAttachmentsActivity;->header_text:Landroid/widget/TextView;

    .line 81
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 82
    return-void
.end method
