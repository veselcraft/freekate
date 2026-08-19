.class public Lcom/perm/kate/ProfileLeftFragment;
.super Lcom/perm/kate/BaseFragment;
.source "ProfileLeftFragment.java"


# instance fields
.field private Audio_ClickListener:Landroid/view/View$OnClickListener;

.field private Friends_ClickListener:Landroid/view/View$OnClickListener;

.field private Groups_ClickListener:Landroid/view/View$OnClickListener;

.field private Notes_ClickListener:Landroid/view/View$OnClickListener;

.field private Photos_ClickListener:Landroid/view/View$OnClickListener;

.field private Videos_ClickListener:Landroid/view/View$OnClickListener;

.field private Wall_ClickListener:Landroid/view/View$OnClickListener;

.field private additional_info_ClickListener:Landroid/view/View$OnClickListener;

.field private callback_profile:Lcom/perm/kate/session/Callback;

.field private callback_wall_count:Lcom/perm/kate/session/Callback;

.field private docsClickListener:Landroid/view/View$OnClickListener;

.field private followersClickListener:Landroid/view/View$OnClickListener;

.field private giftsClickListener:Landroid/view/View$OnClickListener;

.field private infoClick:Landroid/view/View$OnClickListener;

.field private is_me:Z

.field listener:Lcom/perm/kate/ProfileActivityCallback;

.field private ll_followers_region:Landroid/widget/LinearLayout;

.field private ll_profile_additional_info:Landroid/widget/LinearLayout;

.field private ll_profile_audio_region:Landroid/widget/LinearLayout;

.field private ll_profile_friends_region:Landroid/widget/LinearLayout;

.field private ll_profile_photos_region:Landroid/widget/LinearLayout;

.field private ll_profile_videos_region:Landroid/widget/LinearLayout;

.field private ll_profile_wall_region:Landroid/widget/LinearLayout;

.field private ll_subscriptions_region:Landroid/widget/LinearLayout;

.field private ll_wall_count:Landroid/widget/LinearLayout;

.field private paneButtons:Ljava/util/ArrayList;

.field private subscribersClickListener:Landroid/view/View$OnClickListener;

.field private tv_albums_count:Landroid/widget/TextView;

.field private tv_audios_count:Landroid/widget/TextView;

.field private tv_followers_count:Landroid/widget/TextView;

.field private tv_friends_count:Landroid/widget/TextView;

.field private tv_gifts_count:Landroid/widget/TextView;

.field private tv_groups_count:Landroid/widget/TextView;

.field private tv_notes_count:Landroid/widget/TextView;

.field private tv_profile_info_user_name:Landroid/widget/TextView;

.field private tv_videos_count:Landroid/widget/TextView;

.field private tv_wall_count:Landroid/widget/TextView;

.field private u:Lcom/perm/kate/api/User;

.field uid:Ljava/lang/Long;

.field private uid_str:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    .line 124
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$3;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileLeftFragment$3;-><init>(Lcom/perm/kate/ProfileLeftFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->callback_profile:Lcom/perm/kate/session/Callback;

    .line 155
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$4;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileLeftFragment$4;-><init>(Lcom/perm/kate/ProfileLeftFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->callback_wall_count:Lcom/perm/kate/session/Callback;

    .line 371
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$6;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->Friends_ClickListener:Landroid/view/View$OnClickListener;

    .line 379
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$7;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->Photos_ClickListener:Landroid/view/View$OnClickListener;

    .line 387
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$8;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->Videos_ClickListener:Landroid/view/View$OnClickListener;

    .line 395
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$9;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->Wall_ClickListener:Landroid/view/View$OnClickListener;

    .line 403
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$10;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->infoClick:Landroid/view/View$OnClickListener;

    .line 411
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$11;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->Audio_ClickListener:Landroid/view/View$OnClickListener;

    .line 419
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$12;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->Groups_ClickListener:Landroid/view/View$OnClickListener;

    .line 427
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$13;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->Notes_ClickListener:Landroid/view/View$OnClickListener;

    .line 435
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$14;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->giftsClickListener:Landroid/view/View$OnClickListener;

    .line 443
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$15;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->docsClickListener:Landroid/view/View$OnClickListener;

    .line 451
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$16;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->subscribersClickListener:Landroid/view/View$OnClickListener;

    .line 459
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$17;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$17;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->followersClickListener:Landroid/view/View$OnClickListener;

    .line 467
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$18;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$18;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->additional_info_ClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/ProfileLeftFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/perm/kate/ProfileLeftFragment;->callback_profile:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/ProfileLeftFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/perm/kate/ProfileLeftFragment;->callback_wall_count:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/ProfileLeftFragment;)Lcom/perm/kate/api/User;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/perm/kate/ProfileLeftFragment;->u:Lcom/perm/kate/api/User;

    return-object p0
.end method

.method static synthetic access$202(Lcom/perm/kate/ProfileLeftFragment;Lcom/perm/kate/api/User;)Lcom/perm/kate/api/User;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/perm/kate/ProfileLeftFragment;->u:Lcom/perm/kate/api/User;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/ProfileLeftFragment;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/perm/kate/ProfileLeftFragment;->displayUserOnUiThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/ProfileLeftFragment;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/perm/kate/ProfileLeftFragment;->is_me:Z

    return p0
.end method

.method static synthetic access$500(Lcom/perm/kate/ProfileLeftFragment;[Ljava/lang/Integer;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileLeftFragment;->displayWallCountInUiThread([Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/ProfileLeftFragment;Lcom/perm/kate/api/User;Landroid/view/View;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/ProfileLeftFragment;->displayUser(Lcom/perm/kate/api/User;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/ProfileLeftFragment;Ljava/lang/Integer;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileLeftFragment;->displayWallCount(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/ProfileLeftFragment;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileLeftFragment;->displayNotesCount(I)V

    return-void
.end method

.method private displayCounters(Lcom/perm/kate/api/User;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 357
    iget v0, p1, Lcom/perm/kate/api/User;->friends_count:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 358
    iget-object v1, p1, Lcom/perm/kate/api/User;->online_friends_count:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/perm/kate/api/User;->online_friends_count:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 360
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_friends_count:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_albums_count:Landroid/widget/TextView;

    iget v1, p1, Lcom/perm/kate/api/User;->albums_count:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_audios_count:Landroid/widget/TextView;

    iget v1, p1, Lcom/perm/kate/api/User;->audios_count:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 363
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_videos_count:Landroid/widget/TextView;

    iget v1, p1, Lcom/perm/kate/api/User;->videos_count:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    iget v0, p1, Lcom/perm/kate/api/User;->notes_count:I

    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileLeftFragment;->displayNotesCount(I)V

    .line 365
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_groups_count:Landroid/widget/TextView;

    iget v1, p1, Lcom/perm/kate/api/User;->groups_count:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_followers_count:Landroid/widget/TextView;

    iget v1, p1, Lcom/perm/kate/api/User;->followers_count:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_gifts_count:Landroid/widget/TextView;

    iget v1, p1, Lcom/perm/kate/api/User;->gifts_count:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object p1, p1, Lcom/perm/kate/api/User;->posts_count:Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileLeftFragment;->displayWallCount(Ljava/lang/Integer;)V

    return-void
.end method

.method private displayNotesCount(I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 519
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_notes_count:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private displayUser(Lcom/perm/kate/api/User;Landroid/view/View;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 328
    :cond_0
    iget-object p2, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    if-nez p2, :cond_1

    return-void

    :cond_1
    if-nez p1, :cond_2

    return-void

    .line 335
    :cond_2
    iget-object p2, p1, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    const-string v0, " "

    if-eqz p2, :cond_3

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 336
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 338
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 339
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileLeftFragment;->displayCounters(Lcom/perm/kate/api/User;)V

    const/4 p1, 0x1

    .line 344
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileLeftFragment;->setVisibleFriendsRegion(Z)V

    .line 345
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileLeftFragment;->setVisiblePhotosRegion(Z)V

    .line 346
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileLeftFragment;->setVisibleVideosRegion(Z)V

    .line 347
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileLeftFragment;->setVisibleWallRegion(Z)V

    .line 348
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileLeftFragment;->setVisibleAudioRegion(Z)V

    return-void
.end method

.method private displayUserOnUiThread()V
    .locals 2

    .line 187
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 189
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/ProfileLeftFragment$5;

    invoke-direct {v1, p0}, Lcom/perm/kate/ProfileLeftFragment$5;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displayWallCount(Ljava/lang/Integer;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 511
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_wall_count:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_wall_count:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 514
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_wall_count:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private displayWallCountInUiThread([Ljava/lang/Integer;)V
    .locals 2

    .line 497
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 499
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/ProfileLeftFragment$19;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/ProfileLeftFragment$19;-><init>(Lcom/perm/kate/ProfileLeftFragment;[Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initUiFields(Landroid/view/View;)V
    .locals 10

    const v0, 0x7f0903c0

    .line 197
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    const v0, 0x7f0901e5

    .line 198
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_friends_region:Landroid/widget/LinearLayout;

    const v0, 0x7f0901ec

    .line 199
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_photos_region:Landroid/widget/LinearLayout;

    const v0, 0x7f0901f2

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_videos_region:Landroid/widget/LinearLayout;

    const v0, 0x7f0901f3

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_wall_region:Landroid/widget/LinearLayout;

    const v0, 0x7f0901df

    .line 202
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_audio_region:Landroid/widget/LinearLayout;

    const v0, 0x7f0901f8

    .line 203
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_subscriptions_region:Landroid/widget/LinearLayout;

    const v0, 0x7f0901d3

    .line 204
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_followers_region:Landroid/widget/LinearLayout;

    const v0, 0x7f0901dd

    .line 205
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_additional_info:Landroid/widget/LinearLayout;

    const v0, 0x7f0901fe

    .line 206
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_wall_count:Landroid/widget/LinearLayout;

    const v0, 0x7f0903ed

    .line 207
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_wall_count:Landroid/widget/TextView;

    const v0, 0x7f09036d

    .line 208
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_friends_count:Landroid/widget/TextView;

    const v0, 0x7f09034f

    .line 209
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_albums_count:Landroid/widget/TextView;

    const v0, 0x7f090357

    .line 210
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_audios_count:Landroid/widget/TextView;

    const v0, 0x7f0903ec

    .line 211
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_videos_count:Landroid/widget/TextView;

    const v0, 0x7f090392

    .line 212
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_notes_count:Landroid/widget/TextView;

    const v0, 0x7f090376

    .line 213
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_groups_count:Landroid/widget/TextView;

    const v0, 0x7f09036b

    .line 214
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_followers_count:Landroid/widget/TextView;

    const v0, 0x7f090372

    .line 215
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_gifts_count:Landroid/widget/TextView;

    .line 216
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_subscriptions_region:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->subscribersClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_followers_region:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->followersClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_friends_region:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->Friends_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_photos_region:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->Photos_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_videos_region:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->Videos_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_wall_region:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->Wall_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_audio_region:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->Audio_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_additional_info:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->additional_info_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e7

    .line 224
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->Groups_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f0901eb

    .line 226
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 227
    iget-object v2, p0, Lcom/perm/kate/ProfileLeftFragment;->Notes_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0901e6

    .line 228
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 229
    iget-object v3, p0, Lcom/perm/kate/ProfileLeftFragment;->giftsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f0901e0

    .line 232
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 233
    iget-boolean v4, p0, Lcom/perm/kate/ProfileLeftFragment;->is_me:Z

    if-eqz v4, :cond_0

    .line 234
    iget-object v4, p0, Lcom/perm/kate/ProfileLeftFragment;->docsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x8

    .line 236
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    const v5, 0x7f0900f8

    .line 237
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 240
    :goto_0
    sget-boolean v4, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz v4, :cond_1

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    .line 241
    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    const-wide/high16 v5, 0x4026000000000000L    # 11.0

    .line 242
    invoke-static {v5, v6}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v7

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 243
    invoke-static {v8, v9}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v8

    .line 244
    invoke-static {v5, v6}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    .line 245
    iget-object v6, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v9

    invoke-virtual {v9}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v6, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_wall_region:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v9

    invoke-virtual {v9}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 247
    iget-object v6, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_friends_region:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v9

    invoke-virtual {v9}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 248
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v6

    invoke-virtual {v6}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 249
    iget-object v6, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_photos_region:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v9

    invoke-virtual {v9}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object v6, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_audio_region:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v9

    invoke-virtual {v9}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v6, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_videos_region:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v9

    invoke-virtual {v9}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v6

    invoke-virtual {v6}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v6

    invoke-virtual {v6}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    iget-object v6, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_subscriptions_region:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v9

    invoke-virtual {v9}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    iget-object v6, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_followers_region:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v9

    invoke-virtual {v9}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    iget-object v6, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_additional_info:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v9

    invoke-virtual {v9}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    iget-object v6, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    invoke-virtual {v6, v4, v7, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 258
    iget-object v4, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v4, 0x7f0903d2

    .line 259
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v4, 0x7f0903b1

    .line 260
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 261
    iget-object v4, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_friends_count:Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v4, 0x7f0903b7

    .line 262
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 263
    iget-object v4, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_groups_count:Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v4, 0x7f0903ca

    .line 264
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 265
    iget-object v4, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_albums_count:Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v4, 0x7f0903a9

    .line 266
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 267
    iget-object v4, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_audios_count:Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v4, 0x7f0903d1

    .line 268
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 269
    iget-object v4, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_videos_count:Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v4, 0x7f0903af

    .line 270
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v4, 0x7f0903c8

    .line 271
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 272
    iget-object v4, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_notes_count:Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v4, 0x7f0903ce

    .line 273
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v4, 0x7f0903b0

    .line 274
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 275
    iget-object v4, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_followers_count:Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    const v4, 0x7f0903a8

    .line 276
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    const v4, 0x7f0901e8

    .line 280
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 281
    iget-object v4, p0, Lcom/perm/kate/ProfileLeftFragment;->infoClick:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v4, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    iget-object v4, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_wall_region:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v4, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_additional_info:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_photos_region:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_audio_region:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_videos_region:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_friends_region:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_subscriptions_region:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_followers_region:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 296
    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileLeftFragment;->setVisibleFriendsRegion(Z)V

    .line 297
    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileLeftFragment;->setVisiblePhotosRegion(Z)V

    .line 298
    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileLeftFragment;->setVisibleVideosRegion(Z)V

    .line 299
    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileLeftFragment;->setVisibleWallRegion(Z)V

    .line 300
    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileLeftFragment;->setVisibleAudioRegion(Z)V

    .line 302
    invoke-virtual {p0, p1}, Lcom/perm/kate/ProfileLeftFragment;->setActivePaneButton(Landroid/view/View;)V

    return-void
.end method

.method private setVisibleAudioRegion(Z)V
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_audio_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private setVisibleFriendsRegion(Z)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_friends_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private setVisiblePhotosRegion(Z)V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_photos_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private setVisibleVideosRegion(Z)V
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_videos_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private setVisibleWallRegion(Z)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_wall_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 482
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 483
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/ProfileActivityCallback;

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->listener:Lcom/perm/kate/ProfileActivityCallback;

    .line 484
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->callback_profile:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 86
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 87
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 88
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$1;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c0105

    const/4 v0, 0x0

    .line 56
    :try_start_0
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 57
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "com.perm.kate.user_id"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/perm/kate/ProfileLeftFragment;->uid_str:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p2, :cond_0

    return-object p1

    .line 66
    :cond_0
    :try_start_2
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/perm/kate/ProfileLeftFragment;->uid:Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 68
    :try_start_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uid_str="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 71
    :goto_0
    iget-object p2, p0, Lcom/perm/kate/ProfileLeftFragment;->uid_str:Ljava/lang/String;

    sget-object p3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/perm/kate/ProfileLeftFragment;->is_me:Z

    .line 72
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileLeftFragment;->initUiFields(Landroid/view/View;)V

    .line 73
    sget-object p2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p3, p0, Lcom/perm/kate/ProfileLeftFragment;->uid:Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object p2

    iput-object p2, p0, Lcom/perm/kate/ProfileLeftFragment;->u:Lcom/perm/kate/api/User;

    .line 74
    invoke-direct {p0, p2, p1}, Lcom/perm/kate/ProfileLeftFragment;->displayUser(Lcom/perm/kate/api/User;Landroid/view/View;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_1

    :catchall_2
    move-exception p2

    const/4 p1, 0x0

    .line 76
    :goto_1
    invoke-static {p2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 77
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    instance-of p2, p2, Ljava/lang/OutOfMemoryError;

    if-eqz p2, :cond_1

    .line 79
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object p2

    invoke-virtual {p2}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    :cond_1
    :goto_2
    return-object p1
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 477
    invoke-virtual {p0}, Lcom/perm/kate/ProfileLeftFragment;->refreshInThread()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 97
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStart()V

    .line 99
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->uid:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 100
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->u:Lcom/perm/kate/api/User;

    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/ProfileLeftFragment;->displayUser(Lcom/perm/kate/api/User;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 106
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 107
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$2;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    .line 121
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method setActivePaneButton(Landroid/view/View;)V
    .locals 3

    .line 488
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-ne v1, p1, :cond_0

    const/4 v2, 0x1

    .line 490
    invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 492
    invoke-virtual {v1, v2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
