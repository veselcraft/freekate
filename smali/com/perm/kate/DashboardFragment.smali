.class public Lcom/perm/kate/DashboardFragment;
.super Lcom/perm/kate/BaseFragment;
.source "DashboardFragment.java"


# static fields
.field public static redisplayCustomItems:Z = false


# instance fields
.field private Audio_ClickListener:Landroid/view/View$OnClickListener;

.field private Friends_ClickListener:Landroid/view/View$OnClickListener;

.field private Groups_ClickListener:Landroid/view/View$OnClickListener;

.field private News_ClickListener:Landroid/view/View$OnClickListener;

.field private Photos_ClickListener:Landroid/view/View$OnClickListener;

.field private Videos_ClickListener:Landroid/view/View$OnClickListener;

.field private Wall_ClickListener:Landroid/view/View$OnClickListener;

.field private bullet:Landroid/widget/ImageView;

.field buttonClick:Landroid/view/View$OnClickListener;

.field private callback_profile:Lcom/perm/kate/session/Callback;

.field private faves_ClickListener:Landroid/view/View$OnClickListener;

.field listener:Landroid/view/View$OnClickListener;

.field private mobile_online:Landroid/widget/ImageView;

.field private online_state_click_listener:Landroid/view/View$OnClickListener;

.field private profileClickListener:Landroid/view/View$OnClickListener;

.field private repliesClickListener:Landroid/view/View$OnClickListener;

.field private storiesClickListener:Landroid/view/View$OnClickListener;

.field uid:Ljava/lang/Long;

.field private uid_str:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 120
    new-instance v0, Lcom/perm/kate/DashboardFragment$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$2;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->online_state_click_listener:Landroid/view/View$OnClickListener;

    .line 211
    new-instance v0, Lcom/perm/kate/DashboardFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$5;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->News_ClickListener:Landroid/view/View$OnClickListener;

    .line 218
    new-instance v0, Lcom/perm/kate/DashboardFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$6;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->Friends_ClickListener:Landroid/view/View$OnClickListener;

    .line 225
    new-instance v0, Lcom/perm/kate/DashboardFragment$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$7;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->Photos_ClickListener:Landroid/view/View$OnClickListener;

    .line 232
    new-instance v0, Lcom/perm/kate/DashboardFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$8;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->Videos_ClickListener:Landroid/view/View$OnClickListener;

    .line 239
    new-instance v0, Lcom/perm/kate/DashboardFragment$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$9;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->Wall_ClickListener:Landroid/view/View$OnClickListener;

    .line 246
    new-instance v0, Lcom/perm/kate/DashboardFragment$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$10;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->Audio_ClickListener:Landroid/view/View$OnClickListener;

    .line 262
    new-instance v0, Lcom/perm/kate/DashboardFragment$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$11;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->Groups_ClickListener:Landroid/view/View$OnClickListener;

    .line 269
    new-instance v0, Lcom/perm/kate/DashboardFragment$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$12;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->profileClickListener:Landroid/view/View$OnClickListener;

    .line 276
    new-instance v0, Lcom/perm/kate/DashboardFragment$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$13;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->repliesClickListener:Landroid/view/View$OnClickListener;

    .line 283
    new-instance v0, Lcom/perm/kate/DashboardFragment$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$14;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->storiesClickListener:Landroid/view/View$OnClickListener;

    .line 338
    new-instance v0, Lcom/perm/kate/DashboardFragment$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$15;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->faves_ClickListener:Landroid/view/View$OnClickListener;

    .line 381
    new-instance v0, Lcom/perm/kate/DashboardFragment$17;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/DashboardFragment$17;-><init>(Lcom/perm/kate/DashboardFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->callback_profile:Lcom/perm/kate/session/Callback;

    .line 434
    new-instance v0, Lcom/perm/kate/DashboardFragment$18;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$18;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->listener:Landroid/view/View$OnClickListener;

    .line 449
    new-instance v0, Lcom/perm/kate/DashboardFragment$19;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$19;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->buttonClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static ShowAlbumsAcivity(Landroid/app/Activity;Ljava/lang/Long;)V
    .locals 2

    .line 304
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 305
    const-class v1, Lcom/perm/kate/AlbumsActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.owner_id"

    .line 306
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 307
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static ShowAudioAcivity(Landroid/app/Activity;Ljava/lang/Long;)V
    .locals 2

    .line 325
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 326
    const-class v1, Lcom/perm/kate/AudioActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.owner_id"

    .line 327
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 328
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private ShowFriendsAcivity()V
    .locals 3

    .line 297
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 298
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/FriendsActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 299
    iget-object v1, p0, Lcom/perm/kate/DashboardFragment;->uid_str:Ljava/lang/String;

    const-string v2, "com.perm.kate.user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 300
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private ShowGroupsAcivity()V
    .locals 3

    .line 332
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 333
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/GroupsActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 334
    iget-object v1, p0, Lcom/perm/kate/DashboardFragment;->uid:Ljava/lang/Long;

    const-string v2, "com.perm.kate.user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 335
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static ShowVideosAcivity(Landroid/content/Context;Ljava/lang/Long;)V
    .locals 2

    .line 311
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.perm.kate.user_id"

    .line 312
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 313
    const-class p1, Lcom/perm/kate/VideoActivity2;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 314
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static ShowWallAcivity(Landroid/app/Activity;Ljava/lang/Long;)V
    .locals 3

    .line 318
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 319
    const-class v1, Lcom/perm/kate/WallActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 320
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/DashboardFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/DashboardFragment;->refreshOnlineStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/DashboardFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/DashboardFragment;->showOnlineSettingsDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/DashboardFragment;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/DashboardFragment;->updateOnlineStateButtonInUI(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/DashboardFragment;Z)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/perm/kate/DashboardFragment;->updateUserOnlineStatus(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/DashboardFragment;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/DashboardFragment;->updateOnlineStateButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/DashboardFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/DashboardFragment;->showNewsAcivity()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/DashboardFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/DashboardFragment;->ShowFriendsAcivity()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/DashboardFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/DashboardFragment;->ShowGroupsAcivity()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/DashboardFragment;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/perm/kate/DashboardFragment;->uid_str:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/DashboardFragment;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/DashboardFragment;->showFaves()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/DashboardFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/perm/kate/DashboardFragment;->callback_profile:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method private initProfileName(Landroid/view/View;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const v0, 0x7f0903c7

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 113
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/DashboardFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object p1, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    iget-object v0, v0, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/DashboardFragment;->updateOnlineStateButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private initUiFields(Landroid/view/View;)V
    .locals 3

    .line 84
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_news_tab"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f0901ea

    .line 86
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/DashboardFragment;->News_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v0, 0x7f0901e5

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/DashboardFragment;->Friends_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901ec

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/DashboardFragment;->Photos_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901f2

    .line 91
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/DashboardFragment;->Videos_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901f3

    .line 92
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/DashboardFragment;->Wall_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901df

    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/DashboardFragment;->Audio_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e3

    .line 95
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/DashboardFragment;->faves_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e7

    .line 96
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/DashboardFragment;->Groups_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901ee

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/DashboardFragment;->profileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901ef

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/DashboardFragment;->repliesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09030e

    .line 99
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/DashboardFragment;->storiesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e9

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/DashboardFragment;->profileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090086

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/perm/kate/DashboardFragment;->online_state_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09009a

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->bullet:Landroid/widget/ImageView;

    const v0, 0x7f090234

    .line 104
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->mobile_online:Landroid/widget/ImageView;

    .line 105
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v0

    if-nez v0, :cond_1

    const v0, 0x7f09030f

    .line 106
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 107
    :cond_1
    invoke-direct {p0, p1}, Lcom/perm/kate/DashboardFragment;->initProfileName(Landroid/view/View;)V

    return-void
.end method

.method static offlineAlert(Landroid/app/Activity;)V
    .locals 2

    .line 154
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0397

    .line 155
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f0f0398

    const/4 v1, 0x0

    .line 156
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 157
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 159
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private refreshOnlineStatus()V
    .locals 1

    .line 363
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 365
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 366
    new-instance v0, Lcom/perm/kate/DashboardFragment$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$16;-><init>(Lcom/perm/kate/DashboardFragment;)V

    .line 378
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private showCustomItems(Landroid/view/LayoutInflater;Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const v2, 0x7f0901bc

    .line 401
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 402
    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 403
    sget-object v3, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 404
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 406
    :cond_0
    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 407
    :goto_0
    sget-object v3, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/DashboardItem;

    const v7, 0x7f0c004e

    .line 408
    move-object v8, v1

    check-cast v8, Landroid/view/ViewGroup;

    move-object/from16 v9, p1

    invoke-virtual {v9, v7, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f090353

    .line 409
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v10, v6, Lcom/perm/kate/DashboardItem;->title:Ljava/lang/String;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 410
    invoke-virtual {v7, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 411
    iget-object v8, v0, Lcom/perm/kate/DashboardFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v8, 0x7f090191

    .line 412
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Landroid/widget/ImageView;

    .line 413
    iget-object v8, v6, Lcom/perm/kate/DashboardItem;->img:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 414
    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v10, 0x4043000000000000L    # 38.0

    .line 415
    invoke-static {v10, v11}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v13

    iput v13, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 416
    invoke-static {v10, v11}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v10

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const-wide/high16 v10, 0x4020000000000000L    # 8.0

    .line 417
    invoke-static {v10, v11}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v10

    const-wide/high16 v13, 0x403c000000000000L    # 28.0

    invoke-static {v13, v14}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v11

    invoke-virtual {v8, v10, v5, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 418
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v10

    iget-object v11, v6, Lcom/perm/kate/DashboardItem;->img:Ljava/lang/String;

    const/4 v13, 0x1

    const/16 v14, 0x5a

    .line 419
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v15

    const/16 v16, 0x1

    .line 418
    invoke-virtual/range {v10 .. v16}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    goto :goto_2

    :cond_1
    const v8, 0x7f0801e9

    .line 422
    invoke-virtual {v12, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    const v8, 0x7f09009b

    .line 423
    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 424
    iget v10, v6, Lcom/perm/kate/DashboardItem;->type:I

    const/16 v11, 0xc

    if-ne v10, v11, :cond_2

    .line 425
    invoke-virtual {v8, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 426
    iget-object v6, v0, Lcom/perm/kate/DashboardFragment;->buttonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 428
    :cond_2
    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    .line 430
    :goto_3
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_3
    return-void
.end method

.method private showFaves()V
    .locals 3

    .line 346
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 347
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/FavesActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showNewsAcivity()V
    .locals 3

    .line 291
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 292
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/NewsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 293
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showOnlineSettingsDialog()V
    .locals 5

    .line 128
    sget-object v0, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    invoke-virtual {v0}, Lcom/perm/kate/Online;->isEnabled()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 129
    new-instance v2, Lcom/perm/kate/DashboardFragment$3;

    invoke-direct {v2, p0}, Lcom/perm/kate/DashboardFragment$3;-><init>(Lcom/perm/kate/DashboardFragment;)V

    .line 144
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f03a7

    .line 145
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v4, 0x7f030026

    .line 146
    invoke-virtual {v3, v4, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f0f01c5

    const/4 v2, 0x0

    .line 147
    invoke-virtual {v3, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 148
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 149
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 150
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateOnlineStateButton()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/perm/kate/DashboardFragment;->uid:Ljava/lang/Long;

    if-nez v0, :cond_0

    return-void

    .line 170
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 173
    :cond_1
    iget-object v1, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    iget-object v0, v0, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-direct {p0, v1, v0}, Lcom/perm/kate/DashboardFragment;->updateOnlineStateButtonInUI(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private updateOnlineStateButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/DashboardFragment;->bullet:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 196
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :cond_1
    if-nez p2, :cond_2

    .line 198
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 199
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_3

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iget-object v0, p0, Lcom/perm/kate/DashboardFragment;->mobile_online:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_4

    const/16 v2, 0x8

    :cond_4
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 201
    iget-object p2, p0, Lcom/perm/kate/DashboardFragment;->bullet:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f080144

    goto :goto_1

    :cond_5
    const v0, 0x7f080143

    :goto_1
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 202
    iget-object p2, p0, Lcom/perm/kate/DashboardFragment;->mobile_online:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f08021a

    goto :goto_2

    :cond_6
    const v0, 0x7f080219

    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 203
    iget-object p2, p0, Lcom/perm/kate/DashboardFragment;->mobile_online:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const v1, 0x7f0f03a4

    const v2, 0x7f0f0396

    if-eqz v0, :cond_7

    const v0, 0x7f0f03a4

    goto :goto_3

    :cond_7
    const v0, 0x7f0f0396

    :goto_3
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 204
    iget-object p2, p0, Lcom/perm/kate/DashboardFragment;->bullet:Landroid/widget/ImageView;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    const v1, 0x7f0f0396

    :goto_4
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    .line 206
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_5
    return-void
.end method

.method private updateOnlineStateButtonInUI(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2

    .line 177
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 181
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/DashboardFragment$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/perm/kate/DashboardFragment$4;-><init>(Lcom/perm/kate/DashboardFragment;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateUserOnlineStatus(Z)V
    .locals 3

    .line 163
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/DashboardFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/perm/kate/db/DataHelper;->updateUserOnlineStatus(JZ)Z

    .line 164
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/DashboardFragment;->updateOnlineStateButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 43
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/perm/kate/DashboardFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$1;-><init>(Lcom/perm/kate/DashboardFragment;)V

    const-wide/16 v1, 0x7d0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c004f

    const/4 v0, 0x0

    .line 57
    :try_start_0
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 58
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p3

    const-string v0, "com.perm.kate.user_id"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/perm/kate/DashboardFragment;->uid_str:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p3, :cond_0

    return-object p2

    .line 65
    :cond_0
    :try_start_2
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    iput-object p3, p0, Lcom/perm/kate/DashboardFragment;->uid:Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    .line 67
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid_str="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/DashboardFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 68
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    :goto_0
    invoke-direct {p0, p2}, Lcom/perm/kate/DashboardFragment;->initUiFields(Landroid/view/View;)V

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/DashboardFragment;->showCustomItems(Landroid/view/LayoutInflater;Landroid/view/View;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_1

    :catchall_2
    move-exception p1

    const/4 p2, 0x0

    .line 75
    :goto_1
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 76
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    instance-of p1, p1, Ljava/lang/OutOfMemoryError;

    if-eqz p1, :cond_1

    .line 78
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    :cond_1
    :goto_2
    return-object p2
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 359
    invoke-direct {p0}, Lcom/perm/kate/DashboardFragment;->refreshOnlineStatus()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 353
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 354
    invoke-direct {p0}, Lcom/perm/kate/DashboardFragment;->updateOnlineStateButton()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 463
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStart()V

    .line 464
    sget-boolean v0, Lcom/perm/kate/DashboardFragment;->redisplayCustomItems:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 465
    sput-boolean v0, Lcom/perm/kate/DashboardFragment;->redisplayCustomItems:Z

    .line 466
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/DashboardFragment;->showCustomItems(Landroid/view/LayoutInflater;Landroid/view/View;)V

    :cond_0
    return-void
.end method
