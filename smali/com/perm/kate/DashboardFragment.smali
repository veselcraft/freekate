.class public Lcom/perm/kate/DashboardFragment;
.super Lcom/perm/kate/BaseFragment;
.source "DashboardFragment.java"


# static fields
.field public static redisplayCustomItems:Z


# instance fields
.field private Audio_ClickListener:Landroid/view/View$OnClickListener;

.field private Friends_ClickListener:Landroid/view/View$OnClickListener;

.field private Groups_ClickListener:Landroid/view/View$OnClickListener;

.field private News_ClickListener:Landroid/view/View$OnClickListener;

.field private Photos_ClickListener:Landroid/view/View$OnClickListener;

.field private Videos_ClickListener:Landroid/view/View$OnClickListener;

.field private Wall_ClickListener:Landroid/view/View$OnClickListener;

.field private audioCacheClickListener:Landroid/view/View$OnClickListener;

.field private btn_online_state:Landroid/view/View;

.field private bullet:Landroid/widget/ImageView;

.field buttonClick:Landroid/view/View$OnClickListener;

.field private callback_profile:Lcom/perm/kate/session/Callback;

.field private faves_ClickListener:Landroid/view/View$OnClickListener;

.field listener:Landroid/view/View$OnClickListener;

.field private mobile_online:Landroid/widget/ImageView;

.field private online_state_click_listener:Landroid/view/View$OnClickListener;

.field private profileClickListener:Landroid/view/View$OnClickListener;

.field private repliesClickListener:Landroid/view/View$OnClickListener;

.field uid:Ljava/lang/Long;

.field private uid_str:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/perm/kate/DashboardFragment;->redisplayCustomItems:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 115
    new-instance v0, Lcom/perm/kate/DashboardFragment$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$2;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->online_state_click_listener:Landroid/view/View$OnClickListener;

    .line 190
    new-instance v0, Lcom/perm/kate/DashboardFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$5;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->News_ClickListener:Landroid/view/View$OnClickListener;

    .line 197
    new-instance v0, Lcom/perm/kate/DashboardFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$6;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->Friends_ClickListener:Landroid/view/View$OnClickListener;

    .line 204
    new-instance v0, Lcom/perm/kate/DashboardFragment$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$7;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->Photos_ClickListener:Landroid/view/View$OnClickListener;

    .line 211
    new-instance v0, Lcom/perm/kate/DashboardFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$8;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->Videos_ClickListener:Landroid/view/View$OnClickListener;

    .line 218
    new-instance v0, Lcom/perm/kate/DashboardFragment$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$9;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->Wall_ClickListener:Landroid/view/View$OnClickListener;

    .line 225
    new-instance v0, Lcom/perm/kate/DashboardFragment$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$10;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->Audio_ClickListener:Landroid/view/View$OnClickListener;

    .line 232
    new-instance v0, Lcom/perm/kate/DashboardFragment$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$11;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->audioCacheClickListener:Landroid/view/View$OnClickListener;

    .line 239
    new-instance v0, Lcom/perm/kate/DashboardFragment$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$12;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->Groups_ClickListener:Landroid/view/View$OnClickListener;

    .line 246
    new-instance v0, Lcom/perm/kate/DashboardFragment$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$13;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->profileClickListener:Landroid/view/View$OnClickListener;

    .line 253
    new-instance v0, Lcom/perm/kate/DashboardFragment$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$14;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->repliesClickListener:Landroid/view/View$OnClickListener;

    .line 308
    new-instance v0, Lcom/perm/kate/DashboardFragment$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$15;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->faves_ClickListener:Landroid/view/View$OnClickListener;

    .line 351
    new-instance v0, Lcom/perm/kate/DashboardFragment$17;

    invoke-virtual {p0}, Lcom/perm/kate/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/DashboardFragment$17;-><init>(Lcom/perm/kate/DashboardFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->callback_profile:Lcom/perm/kate/session/Callback;

    .line 404
    new-instance v0, Lcom/perm/kate/DashboardFragment$18;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$18;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->listener:Landroid/view/View$OnClickListener;

    .line 419
    new-instance v0, Lcom/perm/kate/DashboardFragment$19;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$19;-><init>(Lcom/perm/kate/DashboardFragment;)V

    iput-object v0, p0, Lcom/perm/kate/DashboardFragment;->buttonClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public static ShowAlbumsAcivity(Landroid/app/Activity;Ljava/lang/Long;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uid"    # Ljava/lang/Long;

    .prologue
    .line 274
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 275
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/AlbumsActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 276
    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 277
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 278
    return-void
.end method

.method public static ShowAudioAcivity(Landroid/app/Activity;Ljava/lang/Long;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "owner_id"    # Ljava/lang/Long;

    .prologue
    .line 295
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 296
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/AudioActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 297
    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 299
    return-void
.end method

.method private ShowFriendsAcivity()V
    .locals 3

    .prologue
    .line 267
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 268
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/FriendsActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 269
    const-string v1, "com.perm.kate.user_id"

    iget-object v2, p0, Lcom/perm/kate/DashboardFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    invoke-virtual {p0, v0}, Lcom/perm/kate/DashboardFragment;->startActivity(Landroid/content/Intent;)V

    .line 271
    return-void
.end method

.method private ShowGroupsAcivity()V
    .locals 3

    .prologue
    .line 302
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 303
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/GroupsActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 304
    const-string v1, "com.perm.kate.user_id"

    iget-object v2, p0, Lcom/perm/kate/DashboardFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 305
    invoke-virtual {p0, v0}, Lcom/perm/kate/DashboardFragment;->startActivity(Landroid/content/Intent;)V

    .line 306
    return-void
.end method

.method public static ShowVideosAcivity(Landroid/content/Context;Ljava/lang/Long;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "owner_id"    # Ljava/lang/Long;

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 282
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 283
    const-class v1, Lcom/perm/kate/VideoActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 284
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 285
    return-void
.end method

.method public static ShowWallAcivity(Landroid/app/Activity;Ljava/lang/Long;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 288
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 289
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/WallActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 290
    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 292
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/DashboardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/DashboardFragment;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/perm/kate/DashboardFragment;->refreshOnlineStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/DashboardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/DashboardFragment;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/perm/kate/DashboardFragment;->showOnlineSettingsDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/DashboardFragment;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/DashboardFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/DashboardFragment;->updateOnlineStateButtonInUI(ZZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/DashboardFragment;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/DashboardFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/perm/kate/DashboardFragment;->updateUserOnlineStatus(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/DashboardFragment;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/DashboardFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/DashboardFragment;->updateOnlineStateButton(ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/DashboardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/DashboardFragment;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/perm/kate/DashboardFragment;->showNewsAcivity()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/DashboardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/DashboardFragment;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/perm/kate/DashboardFragment;->ShowFriendsAcivity()V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/DashboardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/DashboardFragment;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/perm/kate/DashboardFragment;->ShowGroupsAcivity()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/DashboardFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DashboardFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/perm/kate/DashboardFragment;->uid_str:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/perm/kate/DashboardFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/DashboardFragment;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/perm/kate/DashboardFragment;->showFaves()V

    return-void
.end method

.method static synthetic access$900(Lcom/perm/kate/DashboardFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/DashboardFragment;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/perm/kate/DashboardFragment;->callback_profile:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method private initProfileName(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 107
    const v2, 0x7f0e00fa

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    .local v0, "tv_profile_name":Landroid/widget/TextView;
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/DashboardFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v1

    .line 109
    .local v1, "u":Lcom/perm/kate/api/User;
    if-nez v1, :cond_0

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v2, v1, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, v1, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/perm/kate/DashboardFragment;->updateOnlineStateButton(ZZ)V

    goto :goto_0
.end method

.method private initUiFields(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const v4, 0x7f0e00fc

    .line 83
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "key_news_tab"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 84
    .local v0, "news_enabled":Z
    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/DashboardFragment;->News_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 88
    :cond_0
    const v1, 0x7f0e00fd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/DashboardFragment;->Friends_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const v1, 0x7f0e0100

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/DashboardFragment;->Photos_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v1, 0x7f0e0103

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/DashboardFragment;->Videos_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    const v1, 0x7f0e00fe

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/DashboardFragment;->Wall_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    const v1, 0x7f0e0101

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/DashboardFragment;->Audio_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v1, 0x7f0e0102

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/DashboardFragment;->audioCacheClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    const v1, 0x7f0e0104

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/DashboardFragment;->faves_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    const v1, 0x7f0e00ff

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/DashboardFragment;->Groups_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v1, 0x7f0e0106

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/DashboardFragment;->profileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v1, 0x7f0e0105

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/DashboardFragment;->repliesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v1, 0x7f0e00f9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/DashboardFragment;->profileClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v1, 0x7f0e00fb

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/DashboardFragment;->btn_online_state:Landroid/view/View;

    .line 100
    iget-object v1, p0, Lcom/perm/kate/DashboardFragment;->btn_online_state:Landroid/view/View;

    iget-object v2, p0, Lcom/perm/kate/DashboardFragment;->online_state_click_listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v1, 0x7f0e00ee

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/perm/kate/DashboardFragment;->bullet:Landroid/widget/ImageView;

    .line 102
    const v1, 0x7f0e00ef

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/perm/kate/DashboardFragment;->mobile_online:Landroid/widget/ImageView;

    .line 103
    invoke-direct {p0, p1}, Lcom/perm/kate/DashboardFragment;->initProfileName(Landroid/view/View;)V

    .line 104
    return-void
.end method

.method private refreshOnlineStatus()V
    .locals 1

    .prologue
    .line 333
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    .line 349
    :goto_0
    return-void

    .line 335
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/DashboardFragment;->showProgressBar(Z)V

    .line 336
    new-instance v0, Lcom/perm/kate/DashboardFragment$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/DashboardFragment$16;-><init>(Lcom/perm/kate/DashboardFragment;)V

    .line 348
    invoke-virtual {v0}, Lcom/perm/kate/DashboardFragment$16;->start()V

    goto :goto_0
.end method

.method private showCustomItems(Landroid/view/LayoutInflater;Landroid/view/View;)V
    .locals 13
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 371
    const v0, 0x7f0e0108

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 372
    .local v8, "ll":Landroid/view/ViewGroup;
    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 373
    sget-object v0, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 374
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 377
    :goto_0
    sget-object v0, Lcom/perm/kate/DashboardItems;->items:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perm/kate/DashboardItem;

    .line 378
    .local v11, "x":Lcom/perm/kate/DashboardItem;
    const v1, 0x7f030049

    move-object v0, p2

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    .line 379
    .local v10, "v":Landroid/view/View;
    const v0, 0x7f0e0089

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, v11, Lcom/perm/kate/DashboardItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    invoke-virtual {v10, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 381
    iget-object v0, p0, Lcom/perm/kate/DashboardFragment;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 382
    const v0, 0x7f0e0088

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 383
    .local v2, "iv":Landroid/widget/ImageView;
    iget-object v0, v11, Lcom/perm/kate/DashboardItem;->img:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 385
    .local v9, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const-wide/high16 v0, 0x4043000000000000L    # 38.0

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 386
    const-wide/high16 v0, 0x4043000000000000L    # 38.0

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 387
    const-wide/high16 v0, 0x4020000000000000L    # 8.0

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    const/4 v1, 0x0

    const-wide/high16 v4, 0x403c000000000000L    # 28.0

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v9, v0, v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 388
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v1, v11, Lcom/perm/kate/DashboardItem;->img:Ljava/lang/String;

    const/4 v3, 0x1

    const/16 v4, 0x5a

    .line 389
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v5

    const/4 v6, 0x1

    .line 388
    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 393
    .end local v9    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :goto_2
    const v0, 0x7f0e008e

    invoke-virtual {v10, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 394
    .local v7, "button":Landroid/view/View;
    iget v0, v11, Lcom/perm/kate/DashboardItem;->type:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 395
    invoke-virtual {v7, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 396
    iget-object v0, p0, Lcom/perm/kate/DashboardFragment;->buttonClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    :goto_3
    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 376
    .end local v2    # "iv":Landroid/widget/ImageView;
    .end local v7    # "button":Landroid/view/View;
    .end local v10    # "v":Landroid/view/View;
    .end local v11    # "x":Lcom/perm/kate/DashboardItem;
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 392
    .restart local v2    # "iv":Landroid/widget/ImageView;
    .restart local v10    # "v":Landroid/view/View;
    .restart local v11    # "x":Lcom/perm/kate/DashboardItem;
    :cond_1
    const v0, 0x7f02012a

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 398
    .restart local v7    # "button":Landroid/view/View;
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 402
    .end local v2    # "iv":Landroid/widget/ImageView;
    .end local v7    # "button":Landroid/view/View;
    .end local v10    # "v":Landroid/view/View;
    .end local v11    # "x":Lcom/perm/kate/DashboardItem;
    :cond_3
    return-void
.end method

.method private showFaves()V
    .locals 3

    .prologue
    .line 316
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 317
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/FavesActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 318
    invoke-virtual {p0, v0}, Lcom/perm/kate/DashboardFragment;->startActivity(Landroid/content/Intent;)V

    .line 319
    return-void
.end method

.method private showNewsAcivity()V
    .locals 3

    .prologue
    .line 261
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 262
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/NewsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0, v0}, Lcom/perm/kate/DashboardFragment;->startActivity(Landroid/content/Intent;)V

    .line 264
    return-void
.end method

.method private showOnlineSettingsDialog()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 123
    sget-object v5, Lcom/perm/kate/KApplication;->online:Lcom/perm/kate/Online;

    invoke-virtual {v5}, Lcom/perm/kate/Online;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x0

    .line 124
    .local v1, "check_value_int":I
    :goto_0
    new-instance v3, Lcom/perm/kate/DashboardFragment$3;

    invoke-direct {v3, p0}, Lcom/perm/kate/DashboardFragment$3;-><init>(Lcom/perm/kate/DashboardFragment;)V

    .line 139
    .local v3, "single_listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 140
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v5, 0x7f070342

    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 141
    const v5, 0x7f0d0025

    invoke-virtual {v0, v5, v1, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 142
    const v5, 0x7f07015d

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 143
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 144
    .local v2, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v2, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 145
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 146
    return-void

    .end local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    .end local v1    # "check_value_int":I
    .end local v2    # "dialog":Landroid/support/v7/app/AlertDialog;
    .end local v3    # "single_listener":Landroid/content/DialogInterface$OnClickListener;
    :cond_0
    move v1, v4

    .line 123
    goto :goto_0
.end method

.method private updateOnlineStateButton()V
    .locals 4

    .prologue
    .line 154
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/DashboardFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    .line 155
    .local v0, "u":Lcom/perm/kate/api/User;
    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 157
    :cond_0
    iget-object v1, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, v0, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/perm/kate/DashboardFragment;->updateOnlineStateButtonInUI(ZZ)V

    goto :goto_0
.end method

.method private updateOnlineStateButton(ZZ)V
    .locals 7
    .param p1, "online"    # Z
    .param p2, "online_mobile"    # Z

    .prologue
    const v1, 0x7f07033f

    const v2, 0x7f070332

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 176
    :try_start_0
    iget-object v5, p0, Lcom/perm/kate/DashboardFragment;->bullet:Landroid/widget/ImageView;

    if-nez v5, :cond_0

    .line 188
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v6, p0, Lcom/perm/kate/DashboardFragment;->bullet:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    if-nez p2, :cond_1

    move v5, v4

    :goto_1
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 179
    iget-object v5, p0, Lcom/perm/kate/DashboardFragment;->mobile_online:Landroid/widget/ImageView;

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    :goto_2
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 180
    iget-object v4, p0, Lcom/perm/kate/DashboardFragment;->bullet:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    const v3, 0x7f0200b1

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 181
    iget-object v4, p0, Lcom/perm/kate/DashboardFragment;->mobile_online:Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    const v3, 0x7f02014a

    :goto_4
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    iget-object v4, p0, Lcom/perm/kate/DashboardFragment;->mobile_online:Landroid/widget/ImageView;

    if-eqz p1, :cond_5

    move v3, v1

    :goto_5
    invoke-virtual {p0, v3}, Lcom/perm/kate/DashboardFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v3, p0, Lcom/perm/kate/DashboardFragment;->bullet:Landroid/widget/ImageView;

    if-eqz p1, :cond_6

    :goto_6
    invoke-virtual {p0, v1}, Lcom/perm/kate/DashboardFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 186
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v0    # "th":Ljava/lang/Throwable;
    :cond_1
    move v5, v3

    .line 178
    goto :goto_1

    :cond_2
    move v3, v4

    .line 179
    goto :goto_2

    .line 180
    :cond_3
    const v3, 0x7f0200b0

    goto :goto_3

    .line 181
    :cond_4
    const v3, 0x7f020149

    goto :goto_4

    :cond_5
    move v3, v2

    .line 182
    goto :goto_5

    :cond_6
    move v1, v2

    .line 183
    goto :goto_6
.end method

.method private updateOnlineStateButtonInUI(ZZ)V
    .locals 2
    .param p1, "online"    # Z
    .param p2, "online_mobile"    # Z

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/perm/kate/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/perm/kate/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/DashboardFragment$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/perm/kate/DashboardFragment$4;-><init>(Lcom/perm/kate/DashboardFragment;ZZ)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updateUserOnlineStatus(Z)V
    .locals 4
    .param p1, "online_status"    # Z

    .prologue
    .line 149
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/DashboardFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1}, Lcom/perm/kate/db/DataHelper;->updateUserOnlineStatus(JZ)Z

    .line 150
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/DashboardFragment;->updateOnlineStateButton(ZZ)V

    .line 151
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/perm/kate/DashboardFragment$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/DashboardFragment$1;-><init>(Lcom/perm/kate/DashboardFragment;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    const/4 v1, 0x0

    .line 56
    .local v1, "view":Landroid/view/View;
    const v3, 0x7f03004a

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 57
    invoke-virtual {p0}, Lcom/perm/kate/DashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.perm.kate.user_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/DashboardFragment;->uid_str:Ljava/lang/String;

    .line 60
    iget-object v3, p0, Lcom/perm/kate/DashboardFragment;->uid_str:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_0

    move-object v2, v1

    .line 79
    .end local v1    # "view":Landroid/view/View;
    .local v2, "view":Landroid/view/View;
    :goto_0
    return-object v2

    .line 64
    .end local v2    # "view":Landroid/view/View;
    .restart local v1    # "view":Landroid/view/View;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/perm/kate/DashboardFragment;->uid_str:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/DashboardFragment;->uid:Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    :goto_1
    :try_start_2
    invoke-direct {p0, v1}, Lcom/perm/kate/DashboardFragment;->initUiFields(Landroid/view/View;)V

    .line 71
    invoke-direct {p0, p1, v1}, Lcom/perm/kate/DashboardFragment;->showCustomItems(Landroid/view/LayoutInflater;Landroid/view/View;)V

    :cond_1
    :goto_2
    move-object v2, v1

    .line 79
    .end local v1    # "view":Landroid/view/View;
    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0

    .line 65
    .end local v2    # "view":Landroid/view/View;
    .restart local v1    # "view":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 66
    .local v0, "th":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uid_str="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/DashboardFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 73
    .end local v0    # "th":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 74
    .restart local v0    # "th":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 75
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    instance-of v3, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v3, :cond_1

    .line 77
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    goto :goto_2
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 329
    invoke-direct {p0}, Lcom/perm/kate/DashboardFragment;->refreshOnlineStatus()V

    .line 330
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 323
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onResume()V

    .line 324
    invoke-direct {p0}, Lcom/perm/kate/DashboardFragment;->updateOnlineStateButton()V

    .line 325
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 433
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStart()V

    .line 434
    sget-boolean v0, Lcom/perm/kate/DashboardFragment;->redisplayCustomItems:Z

    if-eqz v0, :cond_0

    .line 435
    const/4 v0, 0x0

    sput-boolean v0, Lcom/perm/kate/DashboardFragment;->redisplayCustomItems:Z

    .line 436
    invoke-virtual {p0}, Lcom/perm/kate/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/perm/kate/DashboardFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/DashboardFragment;->showCustomItems(Landroid/view/LayoutInflater;Landroid/view/View;)V

    .line 438
    :cond_0
    return-void
.end method
