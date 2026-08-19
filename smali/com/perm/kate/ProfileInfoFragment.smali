.class public Lcom/perm/kate/ProfileInfoFragment;
.super Lcom/perm/kate/BaseFragment;
.source "ProfileInfoFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/ProfileInfoFragment$URLSpanNoUnderline;
    }
.end annotation


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
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/ProfileInfoFragment;->is_follower:Z

    .line 139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->deactivated:Ljava/lang/String;

    .line 469
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$2;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileInfoFragment$2;-><init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->callback_city:Lcom/perm/kate/session/Callback;

    .line 490
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$3;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileInfoFragment$3;-><init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->callback_country:Lcom/perm/kate/session/Callback;

    .line 518
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$4;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->photoClick:Landroid/view/View$OnClickListener;

    .line 525
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$5;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->Edit_ClickListener:Landroid/view/View$OnClickListener;

    .line 532
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$6;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->statusClickListener:Landroid/view/View$OnClickListener;

    .line 572
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$7;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileInfoFragment$7;-><init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->avatars_photos_callback:Lcom/perm/kate/session/Callback;

    .line 810
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$13;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->repliesClickListener:Landroid/view/View$OnClickListener;

    .line 857
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$14;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->friendClickListener:Landroid/view/View$OnClickListener;

    .line 921
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$19;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileInfoFragment$19;-><init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->delete_friend_callback:Lcom/perm/kate/session/Callback;

    .line 945
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$20;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileInfoFragment$20;-><init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->add_friend_callback:Lcom/perm/kate/session/Callback;

    .line 979
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$22;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$22;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    .line 990
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$23;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$23;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 1003
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$24;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$24;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->relation_partner_ClickListener:Landroid/view/View$OnClickListener;

    .line 1026
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$25;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$25;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->profileIdClickListener:Landroid/view/View$OnClickListener;

    .line 1056
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$27;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileInfoFragment$27;-><init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->is_friend_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/api/User;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/ProfileInfoFragment;Lcom/perm/kate/api/User;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;
    .param p1, "x1"    # Lcom/perm/kate/api/User;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/ProfileInfoFragment;->displayUser(Lcom/perm/kate/api/User;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->showAvatarsAlbum()V

    return-void
.end method

.method static synthetic access$1102(Lcom/perm/kate/ProfileInfoFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment;->blacklisted_by_me:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/perm/kate/ProfileInfoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->isFriend()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->showDeleteDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->showAddDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->deleteFriend()V

    return-void
.end method

.method static synthetic access$1600(Lcom/perm/kate/ProfileInfoFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileInfoFragment;->addFriend(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->delete_friend_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->add_friend_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->displayFriendStatusOnUiThread()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/ProfileInfoFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->city:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/perm/kate/ProfileInfoFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/perm/kate/ProfileInfoFragment;->is_follower:Z

    return p1
.end method

.method static synthetic access$202(Lcom/perm/kate/ProfileInfoFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment;->city:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/perm/kate/ProfileInfoFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileInfoFragment;->displayFriendStatusOnUiThread2(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/perm/kate/ProfileInfoFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileInfoFragment;->displayFriendStatus(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/perm/kate/ProfileInfoFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileInfoFragment;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->is_friend_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/perm/kate/ProfileInfoFragment;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/ProfileInfoFragment;->displayFriendStatus2(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$2602(Lcom/perm/kate/ProfileInfoFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment;->is_favorite:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->displayUserOnUiThread()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/ProfileInfoFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->country:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/perm/kate/ProfileInfoFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment;->country:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/perm/kate/ProfileInfoFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    return v0
.end method

.method static synthetic access$600(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/api/Audio;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->status_audio:Lcom/perm/kate/api/Audio;

    return-object v0
.end method

.method static synthetic access$700(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->showStatusAcivity()V

    return-void
.end method

.method static synthetic access$800(Lcom/perm/kate/ProfileInfoFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->avatars_photos_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/perm/kate/ProfileInfoFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileInfoFragment;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->showProfileImage()V

    return-void
.end method

.method private addFriend(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 905
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->showProgressBar(Z)V

    .line 906
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$18;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/ProfileInfoFragment$18;-><init>(Lcom/perm/kate/ProfileInfoFragment;Ljava/lang/String;)V

    .line 911
    invoke-virtual {v0}, Lcom/perm/kate/ProfileInfoFragment$18;->start()V

    .line 912
    return-void
.end method

.method private addToBlackList()V
    .locals 3

    .prologue
    .line 785
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/ProfileInfoFragment$11;

    invoke-direct {v2, p0}, Lcom/perm/kate/ProfileInfoFragment$11;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    invoke-static {v0, v1, v2}, Lcom/perm/kate/BlackListActivity;->AddToBlackList(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V

    .line 792
    return-void
.end method

.method private checkDeactivated(Ljava/lang/String;)V
    .locals 1
    .param p1, "deactivated"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {p1}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    const-string v0, "deleted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 178
    const v0, 0x7f0704cc

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->displayToast(I)V

    goto :goto_0

    .line 179
    :cond_2
    const-string v0, "banned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    const v0, 0x7f0704cb

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->displayToast(I)V

    goto :goto_0
.end method

.method private deleteFriend()V
    .locals 1

    .prologue
    .line 895
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->showProgressBar(Z)V

    .line 896
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$17;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$17;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    .line 901
    invoke-virtual {v0}, Lcom/perm/kate/ProfileInfoFragment$17;->start()V

    .line 902
    return-void
.end method

.method private displayCity(Lcom/perm/kate/api/User;)V
    .locals 3
    .param p1, "user"    # Lcom/perm/kate/api/User;

    .prologue
    .line 364
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->city:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->country:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_country:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->country:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->city:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->setVisiblePlaceRegion(Z)V

    .line 371
    :cond_0
    return-void

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_country:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private displayCountry(Lcom/perm/kate/api/User;)V
    .locals 3
    .param p1, "user"    # Lcom/perm/kate/api/User;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->country:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->city:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_country:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->country:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->city:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->setVisiblePlaceRegion(Z)V

    .line 361
    :cond_0
    return-void

    .line 358
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_country:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private displayFriendStatus(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 973
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->isFriend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->add_friend_region:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 977
    :goto_0
    return-void

    .line 976
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->add_friend_region:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private displayFriendStatus2(Landroid/view/View;I)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "friend_status"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1085
    if-eqz p2, :cond_0

    if-ne p2, v6, :cond_3

    :cond_0
    move v1, v4

    .line 1086
    .local v1, "show_add_to_friend":Z
    :goto_0
    if-eqz v1, :cond_4

    .line 1087
    iget-object v5, p0, Lcom/perm/kate/ProfileInfoFragment;->add_friend_region:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1090
    :goto_1
    if-eqz p1, :cond_2

    .line 1091
    const v5, 0x7f0e02cc

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1092
    .local v0, "ll_profile_friend_status":Landroid/view/View;
    const v5, 0x7f0e02cd

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1093
    .local v2, "tv_profile_friends_status":Landroid/widget/TextView;
    if-eq p2, v4, :cond_1

    if-ne p2, v6, :cond_6

    .line 1094
    :cond_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1095
    if-ne p2, v4, :cond_5

    const v3, 0x7f0702ad

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 1100
    .end local v0    # "ll_profile_friend_status":Landroid/view/View;
    .end local v2    # "tv_profile_friends_status":Landroid/widget/TextView;
    :cond_2
    :goto_3
    return-void

    .end local v1    # "show_add_to_friend":Z
    :cond_3
    move v1, v3

    .line 1085
    goto :goto_0

    .line 1089
    .restart local v1    # "show_add_to_friend":Z
    :cond_4
    iget-object v5, p0, Lcom/perm/kate/ProfileInfoFragment;->add_friend_region:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 1095
    .restart local v0    # "ll_profile_friend_status":Landroid/view/View;
    .restart local v2    # "tv_profile_friends_status":Landroid/widget/TextView;
    :cond_5
    const v3, 0x7f0701a5

    goto :goto_2

    .line 1097
    :cond_6
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3
.end method

.method private displayFriendStatusOnUiThread()V
    .locals 2

    .prologue
    .line 962
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 970
    :goto_0
    return-void

    .line 964
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/ProfileInfoFragment$21;

    invoke-direct {v1, p0}, Lcom/perm/kate/ProfileInfoFragment$21;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private displayFriendStatusOnUiThread2(I)V
    .locals 2
    .param p1, "friend_status"    # I

    .prologue
    .line 1074
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1082
    :goto_0
    return-void

    .line 1076
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/ProfileInfoFragment$28;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/ProfileInfoFragment$28;-><init>(Lcom/perm/kate/ProfileInfoFragment;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private displayUser(Lcom/perm/kate/api/User;Landroid/view/View;)V
    .locals 26
    .param p1, "user"    # Lcom/perm/kate/api/User;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 243
    if-nez p2, :cond_1

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_id:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_id:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    if-eqz p1, :cond_0

    .line 253
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_8

    :cond_2
    const/4 v12, 0x1

    .line 255
    .local v12, "is_male":Z
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 256
    const v2, 0x7f0e0066

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f07033f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 257
    const v2, 0x7f0e00ef

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_9

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 258
    const v2, 0x7f0e00ee

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 269
    :goto_4
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/perm/kate/api/User;->photo_200:Ljava/lang/String;

    .line 270
    .local v3, "photo":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 271
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/perm/kate/api/User;->photo_big:Ljava/lang/String;

    .line 272
    :cond_3
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/ProfileInfoFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    const/4 v5, 0x1

    const/16 v6, 0xc8

    invoke-static {}, Lcom/perm/kate/ProfileFragment;->getBigAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 273
    const-string v14, ""

    .line 274
    .local v14, "label_name":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    if-eqz v2, :cond_d

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 275
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 278
    :goto_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->verified:Ljava/lang/Integer;

    if-eqz v2, :cond_f

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->verified:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_f

    .line 279
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 280
    .local v9, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v9, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v4, "  "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 281
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v2

    if-eqz v2, :cond_e

    const v11, 0x7f02012e

    .line 282
    .local v11, "ic_verified":I
    :goto_6
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v4, v11, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v9, v2, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 283
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    .end local v9    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v11    # "ic_verified":I
    :goto_7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/ProfileInfoFragment;->getSex(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v21

    .line 287
    .local v21, "sex":Ljava/lang/String;
    const-string v2, ""

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_sex:Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_sex:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 292
    :goto_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->relation:Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/perm/kate/ProfileInfoFragment;->getRelation(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v19

    .line 293
    .local v19, "relation_text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    if-eqz v19, :cond_4

    const-string v2, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_4
    const/16 v2, 0x8

    :goto_9
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileInfoFragment;->relation_partner_id:Ljava/lang/Long;

    if-eqz v2, :cond_12

    .line 296
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->relation:Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/perm/kate/ProfileInfoFragment;->getRelationIn(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v20

    .line 297
    .local v20, "relation_text_in":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/ProfileInfoFragment;->relation_partner_first_name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/ProfileInfoFragment;->relation_partner_last_name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 298
    .local v17, "partner_name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 299
    new-instance v18, Landroid/text/SpannableString;

    invoke-direct/range {v18 .. v19}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 300
    .local v18, "relation_span":Landroid/text/SpannableString;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v10

    .line 301
    .local v10, "end_pos":I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v22, v10, v2

    .line 302
    .local v22, "start_pos":I
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v4, 0x21

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v2, v1, v10, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 303
    new-instance v2, Lcom/perm/kate/ProfileInfoFragment$URLSpanNoUnderline;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id"

    invoke-static {v5}, Lcom/perm/kate/KApplication;->instanceLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/ProfileInfoFragment;->relation_partner_id:Ljava/lang/Long;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4}, Lcom/perm/kate/ProfileInfoFragment$URLSpanNoUnderline;-><init>(Lcom/perm/kate/ProfileInfoFragment;Ljava/lang/String;)V

    const/16 v4, 0x21

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v2, v1, v10, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/ProfileInfoFragment;->relation_partner_id:Ljava/lang/Long;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/ProfileInfoFragment;->relation_partner_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    .end local v10    # "end_pos":I
    .end local v17    # "partner_name":Ljava/lang/String;
    .end local v18    # "relation_span":Landroid/text/SpannableString;
    .end local v20    # "relation_text_in":Ljava/lang/String;
    .end local v22    # "start_pos":I
    :goto_a
    const v2, 0x7f0e02da

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 317
    .local v25, "tv_profile_info_last_seen":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/perm/kate/api/User;->last_seen:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_13

    const/4 v2, 0x0

    :goto_b
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 318
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/perm/kate/api/User;->last_seen:J

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v2, v4, v5, v12, v6}, Lcom/perm/kate/Helper;->getLastSee(Landroid/content/Context;JZZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    invoke-direct/range {p0 .. p1}, Lcom/perm/kate/ProfileInfoFragment;->displayCity(Lcom/perm/kate/api/User;)V

    .line 321
    invoke-direct/range {p0 .. p1}, Lcom/perm/kate/ProfileInfoFragment;->displayCountry(Lcom/perm/kate/api/User;)V

    .line 322
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->rate:Ljava/lang/Integer;

    if-eqz v2, :cond_14

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->rate:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_14

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f070226

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/perm/kate/api/User;->rate:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 324
    .local v15, "label_rate":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_rate:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 325
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_rate:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    .end local v15    # "label_rate":Ljava/lang/String;
    :goto_c
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f07014a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getStringAge(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 331
    .local v13, "label_birthday":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_birthday:Landroid/widget/TextView;

    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/ProfileInfoFragment;->setVisibleBirthdayRegion(Z)V

    .line 335
    .end local v13    # "label_birthday":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->university_name:Ljava/lang/String;

    if-eqz v2, :cond_7

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->university_name:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 336
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->university_name:Ljava/lang/String;

    const-string v4, "\r\n"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v16

    .line 337
    .local v16, "label_university_name":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->graduation:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->graduation:Ljava/lang/Integer;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/perm/kate/api/User;->graduation:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/perm/kate/api/User;->faculty_name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 339
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_university:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 340
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/ProfileInfoFragment;->setVisibleEducationRegion(Z)V

    .line 342
    .end local v16    # "label_university_name":Ljava/lang/String;
    :cond_7
    const v2, 0x7f0e02ce

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 343
    .local v23, "status_region":Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    if-eqz v2, :cond_16

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 344
    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 345
    const v2, 0x7f0e01c5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    const v2, 0x7f0e02cf

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileInfoFragment;->status_audio:Lcom/perm/kate/api/Audio;

    if-eqz v2, :cond_15

    const/4 v2, 0x0

    :goto_d
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 350
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/ProfileInfoFragment;->replies_region:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileInfoFragment;->can_write_private_message:Ljava/lang/Integer;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileInfoFragment;->can_write_private_message:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_17

    const/16 v2, 0x8

    :goto_f
    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 253
    .end local v3    # "photo":Ljava/lang/String;
    .end local v12    # "is_male":Z
    .end local v14    # "label_name":Ljava/lang/String;
    .end local v19    # "relation_text":Ljava/lang/String;
    .end local v21    # "sex":Ljava/lang/String;
    .end local v23    # "status_region":Landroid/view/View;
    .end local v25    # "tv_profile_info_last_seen":Landroid/widget/TextView;
    :cond_8
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 257
    .restart local v12    # "is_male":Z
    :cond_9
    const/16 v2, 0x8

    goto/16 :goto_2

    .line 258
    :cond_a
    const/16 v2, 0x8

    goto/16 :goto_3

    .line 260
    :cond_b
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/perm/kate/api/User;->last_seen:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_c

    .line 261
    const v2, 0x7f0e0066

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/perm/kate/api/User;->last_seen:J

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v4, v6, v7, v12, v5}, Lcom/perm/kate/Helper;->getLastSee(Landroid/content/Context;JZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    :goto_10
    const v2, 0x7f0e00ee

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 265
    const v2, 0x7f0e00ef

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 263
    :cond_c
    const v2, 0x7f0e0066

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f070332

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_10

    .line 277
    .restart local v3    # "photo":Ljava/lang/String;
    .restart local v14    # "label_name":Ljava/lang/String;
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_5

    .line 281
    .restart local v9    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_e
    const v11, 0x7f02012f

    goto/16 :goto_6

    .line 285
    .end local v9    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 291
    .restart local v21    # "sex":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_sex:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    .line 293
    .restart local v19    # "relation_text":Ljava/lang/String;
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 307
    :catch_0
    move-exception v24

    .line 308
    .local v24, "th":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 309
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Throwable;->printStackTrace()V

    .line 310
    invoke-static/range {v24 .. v24}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 313
    .end local v24    # "th":Ljava/lang/Throwable;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_a

    .line 317
    .restart local v25    # "tv_profile_info_last_seen":Landroid/widget/TextView;
    :cond_13
    const/16 v2, 0x8

    goto/16 :goto_b

    .line 327
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_rate:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_c

    .line 346
    .restart local v23    # "status_region":Landroid/view/View;
    :cond_15
    const/16 v2, 0x8

    goto/16 :goto_d

    .line 349
    :cond_16
    const/16 v2, 0x8

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    .line 350
    :cond_17
    const/4 v2, 0x0

    goto/16 :goto_f
.end method

.method private displayUserOnUiThread()V
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 167
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/ProfileInfoFragment$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/ProfileInfoFragment$1;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private downloadAvatarsAlbum()V
    .locals 1

    .prologue
    .line 585
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$8;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    .line 590
    invoke-virtual {v0}, Lcom/perm/kate/ProfileInfoFragment$8;->start()V

    .line 591
    return-void
.end method

.method private editPhotoBeforeUpload(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 998
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 999
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uris"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1000
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/ProfileInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1001
    return-void
.end method

.method private faveAddUser()V
    .locals 2

    .prologue
    .line 1103
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$29;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileInfoFragment$29;-><init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/app/Activity;)V

    .line 1120
    .local v0, "fave_add_user_callback":Lcom/perm/kate/session/Callback;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/ProfileInfoFragment;->showProgressBar(Z)V

    .line 1121
    new-instance v1, Lcom/perm/kate/ProfileInfoFragment$30;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/ProfileInfoFragment$30;-><init>(Lcom/perm/kate/ProfileInfoFragment;Lcom/perm/kate/session/Callback;)V

    .line 1126
    invoke-virtual {v1}, Lcom/perm/kate/ProfileInfoFragment$30;->start()V

    .line 1127
    return-void
.end method

.method private faveRemoveUser()V
    .locals 2

    .prologue
    .line 1130
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$31;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileInfoFragment$31;-><init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/app/Activity;)V

    .line 1147
    .local v0, "fave_remove_user_callback":Lcom/perm/kate/session/Callback;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/ProfileInfoFragment;->showProgressBar(Z)V

    .line 1148
    new-instance v1, Lcom/perm/kate/ProfileInfoFragment$32;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/ProfileInfoFragment$32;-><init>(Lcom/perm/kate/ProfileInfoFragment;Lcom/perm/kate/session/Callback;)V

    .line 1153
    invoke-virtual {v1}, Lcom/perm/kate/ProfileInfoFragment$32;->start()V

    .line 1154
    return-void
.end method

.method private fetchCityAndCountry()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 505
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    if-nez v0, :cond_0

    .line 516
    :goto_0
    return-void

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 509
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchCity(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->city:Ljava/lang/String;

    .line 512
    :goto_1
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 513
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchCountry(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->country:Ljava/lang/String;

    goto :goto_0

    .line 511
    :cond_1
    iput-object v4, p0, Lcom/perm/kate/ProfileInfoFragment;->city:Ljava/lang/String;

    goto :goto_1

    .line 515
    :cond_2
    iput-object v4, p0, Lcom/perm/kate/ProfileInfoFragment;->country:Ljava/lang/String;

    goto :goto_0
.end method

.method private getCityIfMissing()V
    .locals 4

    .prologue
    .line 462
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->city:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 463
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 464
    .local v0, "cids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->callback_city:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/session/Session;->getCities(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 467
    .end local v0    # "cids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    return-void
.end method

.method private getCountryIfMissing()V
    .locals 4

    .prologue
    .line 483
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->country:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 484
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v0, "cids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->callback_country:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/session/Session;->getCountries(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 488
    .end local v0    # "cids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    return-void
.end method

.method private getIsFriendInThread()V
    .locals 1

    .prologue
    .line 1048
    new-instance v0, Lcom/perm/kate/ProfileInfoFragment$26;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileInfoFragment$26;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    .line 1053
    invoke-virtual {v0}, Lcom/perm/kate/ProfileInfoFragment$26;->start()V

    .line 1054
    return-void
.end method

.method private getRelation(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5
    .param p1, "relation"    # Ljava/lang/Integer;
    .param p2, "sex"    # Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const v2, 0x7f070228

    .line 385
    if-nez p1, :cond_0

    .line 386
    const-string v0, ""

    .line 435
    :goto_0
    return-object v0

    .line 387
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 388
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 389
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070229

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 390
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 391
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07022a

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 392
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07022b

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 395
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 396
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_6

    .line 397
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07022c

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 398
    :cond_6
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->relation_partner_id:Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07022f

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 400
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 401
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07022d

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 402
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07022e

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 405
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 406
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_b

    .line 407
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070230

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 408
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_c

    .line 409
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070231

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 410
    :cond_c
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_d

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070232

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 413
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 414
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_f

    .line 415
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070233

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 416
    :cond_f
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_10

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070234

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 418
    :cond_10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_11

    .line 419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070235

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 421
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_12

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070236

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 423
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_13

    .line 424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070237

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 425
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_17

    .line 426
    if-eqz p2, :cond_14

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_15

    .line 427
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070238

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 428
    :cond_15
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_16

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070239

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 430
    :cond_16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_17

    .line 431
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07023a

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 433
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_18

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f07023b

    invoke-virtual {p0, v1}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 435
    :cond_18
    const-string v0, ""

    goto/16 :goto_0
.end method

.method private getRelationIn(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3
    .param p1, "relation"    # Ljava/lang/Integer;
    .param p2, "sex"    # Ljava/lang/Integer;

    .prologue
    const/4 v2, 0x2

    .line 439
    if-nez p1, :cond_0

    .line 440
    const-string v0, ""

    .line 458
    :goto_0
    return-object v0

    .line 441
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 442
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 443
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07023c

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 446
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07023d

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 449
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 450
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07023e

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 452
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07023f

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 455
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070240

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 458
    :cond_7
    const-string v0, ""

    goto/16 :goto_0
.end method

.method private getSex(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3
    .param p1, "sex"    # Ljava/lang/Integer;

    .prologue
    const v2, 0x7f07025d

    .line 374
    if-nez p1, :cond_0

    .line 375
    const-string v0, ""

    .line 380
    :goto_0
    return-object v0

    .line 376
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07025f

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 378
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070260

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 380
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private initUiFields(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 184
    const v0, 0x7f0e02c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    .line 185
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->photoClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v0, 0x7f0e0107

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    .line 187
    const v0, 0x7f0e02d5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_sex:Landroid/widget/TextView;

    .line 188
    const v0, 0x7f0e02d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    .line 189
    const v0, 0x7f0e02c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_country:Landroid/widget/TextView;

    .line 190
    const v0, 0x7f0e02d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_rate:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f0e02d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_birthday:Landroid/widget/TextView;

    .line 192
    const v0, 0x7f0e02d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_id:Landroid/widget/TextView;

    .line 193
    const v0, 0x7f0e02cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_university:Landroid/widget/TextView;

    .line 197
    const v0, 0x7f0e02c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->ll_profile_place_region:Landroid/widget/LinearLayout;

    .line 198
    const v0, 0x7f0e02ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->ll_profile_education_region:Landroid/widget/LinearLayout;

    .line 199
    const v0, 0x7f0e02d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->add_friend_region:Landroid/widget/LinearLayout;

    .line 200
    const v0, 0x7f0e02d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->replies_region:Landroid/widget/LinearLayout;

    .line 201
    const v0, 0x7f0e02d4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->ll_profile_edit_region:Landroid/widget/LinearLayout;

    .line 202
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->ll_profile_edit_region:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->Edit_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_id:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->profileIdClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    invoke-direct {p0, v1}, Lcom/perm/kate/ProfileInfoFragment;->setVisibleBirthdayRegion(Z)V

    .line 206
    invoke-direct {p0, v1}, Lcom/perm/kate/ProfileInfoFragment;->setVisiblePlaceRegion(Z)V

    .line 207
    invoke-direct {p0, v1}, Lcom/perm/kate/ProfileInfoFragment;->setVisibleEducationRegion(Z)V

    .line 208
    iget-boolean v0, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->setVisibleFriendsRegionsRegion(Z)V

    .line 210
    iget-boolean v0, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->setVisibleEditRegion(Z)V

    .line 211
    iget-boolean v0, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    if-nez v0, :cond_0

    .line 212
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileInfoFragment;->displayFriendStatus(Landroid/view/View;)V

    .line 213
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->add_friend_region:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->friendClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->replies_region:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->repliesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const v0, 0x7f0e02ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->statusClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    return-void

    :cond_1
    move v0, v1

    .line 208
    goto :goto_0
.end method

.method private isFriend()Z
    .locals 6

    .prologue
    .line 915
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 916
    .local v0, "owner_id":J
    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 917
    const/4 v2, 0x0

    .line 918
    :goto_0
    return v2

    :cond_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/perm/kate/db/DataHelper;->isFriend(JJ)Z

    move-result v2

    goto :goto_0
.end method

.method private removeFromBlackList()V
    .locals 3

    .prologue
    .line 795
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/ProfileInfoFragment$12;

    invoke-direct {v2, p0}, Lcom/perm/kate/ProfileInfoFragment$12;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    invoke-static {v0, v1, v2}, Lcom/perm/kate/BlackListActivity;->removeFromBlackList(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V

    .line 802
    return-void
.end method

.method private setVisibleBirthdayRegion(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 222
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->tv_profile_info_birthday:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    return-void

    .line 222
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setVisibleEditRegion(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 231
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->ll_profile_edit_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 232
    return-void

    .line 231
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setVisibleEducationRegion(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 239
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->ll_profile_education_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 240
    return-void

    .line 239
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setVisibleFriendsRegionsRegion(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 226
    iget-object v3, p0, Lcom/perm/kate/ProfileInfoFragment;->replies_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->add_friend_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 228
    return-void

    :cond_0
    move v0, v2

    .line 226
    goto :goto_0

    :cond_1
    move v1, v2

    .line 227
    goto :goto_1
.end method

.method private setVisiblePlaceRegion(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 235
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->ll_profile_place_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    return-void

    .line 235
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showAddDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 880
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 881
    .local v3, "factory":Landroid/view/LayoutInflater;
    const v4, 0x7f03001d

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 882
    .local v1, "captcha_view":Landroid/view/View;
    const v4, 0x7f0e006b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 883
    .local v2, "et_message":Landroid/widget/EditText;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 884
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v4, 0x7f070114

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07051d

    new-instance v6, Lcom/perm/kate/ProfileInfoFragment$16;

    invoke-direct {v6, p0, v2}, Lcom/perm/kate/ProfileInfoFragment$16;-><init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/widget/EditText;)V

    .line 885
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070319

    .line 890
    invoke-virtual {v4, v5, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 891
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 892
    return-void
.end method

.method private showAvatarsAlbum()V
    .locals 4

    .prologue
    .line 594
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 595
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/PhotosActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 596
    const-string v1, "com.perm.kate.aid"

    const-wide/16 v2, -0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 597
    const-string v1, "com.perm.kate.uid"

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->startActivity(Landroid/content/Intent;)V

    .line 599
    return-void
.end method

.method private showDeleteDialog()V
    .locals 4

    .prologue
    .line 868
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 869
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070184

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07051d

    new-instance v3, Lcom/perm/kate/ProfileInfoFragment$15;

    invoke-direct {v3, p0}, Lcom/perm/kate/ProfileInfoFragment$15;-><init>(Lcom/perm/kate/ProfileInfoFragment;)V

    .line 870
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070319

    const/4 v3, 0x0

    .line 875
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 876
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 877
    return-void
.end method

.method private showProfileImage()V
    .locals 11

    .prologue
    .line 555
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->photo_big:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 570
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 558
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 559
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 560
    .local v6, "account_id":J
    sget-object v10, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const-wide/16 v2, -0x6

    iget-object v4, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->fetchPhotos(JJJ)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/perm/kate/db/DataHelper;->getPhotos(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v9

    .line 561
    .local v9, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    if-nez v9, :cond_2

    .line 562
    new-instance v9, Ljava/util/ArrayList;

    .end local v9    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .restart local v9    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 564
    new-instance v8, Lcom/perm/kate/api/Photo;

    invoke-direct {v8}, Lcom/perm/kate/api/Photo;-><init>()V

    .line 565
    .local v8, "p":Lcom/perm/kate/api/Photo;
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->photo_big:Ljava/lang/String;

    iput-object v1, v8, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 566
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    .end local v8    # "p":Lcom/perm/kate/api/Photo;
    :cond_3
    const-string v1, "com.perm.kate.photos"

    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 569
    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showStatusAcivity()V
    .locals 3

    .prologue
    .line 805
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 806
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/StatusActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 807
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/ProfileInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 808
    return-void
.end method

.method private startSquareCrop(Landroid/net/Uri;II)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resize_option"    # I
    .param p3, "rotate"    # I

    .prologue
    .line 1157
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/SinglePhotoViewer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1158
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1159
    const-string v1, "resize_option"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1160
    const-string v1, "rotate"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1161
    const-string v1, "crop"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1162
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/ProfileInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1163
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/16 v8, 0x1b6f

    const/16 v7, 0x1770

    const/16 v6, 0x138d

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 677
    const/16 v1, 0x23

    const/16 v2, 0xf3c

    const v3, 0x7f070177

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 678
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->isFriend()Z

    move-result v0

    .line 679
    .local v0, "is_friend":Z
    iget-boolean v1, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 680
    const/16 v1, 0x22

    const/16 v2, 0x3f4

    const v3, 0x7f070184

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 681
    :cond_0
    iget-boolean v1, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    if-nez v1, :cond_1

    .line 682
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->blacklisted_by_me:Ljava/lang/Integer;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->blacklisted_by_me:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_a

    .line 683
    const/16 v1, 0x25

    const v2, 0x7f070186

    invoke-interface {p1, v4, v1, v7, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 687
    :cond_1
    :goto_0
    const/16 v1, 0x3e8

    const/16 v2, 0x1388

    const v3, 0x7f070203

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 688
    iget-boolean v1, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    if-nez v1, :cond_2

    .line 689
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-static {v1, v2}, Lcom/perm/utils/OnlineNotificationsHelper;->isEnabledUser(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 690
    const/16 v1, 0x3ef

    const v2, 0x7f0701f8

    invoke-interface {p1, v4, v1, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 694
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/perm/kate/ProfileInfoFragment;->is_follower:Z

    if-eqz v1, :cond_3

    .line 695
    const/16 v1, 0x3fb

    const/16 v2, 0x1b61

    const v3, 0x7f070293

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 696
    :cond_3
    iget-boolean v1, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    if-nez v1, :cond_4

    .line 697
    const/16 v1, 0x3f5

    const/16 v2, 0x1b65

    const v3, 0x7f07016f

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 698
    :cond_4
    iget-boolean v1, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    if-nez v1, :cond_5

    if-eqz v0, :cond_5

    .line 699
    const/16 v1, 0x3fd

    const/16 v2, 0x1b6d

    const v3, 0x7f070190

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 700
    :cond_5
    iget-boolean v1, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->is_favorite:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    .line 701
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->is_favorite:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_c

    .line 702
    const/16 v1, 0x400

    const v2, 0x7f070241

    invoke-interface {p1, v4, v1, v8, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 706
    :cond_6
    :goto_2
    iget-boolean v1, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    if-nez v1, :cond_8

    .line 707
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/utils/WallSubscriptions;->subscribed(J)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Lcom/perm/kate/UpdateService;->regularRefreshEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    .line 708
    :cond_7
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->deactivated:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 709
    const/16 v1, 0x401

    const/16 v2, 0x1b70

    const v3, 0x7f070512

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 713
    :cond_8
    :goto_3
    iget-boolean v1, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    if-nez v1, :cond_9

    .line 714
    const/16 v1, 0x403

    const/16 v2, 0x1b71

    const v3, 0x7f0703d9

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 715
    :cond_9
    const/16 v1, 0x404

    const/16 v2, 0x1b7b

    const v3, 0x7f0703aa

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 716
    const/16 v1, 0x405

    const/16 v2, 0x1b85

    const v3, 0x7f0702d4

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 717
    return v5

    .line 685
    :cond_a
    const/16 v1, 0x24

    const v2, 0x7f07028c

    invoke-interface {p1, v4, v1, v7, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 692
    :cond_b
    const/16 v1, 0x3ed

    const v2, 0x7f0701f9

    invoke-interface {p1, v4, v1, v6, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 704
    :cond_c
    const/16 v1, 0x3ff

    const v2, 0x7f070118

    invoke-interface {p1, v4, v1, v8, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2

    .line 711
    :cond_d
    const/16 v1, 0x402

    const/16 v2, 0x1b70

    const v3, 0x7f070511

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 824
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/perm/kate/photoupload/PhotoChooser;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/perm/kate/photoupload/PhotoChooser$Callback;)Landroid/net/Uri;

    .line 825
    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 826
    const-string v0, "uris"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 827
    .local v8, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v0, "resize_option"

    const/4 v1, 0x2

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 828
    .local v3, "resize_option":I
    const-string v0, "rotate"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 829
    .local v5, "rotate":I
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0, v3, v5}, Lcom/perm/kate/ProfileInfoFragment;->startSquareCrop(Landroid/net/Uri;II)V

    .line 831
    .end local v3    # "resize_option":I
    .end local v5    # "rotate":I
    .end local v8    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 832
    if-eqz p3, :cond_1

    .line 833
    const-string v0, "new_status"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 834
    .local v6, "new_status":Ljava/lang/String;
    invoke-static {v6}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 835
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v1, 0x0

    invoke-static {v0, v10, v11, v6, v1}, Lcom/perm/kate/Helper;->showPublishStatusDialog(Landroid/app/Activity;JLjava/lang/String;Z)V

    .line 838
    .end local v6    # "new_status":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 839
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->listener:Lcom/perm/kate/ProfileActivityCallback;

    invoke-interface {v0}, Lcom/perm/kate/ProfileActivityCallback;->onAvatarChanged()V

    .line 840
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 841
    const-string v0, "uri"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 842
    .local v2, "uri":Landroid/net/Uri;
    const-string v0, "resize_option"

    const/4 v1, 0x2

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 843
    .restart local v3    # "resize_option":I
    const-string v0, "rotate"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 844
    .restart local v5    # "rotate":I
    const-string v0, "x_y_w"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 845
    .local v7, "square_crop":Ljava/lang/String;
    new-instance v0, Lcom/perm/kate/photoupload/AvatarUploader;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v4, p0, Lcom/perm/kate/ProfileInfoFragment;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/photoupload/AvatarUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;ILcom/perm/kate/photoupload/UploadCallback;I)V

    .line 846
    invoke-virtual {v0, v7}, Lcom/perm/kate/photoupload/AvatarUploader;->setSquareCrop(Ljava/lang/String;)Lcom/perm/kate/photoupload/AvatarUploader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/photoupload/AvatarUploader;->upload()V

    .line 848
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "resize_option":I
    .end local v5    # "rotate":I
    .end local v7    # "square_crop":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1037
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 1038
    check-cast p1, Lcom/perm/kate/ProfileActivityCallback;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment;->listener:Lcom/perm/kate/ProfileActivityCallback;

    .line 1039
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 124
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 125
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->setHasOptionsMenu(Z)V

    .line 126
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 89
    .local v1, "view":Landroid/view/View;
    const v3, 0x7f0300e6

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 90
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "com.perm.kate.user_id"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;

    .line 93
    iget-object v3, p0, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v3, :cond_0

    move-object v2, v1

    .line 119
    .end local v1    # "view":Landroid/view/View;
    .local v2, "view":Landroid/view/View;
    :goto_0
    return-object v2

    .line 99
    .end local v2    # "view":Landroid/view/View;
    .restart local v1    # "view":Landroid/view/View;
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 104
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;

    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v4}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    .line 105
    invoke-direct {p0, v1}, Lcom/perm/kate/ProfileInfoFragment;->initUiFields(Landroid/view/View;)V

    .line 106
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v4, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    .line 107
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->fetchCityAndCountry()V

    .line 108
    iget-object v3, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    invoke-direct {p0, v3, v1}, Lcom/perm/kate/ProfileInfoFragment;->displayUser(Lcom/perm/kate/api/User;Landroid/view/View;)V

    .line 109
    iget-boolean v3, p0, Lcom/perm/kate/ProfileInfoFragment;->is_me:Z

    if-nez v3, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->getIsFriendInThread()V

    .line 111
    iget-object v3, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    invoke-static {v3}, Lcom/perm/kate/history/History;->addUser(Lcom/perm/kate/api/User;)V

    :cond_1
    :goto_2
    move-object v2, v1

    .line 119
    .end local v1    # "view":Landroid/view/View;
    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0

    .line 100
    .end local v2    # "view":Landroid/view/View;
    .restart local v1    # "view":Landroid/view/View;
    :catch_0
    move-exception v0

    .line 101
    .local v0, "th":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "uid_str="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 102
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 113
    .end local v0    # "th":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 114
    .restart local v0    # "th":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 115
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    instance-of v3, v0, Ljava/lang/OutOfMemoryError;

    if-eqz v3, :cond_1

    .line 117
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v3

    invoke-virtual {v3}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 722
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 781
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 724
    :sswitch_0
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->showDeleteDialog()V

    move v0, v1

    .line 725
    goto :goto_0

    .line 727
    :sswitch_1
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/perm/kate/Helper;->copyProfileLink(Ljava/lang/String;Landroid/content/Context;)V

    move v0, v1

    .line 728
    goto :goto_0

    .line 730
    :sswitch_2
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->addToBlackList()V

    move v0, v1

    .line 731
    goto :goto_0

    .line 733
    :sswitch_3
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->removeFromBlackList()V

    move v0, v1

    .line 734
    goto :goto_0

    .line 736
    :sswitch_4
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->showProfileFromBrowser()V

    move v0, v1

    .line 737
    goto :goto_0

    .line 739
    :sswitch_5
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/perm/utils/OnlineNotificationsHelper;->setEnabledUser(Landroid/content/Context;JZ)V

    move v0, v1

    .line 740
    goto :goto_0

    .line 742
    :sswitch_6
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->isFriend()Z

    move-result v0

    if-nez v0, :cond_0

    .line 743
    const v0, 0x7f0704dd

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->displayToast(I)V

    .line 744
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3, v1}, Lcom/perm/utils/OnlineNotificationsHelper;->setEnabledUser(Landroid/content/Context;JZ)V

    move v0, v1

    .line 745
    goto :goto_0

    .line 747
    :sswitch_7
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->deleteFriend()V

    move v0, v1

    .line 748
    goto :goto_0

    .line 750
    :sswitch_8
    new-instance v0, Lcom/perm/kate/ReportHelper;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/ReportHelper;->showReportUserDialog(J)V

    move v0, v1

    .line 751
    goto :goto_0

    .line 753
    :sswitch_9
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseActivity;

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-static {v0, v2}, Lcom/perm/utils/FriendsListsHelper;->showFriendsListsDialogWithCheck(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V

    move v0, v1

    .line 754
    goto :goto_0

    .line 756
    :sswitch_a
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->faveRemoveUser()V

    move v0, v1

    .line 757
    goto :goto_0

    .line 759
    :sswitch_b
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->faveAddUser()V

    move v0, v1

    .line 760
    goto :goto_0

    .line 762
    :sswitch_c
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/perm/utils/WallSubscriptions;->subscribe(J)V

    .line 763
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->ensureRegularRefreshEnabled()V

    .line 764
    const v0, 0x7f070510

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->displayToast(I)V

    move v0, v1

    .line 765
    goto/16 :goto_0

    .line 767
    :sswitch_d
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/perm/utils/WallSubscriptions;->unsubscribe(J)V

    .line 768
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->disableRegularRefreshIfRequired()V

    .line 769
    const v0, 0x7f07050f

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->displayToast(I)V

    move v0, v1

    .line 770
    goto/16 :goto_0

    .line 772
    :sswitch_e
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/perm/kate/ProfileFragment;->sendGift(Ljava/lang/String;Landroid/app/Activity;)V

    move v0, v1

    .line 773
    goto/16 :goto_0

    .line 775
    :sswitch_f
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseActivity;

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/perm/utils/RegistrationDate;->getAndShow(Lcom/perm/kate/BaseActivity;Ljava/lang/String;)V

    move v0, v1

    .line 776
    goto/16 :goto_0

    .line 778
    :sswitch_10
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->uid_str:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/perm/kate/ProfileFragment;->showMentions(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 779
    goto/16 :goto_0

    .line 722
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x23 -> :sswitch_1
        0x24 -> :sswitch_2
        0x25 -> :sswitch_3
        0x3e8 -> :sswitch_4
        0x3ed -> :sswitch_6
        0x3ef -> :sswitch_5
        0x3f5 -> :sswitch_8
        0x3fb -> :sswitch_7
        0x3fd -> :sswitch_9
        0x3ff -> :sswitch_b
        0x400 -> :sswitch_a
        0x401 -> :sswitch_c
        0x402 -> :sswitch_d
        0x403 -> :sswitch_e
        0x404 -> :sswitch_f
        0x405 -> :sswitch_10
    .end sparse-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 1014
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 130
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStart()V

    .line 132
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    .line 134
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/ProfileInfoFragment;->displayUser(Lcom/perm/kate/api/User;Landroid/view/View;)V

    .line 136
    :cond_0
    return-void
.end method

.method protected showAvatarDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 602
    const/4 v1, 0x1

    .line 603
    .local v1, "MENU_IMAGE":I
    const/4 v0, 0x2

    .line 604
    .local v0, "MENU_AVATARS_ALBUM":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v3, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f070455

    invoke-direct {v5, v6, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    new-instance v5, Lcom/perm/kate/MenuItemDetails;

    const v6, 0x7f07002f

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 608
    new-instance v5, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f07047c

    .line 609
    invoke-virtual {v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 610
    invoke-static {v3}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v6

    new-instance v7, Lcom/perm/kate/ProfileInfoFragment$9;

    invoke-direct {v7, p0, v3}, Lcom/perm/kate/ProfileInfoFragment$9;-><init>(Lcom/perm/kate/ProfileInfoFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    .line 623
    .local v4, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    .line 624
    .local v2, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v2, v8}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 625
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 626
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->downloadAvatarsAlbum()V

    .line 627
    return-void
.end method

.method public showEditProfileAcivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1042
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1043
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/EditProfileActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1044
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/ProfileInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1045
    return-void
.end method

.method protected showMessageThread()V
    .locals 3

    .prologue
    .line 851
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 852
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/MessageThreadActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 853
    const-string v1, "com.perm.kate.message_uid"

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 854
    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->startActivity(Landroid/content/Intent;)V

    .line 855
    return-void
.end method

.method protected showOptionsDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 630
    const/4 v0, 0x1

    .line 631
    .local v0, "MENU_EDIT_PHOTO":I
    const/4 v2, 0x2

    .line 632
    .local v2, "MENU_EDIT_STATUS":I
    const/4 v1, 0x3

    .line 633
    .local v1, "MENU_EDIT_PROFILE":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 634
    .local v4, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f070191

    const/4 v8, 0x3

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f070098

    invoke-direct {v6, v7, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 636
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f0701e2

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    new-instance v6, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f07018d

    .line 639
    invoke-virtual {v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    .line 640
    invoke-static {v4}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v8, Lcom/perm/kate/ProfileInfoFragment$10;

    invoke-direct {v8, p0, v4}, Lcom/perm/kate/ProfileInfoFragment$10;-><init>(Lcom/perm/kate/ProfileInfoFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 656
    .local v5, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    .line 657
    .local v3, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v3, v9}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 658
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 659
    return-void
.end method

.method protected showProfileFromBrowser()V
    .locals 4

    .prologue
    .line 548
    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    if-nez v1, :cond_0

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id"

    invoke-static {v2}, Lcom/perm/kate/KApplication;->instanceLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    iget-wide v2, v2, Lcom/perm/kate/api/User;->uid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/perm/kate/ProfileInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public userRefreshed(Lcom/perm/kate/api/User;)V
    .locals 4
    .param p1, "user"    # Lcom/perm/kate/api/User;

    .prologue
    .line 142
    iget-object v0, p1, Lcom/perm/kate/api/User;->deactivated:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->checkDeactivated(Ljava/lang/String;)V

    .line 143
    iget-object v0, p1, Lcom/perm/kate/api/User;->deactivated:Ljava/lang/String;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->deactivated:Ljava/lang/String;

    .line 145
    iget-object v0, p1, Lcom/perm/kate/api/User;->relation_partner_id:Ljava/lang/Long;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->relation_partner_id:Ljava/lang/Long;

    .line 146
    iget-object v0, p1, Lcom/perm/kate/api/User;->relation_partner_id:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p1, Lcom/perm/kate/api/User;->relation_partner_first_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->relation_partner_first_name:Ljava/lang/String;

    .line 148
    iget-object v0, p1, Lcom/perm/kate/api/User;->relation_partner_last_name:Ljava/lang/String;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->relation_partner_last_name:Ljava/lang/String;

    .line 150
    :cond_0
    iget-object v0, p1, Lcom/perm/kate/api/User;->status_audio:Lcom/perm/kate/api/Audio;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->status_audio:Lcom/perm/kate/api/Audio;

    .line 152
    iget-object v0, p1, Lcom/perm/kate/api/User;->is_favorite:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->is_favorite:Ljava/lang/Integer;

    .line 153
    iget-object v0, p1, Lcom/perm/kate/api/User;->can_write_private_message:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->can_write_private_message:Ljava/lang/Integer;

    .line 154
    iget-object v0, p1, Lcom/perm/kate/api/User;->blacklisted_by_me:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->blacklisted_by_me:Ljava/lang/Integer;

    .line 156
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/ProfileInfoFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileInfoFragment;->u:Lcom/perm/kate/api/User;

    .line 157
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->fetchCityAndCountry()V

    .line 158
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->displayUserOnUiThread()V

    .line 159
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->getCityIfMissing()V

    .line 160
    invoke-direct {p0}, Lcom/perm/kate/ProfileInfoFragment;->getCountryIfMissing()V

    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileInfoFragment;->showProgressBar(Z)V

    .line 162
    return-void
.end method
