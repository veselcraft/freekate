.class public Lcom/perm/kate/MembersActivity;
.super Lcom/perm/kate/BaseActivity;
.source "MembersActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/MembersActivity$MembersPagerAdapter;
    }
.end annotation


# instance fields
.field private enable_me:Ljava/lang/Boolean;

.field private forward_messages:[J

.field private mPager:Landroidx/viewpager/widget/ViewPager;

.field private new_message:Z

.field private only_members:Z

.field private pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

.field private photo_attachment:Ljava/lang/String;

.field sendClick:Landroid/view/View$OnClickListener;

.field private shared_photo:Landroid/net/Uri;

.field private shared_text:Ljava/lang/String;

.field private tabs:Lcom/perm/kate/tabs/TabsInfo;

.field private uid_str:Ljava/lang/String;

.field uris_shared:Ljava/util/ArrayList;


# direct methods
.method public static synthetic $r8$lambda$AXNeULfjzHf14SyujywVauCYAto(Lcom/perm/kate/MembersActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/MembersActivity;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/perm/kate/MembersActivity;->only_members:Z

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/perm/kate/MembersActivity;->new_message:Z

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/perm/kate/MembersActivity;->shared_photo:Landroid/net/Uri;

    .line 46
    iput-object v0, p0, Lcom/perm/kate/MembersActivity;->shared_text:Ljava/lang/String;

    .line 49
    new-instance v0, Lcom/perm/kate/tabs/TabsInfo;

    invoke-direct {v0}, Lcom/perm/kate/tabs/TabsInfo;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MembersActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    .line 175
    new-instance v0, Lcom/perm/kate/MembersActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/MembersActivity$1;-><init>(Lcom/perm/kate/MembersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/MembersActivity;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    .line 320
    new-instance v0, Lcom/perm/kate/MembersActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/perm/kate/MembersActivity$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/MembersActivity;)V

    iput-object v0, p0, Lcom/perm/kate/MembersActivity;->sendClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/MembersActivity;)Lcom/perm/kate/tabs/TabsInfo;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/perm/kate/MembersActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/MembersActivity;)Lcom/perm/kate/BaseFragment;
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/MembersActivity;->makeFriendsFragment()Lcom/perm/kate/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/MembersActivity;)Lcom/perm/kate/BaseFragment;
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/perm/kate/MembersActivity;->makeMessagesFragment()Lcom/perm/kate/BaseFragment;

    move-result-object p0

    return-object p0
.end method

.method private addAttachmentsToBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 264
    iget-object v0, p0, Lcom/perm/kate/MembersActivity;->forward_messages:[J

    if-eqz v0, :cond_0

    const-string v1, "com.perm.kate.forward_messages"

    .line 265
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/MembersActivity;->photo_attachment:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/perm/kate/MembersActivity;->photo_attachment:Ljava/lang/String;

    const-string v1, "com.perm.kate.photo_attachment"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MembersActivity;->shared_photo:Landroid/net/Uri;

    const-string v1, "shared_photo"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 269
    iget-object v0, p0, Lcom/perm/kate/MembersActivity;->uris_shared:Ljava/util/ArrayList;

    const-string v1, "shared_photos"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 270
    iget-object v0, p0, Lcom/perm/kate/MembersActivity;->shared_text:Ljava/lang/String;

    const-string v1, "shared_text"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getSharedContent()V
    .locals 8

    .line 118
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "android.intent.extra.STREAM"

    if-eqz v1, :cond_5

    :try_start_1
    const-string v5, "android.intent.action.SEND"

    .line 120
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 121
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v5

    .line 122
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v5, :cond_2

    const-string v7, "text/"

    .line 123
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    const-string v7, "image/"

    .line 128
    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 130
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 131
    new-instance v5, Ljava/lang/Exception;

    const-string v7, ""

    invoke-direct {v5, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v5, v7}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 132
    :cond_1
    invoke-virtual {v6, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    iput-object v5, p0, Lcom/perm/kate/MembersActivity;->shared_photo:Landroid/net/Uri;

    .line 133
    iput-boolean v3, p0, Lcom/perm/kate/MembersActivity;->new_message:Z

    .line 134
    iput-boolean v2, p0, Lcom/perm/kate/MembersActivity;->only_members:Z

    goto :goto_2

    :cond_2
    :goto_0
    const/4 v5, 0x0

    if-eqz v6, :cond_3

    const-string v7, "android.intent.extra.TEXT"

    .line 124
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    :cond_3
    move-object v6, v5

    :goto_1
    if-eqz v6, :cond_4

    .line 125
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    iput-object v5, p0, Lcom/perm/kate/MembersActivity;->shared_text:Ljava/lang/String;

    .line 126
    iput-boolean v3, p0, Lcom/perm/kate/MembersActivity;->new_message:Z

    .line 127
    iput-boolean v2, p0, Lcom/perm/kate/MembersActivity;->only_members:Z

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    const-string v5, "android.intent.action.SEND_MULTIPLE"

    .line 137
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 138
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/MembersActivity;->uris_shared:Ljava/util/ArrayList;

    .line 139
    iput-boolean v3, p0, Lcom/perm/kate/MembersActivity;->new_message:Z

    .line 140
    iput-boolean v2, p0, Lcom/perm/kate/MembersActivity;->only_members:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 144
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 6

    .line 321
    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->getAll()Ljava/util/HashSet;

    move-result-object v5

    .line 322
    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result p1

    if-nez p1, :cond_0

    const p1, 0x7f0f054e

    .line 323
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return-void

    :cond_0
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    move-object v0, p0

    .line 326
    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/MembersActivity;->showCompose(JJLjava/util/Set;)V

    return-void
.end method

.method private makeFriendsFragment()Lcom/perm/kate/BaseFragment;
    .locals 4

    .line 183
    new-instance v0, Lcom/perm/kate/FriendsFragment;

    invoke-direct {v0}, Lcom/perm/kate/FriendsFragment;-><init>()V

    .line 184
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 185
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->uid_str:Ljava/lang/String;

    const-string v3, "com.perm.kate.user_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "com.perm.kate.select_user"

    const/4 v3, 0x1

    .line 186
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    iget-boolean v2, p0, Lcom/perm/kate/MembersActivity;->new_message:Z

    const-string v3, "com.perm.kate.new_message"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 188
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->enable_me:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v3, "com.perm.kate.enable_me"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 189
    invoke-direct {p0, v1}, Lcom/perm/kate/MembersActivity;->addAttachmentsToBundle(Landroid/os/Bundle;)V

    .line 190
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private makeMessagesFragment()Lcom/perm/kate/BaseFragment;
    .locals 4

    .line 195
    new-instance v0, Lcom/perm/kate/MessagesFragment;

    invoke-direct {v0}, Lcom/perm/kate/MessagesFragment;-><init>()V

    .line 196
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 197
    iget-boolean v2, p0, Lcom/perm/kate/MembersActivity;->new_message:Z

    const-string v3, "com.perm.kate.new_message"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 198
    invoke-direct {p0, v1}, Lcom/perm/kate/MembersActivity;->addAttachmentsToBundle(Landroid/os/Bundle;)V

    .line 199
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private showCompose(JJLjava/util/Set;)V
    .locals 4

    if-eqz p5, :cond_0

    .line 299
    invoke-interface {p5}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 300
    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    .line 301
    invoke-static {p1, p2}, Lcom/perm/kate/ThreadIdHelper;->getUserId(J)J

    move-result-wide p3

    .line 302
    invoke-static {p1, p2}, Lcom/perm/kate/ThreadIdHelper;->getChatId(J)J

    move-result-wide p1

    const/4 p5, 0x0

    move-wide v2, p1

    move-wide p1, p3

    move-wide p3, v2

    .line 306
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/NewMessageActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 307
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p5, :cond_1

    .line 309
    check-cast p5, Ljava/io/Serializable;

    const-string p1, "com.perm.kate.user_ids"

    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string p5, "com.perm.kate.chat_id"

    .line 311
    invoke-virtual {v0, p5, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 312
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.perm.kate.user_id"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    :goto_0
    invoke-direct {p0, v1}, Lcom/perm/kate/MembersActivity;->addAttachmentsToBundle(Landroid/os/Bundle;)V

    .line 315
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 316
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public displayRefreshState()V
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->getRefreshState()Z

    move-result v0

    .line 161
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/perm/kate/MembersActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 241
    iget-object v1, p0, Lcom/perm/kate/MembersActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 242
    iget-object v0, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0, p1}, Lcom/perm/kate/BaseFragment;->fillMenuItems(Landroid/view/Menu;)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method getAll()Ljava/util/HashSet;
    .locals 6

    .line 340
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 341
    iget-object v1, p0, Lcom/perm/kate/MembersActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v1, :cond_0

    .line 342
    iget-object v1, p0, Lcom/perm/kate/MembersActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, v2}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    check-cast v1, Lcom/perm/kate/MessagesFragment;

    iget-object v1, v1, Lcom/perm/kate/MessagesFragment;->selectedDialogs:Ljava/util/HashSet;

    .line 343
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 345
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/MembersActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v1, :cond_1

    .line 346
    iget-object v1, p0, Lcom/perm/kate/MembersActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, v2}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    check-cast v1, Lcom/perm/kate/FriendsFragment;

    iget-object v1, v1, Lcom/perm/kate/FriendsFragment;->checked:Ljava/util/HashMap;

    .line 347
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-wide/16 v3, 0x0

    .line 348
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getRefreshState()Z
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/perm/kate/MembersActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 167
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 168
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v2, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 169
    iget-object v0, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_1

    .line 170
    iget-boolean v0, v0, Lcom/perm/kate/BaseFragment;->refreshState:Z

    return v0

    :cond_1
    return v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 284
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const-string p2, "user_id"

    const-wide/16 v0, 0x0

    .line 287
    invoke-virtual {p3, p2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string p2, "chat_id"

    .line 288
    invoke-virtual {p3, p2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const/4 v7, 0x0

    move-object v2, p0

    .line 289
    invoke-direct/range {v2 .. v7}, Lcom/perm/kate/MembersActivity;->showCompose(JJLjava/util/Set;)V

    :cond_0
    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    .line 293
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 54
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez p1, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/MembersActivity;->uid_str:Ljava/lang/String;

    const p1, 0x7f0c00b1

    .line 61
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0501

    .line 62
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 63
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 64
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupSearchButton()V

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    const-string v1, "com.perm.kate.only_members"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/MembersActivity;->only_members:Z

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.new_message"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/MembersActivity;->new_message:Z

    .line 69
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.forward_messages"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/MembersActivity;->forward_messages:[J

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.photo_attachment"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/MembersActivity;->photo_attachment:Ljava/lang/String;

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.put_to_photo"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 72
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.perm.kate.enable_me"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/MembersActivity;->enable_me:Ljava/lang/Boolean;

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "shared_text"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/MembersActivity;->shared_text:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lcom/perm/kate/MembersActivity;->getSharedContent()V

    const v0, 0x7f090263

    .line 79
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/PagerTitleStrip;

    .line 80
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const v3, 0x7f0f0230

    const-string v4, "members"

    invoke-virtual {v2, v4, v3}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;I)V

    .line 81
    iget-boolean v2, p0, Lcom/perm/kate/MembersActivity;->only_members:Z

    if-nez v2, :cond_3

    .line 83
    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    const v3, 0x7f0f00c3

    const-string v4, "dialogs"

    invoke-virtual {v2, v4, v3}, Lcom/perm/kate/tabs/TabsInfo;->add(Ljava/lang/String;I)V

    .line 84
    sget v2, Lcom/perm/kate/BaseActivity;->Theme:I

    const v3, 0x7f1000cf

    if-eq v2, v3, :cond_2

    const v3, 0x7f1000d7

    if-eq v2, v3, :cond_2

    const v3, 0x7f1000db

    if-eq v2, v3, :cond_2

    const v3, 0x7f1000d9

    if-ne v2, v3, :cond_1

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600e1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/PagerTitleStrip;->setTextColor(I)V

    goto :goto_1

    .line 86
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/PagerTitleStrip;->setTextColor(I)V

    :goto_1
    const/16 v2, 0x10

    .line 89
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/PagerTitleStrip;->setGravity(I)V

    .line 90
    sget-boolean v2, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz v2, :cond_4

    sget v2, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-static {v2}, Lcom/perm/kate/theme/ThemeColorsHelper;->isMaterial(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 91
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBgColor()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_2

    :cond_3
    const/16 v2, 0x8

    .line 93
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const v0, 0x7f09017a

    .line 94
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f09017b

    .line 95
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :cond_4
    :goto_2
    new-instance v0, Lcom/perm/kate/MembersActivity$MembersPagerAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/perm/kate/MembersActivity$MembersPagerAdapter;-><init>(Lcom/perm/kate/MembersActivity;Landroidx/fragment/app/FragmentManager;)V

    const v2, 0x7f090260

    .line 99
    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    iput-object v2, p0, Lcom/perm/kate/MembersActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 100
    invoke-virtual {v2, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 101
    iget-object v0, p0, Lcom/perm/kate/MembersActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v2, p0, Lcom/perm/kate/MembersActivity;->pageChangeListener:Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 103
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_5

    const p1, 0x7f0f0238

    .line 104
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 107
    :cond_5
    iget-boolean p1, p0, Lcom/perm/kate/MembersActivity;->new_message:Z

    if-eqz p1, :cond_7

    const p1, 0x7f090138

    .line 108
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 109
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    sget-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz v0, :cond_6

    .line 111
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getButtonBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    const p1, 0x7f0902c8

    .line 112
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/MembersActivity;->sendClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 251
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->showMenuButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/perm/kate/MembersActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 254
    iget-object v1, p0, Lcom/perm/kate/MembersActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 255
    iget-object v0, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 260
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 232
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 233
    invoke-virtual {p0, p1}, Lcom/perm/kate/MembersActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 234
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/perm/kate/MembersActivity;->mPager:Landroidx/viewpager/widget/ViewPager;

    if-nez v0, :cond_0

    return-void

    .line 152
    :cond_0
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    .line 153
    iget-object v1, p0, Lcom/perm/kate/MembersActivity;->tabs:Lcom/perm/kate/tabs/TabsInfo;

    invoke-virtual {v1, v0}, Lcom/perm/kate/tabs/TabsInfo;->get(I)Lcom/perm/kate/tabs/TabInfo;

    move-result-object v0

    .line 154
    iget-object v0, v0, Lcom/perm/kate/tabs/TabInfo;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_1

    .line 155
    invoke-virtual {v0}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    :cond_1
    return-void
.end method

.method protected onSearchButton()V
    .locals 3

    .line 275
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "search_dialogs"

    const/4 v2, 0x1

    .line 276
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 277
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method selected()Z
    .locals 2

    .line 331
    invoke-virtual {p0}, Lcom/perm/kate/MembersActivity;->getAll()Ljava/util/HashSet;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
