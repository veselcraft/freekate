.class public Lcom/perm/kate/ProfileFragment;
.super Lcom/perm/kate/BaseFragment;
.source "ProfileFragment.java"


# instance fields
.field private Audio_ClickListener:Landroid/view/View$OnClickListener;

.field private Friends_ClickListener:Landroid/view/View$OnClickListener;

.field private Groups_ClickListener:Landroid/view/View$OnClickListener;

.field private Notes_ClickListener:Landroid/view/View$OnClickListener;

.field private Photos_ClickListener:Landroid/view/View$OnClickListener;

.field private Videos_ClickListener:Landroid/view/View$OnClickListener;

.field private Wall_ClickListener:Landroid/view/View$OnClickListener;

.field private activity_header:Landroid/view/View;

.field private add_friend_callback:Lcom/perm/kate/session/Callback;

.field private add_friend_region:Landroid/view/View;

.field private additional_info_ClickListener:Landroid/view/View$OnClickListener;

.field private allPhotosClickListener:Landroid/view/View$OnClickListener;

.field private avatars_photos_callback:Lcom/perm/kate/session/Callback;

.field private blacklisted_by_me:Ljava/lang/Integer;

.field private buttons:Landroid/view/View;

.field callback_city:Lcom/perm/kate/session/Callback;

.field callback_country:Lcom/perm/kate/session/Callback;

.field private callback_profile:Lcom/perm/kate/session/Callback;

.field private callback_wall_count:Lcom/perm/kate/session/Callback;

.field private can_write_private_message:Ljava/lang/Integer;

.field private city:Ljava/lang/String;

.field clicked_item:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field deactivated:Ljava/lang/String;

.field private delete_friend_callback:Lcom/perm/kate/session/Callback;

.field private docsClickListener:Landroid/view/View$OnClickListener;

.field private faves_ClickListener:Landroid/view/View$OnClickListener;

.field private followersClickListener:Landroid/view/View$OnClickListener;

.field private friendClickListener:Landroid/view/View$OnClickListener;

.field private giftsClickListener:Landroid/view/View$OnClickListener;

.field private globalLayoutListenerAdded:Z

.field private imv_profile_info_user_photo:Landroid/widget/ImageView;

.field private is_favorite:Ljava/lang/Integer;

.field private is_follower:Z

.field private is_friend_callback:Lcom/perm/kate/session/Callback;

.field private is_me:Z

.field private ll_followers_region:Landroid/widget/LinearLayout;

.field private ll_profile_additional_info:Landroid/widget/LinearLayout;

.field private ll_profile_audio_region:Landroid/view/View;

.field private ll_profile_education_region:Landroid/widget/LinearLayout;

.field private ll_profile_faves_region:Landroid/widget/LinearLayout;

.field private ll_profile_friends_region:Landroid/view/View;

.field ll_profile_gifts_region:Landroid/view/View;

.field private ll_profile_photos_region:Landroid/view/View;

.field private ll_profile_place_region:Landroid/widget/LinearLayout;

.field private ll_profile_videos_region:Landroid/view/View;

.field private ll_profile_wall_region:Landroid/view/View;

.field private ll_subscriptions_region:Landroid/widget/LinearLayout;

.field private new_profile:Z

.field notes_layout:Landroid/view/View;

.field private photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

.field private photoClick:Landroid/view/View$OnClickListener;

.field private profileIdClickListener:Landroid/view/View$OnClickListener;

.field private relation_partner_ClickListener:Landroid/view/View$OnClickListener;

.field public relation_partner_first_name:Ljava/lang/String;

.field public relation_partner_id:Ljava/lang/Long;

.field public relation_partner_last_name:Ljava/lang/String;

.field private repliesClickListener:Landroid/view/View$OnClickListener;

.field private replies_region:Landroid/view/View;

.field private scrollView:Landroid/view/View;

.field private statusClickListener:Landroid/view/View$OnClickListener;

.field private status_audio:Lcom/perm/kate/api/Audio;

.field private storiesClickListener:Landroid/view/View$OnClickListener;

.field private subscribersClickListener:Landroid/view/View$OnClickListener;

.field private tv_albums_count:Landroid/widget/TextView;

.field private tv_audios_count:Landroid/widget/TextView;

.field private tv_followers_count:Landroid/widget/TextView;

.field private tv_friends_count:Landroid/widget/TextView;

.field private tv_gifts_count:Landroid/widget/TextView;

.field private tv_groups_count:Landroid/widget/TextView;

.field private tv_notes_count:Landroid/widget/TextView;

.field private tv_photo_count:Landroid/widget/TextView;

.field private tv_photos_count:Landroid/widget/TextView;

.field private tv_profile_info_birthday:Landroid/widget/TextView;

.field private tv_profile_info_country:Landroid/widget/TextView;

.field private tv_profile_info_id:Landroid/widget/TextView;

.field private tv_profile_info_rate:Landroid/widget/TextView;

.field private tv_profile_info_relation:Landroid/widget/TextView;

.field private tv_profile_info_sex:Landroid/widget/TextView;

.field private tv_profile_info_university:Landroid/widget/TextView;

.field private tv_profile_info_user_name:Landroid/widget/TextView;

.field private tv_videos_count:Landroid/widget/TextView;

.field private tv_wall_count:Landroid/widget/TextView;

.field private u:Lcom/perm/kate/api/User;

.field uid:Ljava/lang/Long;

.field private uid_str:Ljava/lang/String;

.field protected uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

.field private userPhotosClickListener:Landroid/view/View$OnClickListener;

.field user_photos:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$MXcpkgwLsXNAXYow4lf2DQUHaBs(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->lambda$displayUser$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$pYod_m-hFAYMk3zlvwAwSHZMSjs(Lcom/perm/kate/ProfileFragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/perm/kate/ProfileFragment;->is_follower:Z

    .line 129
    invoke-static {}, Lcom/perm/kate/ProfileFragment;->isOldProfile()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->new_profile:Z

    const/4 v1, 0x0

    .line 131
    iput-object v1, p0, Lcom/perm/kate/ProfileFragment;->clicked_item:Ljava/lang/String;

    .line 132
    iput-boolean v0, p0, Lcom/perm/kate/ProfileFragment;->globalLayoutListenerAdded:Z

    .line 244
    iput-object v1, p0, Lcom/perm/kate/ProfileFragment;->deactivated:Ljava/lang/String;

    .line 246
    new-instance v0, Lcom/perm/kate/ProfileFragment$2;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileFragment$2;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->callback_profile:Lcom/perm/kate/session/Callback;

    .line 300
    new-instance v0, Lcom/perm/kate/ProfileFragment$3;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileFragment$3;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->callback_wall_count:Lcom/perm/kate/session/Callback;

    .line 850
    new-instance v0, Lcom/perm/kate/ProfileFragment$6;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileFragment$6;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->callback_city:Lcom/perm/kate/session/Callback;

    .line 871
    new-instance v0, Lcom/perm/kate/ProfileFragment$7;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileFragment$7;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->callback_country:Lcom/perm/kate/session/Callback;

    .line 899
    new-instance v0, Lcom/perm/kate/ProfileFragment$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$8;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->Friends_ClickListener:Landroid/view/View$OnClickListener;

    .line 907
    new-instance v0, Lcom/perm/kate/ProfileFragment$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$9;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->Photos_ClickListener:Landroid/view/View$OnClickListener;

    .line 915
    new-instance v0, Lcom/perm/kate/ProfileFragment$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$10;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->Videos_ClickListener:Landroid/view/View$OnClickListener;

    .line 923
    new-instance v0, Lcom/perm/kate/ProfileFragment$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$11;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->Wall_ClickListener:Landroid/view/View$OnClickListener;

    .line 931
    new-instance v0, Lcom/perm/kate/ProfileFragment$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$12;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->Audio_ClickListener:Landroid/view/View$OnClickListener;

    .line 939
    new-instance v0, Lcom/perm/kate/ProfileFragment$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$13;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->Groups_ClickListener:Landroid/view/View$OnClickListener;

    .line 947
    new-instance v0, Lcom/perm/kate/ProfileFragment$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$14;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->userPhotosClickListener:Landroid/view/View$OnClickListener;

    .line 955
    new-instance v0, Lcom/perm/kate/ProfileFragment$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$15;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->allPhotosClickListener:Landroid/view/View$OnClickListener;

    .line 963
    new-instance v0, Lcom/perm/kate/ProfileFragment$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$16;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->photoClick:Landroid/view/View$OnClickListener;

    .line 971
    new-instance v0, Lcom/perm/kate/ProfileFragment$17;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$17;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->statusClickListener:Landroid/view/View$OnClickListener;

    .line 1008
    new-instance v0, Lcom/perm/kate/ProfileFragment$19;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$19;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->Notes_ClickListener:Landroid/view/View$OnClickListener;

    .line 1016
    new-instance v0, Lcom/perm/kate/ProfileFragment$20;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$20;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->giftsClickListener:Landroid/view/View$OnClickListener;

    .line 1024
    new-instance v0, Lcom/perm/kate/ProfileFragment$21;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$21;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->docsClickListener:Landroid/view/View$OnClickListener;

    .line 1034
    new-instance v0, Lcom/perm/kate/ProfileFragment$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->storiesClickListener:Landroid/view/View$OnClickListener;

    .line 1098
    new-instance v0, Lcom/perm/kate/ProfileFragment$22;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileFragment$22;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->avatars_photos_callback:Lcom/perm/kate/session/Callback;

    .line 1426
    new-instance v0, Lcom/perm/kate/ProfileFragment$28;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$28;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->repliesClickListener:Landroid/view/View$OnClickListener;

    .line 1474
    new-instance v0, Lcom/perm/kate/ProfileFragment$29;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$29;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->friendClickListener:Landroid/view/View$OnClickListener;

    .line 1539
    new-instance v0, Lcom/perm/kate/ProfileFragment$34;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileFragment$34;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->delete_friend_callback:Lcom/perm/kate/session/Callback;

    .line 1563
    new-instance v0, Lcom/perm/kate/ProfileFragment$35;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileFragment$35;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->add_friend_callback:Lcom/perm/kate/session/Callback;

    .line 1617
    new-instance v0, Lcom/perm/kate/ProfileFragment$37;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$37;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->subscribersClickListener:Landroid/view/View$OnClickListener;

    .line 1625
    new-instance v0, Lcom/perm/kate/ProfileFragment$38;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$38;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->followersClickListener:Landroid/view/View$OnClickListener;

    .line 1649
    new-instance v0, Lcom/perm/kate/ProfileFragment$39;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$39;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->faves_ClickListener:Landroid/view/View$OnClickListener;

    .line 1657
    new-instance v0, Lcom/perm/kate/ProfileFragment$40;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$40;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->additional_info_ClickListener:Landroid/view/View$OnClickListener;

    .line 1678
    new-instance v0, Lcom/perm/kate/ProfileFragment$41;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$41;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    .line 1689
    new-instance v0, Lcom/perm/kate/ProfileFragment$42;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$42;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 1702
    new-instance v0, Lcom/perm/kate/ProfileFragment$43;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$43;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->relation_partner_ClickListener:Landroid/view/View$OnClickListener;

    .line 1727
    new-instance v0, Lcom/perm/kate/ProfileFragment$44;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$44;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->profileIdClickListener:Landroid/view/View$OnClickListener;

    .line 1746
    new-instance v0, Lcom/perm/kate/ProfileFragment$46;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileFragment$46;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->is_friend_callback:Lcom/perm/kate/session/Callback;

    return-void
.end method

.method public static ShowAlbumsAcivity(Landroid/app/Activity;Ljava/lang/Long;)V
    .locals 2

    .line 1165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1166
    const-class v1, Lcom/perm/kate/AlbumsActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.owner_id"

    .line 1167
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1168
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static ShowAudioAcivity(Landroid/app/Activity;Ljava/lang/Long;)V
    .locals 2

    .line 1186
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1187
    const-class v1, Lcom/perm/kate/AudioActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.owner_id"

    .line 1188
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1189
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private ShowFriendsAcivity()V
    .locals 3

    .line 1068
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1069
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/FriendsActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1070
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    const-string v2, "com.perm.kate.user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1071
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private ShowGroupsAcivity()V
    .locals 3

    .line 1193
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1194
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/GroupsActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1195
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    const-string v2, "com.perm.kate.user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1196
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private ShowNotesAcivity()V
    .locals 3

    .line 1200
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1201
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/NotesActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1202
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    const-string v2, "com.perm.kate.user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1203
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static ShowVideosAcivity(Landroid/content/Context;Ljava/lang/Long;)V
    .locals 2

    .line 1172
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.perm.kate.user_id"

    .line 1173
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1174
    const-class p1, Lcom/perm/kate/VideoActivity2;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1175
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static ShowWallAcivity(Landroid/app/Activity;Ljava/lang/Long;)V
    .locals 3

    .line 1179
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1180
    const-class v1, Lcom/perm/kate/WallActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1181
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1182
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/perm/kate/ProfileFragment;->callback_profile:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->displayUserOnUiThread()V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/ProfileFragment;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->getCityIfMissing()V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->getCountryIfMissing()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/ProfileFragment;[Ljava/lang/Integer;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->displayWallCountInUiThread([Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/ProfileFragment;Lcom/perm/kate/api/User;Landroid/view/View;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/ProfileFragment;->displayUser(Lcom/perm/kate/api/User;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/perm/kate/ProfileFragment;Ljava/lang/Integer;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->displayWallCount(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/perm/kate/ProfileFragment;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->displayNotesCount(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/perm/kate/ProfileFragment;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/perm/kate/ProfileFragment;->city:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1802(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment;->city:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/perm/kate/ProfileFragment;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/perm/kate/ProfileFragment;->country:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment;->country:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/perm/kate/ProfileFragment;->callback_wall_count:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->ShowFriendsAcivity()V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->reportClick(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->ShowGroupsAcivity()V

    return-void
.end method

.method static synthetic access$2300(Lcom/perm/kate/ProfileFragment;)Ljava/lang/String;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->downloadAvatarsAlbum()V

    return-void
.end method

.method static synthetic access$2500(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->showStatusAcivity()V

    return-void
.end method

.method static synthetic access$2600(Lcom/perm/kate/ProfileFragment;)Z
    .locals 0

    .line 65
    iget-boolean p0, p0, Lcom/perm/kate/ProfileFragment;->new_profile:Z

    return p0
.end method

.method static synthetic access$2700(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->showStatusDialog()V

    return-void
.end method

.method static synthetic access$2800(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->ShowNotesAcivity()V

    return-void
.end method

.method static synthetic access$2900(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->showGiftsAcivity()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->checkDeactivated(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/perm/kate/ProfileFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->showProfileImage(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/perm/kate/ProfileFragment;->avatars_photos_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->showDeleteDialog()V

    return-void
.end method

.method static synthetic access$3300(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->showAddDialog()V

    return-void
.end method

.method static synthetic access$3400(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->deleteFriend()V

    return-void
.end method

.method static synthetic access$3500(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->addFriend(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/perm/kate/ProfileFragment;->delete_friend_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/perm/kate/ProfileFragment;->add_friend_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->displayFriendStatusOnUiThread()V

    return-void
.end method

.method static synthetic access$3902(Lcom/perm/kate/ProfileFragment;Z)Z
    .locals 0

    .line 65
    iput-boolean p1, p0, Lcom/perm/kate/ProfileFragment;->is_follower:Z

    return p1
.end method

.method static synthetic access$400(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/Audio;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/perm/kate/ProfileFragment;->status_audio:Lcom/perm/kate/api/Audio;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/perm/kate/ProfileFragment;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->displayFriendStatusOnUiThread2(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/perm/kate/ProfileFragment;Lcom/perm/kate/api/Audio;)Lcom/perm/kate/api/Audio;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment;->status_audio:Lcom/perm/kate/api/Audio;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/perm/kate/ProfileFragment;Landroid/view/View;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->displayFriendStatus(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->showSubscribers()V

    return-void
.end method

.method static synthetic access$4300(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->showFollowers()V

    return-void
.end method

.method static synthetic access$4400(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->showFaves()V

    return-void
.end method

.method static synthetic access$4500(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->showAdditionalInfo()V

    return-void
.end method

.method static synthetic access$4600(Lcom/perm/kate/ProfileFragment;Ljava/util/ArrayList;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/perm/kate/ProfileFragment;->is_friend_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$4800(Lcom/perm/kate/ProfileFragment;Landroid/view/View;I)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/ProfileFragment;->displayFriendStatus2(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/perm/kate/ProfileFragment;)Landroid/view/View;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/perm/kate/ProfileFragment;->scrollView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$5000(Lcom/perm/kate/ProfileFragment;)Landroid/view/View;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/perm/kate/ProfileFragment;->activity_header:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$502(Lcom/perm/kate/ProfileFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment;->is_favorite:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$5100(Landroid/app/Activity;)V
    .locals 0

    .line 65
    invoke-static {p0}, Lcom/perm/kate/ProfileFragment;->displayYouBlacklisted(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/perm/kate/ProfileFragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/ProfileFragment;->setMatrix(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/perm/kate/ProfileFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/perm/kate/ProfileFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$602(Lcom/perm/kate/ProfileFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment;->can_write_private_message:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$702(Lcom/perm/kate/ProfileFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment;->blacklisted_by_me:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/User;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    return-object p0
.end method

.method static synthetic access$802(Lcom/perm/kate/ProfileFragment;Lcom/perm/kate/api/User;)Lcom/perm/kate/api/User;
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    return-object p1
.end method

.method static synthetic access$900(Lcom/perm/kate/ProfileFragment;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->fetchCityAndCountry()V

    return-void
.end method

.method private addFriend(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 1523
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 1524
    new-instance v0, Lcom/perm/kate/ProfileFragment$33;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/ProfileFragment$33;-><init>(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)V

    .line 1529
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private addToBlackList()V
    .locals 3

    .line 1388
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/ProfileFragment$26;

    invoke-direct {v2, p0}, Lcom/perm/kate/ProfileFragment$26;-><init>(Lcom/perm/kate/ProfileFragment;)V

    invoke-static {v0, v1, v2}, Lcom/perm/kate/BlackListActivity;->AddToBlackList(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V

    return-void
.end method

.method private checkDeactivated(Ljava/lang/String;)V
    .locals 1

    .line 342
    invoke-static {p1}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "deleted"

    .line 344
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f0f0551

    .line 345
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    goto :goto_0

    :cond_1
    const-string v0, "banned"

    .line 346
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f0f0550

    .line 347
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private deleteFriend()V
    .locals 1

    const/4 v0, 0x1

    .line 1513
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 1514
    new-instance v0, Lcom/perm/kate/ProfileFragment$32;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$32;-><init>(Lcom/perm/kate/ProfileFragment;)V

    .line 1519
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

    .line 746
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment;->city:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 747
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->country:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 748
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_country:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 750
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_country:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p1, 0x1

    .line 751
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->setVisiblePlaceRegion(Z)V

    :cond_1
    return-void
.end method

.method private displayCounters(Lcom/perm/kate/api/User;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 667
    iget v0, p1, Lcom/perm/kate/api/User;->friends_count:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 668
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    const-string v2, ")"

    const-string v3, " ("

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 669
    iget-object v1, p1, Lcom/perm/kate/api/User;->online_friends_count:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/perm/kate/api/User;->online_friends_count:Ljava/lang/Integer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 672
    :cond_0
    iget-object v1, p1, Lcom/perm/kate/api/User;->mutual_friends_count:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0f035f

    .line 673
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x3

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 674
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/perm/kate/api/User;->mutual_friends_count:Ljava/lang/Integer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 677
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->tv_friends_count:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_albums_count:Landroid/widget/TextView;

    iget v1, p1, Lcom/perm/kate/api/User;->albums_count:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 679
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_photo_count:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 680
    iget v1, p1, Lcom/perm/kate/api/User;->photo_count:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 681
    :cond_2
    iget v0, p1, Lcom/perm/kate/api/User;->user_photos_count:I

    const/16 v1, 0x8

    if-nez v0, :cond_3

    .line 682
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->user_photos:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 684
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->user_photos:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_photos_count:Landroid/widget/TextView;

    iget v2, p1, Lcom/perm/kate/api/User;->user_photos_count:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    :goto_1
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_audios_count:Landroid/widget/TextView;

    iget v2, p1, Lcom/perm/kate/api/User;->audios_count:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_videos_count:Landroid/widget/TextView;

    iget v2, p1, Lcom/perm/kate/api/User;->videos_count:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_groups_count:Landroid/widget/TextView;

    iget v2, p1, Lcom/perm/kate/api/User;->groups_count:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 690
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_followers_count:Landroid/widget/TextView;

    iget v2, p1, Lcom/perm/kate/api/User;->followers_count:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 692
    iget v0, p1, Lcom/perm/kate/api/User;->gifts_count:I

    if-nez v0, :cond_4

    .line 693
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_gifts_region:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 695
    :cond_4
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_gifts_region:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_gifts_count:Landroid/widget/TextView;

    iget v1, p1, Lcom/perm/kate/api/User;->gifts_count:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 699
    :goto_2
    iget-object p1, p1, Lcom/perm/kate/api/User;->posts_count:Ljava/lang/Integer;

    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->displayWallCount(Ljava/lang/Integer;)V

    return-void
.end method

.method private displayCountry(Lcom/perm/kate/api/User;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 735
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment;->country:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 736
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->city:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 737
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_country:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_country:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    const/4 p1, 0x1

    .line 740
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->setVisiblePlaceRegion(Z)V

    :cond_1
    return-void
.end method

.method private displayFriendStatus(Landroid/view/View;)V
    .locals 1

    .line 1591
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->isFriend(Ljava/lang/Long;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1592
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment;->add_friend_region:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1594
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment;->add_friend_region:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private displayFriendStatus2(Landroid/view/View;I)V
    .locals 5

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

    .line 1777
    iget-object v3, p0, Lcom/perm/kate/ProfileFragment;->add_friend_region:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1779
    :cond_2
    iget-object v3, p0, Lcom/perm/kate/ProfileFragment;->add_friend_region:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    if-eqz p1, :cond_6

    const v3, 0x7f0903b2

    .line 1781
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eq p2, v2, :cond_4

    if-ne p2, v0, :cond_3

    goto :goto_3

    .line 1786
    :cond_3
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5

    .line 1783
    :cond_4
    :goto_3
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-ne p2, v2, :cond_5

    const p2, 0x7f0f0307

    goto :goto_4

    :cond_5
    const p2, 0x7f0f0201

    .line 1784
    :goto_4
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    :cond_6
    :goto_5
    return-void
.end method

.method private displayFriendStatusOnUiThread()V
    .locals 2

    .line 1580
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1582
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/ProfileFragment$36;

    invoke-direct {v1, p0}, Lcom/perm/kate/ProfileFragment$36;-><init>(Lcom/perm/kate/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displayFriendStatusOnUiThread2(I)V
    .locals 2

    .line 1764
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1766
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/ProfileFragment$47;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/ProfileFragment$47;-><init>(Lcom/perm/kate/ProfileFragment;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displayNotesCount(I)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 722
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->notes_layout:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->tv_notes_count:Landroid/widget/TextView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 725
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-nez v1, :cond_1

    const/16 p1, 0x8

    .line 726
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 728
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 729
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_notes_count:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
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

    .line 500
    :cond_0
    iget-object v0, v1, Lcom/perm/kate/ProfileFragment;->tv_profile_info_id:Landroid/widget/TextView;

    if-nez v0, :cond_1

    return-void

    .line 502
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez v2, :cond_2

    return-void

    .line 507
    :cond_2
    iget-object v0, v2, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    const/4 v4, 0x0

    const/4 v5, 0x1

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

    .line 509
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

    .line 510
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v11, 0x7f0f03a4

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(I)V

    .line 511
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

    .line 512
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

    .line 514
    :cond_7
    iget-wide v13, v2, Lcom/perm/kate/api/User;->last_seen:J

    cmp-long v0, v13, v9

    if-lez v0, :cond_8

    .line 515
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

    .line 517
    :cond_8
    invoke-virtual {v3, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v11, 0x7f0f0396

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(I)V

    .line 518
    :goto_4
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 519
    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 523
    :goto_5
    iget-object v0, v2, Lcom/perm/kate/api/User;->photo_200:Ljava/lang/String;

    .line 524
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 525
    iget-object v0, v2, Lcom/perm/kate/api/User;->photo_big:Ljava/lang/String;

    .line 528
    :cond_9
    invoke-static {}, Lcom/perm/kate/ProfileFragment;->wideAva()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 529
    iget-object v8, v2, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_a

    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->shouldDisplayBigPhotos()Z

    move-result v8

    if-eqz v8, :cond_a

    .line 530
    iget-object v0, v2, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    :cond_a
    move-object v14, v0

    .line 531
    invoke-static {}, Lcom/perm/kate/ProfileFragment;->wideAva()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 535
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/perm/kate/ImageLoader;->isCachedInMemory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 537
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v0, v0, Lcom/perm/kate/ImageLoader;->imageViews:Ljava/util/Map;

    iget-object v8, v1, Lcom/perm/kate/ProfileFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    invoke-interface {v0, v8, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    invoke-virtual {v0, v14}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 539
    iget-object v8, v1, Lcom/perm/kate/ProfileFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_6

    .line 545
    :cond_b
    new-instance v0, Lcom/perm/kate/ProfileFragment$PhotoTask;

    iget-object v8, v1, Lcom/perm/kate/ProfileFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    invoke-direct {v0, v1, v8, v14}, Lcom/perm/kate/ProfileFragment$PhotoTask;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 546
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v8

    invoke-virtual {v8, v0}, Lcom/perm/kate/ImageLoader;->displayImage(Lcom/perm/kate/ImageLoader$PhotoToLoad;)V

    .line 551
    :goto_6
    iget-boolean v0, v1, Lcom/perm/kate/ProfileFragment;->globalLayoutListenerAdded:Z

    if-nez v0, :cond_e

    .line 552
    iput-boolean v5, v1, Lcom/perm/kate/ProfileFragment;->globalLayoutListenerAdded:Z

    .line 554
    iget-object v0, v1, Lcom/perm/kate/ProfileFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 556
    new-instance v8, Lcom/perm/kate/ProfileFragment$MyObserver;

    invoke-direct {v8, v1}, Lcom/perm/kate/ProfileFragment$MyObserver;-><init>(Lcom/perm/kate/ProfileFragment;)V

    invoke-virtual {v0, v8}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_8

    .line 559
    :cond_c
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v13

    iget-object v15, v1, Lcom/perm/kate/ProfileFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    const/16 v16, 0x1

    if-eqz v7, :cond_d

    const/16 v0, 0x190

    const/16 v17, 0x190

    goto :goto_7

    :cond_d
    const/16 v0, 0xc8

    const/16 v17, 0xc8

    :goto_7
    invoke-static {}, Lcom/perm/kate/ProfileFragment;->getBigAvaStubId()I

    move-result v18

    xor-int/lit8 v19, v7, 0x1

    invoke-virtual/range {v13 .. v19}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 561
    :cond_e
    :goto_8
    iget-object v0, v2, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    const-string v8, ""

    const-string v11, " "

    if-eqz v0, :cond_f

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    .line 564
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v2, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v2, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    :goto_9
    iget-object v13, v2, Lcom/perm/kate/api/User;->verified:Ljava/lang/Integer;

    const/16 v14, 0x21

    if-eqz v13, :cond_12

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    if-ne v13, v5, :cond_12

    .line 566
    new-instance v13, Landroid/text/SpannableStringBuilder;

    invoke-direct {v13}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 567
    invoke-virtual {v13, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v15

    const-string v9, "  "

    invoke-virtual {v15, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 568
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v9

    if-nez v9, :cond_11

    if-eqz v7, :cond_10

    goto :goto_a

    :cond_10
    const v7, 0x7f0801ee

    goto :goto_b

    :cond_11
    :goto_a
    const v7, 0x7f0801ed

    .line 569
    :goto_b
    new-instance v9, Landroid/text/style/ImageSpan;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-direct {v9, v10, v7, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v13}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    invoke-virtual {v13, v9, v7, v10, v14}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 570
    iget-object v7, v1, Lcom/perm/kate/ProfileFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    invoke-virtual {v7, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v7, v1, Lcom/perm/kate/ProfileFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0430 \u043f\u043e\u0434\u0442\u0432\u0435\u0440\u0436\u0434\u0435\u043d\u0430"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_c

    .line 573
    :cond_12
    iget-object v7, v1, Lcom/perm/kate/ProfileFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    :goto_c
    iget-object v0, v2, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    invoke-direct {v1, v0}, Lcom/perm/kate/ProfileFragment;->getSex(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 576
    iget-object v7, v1, Lcom/perm/kate/ProfileFragment;->tv_profile_info_sex:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 577
    iget-object v0, v1, Lcom/perm/kate/ProfileFragment;->tv_profile_info_sex:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d

    .line 579
    :cond_13
    iget-object v0, v1, Lcom/perm/kate/ProfileFragment;->tv_profile_info_sex:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 580
    :goto_d
    iget-object v0, v2, Lcom/perm/kate/api/User;->relation:Ljava/lang/Integer;

    iget-object v7, v2, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    invoke-direct {v1, v0, v7}, Lcom/perm/kate/ProfileFragment;->getRelation(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v7

    .line 581
    iget-object v0, v1, Lcom/perm/kate/ProfileFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    if-eqz v7, :cond_15

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    goto :goto_e

    :cond_14
    const/4 v9, 0x0

    goto :goto_f

    :cond_15
    :goto_e
    const/16 v9, 0x8

    :goto_f
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 582
    iget-object v0, v1, Lcom/perm/kate/ProfileFragment;->relation_partner_id:Ljava/lang/Long;

    if-eqz v0, :cond_16

    .line 584
    :try_start_0
    iget-object v0, v2, Lcom/perm/kate/api/User;->relation:Ljava/lang/Integer;

    iget-object v9, v2, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    invoke-direct {v1, v0, v9}, Lcom/perm/kate/ProfileFragment;->getRelationIn(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    .line 585
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v1, Lcom/perm/kate/ProfileFragment;->relation_partner_first_name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/perm/kate/ProfileFragment;->relation_partner_last_name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 586
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 587
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 588
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    .line 589
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int v9, v10, v9

    .line 590
    new-instance v13, Landroid/text/style/StyleSpan;

    invoke-direct {v13, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0, v13, v9, v10, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 591
    new-instance v13, Lcom/perm/kate/ProfileFragment$URLSpanNoUnderline;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id"

    invoke-static {v5}, Lcom/perm/kate/KApplication;->instanceLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/perm/kate/ProfileFragment;->relation_partner_id:Ljava/lang/Long;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v13, v5}, Lcom/perm/kate/ProfileFragment$URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13, v9, v10, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 592
    iget-object v5, v1, Lcom/perm/kate/ProfileFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v0, v1, Lcom/perm/kate/ProfileFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/perm/kate/ProfileFragment;->relation_partner_id:Ljava/lang/Long;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 594
    iget-object v0, v1, Lcom/perm/kate/ProfileFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/perm/kate/ProfileFragment;->relation_partner_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_10

    :catchall_0
    move-exception v0

    .line 596
    iget-object v5, v1, Lcom/perm/kate/ProfileFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 597
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 598
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_10

    .line 601
    :cond_16
    iget-object v0, v1, Lcom/perm/kate/ProfileFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_10
    const v0, 0x7f0903bb

    .line 604
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 605
    iget-wide v9, v2, Lcom/perm/kate/api/User;->last_seen:J

    const-wide/16 v13, 0x0

    cmp-long v5, v9, v13

    if-lez v5, :cond_17

    const/4 v5, 0x0

    goto :goto_11

    :cond_17
    const/16 v5, 0x8

    :goto_11
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 606
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    iget-wide v9, v2, Lcom/perm/kate/api/User;->last_seen:J

    iget-object v7, v2, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-static {v5, v9, v10, v6, v7}, Lcom/perm/kate/Helper;->getLastSee(Landroid/content/Context;JZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 608
    invoke-direct/range {p0 .. p1}, Lcom/perm/kate/ProfileFragment;->displayCounters(Lcom/perm/kate/api/User;)V

    .line 609
    invoke-direct/range {p0 .. p1}, Lcom/perm/kate/ProfileFragment;->displayCity(Lcom/perm/kate/api/User;)V

    .line 610
    invoke-direct/range {p0 .. p1}, Lcom/perm/kate/ProfileFragment;->displayCountry(Lcom/perm/kate/api/User;)V

    .line 611
    iget-object v0, v2, Lcom/perm/kate/api/User;->rate:Ljava/lang/Integer;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_18

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0f0280

    invoke-virtual {v1, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/perm/kate/api/User;->rate:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 613
    iget-object v5, v1, Lcom/perm/kate/ProfileFragment;->tv_profile_info_rate:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v0, v1, Lcom/perm/kate/ProfileFragment;->tv_profile_info_rate:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_12

    .line 616
    :cond_18
    iget-object v0, v1, Lcom/perm/kate/ProfileFragment;->tv_profile_info_rate:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 618
    :goto_12
    iget-object v0, v2, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_19

    .line 619
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0f01b3

    invoke-virtual {v1, v5}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/perm/kate/Helper;->getStringAge(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    iget-object v5, v1, Lcom/perm/kate/ProfileFragment;->tv_profile_info_birthday:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    .line 621
    invoke-direct {v1, v5}, Lcom/perm/kate/ProfileFragment;->setVisibleBirthdayRegion(Z)V

    goto :goto_13

    .line 623
    :cond_19
    invoke-direct {v1, v4}, Lcom/perm/kate/ProfileFragment;->setVisibleBirthdayRegion(Z)V

    .line 625
    :goto_13
    iget-object v0, v2, Lcom/perm/kate/api/User;->university_name:Ljava/lang/String;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 626
    iget-object v0, v2, Lcom/perm/kate/api/User;->university_name:Ljava/lang/String;

    const-string v5, "\r\n"

    invoke-virtual {v0, v5, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 627
    iget-object v5, v2, Lcom/perm/kate/api/User;->graduation:Ljava/lang/Integer;

    if-eqz v5, :cond_1a

    invoke-virtual {v5, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 628
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " \'"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/perm/kate/api/User;->graduation:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lcom/perm/kate/api/User;->faculty_name:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    :cond_1a
    iget-object v5, v1, Lcom/perm/kate/ProfileFragment;->tv_profile_info_university:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    .line 630
    invoke-direct {v1, v5}, Lcom/perm/kate/ProfileFragment;->setVisibleEducationRegion(Z)V

    goto :goto_14

    :cond_1b
    const/4 v5, 0x1

    .line 634
    :goto_14
    invoke-direct {v1, v5}, Lcom/perm/kate/ProfileFragment;->setVisibleFriendsRegion(Z)V

    .line 640
    iget-boolean v0, v1, Lcom/perm/kate/ProfileFragment;->new_profile:Z

    const v5, 0x7f0901af

    if-eqz v0, :cond_1c

    const v0, 0x7f0901af

    goto :goto_15

    :cond_1c
    const v0, 0x7f0901f0

    :goto_15
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 641
    iget-object v6, v2, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    if-eqz v6, :cond_1e

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1e

    .line 642
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 643
    iget-object v0, v2, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    .line 645
    iget-object v2, v1, Lcom/perm/kate/ProfileFragment;->status_audio:Lcom/perm/kate/api/Audio;

    if-eqz v2, :cond_1d

    .line 646
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ud83d\udce2 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 648
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 649
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_16

    .line 653
    :cond_1e
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 660
    :goto_16
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/perm/kate/ProfileFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/perm/kate/ProfileFragment$$ExternalSyntheticLambda1;-><init>(Lcom/perm/kate/ProfileFragment;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private displayUserOnUiThread()V
    .locals 2

    .line 332
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 334
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/ProfileFragment$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/ProfileFragment$4;-><init>(Lcom/perm/kate/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displayWallCount(Ljava/lang/Integer;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .line 716
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_wall_count:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 717
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private displayWallCountInUiThread([Ljava/lang/Integer;)V
    .locals 2

    .line 703
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 705
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/ProfileFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/ProfileFragment$5;-><init>(Lcom/perm/kate/ProfileFragment;[Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static displayYouBlacklisted(Landroid/app/Activity;)V
    .locals 3

    const v0, 0x7f0f0563

    .line 1926
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1927
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1928
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const-string v0, "OK"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1929
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 v0, 0x1

    .line 1930
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1931
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static displayYouBlacklistedInUiThread(Landroid/app/Activity;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1915
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1917
    :cond_0
    new-instance v0, Lcom/perm/kate/ProfileFragment$52;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$52;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private downloadAvatarsAlbum()V
    .locals 1

    const/4 v0, 0x1

    .line 1115
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 1116
    new-instance v0, Lcom/perm/kate/ProfileFragment$23;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$23;-><init>(Lcom/perm/kate/ProfileFragment;)V

    .line 1122
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private editPhotoBeforeUpload(Ljava/util/ArrayList;)V
    .locals 3

    .line 1697
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uris"

    .line 1698
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 1699
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private fakeCheckInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 1357
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 1358
    new-instance v0, Lcom/perm/kate/ProfileFragment$25;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$25;-><init>(Lcom/perm/kate/ProfileFragment;)V

    .line 1367
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private faveAddUser()V
    .locals 2

    .line 1796
    new-instance v0, Lcom/perm/kate/ProfileFragment$48;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileFragment$48;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V

    const/4 v1, 0x1

    .line 1813
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 1814
    new-instance v1, Lcom/perm/kate/ProfileFragment$49;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/ProfileFragment$49;-><init>(Lcom/perm/kate/ProfileFragment;Lcom/perm/kate/session/Callback;)V

    .line 1819
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private faveRemoveUser()V
    .locals 2

    .line 1823
    new-instance v0, Lcom/perm/kate/ProfileFragment$50;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileFragment$50;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V

    const/4 v1, 0x1

    .line 1840
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 1841
    new-instance v1, Lcom/perm/kate/ProfileFragment$51;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/ProfileFragment$51;-><init>(Lcom/perm/kate/ProfileFragment;Lcom/perm/kate/session/Callback;)V

    .line 1846
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private fetchCityAndCountry()V
    .locals 4

    .line 886
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    if-nez v0, :cond_0

    return-void

    .line 889
    :cond_0
    iget-object v0, v0, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 890
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchCity(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->city:Ljava/lang/String;

    goto :goto_0

    .line 892
    :cond_1
    iput-object v1, p0, Lcom/perm/kate/ProfileFragment;->city:Ljava/lang/String;

    .line 893
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 894
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchCountry(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->country:Ljava/lang/String;

    goto :goto_1

    .line 896
    :cond_2
    iput-object v1, p0, Lcom/perm/kate/ProfileFragment;->country:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public static getBigAvaStubId()I
    .locals 1

    .line 1859
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/perm/kate/ProfileFragment;->wideAva()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f08020a

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v0

    :goto_0
    return v0
.end method

.method private getCityIfMissing()V
    .locals 4

    .line 843
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->city:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 844
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 845
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 846
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->callback_city:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/session/Session;->getCities(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private getCountryIfMissing()V
    .locals 4

    .line 864
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->country:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 865
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 866
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 867
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->callback_country:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/session/Session;->getCountries(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private getIsFriendInThread()V
    .locals 1

    .line 1738
    new-instance v0, Lcom/perm/kate/ProfileFragment$45;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$45;-><init>(Lcom/perm/kate/ProfileFragment;)V

    .line 1743
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static getMatrix(IIIILcom/perm/kate/api/User$Rect;)Landroid/graphics/Matrix;
    .locals 7

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    if-eqz p4, :cond_0

    .line 1951
    iget-wide v2, p4, Lcom/perm/kate/api/User$Rect;->y1:D

    .line 1952
    iget-wide v4, p4, Lcom/perm/kate/api/User$Rect;->y2:D

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    move-wide v4, v0

    .line 1955
    :goto_0
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    add-double/2addr v4, v2

    double-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    int-to-float p0, p0

    int-to-float p2, p2

    div-float/2addr p0, p2

    int-to-float p1, p1

    int-to-float p2, p3

    div-float p3, p1, p2

    .line 1958
    invoke-static {p0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p0

    .line 1959
    invoke-virtual {p4, p0, p0}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float p2, p2, p0

    mul-float v4, v4, p2

    const/high16 p0, 0x42c80000    # 100.0f

    div-float/2addr v4, p0

    div-float p0, p1, v5

    sub-float/2addr v4, p0

    const/4 p0, 0x0

    cmpg-float p3, v4, p0

    if-gez p3, :cond_1

    const/4 v4, 0x0

    :cond_1
    add-float p3, v4, p1

    cmpl-float p3, p3, p2

    if-lez p3, :cond_2

    sub-float v4, p2, p1

    :cond_2
    float-to-double v5, v4

    float-to-double p1, p2

    .line 1974
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v2

    div-double/2addr p1, v0

    cmpl-double p3, v5, p1

    if-lez p3, :cond_3

    double-to-float v4, p1

    :cond_3
    neg-float p1, v4

    .line 1976
    invoke-virtual {p4, p0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object p4
.end method

.method private getRelation(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 768
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, " "

    const v5, 0x7f0f0282

    if-ne v1, v3, :cond_4

    if-eqz p2, :cond_3

    .line 769
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 771
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 772
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

    .line 773
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 774
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

    .line 770
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

    .line 776
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_9

    if-eqz p2, :cond_8

    .line 777
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    .line 779
    :cond_5
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->relation_partner_id:Ljava/lang/Long;

    if-eqz v1, :cond_6

    .line 780
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

    .line 781
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 782
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

    .line 783
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_9

    .line 784
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

    .line 778
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

    .line 786
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x3

    if-ne v1, v6, :cond_d

    if-eqz p2, :cond_c

    .line 787
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_a

    goto :goto_2

    .line 789
    :cond_a
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_b

    .line 790
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

    .line 791
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_d

    .line 792
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

    .line 788
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

    .line 794
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x4

    if-ne v1, v6, :cond_11

    if-eqz p2, :cond_10

    .line 795
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_3

    .line 797
    :cond_e
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_f

    .line 798
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

    .line 799
    :cond_f
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_11

    .line 800
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

    .line 796
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

    .line 802
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x5

    if-ne v1, v6, :cond_12

    .line 803
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

    .line 804
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x6

    if-ne v1, v6, :cond_13

    .line 805
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

    .line 806
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v6, 0x7

    if-ne v1, v6, :cond_17

    if-eqz p2, :cond_16

    .line 807
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_4

    .line 809
    :cond_14
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_15

    .line 810
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

    .line 811
    :cond_15
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v2, :cond_17

    .line 812
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

    .line 808
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

    .line 814
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x8

    if-ne p1, p2, :cond_18

    .line 815
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

    .line 822
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    .line 824
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    const-string v3, " "

    if-ne v1, v2, :cond_2

    .line 825
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

    .line 827
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_3

    .line 828
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

    .line 830
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_5

    .line 831
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    .line 832
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

    .line 833
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v2, :cond_5

    .line 834
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

    .line 836
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x7

    if-ne p1, p2, :cond_6

    .line 837
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

    .line 758
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, " "

    const v4, 0x7f0f02b7

    if-ne v1, v2, :cond_1

    .line 759
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

    .line 760
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 761
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
    .locals 6

    const v0, 0x7f09018a

    .line 351
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    .line 352
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->photoClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/perm/kate/ProfileFragment;->wideAva()Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    .line 355
    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const-wide/high16 v1, 0x405e000000000000L    # 120.0

    .line 356
    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 357
    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 358
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->requestLayout()V

    :cond_0
    const v0, 0x7f0903c0

    .line 361
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    const v0, 0x7f0903be

    .line 362
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_sex:Landroid/widget/TextView;

    const v0, 0x7f0903bd

    .line 363
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    const v0, 0x7f0903b9

    .line 364
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_country:Landroid/widget/TextView;

    const v0, 0x7f0903bc

    .line 365
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_rate:Landroid/widget/TextView;

    const v0, 0x7f0903b8

    .line 366
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_birthday:Landroid/widget/TextView;

    const v0, 0x7f0903ba

    .line 367
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_id:Landroid/widget/TextView;

    const v0, 0x7f0903bf

    .line 368
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_university:Landroid/widget/TextView;

    const v0, 0x7f0901ed

    .line 372
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_place_region:Landroid/widget/LinearLayout;

    const v0, 0x7f0901e2

    .line 373
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_education_region:Landroid/widget/LinearLayout;

    const v0, 0x7f0901e5

    .line 374
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_friends_region:Landroid/view/View;

    const v0, 0x7f0901ec

    .line 375
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_photos_region:Landroid/view/View;

    const v0, 0x7f0901f2

    .line 376
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_videos_region:Landroid/view/View;

    const v0, 0x7f0901f3

    .line 377
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_wall_region:Landroid/view/View;

    const v0, 0x7f0901df

    .line 378
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_audio_region:Landroid/view/View;

    const v0, 0x7f090034

    .line 379
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->add_friend_region:Landroid/view/View;

    const v0, 0x7f09029a

    .line 380
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->replies_region:Landroid/view/View;

    const v0, 0x7f0901f8

    .line 381
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_subscriptions_region:Landroid/widget/LinearLayout;

    const v0, 0x7f0901d3

    .line 382
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_followers_region:Landroid/widget/LinearLayout;

    const v0, 0x7f0901e3

    .line 383
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_faves_region:Landroid/widget/LinearLayout;

    const v0, 0x7f0901dd

    .line 384
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_additional_info:Landroid/widget/LinearLayout;

    const v0, 0x7f09036d

    .line 385
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_friends_count:Landroid/widget/TextView;

    const v0, 0x7f09034f

    .line 386
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_albums_count:Landroid/widget/TextView;

    const v0, 0x7f090396

    .line 387
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_photo_count:Landroid/widget/TextView;

    const v0, 0x7f090397

    .line 388
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_photos_count:Landroid/widget/TextView;

    const v0, 0x7f090357

    .line 389
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_audios_count:Landroid/widget/TextView;

    const v0, 0x7f0903ec

    .line 390
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_videos_count:Landroid/widget/TextView;

    const v0, 0x7f090392

    .line 391
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_notes_count:Landroid/widget/TextView;

    const v0, 0x7f090376

    .line 392
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_groups_count:Landroid/widget/TextView;

    const v0, 0x7f09036b

    .line 393
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_followers_count:Landroid/widget/TextView;

    const v0, 0x7f090372

    .line 394
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_gifts_count:Landroid/widget/TextView;

    const v0, 0x7f0903ed

    .line 395
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_wall_count:Landroid/widget/TextView;

    .line 396
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_subscriptions_region:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->subscribersClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_followers_region:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->followersClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_friends_region:Landroid/view/View;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->Friends_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 399
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_photos_region:Landroid/view/View;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->Photos_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_videos_region:Landroid/view/View;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->Videos_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_wall_region:Landroid/view/View;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->Wall_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_audio_region:Landroid/view/View;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->Audio_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0900a2

    .line 403
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->buttons:Landroid/view/View;

    .line 404
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_faves_region:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->faves_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 405
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_additional_info:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->additional_info_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_id:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->profileIdClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e7

    .line 407
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 408
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->Groups_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901f1

    .line 409
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->user_photos:Landroid/view/View;

    .line 410
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->userPhotosClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901eb

    .line 411
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->notes_layout:Landroid/view/View;

    .line 412
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->Notes_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901de

    .line 413
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 414
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->allPhotosClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e6

    .line 415
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_gifts_region:Landroid/view/View;

    .line 416
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->giftsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901e0

    .line 418
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 419
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-eqz v1, :cond_1

    .line 420
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->docsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    .line 422
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0900f8

    .line 423
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 425
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    const v0, 0x7f09030e

    .line 429
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 432
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->storiesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const/4 v0, 0x0

    .line 434
    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileFragment;->setVisibleBirthdayRegion(Z)V

    .line 435
    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileFragment;->setVisiblePlaceRegion(Z)V

    .line 436
    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileFragment;->setVisibleEducationRegion(Z)V

    .line 437
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/perm/kate/ProfileFragment;->setVisibleFriendsRegionsRegion(Z)V

    .line 439
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    invoke-direct {p0, v1}, Lcom/perm/kate/ProfileFragment;->setVisibleFavesRegion(Z)V

    .line 440
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-nez v1, :cond_5

    .line 441
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->displayFriendStatus(Landroid/view/View;)V

    .line 442
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->new_profile:Z

    if-eqz v1, :cond_4

    .line 444
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->add_friend_region:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->friendClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 446
    :cond_4
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->add_friend_region:Landroid/view/View;

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->friendClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 448
    :cond_5
    :goto_1
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->new_profile:Z

    if-eqz v1, :cond_6

    .line 450
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->replies_region:Landroid/view/View;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->repliesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 452
    :cond_6
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->replies_region:Landroid/view/View;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->repliesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    :goto_2
    iget-boolean v0, p0, Lcom/perm/kate/ProfileFragment;->new_profile:Z

    if-eqz v0, :cond_7

    const v0, 0x7f0901af

    .line 456
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->statusClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    :cond_7
    const v0, 0x7f0901f0

    .line 458
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->statusClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    return-void
.end method

.method static isFriend(Ljava/lang/Long;)Z
    .locals 5

    .line 1533
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1536
    :cond_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/perm/kate/db/DataHelper;->isFriend(JJ)Z

    move-result p0

    return p0
.end method

.method public static isOldProfile()Z
    .locals 3

    .line 1792
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_old_profile"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isTransparentHeader()Z
    .locals 1

    .line 1864
    invoke-static {}, Lcom/perm/kate/ProfileFragment;->wideAva()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/perm/kate/ProfileFragment;->isOldProfile()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private synthetic lambda$displayUser$0()V
    .locals 3

    .line 661
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->replies_region:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->can_write_private_message:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 2

    .line 1035
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/perm/kate/StoriesActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1036
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    const-string v1, "owner_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1037
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    const-string p1, "stories"

    .line 1038
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->reportClick(Ljava/lang/String;)V

    return-void
.end method

.method private removeFromBlackList()V
    .locals 3

    .line 1398
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/ProfileFragment$27;

    invoke-direct {v2, p0}, Lcom/perm/kate/ProfileFragment$27;-><init>(Lcom/perm/kate/ProfileFragment;)V

    invoke-static {v0, v1, v2}, Lcom/perm/kate/BlackListActivity;->removeFromBlackList(Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V

    return-void
.end method

.method private reportClick(Ljava/lang/String;)V
    .locals 5

    .line 1892
    :try_start_0
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment;->clicked_item:Ljava/lang/String;

    .line 1895
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    .line 1896
    rem-long/2addr v0, v2

    const-wide/16 v2, 0x270f

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 1898
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "item"

    .line 1899
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "CLICK_IN_PROFILE"

    .line 1900
    invoke-static {p1, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1902
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1903
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static reportFakeCheck(Z)V
    .locals 5

    .line 1372
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 1373
    rem-long/2addr v0, v2

    const-wide/16 v2, 0xa

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    return-void

    .line 1375
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    if-eqz p0, :cond_1

    const-string p0, "1"

    goto :goto_0

    :cond_1
    const-string p0, "0"

    :goto_0
    const-string v1, "res"

    .line 1376
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "FAKE_CHECK"

    .line 1377
    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static sendGift(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    .line 1409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gifts"

    invoke-static {v1}, Lcom/perm/kate/KApplication;->instanceLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?act=send"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    .line 1410
    invoke-static {p0, p1, v0}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;Z)V

    return-void
.end method

.method private setMatrix(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 4

    .line 1935
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    .line 1939
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    if-nez v0, :cond_2

    return-void

    .line 1941
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    iget-object v3, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v3, v3, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    invoke-static {v0, v1, v2, p2, v3}, Lcom/perm/kate/ProfileFragment;->getMatrix(IIIILcom/perm/kate/api/User$Rect;)Landroid/graphics/Matrix;

    move-result-object p2

    .line 1942
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1943
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private setVisibleBirthdayRegion(Z)V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_birthday:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private setVisibleEducationRegion(Z)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_education_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private setVisibleFavesRegion(Z)V
    .locals 3

    .line 477
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_profile_tab"

    const-string v2, "0"

    .line 478
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 479
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 480
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_faves_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private setVisibleFriendsRegion(Z)V
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_friends_region:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setVisibleFriendsRegionsRegion(Z)V
    .locals 4

    .line 468
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->replies_region:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 469
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->add_friend_region:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 471
    iget-boolean v0, p0, Lcom/perm/kate/ProfileFragment;->new_profile:Z

    if-eqz v0, :cond_3

    .line 472
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->buttons:Landroid/view/View;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method private setVisiblePlaceRegion(Z)V
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_place_region:Landroid/widget/LinearLayout;

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

    .line 1498
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c001f

    const/4 v2, 0x0

    .line 1499
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09011d

    .line 1500
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 1501
    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0f0182

    .line 1502
    invoke-virtual {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v4, Lcom/perm/kate/ProfileFragment$31;

    invoke-direct {v4, p0, v1}, Lcom/perm/kate/ProfileFragment$31;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/widget/EditText;)V

    const v1, 0x7f0f05a7

    .line 1503
    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f037a

    .line 1508
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1509
    invoke-virtual {v3}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showAdditionalInfo()V
    .locals 3

    .line 1672
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1673
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/ExtraProfileActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1674
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    const-string v2, "com.perm.kate.user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1675
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showDeleteDialog()V
    .locals 4

    .line 1486
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f01d8

    .line 1487
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f01e3

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/ProfileFragment$30;

    invoke-direct {v2, p0}, Lcom/perm/kate/ProfileFragment$30;-><init>(Lcom/perm/kate/ProfileFragment;)V

    const v3, 0x7f0f05a7

    .line 1488
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f037a

    const/4 v3, 0x0

    .line 1493
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1494
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showFaves()V
    .locals 3

    .line 1666
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1667
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/FavesActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1668
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showFollowers()V
    .locals 3

    .line 1642
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1643
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    const-string v2, "com.perm.kate.user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.followers"

    const/4 v2, 0x1

    .line 1644
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1645
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/FollowersActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1646
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showGiftsAcivity()V
    .locals 3

    .line 1207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1208
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/GiftsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1209
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    const-string v2, "com.perm.kate.user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1210
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static showMentions(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1381
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/SearchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "mentions"

    const/4 v2, 0x1

    .line 1382
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "com.perm.kate.hashtag"

    .line 1383
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1384
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static showNewMessage(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    .line 1420
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1421
    const-class v1, Lcom/perm/kate/NewMessageActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.user_id"

    .line 1422
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1423
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showProfileImage(Ljava/util/ArrayList;)V
    .locals 3

    .line 1082
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1084
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1085
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-nez p1, :cond_1

    .line 1087
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1088
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    if-eqz v1, :cond_4

    .line 1089
    new-instance v1, Lcom/perm/kate/api/Photo;

    invoke-direct {v1}, Lcom/perm/kate/api/Photo;-><init>()V

    .line 1090
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->shouldDisplayBigPhotos()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    .line 1091
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->photo_big:Ljava/lang/String;

    :goto_1
    iput-object v2, v1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 1092
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string v1, "com.perm.kate.photos"

    .line 1094
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1095
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private showStatusAcivity()V
    .locals 3

    .line 1414
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1415
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/StatusActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 1416
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showStatusDialog()V
    .locals 3

    .line 994
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    .line 995
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0086

    const/4 v2, 0x0

    .line 996
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/ProfileFragment$18;

    invoke-direct {v1, p0}, Lcom/perm/kate/ProfileFragment$18;-><init>(Lcom/perm/kate/ProfileFragment;)V

    const v2, 0x7f0f01d9

    .line 997
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1003
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 1004
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1005
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showSubscribers()V
    .locals 3

    .line 1634
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1635
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    const-string v2, "com.perm.kate.user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.followers"

    const/4 v2, 0x0

    .line 1636
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1637
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/FollowersActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1638
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private startSquareCrop(Landroid/net/Uri;II)V
    .locals 3

    .line 1850
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/SinglePhotoViewer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uri"

    .line 1851
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "resize_option"

    .line 1852
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "rotate"

    .line 1853
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "crop"

    const/4 p2, 0x1

    .line 1854
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x4

    .line 1855
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private static wideAva()Z
    .locals 3

    .line 187
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_wide_ava"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 8

    const/4 v0, 0x0

    const/16 v1, 0x11

    const/16 v2, 0x3f2

    const v3, 0x7f0f0232

    .line 1231
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v2, 0x23

    const/16 v3, 0xf3c

    const v4, 0x7f0f01db

    .line 1232
    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v2, 0x22

    const/16 v3, 0x3f4

    const v4, 0x7f0f01e3

    .line 1233
    invoke-interface {p1, v0, v2, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1234
    iget-object v3, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-static {v3}, Lcom/perm/kate/ProfileFragment;->isFriend(Ljava/lang/Long;)Z

    move-result v3

    .line 1235
    iget-boolean v4, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    const/4 v5, 0x1

    if-nez v4, :cond_1

    .line 1236
    iget-object v4, p0, Lcom/perm/kate/ProfileFragment;->blacklisted_by_me:Ljava/lang/Integer;

    const/16 v6, 0x1770

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v5, :cond_0

    const/16 v4, 0x25

    const v7, 0x7f0f01e5

    .line 1237
    invoke-interface {p1, v0, v4, v6, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    :cond_0
    const/16 v4, 0x24

    const v7, 0x7f0f02e4

    .line 1239
    invoke-interface {p1, v0, v4, v6, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1241
    :cond_1
    :goto_0
    iget-boolean v4, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-nez v4, :cond_2

    if-eqz v3, :cond_2

    .line 1242
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_1

    .line 1244
    :cond_2
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1245
    :goto_1
    iget-boolean v2, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-eqz v2, :cond_3

    .line 1246
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    const/16 v1, 0x3e8

    const/16 v2, 0x1388

    const v4, 0x7f0f025d

    .line 1247
    invoke-interface {p1, v0, v1, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1248
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-nez v1, :cond_5

    .line 1249
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-static {v1, v2}, Lcom/perm/utils/OnlineNotificationsHelper;->isEnabledUser(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v1

    const/16 v2, 0x138d

    if-eqz v1, :cond_4

    const/16 v1, 0x3ef

    const v4, 0x7f0f0253

    .line 1250
    invoke-interface {p1, v0, v1, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2

    :cond_4
    const/16 v1, 0x3ed

    const v4, 0x7f0f0254

    .line 1252
    invoke-interface {p1, v0, v1, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1254
    :cond_5
    :goto_2
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_follower:Z

    if-eqz v1, :cond_6

    const/16 v1, 0x3fb

    const/16 v2, 0x1b61

    const v4, 0x7f0f02eb

    .line 1255
    invoke-interface {p1, v0, v1, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1256
    :cond_6
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-nez v1, :cond_7

    const/16 v1, 0x3f5

    const/16 v2, 0x1b65

    const v4, 0x7f0f01d7

    .line 1257
    invoke-interface {p1, v0, v1, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1258
    :cond_7
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-eqz v1, :cond_8

    const/16 v1, 0x3f6

    const/16 v2, 0x1b66

    const v4, 0x7f0f01ec

    .line 1259
    invoke-interface {p1, v0, v1, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1260
    :cond_8
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-nez v1, :cond_9

    if-eqz v3, :cond_9

    const/16 v1, 0x3fd

    const/16 v2, 0x1b6d

    const v3, 0x7f0f0204

    .line 1261
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1262
    :cond_9
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->is_favorite:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    .line 1263
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1b6f

    if-ne v1, v5, :cond_a

    const/16 v1, 0x400

    const v3, 0x7f0f029b

    .line 1264
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_3

    :cond_a
    const/16 v1, 0x3ff

    const v3, 0x7f0f0186

    .line 1266
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1268
    :cond_b
    :goto_3
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-nez v1, :cond_e

    .line 1269
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/utils/WallSubscriptions;->subscribed(J)Z

    move-result v1

    const/16 v2, 0x1b70

    if-eqz v1, :cond_d

    invoke-static {}, Lcom/perm/kate/UpdateService;->regularRefreshEnabled()Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4

    :cond_c
    const/16 v1, 0x402

    const v3, 0x7f0f059c

    .line 1273
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_5

    .line 1270
    :cond_d
    :goto_4
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->deactivated:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/16 v1, 0x401

    const v3, 0x7f0f059d

    .line 1271
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1275
    :cond_e
    :goto_5
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-nez v1, :cond_f

    const/16 v1, 0x403

    const/16 v2, 0x1b71

    const v3, 0x7f0f0463

    .line 1276
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_f
    const/16 v1, 0x404

    const/16 v2, 0x1b7b

    const v3, 0x7f0f0428

    .line 1277
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v1, 0x405

    const v2, 0x7f0f0332

    const/16 v3, 0x1b85

    .line 1278
    invoke-interface {p1, v0, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/16 v1, 0x406

    const v2, 0x7f0f00e3

    .line 1279
    invoke-interface {p1, v0, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return v5
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 1441
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/perm/kate/photoupload/PhotoChooser;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/perm/kate/photoupload/PhotoChooser$Callback;)Landroid/net/Uri;

    const-string v0, "rotate"

    const/4 v1, 0x2

    const-string v2, "resize_option"

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-nez p1, :cond_0

    if-ne p2, v4, :cond_0

    const-string v5, "uris"

    .line 1443
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1444
    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1445
    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1446
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/Uri;

    invoke-direct {p0, v5, v6, v7}, Lcom/perm/kate/ProfileFragment;->startSquareCrop(Landroid/net/Uri;II)V

    :cond_0
    const/4 v5, 0x1

    if-ne p1, v5, :cond_1

    if-ne p2, v4, :cond_1

    if-eqz p3, :cond_1

    const-string v5, "new_status"

    .line 1450
    invoke-virtual {p3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1451
    invoke-static {v5}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1452
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-static {v6, v7, v8, v5, v3}, Lcom/perm/kate/Helper;->showPublishStatusDialog(Landroid/app/Activity;JLjava/lang/String;Z)V

    :cond_1
    const/4 v5, 0x3

    if-ne p1, v5, :cond_2

    if-ne p2, v4, :cond_2

    .line 1456
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->refreshInThread()V

    :cond_2
    const/4 v5, 0x4

    if-ne p1, v5, :cond_3

    if-ne p2, v4, :cond_3

    const-string p1, "uri"

    .line 1458
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Landroid/net/Uri;

    .line 1459
    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1460
    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string p1, "x_y_w"

    .line 1461
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1462
    new-instance p2, Lcom/perm/kate/photoupload/AvatarUploader;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    iget-object v8, p0, Lcom/perm/kate/ProfileFragment;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    move-object v4, p2

    invoke-direct/range {v4 .. v9}, Lcom/perm/kate/photoupload/AvatarUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;ILcom/perm/kate/photoupload/UploadCallback;I)V

    .line 1463
    invoke-virtual {p2, p1}, Lcom/perm/kate/photoupload/AvatarUploader;->setSquareCrop(Ljava/lang/String;)Lcom/perm/kate/photoupload/AvatarUploader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perm/kate/photoupload/AvatarUploader;->upload()V

    :cond_3
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 1885
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 1887
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->add_friend_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 192
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 194
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 196
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setHasOptionsMenu(Z)V

    .line 197
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "com.perm.kate.user_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    .line 199
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid_str="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 204
    :goto_0
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    .line 205
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->refreshInThread()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const p3, 0x7f0c0102

    const/4 v0, 0x0

    .line 140
    :try_start_0
    invoke-static {}, Lcom/perm/kate/ProfileFragment;->wideAva()Z

    move-result v1

    if-eqz v1, :cond_0

    const p3, 0x7f0c0104

    .line 143
    :cond_0
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->new_profile:Z

    if-nez v1, :cond_1

    const p3, 0x7f0c0103

    :cond_1
    const/4 v1, 0x0

    .line 145
    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 148
    :try_start_1
    iget-object p2, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    if-nez p2, :cond_2

    return-object p1

    .line 153
    :cond_2
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->initUiFields(Landroid/view/View;)V

    .line 154
    sget-object p2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p3, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object p2

    iput-object p2, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    .line 155
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->fetchCityAndCountry()V

    .line 156
    iget-object p2, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    invoke-direct {p0, p2, p1}, Lcom/perm/kate/ProfileFragment;->displayUser(Lcom/perm/kate/api/User;Landroid/view/View;)V

    .line 159
    iget-object p2, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    if-eqz p2, :cond_3

    .line 160
    iget p2, p2, Lcom/perm/kate/api/User;->notes_count:I

    invoke-direct {p0, p2}, Lcom/perm/kate/ProfileFragment;->displayNotesCount(I)V

    .line 161
    :cond_3
    iget-boolean p2, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-nez p2, :cond_4

    .line 162
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->getIsFriendInThread()V

    .line 164
    iget-object p2, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    invoke-static {p2}, Lcom/perm/kate/history/History;->addUser(Lcom/perm/kate/api/User;)V

    .line 166
    :cond_4
    iget-boolean p2, p0, Lcom/perm/kate/ProfileFragment;->new_profile:Z

    if-eqz p2, :cond_5

    const/4 p2, 0x2

    new-array p2, p2, [I

    const p3, 0x7f090034

    aput p3, p2, v1

    const/4 p3, 0x1

    const v1, 0x7f09029a

    aput v1, p2, p3

    .line 167
    invoke-static {p1, p2}, Lcom/perm/kate/BaseFragment;->setButtonsBg(Landroid/view/View;[I)V

    .line 171
    :cond_5
    invoke-static {}, Lcom/perm/kate/ProfileFragment;->isTransparentHeader()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/perm/kate/MainActivity;

    if-nez p2, :cond_7

    const p2, 0x7f0902ba

    .line 172
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/perm/kate/ProfileFragment;->scrollView:Landroid/view/View;

    .line 173
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const p3, 0x7f0901d6

    invoke-virtual {p2, p3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/perm/kate/ProfileFragment;->activity_header:Landroid/view/View;

    .line 174
    iget-object p2, p0, Lcom/perm/kate/ProfileFragment;->scrollView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p2

    new-instance p3, Lcom/perm/kate/ProfileFragment$ScrollChangedListener;

    invoke-direct {p3, p0, v0}, Lcom/perm/kate/ProfileFragment$ScrollChangedListener;-><init>(Lcom/perm/kate/ProfileFragment;Lcom/perm/kate/ProfileFragment$1;)V

    invoke-virtual {p2, p3}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v0, p1

    goto :goto_0

    :catchall_1
    move-exception p2

    .line 178
    :goto_0
    invoke-static {p2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 179
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 180
    instance-of p1, p2, Ljava/lang/OutOfMemoryError;

    if-eqz p1, :cond_6

    .line 181
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    :cond_6
    move-object p1, v0

    :cond_7
    :goto_1
    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 1909
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 1910
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->clicked_item:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "none"

    .line 1911
    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileFragment;->reportClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1285
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x11

    const/4 v2, 0x1

    if-eq v0, v1, :cond_8

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_7

    const/16 v1, 0x3ed

    if-eq v0, v1, :cond_5

    const/16 v1, 0x3ef

    if-eq v0, v1, :cond_4

    const/16 v1, 0x3fb

    if-eq v0, v1, :cond_3

    const/16 v1, 0x3fd

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3f5

    if-eq v0, v1, :cond_1

    const/16 v1, 0x3f6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 1353
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 1296
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->fakeCheckInThread()V

    return v2

    .line 1350
    :pswitch_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/perm/kate/ProfileFragment;->showMentions(Landroid/content/Context;Ljava/lang/String;)V

    return v2

    .line 1347
    :pswitch_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/BaseActivity;

    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/perm/utils/RegistrationDate;->getAndShow(Lcom/perm/kate/BaseActivity;Ljava/lang/String;)V

    return v2

    .line 1344
    :pswitch_3
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/ProfileFragment;->sendGift(Ljava/lang/String;Landroid/app/Activity;)V

    return v2

    .line 1339
    :pswitch_4
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/perm/utils/WallSubscriptions;->unsubscribe(J)V

    .line 1340
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->disableRegularRefreshIfRequired()V

    const p1, 0x7f0f059a

    .line 1341
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    return v2

    .line 1334
    :pswitch_5
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/perm/utils/WallSubscriptions;->subscribe(J)V

    .line 1335
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->ensureRegularRefreshEnabled()V

    const p1, 0x7f0f059b

    .line 1336
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    return v2

    .line 1328
    :pswitch_6
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->faveRemoveUser()V

    return v2

    .line 1331
    :pswitch_7
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->faveAddUser()V

    return v2

    .line 1302
    :pswitch_8
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->removeFromBlackList()V

    return v2

    .line 1299
    :pswitch_9
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->addToBlackList()V

    return v2

    .line 1293
    :pswitch_a
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->copyProfileLink(Ljava/lang/String;Landroid/content/Context;)V

    return v2

    .line 1290
    :pswitch_b
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->showDeleteDialog()V

    return v2

    .line 1322
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->showOptionsDialog()V

    return v2

    .line 1319
    :cond_1
    new-instance p1, Lcom/perm/kate/ReportHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/perm/kate/ReportHelper;->showReportUserDialog(J)V

    return v2

    .line 1325
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/BaseActivity;

    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-static {p1, v0}, Lcom/perm/utils/FriendsListsHelper;->showFriendsListsDialogWithCheck(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V

    return v2

    .line 1316
    :cond_3
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->deleteFriend()V

    return v2

    .line 1308
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v3}, Lcom/perm/utils/OnlineNotificationsHelper;->setEnabledUser(Landroid/content/Context;JZ)V

    return v2

    .line 1311
    :cond_5
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-static {p1}, Lcom/perm/kate/ProfileFragment;->isFriend(Ljava/lang/Long;)Z

    move-result p1

    if-nez p1, :cond_6

    const p1, 0x7f0f0561

    .line 1312
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    .line 1313
    :cond_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1, v2}, Lcom/perm/utils/OnlineNotificationsHelper;->setEnabledUser(Landroid/content/Context;JZ)V

    return v2

    .line 1305
    :cond_7
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->showProfileFromBrowser()V

    return v2

    .line 1287
    :cond_8
    iget-object p1, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/ProfileFragment;->showNewMessage(Ljava/lang/String;Landroid/app/Activity;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3ff
        :pswitch_7
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

    .line 1714
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->refreshInThread()V

    return-void
.end method

.method public onStart()V
    .locals 4

    .line 210
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStart()V

    .line 212
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 213
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/ProfileFragment;->displayUser(Lcom/perm/kate/api/User;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method refreshInThread()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 222
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 223
    new-instance v0, Lcom/perm/kate/ProfileFragment$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$1;-><init>(Lcom/perm/kate/ProfileFragment;)V

    .line 240
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public showEditProfileAcivity(Landroid/app/Activity;)V
    .locals 2

    .line 1159
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1160
    const-class v1, Lcom/perm/kate/EditProfileActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 p1, 0x3

    .line 1161
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected showMessageThread()V
    .locals 3

    .line 1468
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1469
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/MessageThreadActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1470
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    const-string v2, "com.perm.kate.message_uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1471
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected showOptionsDialog()V
    .locals 5

    .line 1130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1131
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f01ee

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1132
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f00d0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1133
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f023d

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f01ec

    .line 1136
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 1137
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Lcom/perm/kate/ProfileFragment$24;

    invoke-direct {v4, p0, v0}, Lcom/perm/kate/ProfileFragment$24;-><init>(Lcom/perm/kate/ProfileFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1153
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 1154
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1155
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected showProfileFromBrowser()V
    .locals 3

    .line 1075
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    if-nez v0, :cond_0

    return-void

    .line 1077
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id"

    invoke-static {v1}, Lcom/perm/kate/KApplication;->instanceLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-wide v1, v1, Lcom/perm/kate/api/User;->uid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1078
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
