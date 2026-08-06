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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private subscribersClickListener:Landroid/view/View$OnClickListener;

.field private tv_albums_count:Landroid/widget/TextView;

.field private tv_audios_count:Landroid/widget/TextView;

.field private tv_followers_count:Landroid/widget/TextView;

.field private tv_friends_count:Landroid/widget/TextView;

.field private tv_gifts_count:Landroid/widget/TextView;

.field private tv_groups_count:Landroid/widget/TextView;

.field private tv_notes_count:Landroid/widget/TextView;

.field private tv_profile_info_user_name:Landroid/widget/TextView;

.field private tv_user_videos_count:Landroid/widget/TextView;

.field private tv_videos_count:Landroid/widget/TextView;

.field private tv_wall_count:Landroid/widget/TextView;

.field private u:Lcom/perm/kate/api/User;

.field uid:Ljava/lang/Long;

.field private uid_str:Ljava/lang/String;

.field private userVideosClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$3;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileLeftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileLeftFragment$3;-><init>(Lcom/perm/kate/ProfileLeftFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->callback_profile:Lcom/perm/kate/session/Callback;

    .line 155
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$4;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileLeftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileLeftFragment$4;-><init>(Lcom/perm/kate/ProfileLeftFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->callback_wall_count:Lcom/perm/kate/session/Callback;

    .line 377
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$6;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->Friends_ClickListener:Landroid/view/View$OnClickListener;

    .line 385
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$7;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->Photos_ClickListener:Landroid/view/View$OnClickListener;

    .line 393
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$8;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->Videos_ClickListener:Landroid/view/View$OnClickListener;

    .line 401
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$9;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->Wall_ClickListener:Landroid/view/View$OnClickListener;

    .line 409
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$10;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->infoClick:Landroid/view/View$OnClickListener;

    .line 417
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$11;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->Audio_ClickListener:Landroid/view/View$OnClickListener;

    .line 425
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$12;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->Groups_ClickListener:Landroid/view/View$OnClickListener;

    .line 433
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$13;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->userVideosClickListener:Landroid/view/View$OnClickListener;

    .line 441
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$14;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->Notes_ClickListener:Landroid/view/View$OnClickListener;

    .line 449
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$15;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->giftsClickListener:Landroid/view/View$OnClickListener;

    .line 457
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$16;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->docsClickListener:Landroid/view/View$OnClickListener;

    .line 465
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$17;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$17;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->subscribersClickListener:Landroid/view/View$OnClickListener;

    .line 473
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$18;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$18;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->followersClickListener:Landroid/view/View$OnClickListener;

    .line 481
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$19;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$19;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->additional_info_ClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/ProfileLeftFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileLeftFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->callback_profile:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/ProfileLeftFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileLeftFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->callback_wall_count:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/ProfileLeftFragment;)Lcom/perm/kate/api/User;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileLeftFragment;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->u:Lcom/perm/kate/api/User;

    return-object v0
.end method

.method static synthetic access$202(Lcom/perm/kate/ProfileLeftFragment;Lcom/perm/kate/api/User;)Lcom/perm/kate/api/User;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileLeftFragment;
    .param p1, "x1"    # Lcom/perm/kate/api/User;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/perm/kate/ProfileLeftFragment;->u:Lcom/perm/kate/api/User;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/ProfileLeftFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileLeftFragment;

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/perm/kate/ProfileLeftFragment;->displayUserOnUiThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/ProfileLeftFragment;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileLeftFragment;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileLeftFragment;->displayWallCountInUiThread(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/ProfileLeftFragment;Lcom/perm/kate/api/User;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileLeftFragment;
    .param p1, "x1"    # Lcom/perm/kate/api/User;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/ProfileLeftFragment;->displayUser(Lcom/perm/kate/api/User;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/ProfileLeftFragment;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileLeftFragment;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileLeftFragment;->displayWallCount(Ljava/lang/Integer;)V

    return-void
.end method

.method private displayCounters(Lcom/perm/kate/api/User;)V
    .locals 3
    .param p1, "user"    # Lcom/perm/kate/api/User;

    .prologue
    .line 362
    iget v1, p1, Lcom/perm/kate/api/User;->friends_count:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "friends_count_str":Ljava/lang/String;
    iget-object v1, p1, Lcom/perm/kate/api/User;->online_friends_count:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/perm/kate/api/User;->online_friends_count:Ljava/lang/Integer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 365
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_friends_count:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 366
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_albums_count:Landroid/widget/TextView;

    iget v2, p1, Lcom/perm/kate/api/User;->albums_count:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_audios_count:Landroid/widget/TextView;

    iget v2, p1, Lcom/perm/kate/api/User;->audios_count:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_videos_count:Landroid/widget/TextView;

    iget v2, p1, Lcom/perm/kate/api/User;->videos_count:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_user_videos_count:Landroid/widget/TextView;

    iget v2, p1, Lcom/perm/kate/api/User;->user_videos_count:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_notes_count:Landroid/widget/TextView;

    iget v2, p1, Lcom/perm/kate/api/User;->notes_count:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_groups_count:Landroid/widget/TextView;

    iget v2, p1, Lcom/perm/kate/api/User;->groups_count:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_followers_count:Landroid/widget/TextView;

    iget v2, p1, Lcom/perm/kate/api/User;->followers_count:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_gifts_count:Landroid/widget/TextView;

    iget v2, p1, Lcom/perm/kate/api/User;->gifts_count:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v1, p1, Lcom/perm/kate/api/User;->posts_count:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/perm/kate/ProfileLeftFragment;->displayWallCount(Ljava/lang/Integer;)V

    .line 375
    return-void
.end method

.method private displayUser(Lcom/perm/kate/api/User;Landroid/view/View;)V
    .locals 4
    .param p1, "user"    # Lcom/perm/kate/api/User;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 334
    if-nez p2, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    if-eqz p1, :cond_0

    .line 340
    const-string v0, ""

    .line 341
    .local v0, "label_name":Ljava/lang/String;
    iget-object v1, p1, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    :goto_1
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileLeftFragment;->displayCounters(Lcom/perm/kate/api/User;)V

    .line 348
    if-eqz p1, :cond_0

    .line 350
    invoke-direct {p0, v3}, Lcom/perm/kate/ProfileLeftFragment;->setVisibleFriendsRegion(Z)V

    .line 351
    invoke-direct {p0, v3}, Lcom/perm/kate/ProfileLeftFragment;->setVisiblePhotosRegion(Z)V

    .line 352
    invoke-direct {p0, v3}, Lcom/perm/kate/ProfileLeftFragment;->setVisibleVideosRegion(Z)V

    .line 353
    invoke-direct {p0, v3}, Lcom/perm/kate/ProfileLeftFragment;->setVisibleWallRegion(Z)V

    .line 354
    invoke-direct {p0, v3}, Lcom/perm/kate/ProfileLeftFragment;->setVisibleAudioRegion(Z)V

    goto :goto_0

    .line 344
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private displayUserOnUiThread()V
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/perm/kate/ProfileLeftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 194
    :goto_0
    return-void

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/ProfileLeftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/ProfileLeftFragment$5;

    invoke-direct {v1, p0}, Lcom/perm/kate/ProfileLeftFragment$5;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private displayWallCount(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "count"    # Ljava/lang/Integer;

    .prologue
    .line 522
    if-eqz p1, :cond_0

    .line 523
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_wall_count:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 524
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_wall_count:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 527
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_wall_count:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private displayWallCountInUiThread(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "wall_count"    # Ljava/lang/Integer;

    .prologue
    .line 511
    invoke-virtual {p0}, Lcom/perm/kate/ProfileLeftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/perm/kate/ProfileLeftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 519
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/ProfileLeftFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/ProfileLeftFragment$20;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/ProfileLeftFragment$20;-><init>(Lcom/perm/kate/ProfileLeftFragment;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private initUiFields(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 198
    const v10, 0x7f0e0107

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    .line 199
    const v10, 0x7f0e00fd

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_friends_region:Landroid/widget/LinearLayout;

    .line 200
    const v10, 0x7f0e0100

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_photos_region:Landroid/widget/LinearLayout;

    .line 201
    const v10, 0x7f0e0103

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_videos_region:Landroid/widget/LinearLayout;

    .line 202
    const v10, 0x7f0e00fe

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_wall_region:Landroid/widget/LinearLayout;

    .line 203
    const v10, 0x7f0e0101

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_audio_region:Landroid/widget/LinearLayout;

    .line 204
    const v10, 0x7f0e02ea

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_subscriptions_region:Landroid/widget/LinearLayout;

    .line 205
    const v10, 0x7f0e02e1

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_followers_region:Landroid/widget/LinearLayout;

    .line 206
    const v10, 0x7f0e02eb

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_additional_info:Landroid/widget/LinearLayout;

    .line 207
    const v10, 0x7f0e02ee

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    iput-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_wall_count:Landroid/widget/LinearLayout;

    .line 208
    const v10, 0x7f0e01c9

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_wall_count:Landroid/widget/TextView;

    .line 209
    const v10, 0x7f0e02dc

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_friends_count:Landroid/widget/TextView;

    .line 210
    const v10, 0x7f0e01cf

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_albums_count:Landroid/widget/TextView;

    .line 211
    const v10, 0x7f0e01d3

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_audios_count:Landroid/widget/TextView;

    .line 212
    const v10, 0x7f0e01d7

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_videos_count:Landroid/widget/TextView;

    .line 213
    const v10, 0x7f0e02e4

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_user_videos_count:Landroid/widget/TextView;

    .line 214
    const v10, 0x7f0e02e7

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_notes_count:Landroid/widget/TextView;

    .line 215
    const v10, 0x7f0e02dd

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_groups_count:Landroid/widget/TextView;

    .line 216
    const v10, 0x7f0e02e2

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_followers_count:Landroid/widget/TextView;

    .line 217
    const v10, 0x7f0e02e9

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_gifts_count:Landroid/widget/TextView;

    .line 218
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_subscriptions_region:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/perm/kate/ProfileLeftFragment;->subscribersClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_followers_region:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/perm/kate/ProfileLeftFragment;->followersClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_friends_region:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/perm/kate/ProfileLeftFragment;->Friends_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_photos_region:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/perm/kate/ProfileLeftFragment;->Photos_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_videos_region:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/perm/kate/ProfileLeftFragment;->Videos_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_wall_region:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/perm/kate/ProfileLeftFragment;->Wall_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_audio_region:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/perm/kate/ProfileLeftFragment;->Audio_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_additional_info:Landroid/widget/LinearLayout;

    iget-object v11, p0, Lcom/perm/kate/ProfileLeftFragment;->additional_info_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    const v10, 0x7f0e00ff

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 227
    .local v2, "groups_layout":Landroid/view/View;
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->Groups_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    const v10, 0x7f0e02e3

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 229
    .local v9, "user_videos":Landroid/view/View;
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->userVideosClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    const v10, 0x7f0e02e6

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 231
    .local v6, "notes_layout":Landroid/view/View;
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->Notes_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    const v10, 0x7f0e02e8

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 233
    .local v4, "ll_profile_gifts_region":Landroid/view/View;
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->giftsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    const v10, 0x7f0e02e5

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 237
    .local v1, "docs_view":Landroid/view/View;
    iget-boolean v10, p0, Lcom/perm/kate/ProfileLeftFragment;->is_me:Z

    if-eqz v10, :cond_1

    .line 238
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->docsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    :goto_0
    sget-boolean v10, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    if-eqz v10, :cond_0

    .line 245
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    invoke-static {v10, v11}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    .line 246
    .local v3, "left":I
    const-wide/high16 v10, 0x4026000000000000L    # 11.0

    invoke-static {v10, v11}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v8

    .line 247
    .local v8, "top":I
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v7

    .line 248
    .local v7, "right":I
    const-wide/high16 v10, 0x4026000000000000L    # 11.0

    invoke-static {v10, v11}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    .line 249
    .local v0, "bottom":I
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 250
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_wall_region:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_friends_region:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 252
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v10

    invoke-virtual {v10}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_photos_region:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 254
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_audio_region:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_videos_region:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 256
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v10

    invoke-virtual {v10}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 257
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v10

    invoke-virtual {v10}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v10

    invoke-virtual {v10}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 259
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_subscriptions_region:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 260
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_followers_region:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 261
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_additional_info:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    invoke-virtual {v10, v3, v8, v7, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 263
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 264
    const v10, 0x7f0e02ed

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 265
    const v10, 0x7f0e02ef

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 266
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_friends_count:Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 267
    const v10, 0x7f0e02f0

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 268
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_groups_count:Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 269
    const v10, 0x7f0e02f1

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 270
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_albums_count:Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 271
    const v10, 0x7f0e02f2

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 272
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_audios_count:Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 273
    const v10, 0x7f0e02f3

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 274
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_videos_count:Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 275
    const v10, 0x7f0e02f4

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 276
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_user_videos_count:Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 277
    const v10, 0x7f0e02f5

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 278
    const v10, 0x7f0e02f6

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 279
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_notes_count:Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 280
    const v10, 0x7f0e02f7

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 281
    const v10, 0x7f0e02f8

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 282
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->tv_followers_count:Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 283
    const v10, 0x7f0e02f9

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v11

    invoke-virtual {v11}, Lcom/perm/kate/theme/ColorTheme;->getTabletTabItemTextColor()Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 287
    .end local v0    # "bottom":I
    .end local v3    # "left":I
    .end local v7    # "right":I
    .end local v8    # "top":I
    :cond_0
    const v10, 0x7f0e02ec

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 288
    .local v5, "ll_profile_info_region":Landroid/view/View;
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->infoClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_wall_region:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_additional_info:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_photos_region:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_audio_region:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_videos_region:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 297
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 299
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_friends_region:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_subscriptions_region:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_followers_region:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v10, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/perm/kate/ProfileLeftFragment;->setVisibleFriendsRegion(Z)V

    .line 305
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/perm/kate/ProfileLeftFragment;->setVisiblePhotosRegion(Z)V

    .line 306
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/perm/kate/ProfileLeftFragment;->setVisibleVideosRegion(Z)V

    .line 307
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/perm/kate/ProfileLeftFragment;->setVisibleWallRegion(Z)V

    .line 308
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/perm/kate/ProfileLeftFragment;->setVisibleAudioRegion(Z)V

    .line 310
    invoke-virtual {p0, v5}, Lcom/perm/kate/ProfileLeftFragment;->setActivePaneButton(Landroid/view/View;)V

    .line 311
    return-void

    .line 240
    .end local v5    # "ll_profile_info_region":Landroid/view/View;
    :cond_1
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 241
    const v10, 0x7f0e01ed

    invoke-virtual {p1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setVisibleAudioRegion(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 330
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_audio_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 331
    return-void

    .line 330
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setVisibleFriendsRegion(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 314
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_friends_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 315
    return-void

    .line 314
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setVisiblePhotosRegion(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 318
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_photos_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 319
    return-void

    .line 318
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setVisibleVideosRegion(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 322
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_videos_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 323
    return-void

    .line 322
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setVisibleWallRegion(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 326
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->ll_profile_wall_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 327
    return-void

    .line 326
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 496
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onAttach(Landroid/app/Activity;)V

    move-object v0, p1

    .line 497
    check-cast v0, Lcom/perm/kate/ProfileActivityCallback;

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->listener:Lcom/perm/kate/ProfileActivityCallback;

    .line 498
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->callback_profile:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 499
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileLeftFragment;->setHasOptionsMenu(Z)V

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/perm/kate/ProfileLeftFragment$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/ProfileLeftFragment$1;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 56
    const/4 v1, 0x0

    .line 58
    .local v1, "view":Landroid/view/View;
    const v3, 0x7f0300ea

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 59
    invoke-virtual {p0}, Lcom/perm/kate/ProfileLeftFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.perm.kate.user_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/ProfileLeftFragment;->uid_str:Ljava/lang/String;

    .line 62
    iget-object v3, p0, Lcom/perm/kate/ProfileLeftFragment;->uid_str:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_0

    move-object v2, v1

    .line 83
    .end local v1    # "view":Landroid/view/View;
    .local v2, "view":Landroid/view/View;
    :goto_0
    return-object v2

    .line 68
    .end local v2    # "view":Landroid/view/View;
    .restart local v1    # "view":Landroid/view/View;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/perm/kate/ProfileLeftFragment;->uid_str:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/ProfileLeftFragment;->uid:Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 73
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/perm/kate/ProfileLeftFragment;->uid_str:Ljava/lang/String;

    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v4}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/perm/kate/ProfileLeftFragment;->is_me:Z

    .line 74
    invoke-direct {p0, v1}, Lcom/perm/kate/ProfileLeftFragment;->initUiFields(Landroid/view/View;)V

    .line 75
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v4, p0, Lcom/perm/kate/ProfileLeftFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/ProfileLeftFragment;->u:Lcom/perm/kate/api/User;

    .line 76
    iget-object v3, p0, Lcom/perm/kate/ProfileLeftFragment;->u:Lcom/perm/kate/api/User;

    invoke-direct {p0, v3, v1}, Lcom/perm/kate/ProfileLeftFragment;->displayUser(Lcom/perm/kate/api/User;Landroid/view/View;)V

    :cond_1
    :goto_2
    move-object v2, v1

    .line 83
    .end local v1    # "view":Landroid/view/View;
    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0

    .line 69
    .end local v2    # "view":Landroid/view/View;
    .restart local v1    # "view":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 70
    .local v0, "th":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uid_str="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/ProfileLeftFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 77
    .end local v0    # "th":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 78
    .restart local v0    # "th":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 79
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    instance-of v3, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v3, :cond_1

    .line 81
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    goto :goto_2
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/perm/kate/ProfileLeftFragment;->refreshInThread()V

    .line 492
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 99
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStart()V

    .line 101
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->uid:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 102
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->u:Lcom/perm/kate/api/User;

    .line 103
    iget-object v0, p0, Lcom/perm/kate/ProfileLeftFragment;->u:Lcom/perm/kate/api/User;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileLeftFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/ProfileLeftFragment;->displayUser(Lcom/perm/kate/api/User;Landroid/view/View;)V

    .line 105
    :cond_0
    return-void
.end method

.method refreshInThread()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileLeftFragment;->showProgressBar(Z)V

    .line 109
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileLeftFragment$2;-><init>(Lcom/perm/kate/ProfileLeftFragment;)V

    .line 123
    invoke-virtual {v0}, Lcom/perm/kate/ProfileLeftFragment$2;->start()V

    .line 124
    return-void
.end method

.method setActivePaneButton(Landroid/view/View;)V
    .locals 3
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 502
    iget-object v1, p0, Lcom/perm/kate/ProfileLeftFragment;->paneButtons:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 503
    .local v0, "view":Landroid/view/View;
    if-ne v0, p1, :cond_0

    .line 504
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    .line 506
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    goto :goto_0

    .line 508
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method
