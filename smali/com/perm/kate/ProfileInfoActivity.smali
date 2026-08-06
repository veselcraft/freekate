.class public Lcom/perm/kate/ProfileInfoActivity;
.super Lcom/perm/kate/BaseActivity;
.source "ProfileInfoActivity.java"

# interfaces
.implements Lcom/perm/kate/KTabActivity;
.implements Lcom/perm/kate/ProfileActivityCallback;


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

.field userVideoFragment:Lcom/perm/kate/BaseFragment;

.field videoFragment:Lcom/perm/kate/BaseFragment;

.field wallFragment:Lcom/perm/kate/BaseFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    return-void
.end method

.method private createAudioFragment()Lcom/perm/kate/BaseFragment;
    .locals 6

    .prologue
    .line 261
    new-instance v1, Lcom/perm/kate/AudioFragment;

    invoke-direct {v1}, Lcom/perm/kate/AudioFragment;-><init>()V

    .line 262
    .local v1, "f":Lcom/perm/kate/BaseFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 263
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.perm.kate.owner_id"

    iget-object v3, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 264
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 265
    return-object v1
.end method

.method private createDocsFragment()Lcom/perm/kate/BaseFragment;
    .locals 6

    .prologue
    .line 286
    new-instance v1, Lcom/perm/kate/DocsFragment;

    invoke-direct {v1}, Lcom/perm/kate/DocsFragment;-><init>()V

    .line 287
    .local v1, "f":Lcom/perm/kate/BaseFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 288
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "owner_id"

    iget-object v3, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 289
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 290
    return-object v1
.end method

.method private createExtraFragment()Lcom/perm/kate/BaseFragment;
    .locals 6

    .prologue
    .line 237
    new-instance v1, Lcom/perm/kate/ExtraProfileFragment;

    invoke-direct {v1}, Lcom/perm/kate/ExtraProfileFragment;-><init>()V

    .line 238
    .local v1, "f":Lcom/perm/kate/BaseFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 239
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.perm.kate.user_id"

    iget-object v3, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 240
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 241
    return-object v1
.end method

.method private createFollowersFragment(Z)Lcom/perm/kate/BaseFragment;
    .locals 6
    .param p1, "followers"    # Z

    .prologue
    .line 302
    new-instance v1, Lcom/perm/kate/FollowersFragment;

    invoke-direct {v1}, Lcom/perm/kate/FollowersFragment;-><init>()V

    .line 303
    .local v1, "f":Lcom/perm/kate/BaseFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 304
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.perm.kate.user_id"

    iget-object v3, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 305
    const-string v2, "com.perm.kate.followers"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 306
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 307
    return-object v1
.end method

.method private createFriendsFragment()Lcom/perm/kate/BaseFragment;
    .locals 4

    .prologue
    .line 294
    new-instance v1, Lcom/perm/kate/FriendsActivity;

    invoke-direct {v1}, Lcom/perm/kate/FriendsActivity;-><init>()V

    .line 295
    .local v1, "f":Lcom/perm/kate/BaseFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 296
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.perm.kate.user_id"

    iget-object v3, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 298
    return-object v1
.end method

.method private createGiftsFragment()Lcom/perm/kate/BaseFragment;
    .locals 6

    .prologue
    .line 311
    new-instance v1, Lcom/perm/kate/GiftsFragment;

    invoke-direct {v1}, Lcom/perm/kate/GiftsFragment;-><init>()V

    .line 312
    .local v1, "f":Lcom/perm/kate/BaseFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 313
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.perm.kate.user_id"

    iget-object v3, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 314
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 315
    return-object v1
.end method

.method private createGroupsFragment()Lcom/perm/kate/BaseFragment;
    .locals 6

    .prologue
    .line 245
    new-instance v1, Lcom/perm/kate/GroupsFragment;

    invoke-direct {v1}, Lcom/perm/kate/GroupsFragment;-><init>()V

    .line 246
    .local v1, "f":Lcom/perm/kate/BaseFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 247
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.perm.kate.user_id"

    iget-object v3, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 248
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 249
    return-object v1
.end method

.method private createInfoFragment()Lcom/perm/kate/BaseFragment;
    .locals 3

    .prologue
    .line 213
    new-instance v1, Lcom/perm/kate/ProfileInfoFragment;

    invoke-direct {v1}, Lcom/perm/kate/ProfileInfoFragment;-><init>()V

    iput-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->infoFragment:Lcom/perm/kate/BaseFragment;

    .line 214
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 215
    .local v0, "b1":Landroid/os/Bundle;
    const-string v1, "com.perm.kate.user_id"

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->infoFragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 217
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->infoFragment:Lcom/perm/kate/BaseFragment;

    return-object v1
.end method

.method private createNotesFragment()Lcom/perm/kate/BaseFragment;
    .locals 6

    .prologue
    .line 229
    new-instance v1, Lcom/perm/kate/NotesFragment;

    invoke-direct {v1}, Lcom/perm/kate/NotesFragment;-><init>()V

    .line 230
    .local v1, "f":Lcom/perm/kate/BaseFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 231
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.perm.kate.user_id"

    iget-object v3, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 232
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 233
    return-object v1
.end method

.method private createPhotoAlbumsFragment()Lcom/perm/kate/BaseFragment;
    .locals 6

    .prologue
    .line 253
    new-instance v1, Lcom/perm/kate/AlbumsFragment;

    invoke-direct {v1}, Lcom/perm/kate/AlbumsFragment;-><init>()V

    .line 254
    .local v1, "f":Lcom/perm/kate/BaseFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 255
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.perm.kate.owner_id"

    iget-object v3, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 256
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 257
    return-object v1
.end method

.method private createUserVideoFragment()Lcom/perm/kate/BaseFragment;
    .locals 6

    .prologue
    .line 277
    new-instance v1, Lcom/perm/kate/VideoFragment;

    invoke-direct {v1}, Lcom/perm/kate/VideoFragment;-><init>()V

    .line 278
    .local v1, "f":Lcom/perm/kate/BaseFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 279
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.perm.kate.user_id"

    iget-object v3, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 280
    const-string v2, "com.perm.kate.user_videos"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 281
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 282
    return-object v1
.end method

.method private createVideoFragment()Lcom/perm/kate/BaseFragment;
    .locals 6

    .prologue
    .line 269
    new-instance v1, Lcom/perm/kate/VideoFragment;

    invoke-direct {v1}, Lcom/perm/kate/VideoFragment;-><init>()V

    .line 270
    .local v1, "f":Lcom/perm/kate/BaseFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 271
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.perm.kate.user_id"

    iget-object v3, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 272
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 273
    return-object v1
.end method

.method private createWallFragment()Lcom/perm/kate/BaseFragment;
    .locals 6

    .prologue
    .line 221
    new-instance v1, Lcom/perm/kate/WallFragment;

    invoke-direct {v1}, Lcom/perm/kate/WallFragment;-><init>()V

    .line 222
    .local v1, "f":Lcom/perm/kate/BaseFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 223
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "com.perm.kate.user_id"

    iget-object v3, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 224
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 225
    return-object v1
.end method

.method private restoreFragmentReferences()V
    .locals 2

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "info"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->infoFragment:Lcom/perm/kate/BaseFragment;

    .line 362
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "wall"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->wallFragment:Lcom/perm/kate/BaseFragment;

    .line 363
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "notes"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->notesFragment:Lcom/perm/kate/BaseFragment;

    .line 364
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "extra"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->extraFragment:Lcom/perm/kate/BaseFragment;

    .line 365
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "groups"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    .line 366
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "photoalbums"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->photoAlbumsFragment:Lcom/perm/kate/BaseFragment;

    .line 367
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    .line 368
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "video"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    .line 369
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "uservideo"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->userVideoFragment:Lcom/perm/kate/BaseFragment;

    .line 370
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "docs"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->docsFragment:Lcom/perm/kate/BaseFragment;

    .line 371
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "friends"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    .line 372
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "followers"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->followersFragment:Lcom/perm/kate/BaseFragment;

    .line 373
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "subscriptions"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseFragment;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->subscriptionsFragment:Lcom/perm/kate/BaseFragment;

    .line 374
    return-void
.end method

.method private setContainerMargin()V
    .locals 5

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090012

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    .line 405
    .local v0, "margin":I
    const v3, 0x7f0e0124

    invoke-virtual {p0, v3}, Lcom/perm/kate/ProfileInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 406
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 407
    .local v1, "params":Landroid/widget/FrameLayout$LayoutParams;
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 408
    return-void
.end method

.method private setLeftPaneWidthByOrientation(I)V
    .locals 4
    .param p1, "orientation"    # I

    .prologue
    .line 390
    sget-boolean v2, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-nez v2, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 392
    :cond_1
    const v2, 0x7f0e0124

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 393
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 395
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 396
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 397
    sget v2, Lcom/perm/kate/KApplication;->LEFT_PANE_PROFILE_MAX_WIDTH:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 400
    :cond_2
    sget v2, Lcom/perm/kate/KApplication;->LEFT_PANE_PROFILE_MIN_WIDTH:I

    int-to-double v2, v2

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0
.end method

.method private showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V
    .locals 3
    .param p1, "fragment"    # Lcom/perm/kate/BaseFragment;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 326
    iget-object v2, p0, Lcom/perm/kate/ProfileInfoActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    if-ne v2, p1, :cond_0

    .line 339
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 329
    .local v0, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 330
    .local v1, "tm":Landroid/support/v4/app/FragmentTransaction;
    iget-object v2, p0, Lcom/perm/kate/ProfileInfoActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v2, :cond_1

    .line 331
    iget-object v2, p0, Lcom/perm/kate/ProfileInfoActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 332
    :cond_1
    invoke-virtual {p1}, Lcom/perm/kate/BaseFragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_2

    .line 333
    const v2, 0x7f0e007e

    invoke-virtual {v1, v2, p1, p2}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 337
    :goto_1
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 338
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    goto :goto_0

    .line 335
    :cond_2
    invoke-virtual {v1, p1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_1
.end method


# virtual methods
.method public displayRefreshState()V
    .locals 1

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->getRefreshState()Z

    move-result v0

    .line 344
    .local v0, "refreshState":Z
    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoActivity;->showProgressBar(Z)V

    .line 345
    return-void
.end method

.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/BaseFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/BaseFragment;->fillMenuItems(Landroid/view/Menu;)Z

    .line 147
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method getRefreshState()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 349
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    instance-of v1, v1, Lcom/perm/kate/ProfileFragment;

    if-eqz v1, :cond_1

    .line 350
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    iget-boolean v0, v0, Lcom/perm/kate/BaseFragment;->refreshState:Z

    .line 357
    :cond_0
    :goto_0
    return v0

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoActivity;->infoFragment:Lcom/perm/kate/BaseFragment;

    if-ne v1, v2, :cond_2

    .line 356
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    iget-boolean v0, v0, Lcom/perm/kate/BaseFragment;->refreshState:Z

    goto :goto_0

    .line 357
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    iget-boolean v0, v0, Lcom/perm/kate/BaseFragment;->refreshState:Z

    goto :goto_0
.end method

.method public onAvatarChanged()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    check-cast v0, Lcom/perm/kate/ProfileLeftFragment;

    invoke-virtual {v0}, Lcom/perm/kate/ProfileLeftFragment;->refreshInThread()V

    .line 381
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 385
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 386
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileInfoActivity;->setLeftPaneWidthByOrientation(I)V

    .line 387
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    .line 49
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/ProfileInfoActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 51
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string v0, "DATA1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    .line 55
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v0, :cond_7

    const v0, 0x7f030107

    :goto_0
    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoActivity;->setContentView(I)V

    .line 56
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->setupMenuButton()V

    .line 57
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->setupRefreshButton()V

    .line 58
    invoke-static {}, Lcom/perm/kate/ProfileFragment;->isTransparentHeader()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 59
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoActivity;->setHeaderTitle(Ljava/lang/String;)V

    .line 64
    :goto_1
    invoke-static {}, Lcom/perm/kate/ProfileFragment;->isTransparentHeader()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-nez v0, :cond_1

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->setContainerMargin()V

    .line 69
    :cond_1
    invoke-static {}, Lcom/perm/kate/ProfileFragment;->isTransparentHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    const v0, 0x7f0e01f4

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 71
    .local v13, "header":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 72
    .local v9, "dr":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 73
    .local v7, "clone":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v13, v7}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 76
    .end local v7    # "clone":Landroid/graphics/drawable/Drawable;
    .end local v9    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v13    # "header":Landroid/view/View;
    :cond_2
    invoke-static {}, Lcom/perm/kate/ProfileFragment;->isTransparentHeader()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    const v0, 0x7f0e0200

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    :cond_3
    if-nez p1, :cond_4

    .line 80
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v11

    .line 81
    .local v11, "fm":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v11}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v12

    .line 82
    .local v12, "ft":Landroid/support/v4/app/FragmentTransaction;
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v0, :cond_9

    .line 83
    new-instance v0, Lcom/perm/kate/ProfileLeftFragment;

    invoke-direct {v0}, Lcom/perm/kate/ProfileLeftFragment;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    .line 86
    :goto_2
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 87
    .local v6, "b":Landroid/os/Bundle;
    const-string v0, "com.perm.kate.user_id"

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->uid_str:Ljava/lang/String;

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v0, v6}, Lcom/perm/kate/BaseFragment;->setArguments(Landroid/os/Bundle;)V

    .line 89
    const v0, 0x7f0e0124

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v12, v0, v1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 90
    invoke-virtual {v12}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 93
    .end local v6    # "b":Landroid/os/Bundle;
    .end local v11    # "fm":Landroid/support/v4/app/FragmentManager;
    .end local v12    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_4
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v0, :cond_5

    .line 94
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->restoreFragmentReferences()V

    .line 96
    :cond_5
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v0, :cond_6

    .line 97
    const-string v0, "info"

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoActivity;->onTabSelected(Ljava/lang/String;)V

    .line 99
    :cond_6
    new-instance v0, Lcom/perm/utils/ScreenOrientationHelper;

    invoke-direct {v0}, Lcom/perm/utils/ScreenOrientationHelper;-><init>()V

    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v0, v1}, Lcom/perm/utils/ScreenOrientationHelper;->getOrientation(Landroid/content/Context;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileInfoActivity;->setLeftPaneWidthByOrientation(I)V

    .line 106
    :goto_3
    return-void

    .line 55
    :cond_7
    const v0, 0x7f0300e5

    goto/16 :goto_0

    .line 61
    :cond_8
    const v0, 0x7f0701db

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoActivity;->setHeaderTitle(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 100
    :catch_0
    move-exception v10

    .line 101
    .local v10, "ex":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v10}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 102
    invoke-static {v10}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 103
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/ImageLoader;->memoryCache:Lcom/perm/utils/MemoryCache;

    invoke-virtual {v0}, Lcom/perm/utils/MemoryCache;->clear()V

    .line 104
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->finish()V

    goto :goto_3

    .line 85
    .end local v10    # "ex":Ljava/lang/OutOfMemoryError;
    .restart local v11    # "fm":Landroid/support/v4/app/FragmentManager;
    .restart local v12    # "ft":Landroid/support/v4/app/FragmentTransaction;
    :cond_9
    :try_start_1
    new-instance v0, Lcom/perm/kate/ProfileFragment;

    invoke-direct {v0}, Lcom/perm/kate/ProfileFragment;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 134
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v1, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return v0

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v1, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    :cond_2
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 126
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 127
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 128
    invoke-virtual {p0, p1}, Lcom/perm/kate/ProfileInfoActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 129
    const/4 v0, 0x1

    return v0
.end method

.method protected onRefreshButton()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    instance-of v0, v0, Lcom/perm/kate/ProfileFragment;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v0}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    .line 122
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoActivity;->infoFragment:Lcom/perm/kate/BaseFragment;

    if-ne v0, v1, :cond_2

    .line 118
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->fragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v0}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    goto :goto_0

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->currentFragment:Lcom/perm/kate/BaseFragment;

    invoke-virtual {v0}, Lcom/perm/kate/BaseFragment;->onRefreshButton()V

    goto :goto_0
.end method

.method public onTabSelected(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string v0, "info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->infoFragment:Lcom/perm/kate/BaseFragment;

    if-nez v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->createInfoFragment()Lcom/perm/kate/BaseFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->infoFragment:Lcom/perm/kate/BaseFragment;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->infoFragment:Lcom/perm/kate/BaseFragment;

    const-string v1, "info"

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    .line 209
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoActivity;->displayRefreshState()V

    .line 210
    return-void

    .line 156
    :cond_2
    const-string v0, "wall"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 157
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->wallFragment:Lcom/perm/kate/BaseFragment;

    if-nez v0, :cond_3

    .line 158
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->createWallFragment()Lcom/perm/kate/BaseFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->wallFragment:Lcom/perm/kate/BaseFragment;

    .line 159
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->wallFragment:Lcom/perm/kate/BaseFragment;

    const-string v1, "wall"

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_4
    const-string v0, "notes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 161
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->notesFragment:Lcom/perm/kate/BaseFragment;

    if-nez v0, :cond_5

    .line 162
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->createNotesFragment()Lcom/perm/kate/BaseFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->notesFragment:Lcom/perm/kate/BaseFragment;

    .line 163
    :cond_5
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->notesFragment:Lcom/perm/kate/BaseFragment;

    const-string v1, "notes"

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_6
    const-string v0, "extra"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 165
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->extraFragment:Lcom/perm/kate/BaseFragment;

    if-nez v0, :cond_7

    .line 166
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->createExtraFragment()Lcom/perm/kate/BaseFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->extraFragment:Lcom/perm/kate/BaseFragment;

    .line 167
    :cond_7
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->extraFragment:Lcom/perm/kate/BaseFragment;

    const-string v1, "extra"

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_8
    const-string v0, "groups"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 169
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    if-nez v0, :cond_9

    .line 170
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->createGroupsFragment()Lcom/perm/kate/BaseFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    .line 171
    :cond_9
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->groupsFragment:Lcom/perm/kate/BaseFragment;

    const-string v1, "groups"

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto :goto_0

    .line 172
    :cond_a
    const-string v0, "photoalbums"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 173
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->photoAlbumsFragment:Lcom/perm/kate/BaseFragment;

    if-nez v0, :cond_b

    .line 174
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->createPhotoAlbumsFragment()Lcom/perm/kate/BaseFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->photoAlbumsFragment:Lcom/perm/kate/BaseFragment;

    .line 175
    :cond_b
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->photoAlbumsFragment:Lcom/perm/kate/BaseFragment;

    const-string v1, "photoalbums"

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 176
    :cond_c
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 177
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    if-nez v0, :cond_d

    .line 178
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->createAudioFragment()Lcom/perm/kate/BaseFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    .line 179
    :cond_d
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->audioFragment:Lcom/perm/kate/BaseFragment;

    const-string v1, "audio"

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    :cond_e
    const-string v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 181
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    if-nez v0, :cond_f

    .line 182
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->createVideoFragment()Lcom/perm/kate/BaseFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    .line 183
    :cond_f
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->videoFragment:Lcom/perm/kate/BaseFragment;

    const-string v1, "video"

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 184
    :cond_10
    const-string v0, "uservideo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 185
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->userVideoFragment:Lcom/perm/kate/BaseFragment;

    if-nez v0, :cond_11

    .line 186
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->createUserVideoFragment()Lcom/perm/kate/BaseFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->userVideoFragment:Lcom/perm/kate/BaseFragment;

    .line 187
    :cond_11
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->userVideoFragment:Lcom/perm/kate/BaseFragment;

    const-string v1, "uservideo"

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 188
    :cond_12
    const-string v0, "docs"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 189
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->docsFragment:Lcom/perm/kate/BaseFragment;

    if-nez v0, :cond_13

    .line 190
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->createDocsFragment()Lcom/perm/kate/BaseFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->docsFragment:Lcom/perm/kate/BaseFragment;

    .line 191
    :cond_13
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->docsFragment:Lcom/perm/kate/BaseFragment;

    const-string v1, "docs"

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 192
    :cond_14
    const-string v0, "friends"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 193
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    if-nez v0, :cond_15

    .line 194
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->createFriendsFragment()Lcom/perm/kate/BaseFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    .line 195
    :cond_15
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->friendsFragment:Lcom/perm/kate/BaseFragment;

    const-string v1, "friends"

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 196
    :cond_16
    const-string v0, "followers"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 197
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->followersFragment:Lcom/perm/kate/BaseFragment;

    if-nez v0, :cond_17

    .line 198
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileInfoActivity;->createFollowersFragment(Z)Lcom/perm/kate/BaseFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->followersFragment:Lcom/perm/kate/BaseFragment;

    .line 199
    :cond_17
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->followersFragment:Lcom/perm/kate/BaseFragment;

    const-string v1, "followers"

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 200
    :cond_18
    const-string v0, "subscriptions"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 201
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->subscriptionsFragment:Lcom/perm/kate/BaseFragment;

    if-nez v0, :cond_19

    .line 202
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileInfoActivity;->createFollowersFragment(Z)Lcom/perm/kate/BaseFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->subscriptionsFragment:Lcom/perm/kate/BaseFragment;

    .line 203
    :cond_19
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->subscriptionsFragment:Lcom/perm/kate/BaseFragment;

    const-string v1, "subscriptions"

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    :cond_1a
    const-string v0, "gifts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->giftsFragment:Lcom/perm/kate/BaseFragment;

    if-nez v0, :cond_1b

    .line 206
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoActivity;->createGiftsFragment()Lcom/perm/kate/BaseFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->giftsFragment:Lcom/perm/kate/BaseFragment;

    .line 207
    :cond_1b
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->giftsFragment:Lcom/perm/kate/BaseFragment;

    const-string v1, "gifts"

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/ProfileInfoActivity;->showFragment(Lcom/perm/kate/BaseFragment;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onUserRefreshed(Lcom/perm/kate/api/User;)V
    .locals 1
    .param p1, "user"    # Lcom/perm/kate/api/User;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->infoFragment:Lcom/perm/kate/BaseFragment;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoActivity;->infoFragment:Lcom/perm/kate/BaseFragment;

    check-cast v0, Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/ProfileInfoFragment;->userRefreshed(Lcom/perm/kate/api/User;)V

    .line 323
    :cond_0
    return-void
.end method
