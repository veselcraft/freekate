.class public Lcom/perm/kate/ProfileInfoFragment;
.super Lcom/perm/kate/BaseFragment;
.source "ProfileInfoFragment.java"


# instance fields
.field private Edit_ClickListener:Landroid/view/View$OnClickListener;

.field private add_friend_callback:Lcom/perm/kate/session/Callback;

.field private add_friend_region:Landroid/widget/LinearLayout;

.field private avatars_photos_callback:Lcom/perm/kate/session/Callback;

.field private blacklisted_by_me:Ljava/lang/Integer;

.field callback_city:Lcom/perm/kate/session/Callback;

.field callback_country:Lcom/perm/kate/session/Callback;

.field private can_write_private_message:Ljava/lang/Integer;

.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field deactivated:Ljava/lang/String;

.field private delete_friend_callback:Lcom/perm/kate/session/Callback;

.field private friendClickListener:Landroid/view/View$OnClickListener;

.field private imv_profile_info_user_photo:Landroid/widget/ImageView;

.field private is_favorite:Ljava/lang/Integer;

.field private is_follower:Z

.field private is_friend_callback:Lcom/perm/kate/session/Callback;

.field private is_me:Z

.field listener:Lcom/perm/kate/ProfileActivityCallback;

.field private ll_profile_edit_region:Landroid/widget/LinearLayout;

.field private ll_profile_education_region:Landroid/widget/LinearLayout;

.field private ll_profile_place_region:Landroid/widget/LinearLayout;

.field private photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

.field private photoClick:Landroid/view/View$OnClickListener;

.field private profileIdClickListener:Landroid/view/View$OnClickListener;

.field private relation_partner_ClickListener:Landroid/view/View$OnClickListener;

.field public relation_partner_first_name:Ljava/lang/String;

.field public relation_partner_id:Ljava/lang/Long;

.field public relation_partner_last_name:Ljava/lang/String;

.field private repliesClickListener:Landroid/view/View$OnClickListener;

.field private replies_region:Landroid/widget/LinearLayout;

.field private statusClickListener:Landroid/view/View$OnClickListener;

.field private status_audio:Lcom/perm/kate/api/Audio;

.field private tv_profile_info_birthday:Landroid/widget/TextView;

.field private tv_profile_info_country:Landroid/widget/TextView;

.field private tv_profile_info_id:Landroid/widget/TextView;

.field private tv_profile_info_rate:Landroid/widget/TextView;

.field private tv_profile_info_relation:Landroid/widget/TextView;

.field private tv_profile_info_sex:Landroid/widget/TextView;

.field private tv_profile_info_university:Landroid/widget/TextView;

.field private tv_profile_info_user_name:Landroid/widget/TextView;

.field private u:Lcom/perm/kate/api/User;

.field uid:Ljava/lang/Long;

.field private uid_str:Ljava/lang/String;

.field protected uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;


# direct methods
.method public static synthetic $r8$lambda$lB51a0KwS1j_bQZ4Rmjt20y60V0(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->lambda$displayUser$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/perm/kate/ProfileInfoFragment;->is_follower:Z

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->deactivated:Ljava/lang/String;

    .line 481
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileInfoFragment$2;-><init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->callback_city:Lcom/perm/kate/session/Callback;

    .line 502
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$3;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileInfoFragment$3;-><init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->callback_country:Lcom/perm/kate/session/Callback;

    .line 530
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$4;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->photoClick:Landroid/view/View$OnClickListener;

    .line 537
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$5;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->Edit_ClickListener:Landroid/view/View$OnClickListener;

    .line 544
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$6;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->statusClickListener:Landroid/view/View$OnClickListener;

    .line 585
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$7;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileInfoFragment$7;-><init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->avatars_photos_callback:Lcom/perm/kate/session/Callback;

    .line 823
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$13;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->repliesClickListener:Landroid/view/View$OnClickListener;

    .line 870
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$14;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->friendClickListener:Landroid/view/View$OnClickListener;

    .line 934
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$19;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileInfoFragment$19;-><init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->delete_friend_callback:Lcom/perm/kate/session/Callback;

    .line 958
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$20;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileInfoFragment$20;-><init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->add_friend_callback:Lcom/perm/kate/session/Callback;

    .line 992
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$22;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$22;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    .line 1003
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$23;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$23;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 1016
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$24;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$24;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->relation_partner_ClickListener:Landroid/view/View$OnClickListener;

    .line 1039
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$25;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$25;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->profileIdClickListener:Landroid/view/View$OnClickListener;

    .line 1069
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$27;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileInfoFragment$27;-><init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->is_friend_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/api/User;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/ProfileInfoFragment;Lcom/perm/kate/api/User;Landroid/view/View;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/ProfileInfoFragment;->displayUser(Lcom/perm/kate/api/User;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->showAvatarsAlbum()V

    return-void
.end method

.method static synthetic access$1102(Lcom/perm/kate/ProfileInfoFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment;->blacklisted_by_me:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/perm/kate/ProfileInfoFragment;)Z
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->isFriend()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1300(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->showDeleteDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->showAddDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->deleteFriend()V

    return-void
.end method

.method static synthetic access$1600(Lcom/perm/kate/ProfileInfoFragment;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileInfoFragment;->addFriend(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/ProfileInfoFragment;->delete_friend_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/ProfileInfoFragment;->add_friend_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->displayFriendStatusOnUiThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/ProfileInfoFragment;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/ProfileInfoFragment;->city:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/perm/kate/ProfileInfoFragment;Z)Z
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/perm/kate/ProfileInfoFragment;->is_follower:Z

    return p1
.end method

.method static synthetic access$202(Lcom/perm/kate/ProfileInfoFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment;->city:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/perm/kate/ProfileInfoFragment;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileInfoFragment;->displayFriendStatusOnUiThread2(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/perm/kate/ProfileInfoFragment;Landroid/view/View;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileInfoFragment;->displayFriendStatus(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/perm/kate/ProfileInfoFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileInfoFragment;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/ProfileInfoFragment;->is_friend_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/perm/kate/ProfileInfoFragment;Landroid/view/View;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/ProfileInfoFragment;->displayFriendStatus2(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$2602(Lcom/perm/kate/ProfileInfoFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment;->is_favorite:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->displayUserOnUiThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/ProfileInfoFragment;)Ljava/lang/String;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/ProfileInfoFragment;->country:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/perm/kate/ProfileInfoFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment;->country:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/perm/kate/ProfileInfoFragment;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    return p0
.end method

.method static synthetic access$600(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/api/Audio;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/ProfileInfoFragment;->status_audio:Lcom/perm/kate/api/Audio;

    return-object p0
.end method

.method static synthetic access$700(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->showStatusAcivity()V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/perm/kate/ProfileInfoFragment;->avatars_photos_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$900(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->showProfileImage()V

    return-void
.end method

.method private addFriend(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 918
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 919
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$18;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/ProfileInfoFragment$18;-><init>(Lcom/perm/kate/ProfileInfoFragment;Ljava/lang/String;)V

    .line 924
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private addToBlackList()V
    .locals 3

    .line 798
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/ProfileInfoFragment$11;

    invoke-direct {v2, p0}, Lcom/perm/kate/ProfileInfoFragment$11;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    invoke-static {v0, v1, v2}, Lcom/perm/kate/BlackListActivity;->AddToBlackList(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V

    return-void
.end method

.method private checkDeactivated(Ljava/lang/String;)V
    .locals 1

    .line 177
    invoke-static {p1}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "deleted"

    .line 179
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f0f0551

    .line 180
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    goto :goto_0

    :cond_1
    const-string v0, "banned"

    .line 181
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f0f0550

    .line 182
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private deleteFriend()V
    .locals 1

    const/4 v0, 0x1

    .line 908
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 909
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$17;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$17;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    .line 914
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private displayCity(Lcom/perm/kate/api/User;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 376
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment;->city:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 377
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->country:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 378
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_country:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_country:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p1, 0x1

    .line 381
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileInfoFragment;->setVisiblePlaceRegion(Z)V

    :cond_1
    return-void
.end method

.method private displayCountry(Lcom/perm/kate/api/User;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 365
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment;->country:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 366
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->city:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 367
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_country:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 369
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_country:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p1, 0x1

    .line 370
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileInfoFragment;->setVisiblePlaceRegion(Z)V

    :cond_1
    return-void
.end method

.method private displayFriendStatus(Landroid/view/View;)V
    .locals 1

    .line 986
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->isFriend()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 987
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment;->add_friend_region:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 989
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment;->add_friend_region:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private displayFriendStatus2(Landroid/view/View;I)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    const/16 v4, 0x8

    if-eqz v3, :cond_2

    .line 1100
    iget-object v3, p0, Lcom/perm/kate/ProfileInfoFragment;->add_friend_region:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 1102
    :cond_2
    iget-object v3, p0, Lcom/perm/kate/ProfileInfoFragment;->add_friend_region:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_2
    if-eqz p1, :cond_6

    const v3, 0x7f0901e4

    .line 1104
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const v5, 0x7f0903b2

    .line 1105
    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eq p2, v2, :cond_4

    if-ne p2, v0, :cond_3

    goto :goto_3

    .line 1110
    :cond_3
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 1107
    :cond_4
    :goto_3
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    if-ne p2, v2, :cond_5

    const p2, 0x7f0f0307

    goto :goto_4

    :cond_5
    const p2, 0x7f0f0201

    .line 1108
    :goto_4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_6
    :goto_5
    return-void
.end method

.method private displayFriendStatusOnUiThread()V
    .locals 2

    .line 975
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 977
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/ProfileInfoFragment$21;

    invoke-direct {v1, p0}, Lcom/perm/kate/ProfileInfoFragment$21;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displayFriendStatusOnUiThread2(I)V
    .locals 2

    .line 1087
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1089
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/ProfileInfoFragment$28;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/ProfileInfoFragment$28;-><init>(Lcom/perm/kate/ProfileInfoFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displayUser(Lcom/perm/kate/api/User;Landroid/view/View;)V
    .locals 20
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    if-nez v3, :cond_0

    return-void

    .line 249
    :cond_0
    iget-object v0, v1, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_id:Landroid/widget/TextView;

    if-nez v0, :cond_1

    return-void

    .line 251
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v2, :cond_2

    return-void

    .line 256
    :cond_2
    iget-object v0, v2, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x2

    if-ne v0, v6, :cond_3

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v6, 0x1

    .line 258
    :goto_1
    iget-object v0, v2, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const v7, 0x7f09009a

    const v8, 0x7f090234

    const-wide/16 v9, 0x0

    const v11, 0x7f090259

    const/16 v12, 0x8

    if-eqz v0, :cond_7

    .line 259
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v11, 0x7f0f03a4

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(I)V

    .line 260
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v8, v2, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, v2, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    const/16 v8, 0x8

    :goto_2
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 261
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v7, v2, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_6

    iget-object v7, v2, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x0

    goto :goto_3

    :cond_6
    const/16 v7, 0x8

    :goto_3
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 263
    :cond_7
    iget-wide v13, v2, Lcom/perm/kate/api/User;->last_seen:J

    cmp-long v0, v13, v9

    if-lez v0, :cond_8

    .line 264
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v11

    iget-wide v13, v2, Lcom/perm/kate/api/User;->last_seen:J

    iget-object v15, v2, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    invoke-static {v11, v13, v14, v6, v15}, Lcom/perm/kate/Helper;->getLastSee(Landroid/content/Context;JZZ)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 266
    :cond_8
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v11, 0x7f0f0396

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(I)V

    .line 267
    :goto_4
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 268
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 272
    :goto_5
    iget-object v0, v2, Lcom/perm/kate/api/User;->photo_200:Ljava/lang/String;

    .line 273
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 274
    iget-object v0, v2, Lcom/perm/kate/api/User;->photo_big:Ljava/lang/String;

    :cond_9
    move-object v14, v0

    .line 275
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v13

    iget-object v15, v1, Lcom/perm/kate/ProfileInfoFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    const/16 v16, 0x1

    const/16 v17, 0xc8

    invoke-static {}, Lcom/perm/kate/ProfileFragment;->getBigAvaStubId()I

    move-result v18

    const/16 v19, 0x1

    invoke-virtual/range {v13 .. v19}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 277
    iget-object v0, v2, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    const-string v7, ""

    const-string v8, " "

    if-eqz v0, :cond_a

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 280
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 281
    :goto_6
    iget-object v11, v2, Lcom/perm/kate/api/User;->verified:Ljava/lang/Integer;

    const/16 v13, 0x21

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-ne v11, v4, :cond_c

    .line 282
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 283
    invoke-virtual {v11, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    const-string v14, "  "

    invoke-virtual {v0, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 284
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v0

    if-eqz v0, :cond_b

    const v0, 0x7f0801ed

    goto :goto_7

    :cond_b
    const v0, 0x7f0801ee

    .line 285
    :goto_7
    new-instance v14, Landroid/text/style/ImageSpan;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v15

    invoke-direct {v14, v15, v0, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v15

    invoke-virtual {v11, v14, v0, v15, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 286
    iget-object v0, v1, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_8

    .line 288
    :cond_c
    iget-object v11, v1, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    :goto_8
    iget-object v0, v2, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    invoke-direct {v1, v0}, Lcom/perm/kate/ProfileInfoFragment;->getSex(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 291
    iget-object v11, v1, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_sex:Landroid/widget/TextView;

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v0, v1, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_sex:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 294
    :cond_d
    iget-object v0, v1, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_sex:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 295
    :goto_9
    iget-object v0, v2, Lcom/perm/kate/api/User;->relation:Ljava/lang/Integer;

    iget-object v11, v2, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    invoke-direct {v1, v0, v11}, Lcom/perm/kate/ProfileInfoFragment;->getRelation(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v11

    .line 296
    iget-object v0, v1, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    if-eqz v11, :cond_f

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    goto :goto_a

    :cond_e
    const/4 v14, 0x0

    goto :goto_b

    :cond_f
    :goto_a
    const/16 v14, 0x8

    :goto_b
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setVisibility(I)V

    .line 297
    iget-object v0, v1, Lcom/perm/kate/ProfileInfoFragment;->relation_partner_id:Ljava/lang/Long;

    if-eqz v0, :cond_10

    .line 299
    :try_start_0
    iget-object v0, v2, Lcom/perm/kate/api/User;->relation:Ljava/lang/Integer;

    iget-object v14, v2, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    invoke-direct {v1, v0, v14}, Lcom/perm/kate/ProfileInfoFragment;->getRelationIn(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 300
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Lcom/perm/kate/ProfileInfoFragment;->relation_partner_first_name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/perm/kate/ProfileInfoFragment;->relation_partner_last_name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 301
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 302
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v11}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 303
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    .line 304
    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    sub-int v14, v15, v14

    .line 305
    new-instance v12, Landroid/text/style/StyleSpan;

    invoke-direct {v12, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v12, v14, v15, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 306
    new-instance v12, Lcom/perm/kate/ProfileInfoFragment$URLSpanNoUnderline;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://vk.com/id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/perm/kate/ProfileInfoFragment;->relation_partner_id:Ljava/lang/Long;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v12, v4}, Lcom/perm/kate/ProfileInfoFragment$URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12, v14, v15, v13}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 307
    iget-object v4, v1, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, v1, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/perm/kate/ProfileInfoFragment;->relation_partner_id:Ljava/lang/Long;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 309
    iget-object v0, v1, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/perm/kate/ProfileInfoFragment;->relation_partner_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_c

    :catchall_0
    move-exception v0

    .line 311
    iget-object v4, v1, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 313
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_c

    .line 316
    :cond_10
    iget-object v0, v1, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c
    const v0, 0x7f0903bb

    .line 319
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 320
    iget-wide v4, v2, Lcom/perm/kate/api/User;->last_seen:J

    cmp-long v11, v4, v9

    if-lez v11, :cond_11

    const/4 v4, 0x0

    goto :goto_d

    :cond_11
    const/16 v4, 0x8

    :goto_d
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 321
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    iget-wide v9, v2, Lcom/perm/kate/api/User;->last_seen:J

    iget-object v5, v2, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v4, v9, v10, v6, v5}, Lcom/perm/kate/Helper;->getLastSee(Landroid/content/Context;JZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 323
    invoke-direct/range {p0 .. p1}, Lcom/perm/kate/ProfileInfoFragment;->displayCity(Lcom/perm/kate/api/User;)V

    .line 324
    invoke-direct/range {p0 .. p1}, Lcom/perm/kate/ProfileInfoFragment;->displayCountry(Lcom/perm/kate/api/User;)V

    .line 325
    iget-object v0, v2, Lcom/perm/kate/api/User;->rate:Ljava/lang/Integer;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_12

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0f0280

    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/perm/kate/api/User;->rate:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 327
    iget-object v4, v1, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_rate:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v0, v1, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_rate:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_e

    .line 330
    :cond_12
    iget-object v0, v1, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_rate:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 332
    :goto_e
    iget-object v0, v2, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_13

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0f01b3

    invoke-virtual {v1, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getStringAge(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 334
    iget-object v4, v1, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_birthday:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    .line 335
    invoke-direct {v1, v4}, Lcom/perm/kate/ProfileInfoFragment;->setVisibleBirthdayRegion(Z)V

    .line 338
    :cond_13
    iget-object v0, v2, Lcom/perm/kate/api/User;->university_name:Ljava/lang/String;

    if-eqz v0, :cond_15

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 339
    iget-object v0, v2, Lcom/perm/kate/api/User;->university_name:Ljava/lang/String;

    const-string v4, "\r\n"

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 340
    iget-object v4, v2, Lcom/perm/kate/api/User;->graduation:Ljava/lang/Integer;

    if-eqz v4, :cond_14

    invoke-virtual {v4, v7}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 341
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \'"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/perm/kate/api/User;->graduation:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/perm/kate/api/User;->faculty_name:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    :cond_14
    iget-object v4, v1, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_university:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    .line 343
    invoke-direct {v1, v4}, Lcom/perm/kate/ProfileInfoFragment;->setVisibleEducationRegion(Z)V

    :cond_15
    const v0, 0x7f0901f0

    .line 345
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 346
    iget-object v4, v2, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    if-eqz v4, :cond_17

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    const/4 v4, 0x0

    .line 347
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0901af

    .line 348
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    iget-object v2, v2, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    invoke-static {v5, v2}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0901a3

    .line 349
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, v1, Lcom/perm/kate/ProfileInfoFragment;->status_audio:Lcom/perm/kate/api/Audio;

    if-eqz v2, :cond_16

    const/4 v5, 0x0

    goto :goto_f

    :cond_16
    const/16 v5, 0x8

    :goto_f
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    :cond_17
    const/16 v2, 0x8

    .line 352
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 358
    :goto_10
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/perm/kate/ProfileInfoFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/perm/kate/ProfileInfoFragment$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private displayUserOnUiThread()V
    .locals 2

    .line 167
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/ProfileInfoFragment$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/ProfileInfoFragment$1;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private downloadAvatarsAlbum()V
    .locals 1

    .line 598
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$8;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    .line 603
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private editPhotoBeforeUpload(Ljava/util/ArrayList;)V
    .locals 3

    .line 1011
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uris"

    .line 1012
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 1013
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private faveAddUser()V
    .locals 2

    .line 1116
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$29;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileInfoFragment$29;-><init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/app/Activity;)V

    const/4 v1, 0x1

    .line 1133
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 1134
    new-instance v1, Lcom/perm/kate/ProfileInfoFragment$30;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/ProfileInfoFragment$30;-><init>(Lcom/perm/kate/ProfileInfoFragment;Lcom/perm/kate/session/Callback;)V

    .line 1139
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private faveRemoveUser()V
    .locals 2

    .line 1143
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$31;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileInfoFragment$31;-><init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/app/Activity;)V

    const/4 v1, 0x1

    .line 1160
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 1161
    new-instance v1, Lcom/perm/kate/ProfileInfoFragment$32;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/ProfileInfoFragment$32;-><init>(Lcom/perm/kate/ProfileInfoFragment;Lcom/perm/kate/session/Callback;)V

    .line 1166
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private fetchCityAndCountry()V
    .locals 4

    .line 517
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    if-nez v0, :cond_0

    return-void

    .line 520
    :cond_0
    iget-object v0, v0, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 521
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchCity(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->city:Ljava/lang/String;

    goto :goto_0

    .line 523
    :cond_1
    iput-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->city:Ljava/lang/String;

    .line 524
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 525
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchCountry(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->country:Ljava/lang/String;

    goto :goto_1

    .line 527
    :cond_2
    iput-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->country:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private getCityIfMissing()V
    .locals 4

    .line 474
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->city:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 475
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 476
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->callback_city:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/session/Session;->getCities(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private getCountryIfMissing()V
    .locals 4

    .line 495
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->country:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 496
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 497
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 498
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->callback_country:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/session/Session;->getCountries(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private getIsFriendInThread()V
    .locals 1

    .line 1061
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$26;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$26;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    .line 1066
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getRelation(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 399
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, " "

    const v5, 0x7f0f0282

    if-ne v1, v3, :cond_4

    if-eqz p2, :cond_3

    .line 400
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 402
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 403
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f0284

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 404
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 405
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f0285

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 401
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f0283

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 407
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_9

    if-eqz p2, :cond_8

    .line 408
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    .line 410
    :cond_5
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->relation_partner_id:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 411
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f0289

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 412
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 413
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f0287

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 414
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_9

    .line 415
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f0288

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 409
    :cond_8
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f0286

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 417
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_d

    if-eqz p2, :cond_c

    .line 418
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2

    .line 420
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_b

    .line 421
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f028b

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 422
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_d

    .line 423
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f028c

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 419
    :cond_c
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f028a

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 425
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x4

    if-ne v1, v6, :cond_11

    if-eqz p2, :cond_10

    .line 426
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_3

    .line 428
    :cond_e
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_f

    .line 429
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f028e

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 430
    :cond_f
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_11

    .line 431
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f028f

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 427
    :cond_10
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f028d

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 433
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_12

    .line 434
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f0290

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 435
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x6

    if-ne v1, v6, :cond_13

    .line 436
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f0291

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 437
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x7

    if-ne v1, v6, :cond_17

    if-eqz p2, :cond_16

    .line 438
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_4

    .line 440
    :cond_14
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_15

    .line 441
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f0293

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 442
    :cond_15
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v2, :cond_17

    .line 443
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f0294

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 439
    :cond_16
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f0292

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 445
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_18

    .line 446
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f0295

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_18
    return-object v0
.end method

.method private getRelationIn(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    if-eqz p2, :cond_6

    .line 453
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 455
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    const-string v3, " "

    if-ne v1, v2, :cond_2

    .line 456
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f0296

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 458
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 459
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f0297

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 461
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_5

    .line 462
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 463
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f0298

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 464
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v2, :cond_5

    .line 465
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f0299

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 467
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x7

    if-ne p1, p2, :cond_6

    .line 468
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f029a

    invoke-virtual {p0, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    :goto_0
    return-object v0
.end method

.method private getSex(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 388
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, " "

    const v4, 0x7f0f02b7

    if-ne v1, v2, :cond_1

    .line 389
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f0f02b8

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 390
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v4}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f0f02b9

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method

.method private initUiFields(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f09018a

    .line 186
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    .line 187
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->photoClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0903c0

    .line 188
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    const v0, 0x7f0903be

    .line 189
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_sex:Landroid/widget/TextView;

    const v0, 0x7f0903bd

    .line 190
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    const v0, 0x7f0903b9

    .line 191
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_country:Landroid/widget/TextView;

    const v0, 0x7f0903bc

    .line 192
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_rate:Landroid/widget/TextView;

    const v0, 0x7f0903b8

    .line 193
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_birthday:Landroid/widget/TextView;

    const v0, 0x7f0903ba

    .line 194
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_id:Landroid/widget/TextView;

    const v0, 0x7f0903bf

    .line 195
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_university:Landroid/widget/TextView;

    const v0, 0x7f0901ed

    .line 199
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->ll_profile_place_region:Landroid/widget/LinearLayout;

    const v0, 0x7f0901e2

    .line 200
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->ll_profile_education_region:Landroid/widget/LinearLayout;

    const v0, 0x7f090034

    .line 201
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->add_friend_region:Landroid/widget/LinearLayout;

    const v0, 0x7f09029a

    .line 202
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->replies_region:Landroid/widget/LinearLayout;

    const v0, 0x7f0901e1

    .line 203
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->ll_profile_edit_region:Landroid/widget/LinearLayout;

    .line 204
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->Edit_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_id:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->profileIdClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 207
    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->setVisibleBirthdayRegion(Z)V

    .line 208
    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->setVisiblePlaceRegion(Z)V

    .line 209
    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->setVisibleEducationRegion(Z)V

    .line 210
    iget-boolean v0, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->setVisibleFriendsRegionsRegion(Z)V

    .line 212
    iget-boolean v0, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->setVisibleEditRegion(Z)V

    .line 213
    iget-boolean v0, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    if-nez v0, :cond_0

    .line 214
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileInfoFragment;->displayFriendStatus(Landroid/view/View;)V

    .line 215
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->add_friend_region:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->friendClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->replies_region:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->repliesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901f0

    .line 220
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->statusClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private isFriend()Z
    .locals 6

    .line 928
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 929
    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    return v0

    .line 931
    :cond_0
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v0, v1, v4, v5}, Lcom/perm/kate/db/DataHelper;->isFriend(JJ)Z

    move-result v0

    return v0
.end method

.method private synthetic lambda$displayUser$0()V
    .locals 2

    .line 359
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->replies_region:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->can_write_private_message:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private removeFromBlackList()V
    .locals 3

    .line 808
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/ProfileInfoFragment$12;

    invoke-direct {v2, p0}, Lcom/perm/kate/ProfileInfoFragment$12;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    invoke-static {v0, v1, v2}, Lcom/perm/kate/BlackListActivity;->removeFromBlackList(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V

    return-void
.end method

.method private setVisibleBirthdayRegion(Z)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_birthday:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setVisibleEditRegion(Z)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->ll_profile_edit_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private setVisibleEducationRegion(Z)V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->ll_profile_education_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private setVisibleFriendsRegionsRegion(Z)V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->replies_region:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->add_friend_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private setVisiblePlaceRegion(Z)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->ll_profile_place_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private showAddDialog()V
    .locals 5

    .line 893
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c001f

    const/4 v2, 0x0

    .line 894
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09011d

    .line 895
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 896
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f0182

    .line 897
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v4, Lcom/perm/kate/ProfileInfoFragment$16;

    invoke-direct {v4, p0, v1}, Lcom/perm/kate/ProfileInfoFragment$16;-><init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/widget/EditText;)V

    const v1, 0x7f0f05a7

    .line 898
    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f037a

    .line 903
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 904
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showAvatarsAlbum()V
    .locals 4

    .line 607
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 608
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/PhotosActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.aid"

    const-wide/16 v2, -0x6

    .line 609
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 610
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;

    const-string v2, "com.perm.kate.uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showDeleteDialog()V
    .locals 4

    .line 881
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f01d8

    .line 882
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f01e3

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/ProfileInfoFragment$15;

    invoke-direct {v2, p0}, Lcom/perm/kate/ProfileInfoFragment$15;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    const v3, 0x7f0f05a7

    .line 883
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f037a

    const/4 v3, 0x0

    .line 888
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 889
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showProfileImage()V
    .locals 9

    .line 567
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/perm/kate/api/User;->photo_big:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_2

    .line 569
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 570
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 571
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 572
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const-wide/16 v3, -0x6

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v2, v1

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/db/DataHelper;->fetchPhotos(JJJ)Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/perm/kate/db/DataHelper;->getPhotos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    .line 574
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 575
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_4

    .line 576
    new-instance v2, Lcom/perm/kate/api/Photo;

    invoke-direct {v2}, Lcom/perm/kate/api/Photo;-><init>()V

    .line 577
    iget-object v3, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-object v3, v3, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->shouldDisplayBigPhotos()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    .line 578
    iget-object v3, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-object v3, v3, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-object v3, v3, Lcom/perm/kate/api/User;->photo_big:Ljava/lang/String;

    :goto_1
    iput-object v3, v2, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 579
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v2, "com.perm.kate.photos"

    .line 581
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 582
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private showStatusAcivity()V
    .locals 3

    .line 818
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 819
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/StatusActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 820
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private startSquareCrop(Landroid/net/Uri;II)V
    .locals 3

    .line 1170
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/SinglePhotoViewer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uri"

    .line 1171
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "resize_option"

    .line 1172
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "rotate"

    .line 1173
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "crop"

    const/4 p2, 0x1

    .line 1174
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x4

    .line 1175
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 6

    const/4 v0, 0x0

    const/16 v1, 0x23

    const/16 v2, 0xf3c

    const v3, 0x7f0f01db

    .line 690
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 691
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->isFriend()Z

    move-result v1

    .line 692
    iget-boolean v2, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    const/16 v2, 0x22

    const/16 v3, 0x3f4

    const v4, 0x7f0f01e3

    .line 693
    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 694
    :cond_0
    iget-boolean v2, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    .line 695
    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->blacklisted_by_me:Ljava/lang/Integer;

    const/16 v4, 0x1770

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v3, :cond_1

    const/16 v2, 0x25

    const v5, 0x7f0f01e5

    .line 696
    invoke-interface {p1, v0, v2, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const/16 v2, 0x24

    const v5, 0x7f0f02e4

    .line 698
    invoke-interface {p1, v0, v2, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_2
    :goto_0
    const/16 v2, 0x3e8

    const/16 v4, 0x1388

    const v5, 0x7f0f025d

    .line 700
    invoke-interface {p1, v0, v2, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 701
    iget-boolean v2, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    if-nez v2, :cond_4

    .line 702
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v4, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-static {v2, v4}, Lcom/perm/utils/OnlineNotificationsHelper;->isEnabledUser(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v2

    const/16 v4, 0x138d

    if-eqz v2, :cond_3

    const/16 v2, 0x3ef

    const v5, 0x7f0f0253

    .line 703
    invoke-interface {p1, v0, v2, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    :cond_3
    const/16 v2, 0x3ed

    const v5, 0x7f0f0254

    .line 705
    invoke-interface {p1, v0, v2, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 707
    :cond_4
    :goto_1
    iget-boolean v2, p0, Lcom/perm/kate/ProfileInfoFragment;->is_follower:Z

    if-eqz v2, :cond_5

    const/16 v2, 0x3fb

    const/16 v4, 0x1b61

    const v5, 0x7f0f02eb

    .line 708
    invoke-interface {p1, v0, v2, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 709
    :cond_5
    iget-boolean v2, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    if-nez v2, :cond_6

    const/16 v2, 0x3f5

    const/16 v4, 0x1b65

    const v5, 0x7f0f01d7

    .line 710
    invoke-interface {p1, v0, v2, v4, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 711
    :cond_6
    iget-boolean v2, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    if-nez v2, :cond_7

    if-eqz v1, :cond_7

    const/16 v1, 0x3fd

    const/16 v2, 0x1b6d

    const v4, 0x7f0f0204

    .line 712
    invoke-interface {p1, v0, v1, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 713
    :cond_7
    iget-boolean v1, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->is_favorite:Ljava/lang/Integer;

    if-eqz v1, :cond_9

    .line 714
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1b6f

    if-ne v1, v3, :cond_8

    const/16 v1, 0x400

    const v4, 0x7f0f029b

    .line 715
    invoke-interface {p1, v0, v1, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2

    :cond_8
    const/16 v1, 0x3ff

    const v4, 0x7f0f0186

    .line 717
    invoke-interface {p1, v0, v1, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 719
    :cond_9
    :goto_2
    iget-boolean v1, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    if-nez v1, :cond_c

    .line 720
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/perm/utils/WallSubscriptions;->subscribed(J)Z

    move-result v1

    const/16 v2, 0x1b70

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/perm/kate/UpdateService;->regularRefreshEnabled()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_a
    const/16 v1, 0x402

    const v4, 0x7f0f059c

    .line 724
    invoke-interface {p1, v0, v1, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_4

    .line 721
    :cond_b
    :goto_3
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->deactivated:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/16 v1, 0x401

    const v4, 0x7f0f059d

    .line 722
    invoke-interface {p1, v0, v1, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 726
    :cond_c
    :goto_4
    iget-boolean v1, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    if-nez v1, :cond_d

    const/16 v1, 0x403

    const/16 v2, 0x1b71

    const v4, 0x7f0f0463

    .line 727
    invoke-interface {p1, v0, v1, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_d
    const/16 v1, 0x404

    const/16 v2, 0x1b7b

    const v4, 0x7f0f0428

    .line 728
    invoke-interface {p1, v0, v1, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v1, 0x405

    const/16 v2, 0x1b85

    const v4, 0x7f0f0332

    .line 729
    invoke-interface {p1, v0, v1, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return v3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 837
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/perm/kate/photoupload/PhotoChooser;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/perm/kate/photoupload/PhotoChooser$Callback;)Landroid/net/Uri;

    const-string v0, "rotate"

    const-string v1, "resize_option"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-nez p1, :cond_0

    if-ne p2, v4, :cond_0

    const-string v5, "uris"

    .line 839
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 840
    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 841
    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 842
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-direct {p0, v5, v6, v7}, Lcom/perm/kate/ProfileInfoFragment;->startSquareCrop(Landroid/net/Uri;II)V

    :cond_0
    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    if-ne p2, v4, :cond_1

    if-eqz p3, :cond_1

    const-string v5, "new_status"

    .line 846
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 847
    invoke-static {v5}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 848
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8, v5, v3}, Lcom/perm/kate/Helper;->showPublishStatusDialog(Landroid/app/Activity;JLjava/lang/String;Z)V

    :cond_1
    if-ne p1, v2, :cond_2

    if-ne p2, v4, :cond_2

    .line 852
    iget-object v5, p0, Lcom/perm/kate/ProfileInfoFragment;->listener:Lcom/perm/kate/ProfileActivityCallback;

    invoke-interface {v5}, Lcom/perm/kate/ProfileActivityCallback;->onAvatarChanged()V

    :cond_2
    const/4 v5, 0x4

    if-ne p1, v5, :cond_3

    if-ne p2, v4, :cond_3

    const-string p1, "uri"

    .line 854
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/net/Uri;

    .line 855
    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 856
    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string p1, "x_y_w"

    .line 857
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 858
    new-instance p2, Lcom/perm/kate/photoupload/AvatarUploader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    iget-object v8, p0, Lcom/perm/kate/ProfileInfoFragment;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lcom/perm/kate/photoupload/AvatarUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;ILcom/perm/kate/photoupload/UploadCallback;I)V

    .line 859
    invoke-virtual {p2, p1}, Lcom/perm/kate/photoupload/AvatarUploader;->setSquareCrop(Ljava/lang/String;)Lcom/perm/kate/photoupload/AvatarUploader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perm/kate/photoupload/AvatarUploader;->upload()V

    :cond_3
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .line 1050
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 1051
    check-cast p1, Lcom/perm/kate/ProfileActivityCallback;

    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment;->listener:Lcom/perm/kate/ProfileActivityCallback;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 126
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 127
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const p3, 0x7f0c0101

    const/4 v0, 0x0

    .line 91
    :try_start_0
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 92
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "com.perm.kate.user_id"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p2, :cond_0

    return-object p1

    .line 101
    :cond_0
    :try_start_2
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 103
    :try_start_3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "uid_str="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    :goto_0
    iget-object p2, p0, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;

    sget-object p3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    .line 107
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileInfoFragment;->initUiFields(Landroid/view/View;)V

    .line 108
    sget-object p2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p3, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object p2

    iput-object p2, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    .line 109
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->fetchCityAndCountry()V

    .line 110
    iget-object p2, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    invoke-direct {p0, p2, p1}, Lcom/perm/kate/ProfileInfoFragment;->displayUser(Lcom/perm/kate/api/User;Landroid/view/View;)V

    .line 111
    iget-boolean p2, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    if-nez p2, :cond_1

    .line 112
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->getIsFriendInThread()V

    .line 113
    iget-object p2, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    invoke-static {p2}, Lcom/perm/kate/history/History;->addUser(Lcom/perm/kate/api/User;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p2

    goto :goto_1

    :catchall_2
    move-exception p2

    const/4 p1, 0x0

    .line 116
    :goto_1
    invoke-static {p2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 117
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    instance-of p2, p2, Ljava/lang/OutOfMemoryError;

    if-eqz p2, :cond_1

    .line 119
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object p2

    invoke-virtual {p2}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    :cond_1
    :goto_2
    return-object p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 735
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-eq v0, v1, :cond_6

    const/16 v1, 0x3ed

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3ef

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3f5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3fb

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3fd

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 794
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 791
    :pswitch_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/perm/kate/ProfileFragment;->showMentions(Landroid/content/Context;Ljava/lang/String;)V

    return v2

    .line 788
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/BaseActivity;

    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/perm/utils/RegistrationDate;->getAndShow(Lcom/perm/kate/BaseActivity;Ljava/lang/String;)V

    return v2

    .line 785
    :pswitch_2
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/ProfileFragment;->sendGift(Ljava/lang/String;Landroid/app/Activity;)V

    return v2

    .line 780
    :pswitch_3
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/perm/utils/WallSubscriptions;->unsubscribe(J)V

    .line 781
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->disableRegularRefreshIfRequired()V

    const p1, 0x7f0f059a

    .line 782
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    return v2

    .line 775
    :pswitch_4
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/perm/utils/WallSubscriptions;->subscribe(J)V

    .line 776
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->ensureRegularRefreshEnabled()V

    const p1, 0x7f0f059b

    .line 777
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    return v2

    .line 769
    :pswitch_5
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->faveRemoveUser()V

    return v2

    .line 772
    :pswitch_6
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->faveAddUser()V

    return v2

    .line 746
    :pswitch_7
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->removeFromBlackList()V

    return v2

    .line 743
    :pswitch_8
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->addToBlackList()V

    return v2

    .line 740
    :pswitch_9
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->copyProfileLink(Ljava/lang/String;Landroid/content/Context;)V

    return v2

    .line 737
    :pswitch_a
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->showDeleteDialog()V

    return v2

    .line 766
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/BaseActivity;

    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-static {p1, v0}, Lcom/perm/utils/FriendsListsHelper;->showFriendsListsDialogWithCheck(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V

    return v2

    .line 760
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->deleteFriend()V

    return v2

    .line 763
    :cond_2
    new-instance p1, Lcom/perm/kate/ReportHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/perm/kate/ReportHelper;->showReportUserDialog(J)V

    return v2

    .line 752
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3}, Lcom/perm/utils/OnlineNotificationsHelper;->setEnabledUser(Landroid/content/Context;JZ)V

    return v2

    .line 755
    :cond_4
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->isFriend()Z

    move-result p1

    if-nez p1, :cond_5

    const p1, 0x7f0f0561

    .line 756
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    .line 757
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1, v2}, Lcom/perm/utils/OnlineNotificationsHelper;->setEnabledUser(Landroid/content/Context;JZ)V

    return v2

    .line 749
    :cond_6
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->showProfileFromBrowser()V

    return v2

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3ff
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 132
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStart()V

    .line 134
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 135
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/ProfileInfoFragment;->displayUser(Lcom/perm/kate/api/User;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected showAvatarDialog()V
    .locals 5

    .line 617
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 618
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f04e5

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 619
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0045

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f050b

    .line 622
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 623
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Lcom/perm/kate/ProfileInfoFragment$9;

    invoke-direct {v4, p0, v0}, Lcom/perm/kate/ProfileInfoFragment$9;-><init>(Lcom/perm/kate/ProfileInfoFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 636
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 637
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 638
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 639
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->downloadAvatarsAlbum()V

    return-void
.end method

.method public showEditProfileAcivity(Landroid/app/Activity;)V
    .locals 2

    .line 1055
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1056
    const-class v1, Lcom/perm/kate/EditProfileActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 1057
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected showMessageThread()V
    .locals 3

    .line 864
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 865
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/MessageThreadActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 866
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    const-string v2, "com.perm.kate.message_uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 867
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected showOptionsDialog()V
    .locals 5

    .line 646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 647
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f01ee

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f00d0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f023d

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f01ec

    .line 652
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 653
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Lcom/perm/kate/ProfileInfoFragment$10;

    invoke-direct {v4, p0, v0}, Lcom/perm/kate/ProfileInfoFragment$10;-><init>(Lcom/perm/kate/ProfileInfoFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 669
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 670
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 671
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected showProfileFromBrowser()V
    .locals 3

    .line 560
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    if-nez v0, :cond_0

    return-void

    .line 562
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://vk.com/id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-wide v1, v1, Lcom/perm/kate/api/User;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 563
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public userRefreshed(Lcom/perm/kate/api/User;)V
    .locals 2

    .line 144
    iget-object v0, p1, Lcom/perm/kate/api/User;->deactivated:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->checkDeactivated(Ljava/lang/String;)V

    .line 145
    iget-object v0, p1, Lcom/perm/kate/api/User;->deactivated:Ljava/lang/String;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->deactivated:Ljava/lang/String;

    .line 147
    iget-object v0, p1, Lcom/perm/kate/api/User;->relation_partner_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->relation_partner_id:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p1, Lcom/perm/kate/api/User;->relation_partner_first_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->relation_partner_first_name:Ljava/lang/String;

    .line 150
    iget-object v0, p1, Lcom/perm/kate/api/User;->relation_partner_last_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->relation_partner_last_name:Ljava/lang/String;

    .line 152
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/api/User;->status_audio:Lcom/perm/kate/api/Audio;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->status_audio:Lcom/perm/kate/api/Audio;

    .line 154
    iget-object v0, p1, Lcom/perm/kate/api/User;->is_favorite:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->is_favorite:Ljava/lang/Integer;

    .line 155
    iget-object v0, p1, Lcom/perm/kate/api/User;->can_write_private_message:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->can_write_private_message:Ljava/lang/Integer;

    .line 156
    iget-object p1, p1, Lcom/perm/kate/api/User;->blacklisted_by_me:Ljava/lang/Integer;

    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment;->blacklisted_by_me:Ljava/lang/Integer;

    .line 158
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    .line 159
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->fetchCityAndCountry()V

    .line 160
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->displayUserOnUiThread()V

    .line 161
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->getCityIfMissing()V

    .line 162
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->getCountryIfMissing()V

    const/4 p1, 0x0

    .line 163
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method
