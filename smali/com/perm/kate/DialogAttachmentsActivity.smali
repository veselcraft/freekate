.class public Lcom/perm/kate/DialogAttachmentsActivity;
.super Lcom/perm/kate/BaseActivity;
.source "DialogAttachmentsActivity.java"


# instance fields
.field chat_id:J

.field private fragment:Lcom/perm/kate/DialogAttachmentsFragment;

.field message_id:J

.field message_uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    return-void
.end method

.method private getTitleText(ZZLjava/lang/String;)I
    .locals 6

    .line 66
    iget-wide v0, p0, Lcom/perm/kate/DialogAttachmentsActivity;->message_id:J

    const v2, 0x7f0f0231

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    return v2

    :cond_0
    if-eqz p1, :cond_1

    const p1, 0x7f0f012e

    return p1

    :cond_1
    if-eqz p2, :cond_2

    const p1, 0x7f0f04e6

    return p1

    .line 72
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    const p1, 0x7f0f00c2

    return p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    .line 34
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0060

    .line 35
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "chat_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/DialogAttachmentsActivity;->chat_id:J

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "user_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/DialogAttachmentsActivity;->message_uid:J

    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "message_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/perm/kate/DialogAttachmentsActivity;->message_id:J

    .line 39
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "important"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "thread_start"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v5, "date"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 43
    invoke-direct {p0, p1, v2, v3}, Lcom/perm/kate/DialogAttachmentsActivity;->getTitleText(ZZLjava/lang/String;)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v7

    const-string v8, "MessageThreadFragment"

    invoke-virtual {v7, v8}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/DialogAttachmentsFragment;

    iput-object v7, p0, Lcom/perm/kate/DialogAttachmentsActivity;->fragment:Lcom/perm/kate/DialogAttachmentsFragment;

    if-nez v7, :cond_0

    .line 48
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v6

    .line 49
    new-instance v7, Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-direct {v7}, Lcom/perm/kate/DialogAttachmentsFragment;-><init>()V

    iput-object v7, p0, Lcom/perm/kate/DialogAttachmentsActivity;->fragment:Lcom/perm/kate/DialogAttachmentsFragment;

    .line 50
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 51
    iget-wide v9, p0, Lcom/perm/kate/DialogAttachmentsActivity;->chat_id:J

    const-string v11, "com.perm.kate.chat_id"

    invoke-virtual {v7, v11, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 52
    iget-wide v9, p0, Lcom/perm/kate/DialogAttachmentsActivity;->message_uid:J

    const-string v11, "com.perm.kate.message_uid"

    invoke-virtual {v7, v11, v9, v10}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 53
    invoke-virtual {v7, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 54
    invoke-virtual {v7, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 55
    invoke-virtual {v7, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-wide v1, p0, Lcom/perm/kate/DialogAttachmentsActivity;->message_id:J

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 57
    iget-object p1, p0, Lcom/perm/kate/DialogAttachmentsActivity;->fragment:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {p1, v7}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const p1, 0x7f0900da

    .line 58
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsActivity;->fragment:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-virtual {v6, p1, v0, v8}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 59
    invoke-virtual {v6}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/perm/kate/DialogAttachmentsActivity;->fragment:Lcom/perm/kate/DialogAttachmentsFragment;

    .line 81
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    return-void
.end method
