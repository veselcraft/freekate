.class public Lcom/perm/kate/ProfileInfoActivity;
.super Lcom/perm/kate/BaseActivity;
.source "ProfileInfoActivity.java"

# interfaces
.implements Lcom/perm/kate/ProfileActivityCallback;
.implements Lcom/perm/kate/KTabActivity;


# instance fields
.field audioFragment:Lcom/perm/kate/BaseFragment;

.field currentFragment:Lcom/perm/kate/BaseFragment;

.field docsFragment:Lcom/perm/kate/BaseFragment;

.field extraFragment:Lcom/perm/kate/BaseFragment;

.field followersFragment:Lcom/perm/kate/BaseFragment;

.field private fragment:Lcom/perm/kate/BaseFragment;

.field friendsFragment:Lcom/perm/kate/BaseFragment;

.field giftsFragment:Lcom/perm/kate/BaseFragment;

.field groupsFragment:Lcom/perm/kate/BaseFragment;

.field infoFragment:Lcom/perm/kate/BaseFragment;

.field notesFragment:Lcom/perm/kate/BaseFragment;

.field photoAlbumsFragment:Lcom/perm/kate/BaseFragment;

.field subscriptionsFragment:Lcom/perm/kate/BaseFragment;

.field uid_str:Ljava/lang/String;

.field videoFragment:Lcom/perm/kate/BaseFragment;

.field wallFragment:Lcom/perm/kate/BaseFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    return-void
.end method

.method private createAudioFragment()Lcom/perm/kate/BaseFragment;
    .locals 5

    .line 261
    new-instance v0, Lcom/perm/kate/AudioFragment;

    invoke-direct {v0}, Lcom/perm/kate/AudioFragment;-><init>()V

    .line 262
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 263
    iget-object v2, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "com.perm.kate.owner_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 264
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private createDocsFragment()Lcom/perm/kate/BaseFragment;
    .locals 5

    .line 277
    new-instance v0, Lcom/perm/kate/DocsFragment;

    invoke-direct {v0}, Lcom/perm/kate/DocsFragment;-><init>()V

    .line 278
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 279
    iget-object v2, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "owner_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 280
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private createExtraFragment()Lcom/perm/kate/BaseFragment;
    .locals 5

    .line 237
    new-instance v0, Lcom/perm/kate/ExtraProfileFragment;

    invoke-direct {v0}, Lcom/perm/kate/ExtraProfileFragment;-><init>()V

    .line 238
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 239
    iget-object v2, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "com.perm.kate.user_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 240
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private createFollowersFragment(Z)Lcom/perm/kate/BaseFragment;
    .locals 5

    .line 293
    new-instance v0, Lcom/perm/kate/FollowersFragment;

    invoke-direct {v0}, Lcom/perm/kate/FollowersFragment;-><init>()V

    .line 294
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 295
    iget-object v2, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "com.perm.kate.user_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "com.perm.kate.followers"

    .line 296
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 297
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private createFriendsFragment()Lcom/perm/kate/BaseFragment;
    .locals 4

    .line 285
    new-instance v0, Lcom/perm/kate/FriendsActivity;

    invoke-direct {v0}, Lcom/perm/kate/FriendsActivity;-><init>()V

    .line 286
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 287
    iget-object v2, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    const-string v3, "com.perm.kate.user_id"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private createGiftsFragment()Lcom/perm/kate/BaseFragment;
    .locals 5

    .line 302
    new-instance v0, Lcom/perm/kate/GiftsFragment;

    invoke-direct {v0}, Lcom/perm/kate/GiftsFragment;-><init>()V

    .line 303
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 304
    iget-object v2, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "com.perm.kate.user_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 305
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private createGroupsFragment()Lcom/perm/kate/BaseFragment;
    .locals 5

    .line 245
    new-instance v0, Lcom/perm/kate/GroupsFragment;

    invoke-direct {v0}, Lcom/perm/kate/GroupsFragment;-><init>()V

    .line 246
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 247
    iget-object v2, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "com.perm.kate.user_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 248
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private createInfoFragment()Lcom/perm/kate/BaseFragment;
    .locals 3

    .line 213
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment;

    invoke-direct {v0}, Lcom/perm/kate/ProfileInfoFragment;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->infoFragment:Lcom/perm/kate/BaseFragment;

    .line 214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 215
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    const-string v2, "com.perm.kate.user_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->infoFragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 217
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->infoFragment:Lcom/perm/kate/BaseFragment;

    return-object v0
.end method

.method private createNotesFragment()Lcom/perm/kate/BaseFragment;
    .locals 5

    .line 229
    new-instance v0, Lcom/perm/kate/NotesFragment;

    invoke-direct {v0}, Lcom/perm/kate/NotesFragment;-><init>()V

    .line 230
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 231
    iget-object v2, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "com.perm.kate.user_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 232
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private createPhotoAlbumsFragment()Lcom/perm/kate/BaseFragment;
    .locals 5

    .line 253
    new-instance v0, Lcom/perm/kate/AlbumsFragment;

    invoke-direct {v0}, Lcom/perm/kate/AlbumsFragment;-><init>()V

    .line 254
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 255
    iget-object v2, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "com.perm.kate.owner_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 256
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private createVideoFragment()Lcom/perm/kate/BaseFragment;
    .locals 5

    .line 269
    new-instance v0, Lcom/perm/kate/VideoFragment;

    invoke-direct {v0}, Lcom/perm/kate/VideoFragment;-><init>()V

    .line 270
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 271
    iget-object v2, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "com.perm.kate.user_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 272
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private createWallFragment()Lcom/perm/kate/BaseFragment;
    .locals 5

    .line 221
    new-instance v0, Lcom/perm/kate/WallFragment;

    invoke-direct {v0}, Lcom/perm/kate/WallFragment;-><init>()V

    .line 222
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 223
    iget-object v2, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "com.perm.kate.user_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 224
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private restoreFragmentReferences()V
    .locals 2

    .line 352
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "info"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->infoFragment:Lcom/perm/kate/BaseFragment;

    .line 353
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "wall"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->wallFragment:Lcom/perm/kate/BaseFragment;

    .line 354
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "notes"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->notesFragment:Lcom/perm/kate/BaseFragment;

    .line 355
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "extra"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->extraFragment:Lcom/perm/kate/BaseFragment;

    .line 356
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "groups"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    .line 357
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "photoalbums"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->photoAlbumsFragment:Lcom/perm/kate/BaseFragment;

    .line 358
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    .line 359
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    .line 360
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "docs"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->docsFragment:Lcom/perm/kate/BaseFragment;

    .line 361
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "friends"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    .line 362
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "followers"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->followersFragment:Lcom/perm/kate/BaseFragment;

    .line 363
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "subscriptions"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->subscriptionsFragment:Lcom/perm/kate/BaseFragment;

    return-void
.end method

.method private setContainerMargin()V
    .locals 2

    .line 394
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const v1, 0x7f090249

    .line 395
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 396
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 397
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    return-void
.end method

.method private setLeftPaneWidthByOrientation(I)V
    .locals 3

    .line 380
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f090249

    .line 382
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 385
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 387
    sget p1, Lcom/perm/kate/KApplication;->LEFT_PANE_PROFILE_MAX_WIDTH:I

    int-to-double v1, p1

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 390
    :cond_2
    sget p1, Lcom/perm/kate/KApplication;->LEFT_PANE_PROFILE_MIN_WIDTH:I

    int-to-double v1, p1

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result p1

    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_0
    return-void
.end method

.method private showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    if-ne v0, p1, :cond_0

    return-void

    .line 319
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 321
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v1, :cond_1

    .line 322
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 323
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f0900da

    .line 324
    invoke-virtual {v0, v1, p1, p2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 326
    :cond_2
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 328
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 329
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    return-void
.end method


# virtual methods
.method public displayRefreshState()V
    .locals 1

    .line 334
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->getRefreshState()Z

    move-result v0

    .line 335
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, p1}, Lcom/perm/kate/BaseFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0, p1}, Lcom/perm/kate/BaseFragment;->fillMenuItems(Landroid/view/Menu;)Z

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method getRefreshState()Z
    .locals 4

    .line 340
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/perm/kate/ProfileFragment;

    if-eqz v1, :cond_0

    .line 341
    iget-boolean v0, v0, Lcom/perm/kate/BaseFragment;->refreshState:Z

    return v0

    .line 344
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 346
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/ProfileInfoActivity;->infoFragment:Lcom/perm/kate/BaseFragment;

    if-ne v1, v3, :cond_3

    if-eqz v0, :cond_2

    .line 347
    iget-boolean v2, v0, Lcom/perm/kate/BaseFragment;->refreshState:Z

    :cond_2
    return v2

    .line 348
    :cond_3
    iget-boolean v0, v1, Lcom/perm/kate/BaseFragment;->refreshState:Z

    return v0
.end method

.method public onAvatarChanged()V
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 370
    check-cast v0, Lcom/perm/kate/ProfileLeftFragment;

    invoke-virtual {v0}, Lcom/perm/kate/ProfileLeftFragment;->refreshInThread()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 375
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 376
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileInfoActivity;->setLeftPaneWidthByOrientation(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "com.perm.kate.user_id"

    .line 42
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 50
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "DATA1"

    .line 51
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 54
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    :cond_0
    if-eqz v1, :cond_1

    .line 56
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 59
    :cond_1
    sget-boolean v1, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v1, :cond_2

    const v1, 0x7f0c0126

    goto :goto_0

    :cond_2
    const v1, 0x7f0c0100

    :goto_0
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 61
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 62
    invoke-static {}, Lcom/perm/kate/ProfileFragment;->isTransparentHeader()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, ""

    .line 63
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const v1, 0x7f0f0236

    .line 65
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 68
    :goto_1
    invoke-static {}, Lcom/perm/kate/ProfileFragment;->isTransparentHeader()Z

    move-result v1

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-nez v1, :cond_4

    .line 69
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->setContainerMargin()V

    .line 73
    :cond_4
    invoke-static {}, Lcom/perm/kate/ProfileFragment;->isTransparentHeader()Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0x7f0901d6

    .line 74
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 75
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 80
    :cond_5
    invoke-static {}, Lcom/perm/kate/ProfileFragment;->isTransparentHeader()Z

    move-result v1

    if-eqz v1, :cond_6

    const v1, 0x7f090195

    .line 81
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    if-nez p1, :cond_8

    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 85
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 86
    sget-boolean v1, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v1, :cond_7

    .line 87
    new-instance v1, Lcom/perm/kate/ProfileLeftFragment;

    invoke-direct {v1}, Lcom/perm/kate/ProfileLeftFragment;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    goto :goto_2

    .line 89
    :cond_7
    new-instance v1, Lcom/perm/kate/ProfileFragment;

    invoke-direct {v1}, Lcom/perm/kate/ProfileFragment;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    .line 90
    :goto_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 91
    iget-object v2, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const v0, 0x7f090249

    .line 93
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 94
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 97
    :cond_8
    sget-boolean p1, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz p1, :cond_9

    .line 98
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->restoreFragmentReferences()V

    .line 100
    :cond_9
    sget-boolean p1, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz p1, :cond_a

    const-string p1, "info"

    .line 101
    invoke-virtual {p0, p1}, Lcom/perm/kate/ProfileInfoActivity;->onTabSelected(Ljava/lang/String;)V

    .line 103
    :cond_a
    new-instance p1, Lcom/perm/utils/ScreenOrientationHelper;

    invoke-direct {p1}, Lcom/perm/utils/ScreenOrientationHelper;-><init>()V

    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {p1, v0}, Lcom/perm/utils/ScreenOrientationHelper;->getOrientation(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileInfoActivity;->setLeftPaneWidthByOrientation(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 105
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 106
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 107
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {p1}, Lcom/perm/utils/MemoryCache;->clear()V

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 142
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 130
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 131
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 132
    invoke-virtual {p0, p1}, Lcom/perm/kate/ProfileInfoActivity;->fillMenuItems(Landroid/view/Menu;)Z

    const/4 p1, 0x1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 3

    .line 115
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/perm/kate/ProfileFragment;

    if-eqz v1, :cond_0

    .line 116
    invoke-virtual {v0}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoActivity;->infoFragment:Lcom/perm/kate/BaseFragment;

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_2

    .line 123
    invoke-virtual {v0}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 125
    invoke-virtual {v1}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onTabSelected(Ljava/lang/String;)V
    .locals 2

    const-string v0, "info"

    .line 156
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->infoFragment:Lcom/perm/kate/BaseFragment;

    if-nez p1, :cond_0

    .line 158
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->createInfoFragment()Lcom/perm/kate/BaseFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->infoFragment:Lcom/perm/kate/BaseFragment;

    .line 159
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->infoFragment:Lcom/perm/kate/BaseFragment;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "wall"

    .line 160
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 161
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->wallFragment:Lcom/perm/kate/BaseFragment;

    if-nez p1, :cond_2

    .line 162
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->createWallFragment()Lcom/perm/kate/BaseFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->wallFragment:Lcom/perm/kate/BaseFragment;

    .line 163
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->wallFragment:Lcom/perm/kate/BaseFragment;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "notes"

    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 165
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->notesFragment:Lcom/perm/kate/BaseFragment;

    if-nez p1, :cond_4

    .line 166
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->createNotesFragment()Lcom/perm/kate/BaseFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->notesFragment:Lcom/perm/kate/BaseFragment;

    .line 167
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->notesFragment:Lcom/perm/kate/BaseFragment;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "extra"

    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 169
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->extraFragment:Lcom/perm/kate/BaseFragment;

    if-nez p1, :cond_6

    .line 170
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->createExtraFragment()Lcom/perm/kate/BaseFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->extraFragment:Lcom/perm/kate/BaseFragment;

    .line 171
    :cond_6
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->extraFragment:Lcom/perm/kate/BaseFragment;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "groups"

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 173
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    if-nez p1, :cond_8

    .line 174
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->createGroupsFragment()Lcom/perm/kate/BaseFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    .line 175
    :cond_8
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v0, "photoalbums"

    .line 176
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 177
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->photoAlbumsFragment:Lcom/perm/kate/BaseFragment;

    if-nez p1, :cond_a

    .line 178
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->createPhotoAlbumsFragment()Lcom/perm/kate/BaseFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->photoAlbumsFragment:Lcom/perm/kate/BaseFragment;

    .line 179
    :cond_a
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->photoAlbumsFragment:Lcom/perm/kate/BaseFragment;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, "audio"

    .line 180
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 181
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    if-nez p1, :cond_c

    .line 182
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->createAudioFragment()Lcom/perm/kate/BaseFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    .line 183
    :cond_c
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v0, "video"

    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 185
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    if-nez p1, :cond_e

    .line 186
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->createVideoFragment()Lcom/perm/kate/BaseFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    .line 187
    :cond_e
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_f
    const-string v0, "docs"

    .line 188
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 189
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->docsFragment:Lcom/perm/kate/BaseFragment;

    if-nez p1, :cond_10

    .line 190
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->createDocsFragment()Lcom/perm/kate/BaseFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->docsFragment:Lcom/perm/kate/BaseFragment;

    .line 191
    :cond_10
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->docsFragment:Lcom/perm/kate/BaseFragment;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_11
    const-string v0, "friends"

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 193
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    if-nez p1, :cond_12

    .line 194
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->createFriendsFragment()Lcom/perm/kate/BaseFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    .line 195
    :cond_12
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_13
    const-string v0, "followers"

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 197
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->followersFragment:Lcom/perm/kate/BaseFragment;

    if-nez p1, :cond_14

    const/4 p1, 0x1

    .line 198
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileInfoActivity;->createFollowersFragment(Z)Lcom/perm/kate/BaseFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->followersFragment:Lcom/perm/kate/BaseFragment;

    .line 199
    :cond_14
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->followersFragment:Lcom/perm/kate/BaseFragment;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_15
    const-string v0, "subscriptions"

    .line 200
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 201
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->subscriptionsFragment:Lcom/perm/kate/BaseFragment;

    if-nez p1, :cond_16

    const/4 p1, 0x0

    .line 202
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileInfoActivity;->createFollowersFragment(Z)Lcom/perm/kate/BaseFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->subscriptionsFragment:Lcom/perm/kate/BaseFragment;

    .line 203
    :cond_16
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->subscriptionsFragment:Lcom/perm/kate/BaseFragment;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto :goto_0

    :cond_17
    const-string v0, "gifts"

    .line 204
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 205
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->giftsFragment:Lcom/perm/kate/BaseFragment;

    if-nez p1, :cond_18

    .line 206
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->createGiftsFragment()Lcom/perm/kate/BaseFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->giftsFragment:Lcom/perm/kate/BaseFragment;

    .line 207
    :cond_18
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->giftsFragment:Lcom/perm/kate/BaseFragment;

    invoke-direct {p0, p1, v0}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    .line 209
    :cond_19
    :goto_0
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->displayRefreshState()V

    return-void
.end method

.method public onUserRefreshed(Lcom/perm/kate/api/User;)V
    .locals 1

    .line 311
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->infoFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 312
    check-cast v0, Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/ProfileInfoFragment;->userRefreshed(Lcom/perm/kate/api/User;)V

    :cond_0
    return-void
.end method
