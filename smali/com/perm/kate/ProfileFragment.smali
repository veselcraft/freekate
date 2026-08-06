.class public Lcom/perm/kate/ProfileFragment;
.super Lcom/perm/kate/BaseFragment;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/ProfileFragment$MyObserver;,
        Lcom/perm/kate/ProfileFragment$PhotoTask;,
        Lcom/perm/kate/ProfileFragment$ScrollChangedListener;,
        Lcom/perm/kate/ProfileFragment$URLSpanNoUnderline;
    }
.end annotation


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

.field private buttons_separator:Landroid/view/View;

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

.field private tv_user_videos_count:Landroid/widget/TextView;

.field private tv_videos_count:Landroid/widget/TextView;

.field private tv_wall_count:Landroid/widget/TextView;

.field private u:Lcom/perm/kate/api/User;

.field uid:Ljava/lang/Long;

.field private uid_str:Ljava/lang/String;

.field protected uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

.field private userPhotosClickListener:Landroid/view/View$OnClickListener;

.field private userVideosClickListener:Landroid/view/View$OnClickListener;

.field user_photos:Landroid/view/View;

.field user_videos:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Lcom/perm/kate/BaseFragment;-><init>()V

    .line 117
    iput-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_follower:Z

    .line 130
    invoke-static {}, Lcom/perm/kate/ProfileFragment;->isOldProfile()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/perm/kate/ProfileFragment;->new_profile:Z

    .line 132
    iput-object v2, p0, Lcom/perm/kate/ProfileFragment;->clicked_item:Ljava/lang/String;

    .line 133
    iput-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->globalLayoutListenerAdded:Z

    .line 239
    iput-object v2, p0, Lcom/perm/kate/ProfileFragment;->deactivated:Ljava/lang/String;

    .line 241
    new-instance v0, Lcom/perm/kate/ProfileFragment$3;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileFragment$3;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->callback_profile:Lcom/perm/kate/session/Callback;

    .line 293
    new-instance v0, Lcom/perm/kate/ProfileFragment$4;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileFragment$4;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->callback_wall_count:Lcom/perm/kate/session/Callback;

    .line 830
    new-instance v0, Lcom/perm/kate/ProfileFragment$7;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileFragment$7;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->callback_city:Lcom/perm/kate/session/Callback;

    .line 851
    new-instance v0, Lcom/perm/kate/ProfileFragment$8;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileFragment$8;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->callback_country:Lcom/perm/kate/session/Callback;

    .line 879
    new-instance v0, Lcom/perm/kate/ProfileFragment$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$9;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->Friends_ClickListener:Landroid/view/View$OnClickListener;

    .line 887
    new-instance v0, Lcom/perm/kate/ProfileFragment$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$10;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->Photos_ClickListener:Landroid/view/View$OnClickListener;

    .line 895
    new-instance v0, Lcom/perm/kate/ProfileFragment$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$11;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->Videos_ClickListener:Landroid/view/View$OnClickListener;

    .line 903
    new-instance v0, Lcom/perm/kate/ProfileFragment$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$12;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->Wall_ClickListener:Landroid/view/View$OnClickListener;

    .line 911
    new-instance v0, Lcom/perm/kate/ProfileFragment$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$13;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->Audio_ClickListener:Landroid/view/View$OnClickListener;

    .line 919
    new-instance v0, Lcom/perm/kate/ProfileFragment$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$14;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->Groups_ClickListener:Landroid/view/View$OnClickListener;

    .line 927
    new-instance v0, Lcom/perm/kate/ProfileFragment$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$15;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->userPhotosClickListener:Landroid/view/View$OnClickListener;

    .line 935
    new-instance v0, Lcom/perm/kate/ProfileFragment$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$16;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->allPhotosClickListener:Landroid/view/View$OnClickListener;

    .line 943
    new-instance v0, Lcom/perm/kate/ProfileFragment$17;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$17;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->userVideosClickListener:Landroid/view/View$OnClickListener;

    .line 955
    new-instance v0, Lcom/perm/kate/ProfileFragment$18;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$18;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->photoClick:Landroid/view/View$OnClickListener;

    .line 963
    new-instance v0, Lcom/perm/kate/ProfileFragment$19;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$19;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->statusClickListener:Landroid/view/View$OnClickListener;

    .line 1000
    new-instance v0, Lcom/perm/kate/ProfileFragment$21;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$21;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->Notes_ClickListener:Landroid/view/View$OnClickListener;

    .line 1008
    new-instance v0, Lcom/perm/kate/ProfileFragment$22;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$22;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->giftsClickListener:Landroid/view/View$OnClickListener;

    .line 1016
    new-instance v0, Lcom/perm/kate/ProfileFragment$23;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$23;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->docsClickListener:Landroid/view/View$OnClickListener;

    .line 1082
    new-instance v0, Lcom/perm/kate/ProfileFragment$24;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileFragment$24;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->avatars_photos_callback:Lcom/perm/kate/session/Callback;

    .line 1373
    new-instance v0, Lcom/perm/kate/ProfileFragment$29;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$29;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->repliesClickListener:Landroid/view/View$OnClickListener;

    .line 1421
    new-instance v0, Lcom/perm/kate/ProfileFragment$30;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$30;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->friendClickListener:Landroid/view/View$OnClickListener;

    .line 1486
    new-instance v0, Lcom/perm/kate/ProfileFragment$35;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileFragment$35;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->delete_friend_callback:Lcom/perm/kate/session/Callback;

    .line 1510
    new-instance v0, Lcom/perm/kate/ProfileFragment$36;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileFragment$36;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->add_friend_callback:Lcom/perm/kate/session/Callback;

    .line 1564
    new-instance v0, Lcom/perm/kate/ProfileFragment$38;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$38;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->subscribersClickListener:Landroid/view/View$OnClickListener;

    .line 1572
    new-instance v0, Lcom/perm/kate/ProfileFragment$39;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$39;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->followersClickListener:Landroid/view/View$OnClickListener;

    .line 1596
    new-instance v0, Lcom/perm/kate/ProfileFragment$40;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$40;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->faves_ClickListener:Landroid/view/View$OnClickListener;

    .line 1604
    new-instance v0, Lcom/perm/kate/ProfileFragment$41;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$41;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->additional_info_ClickListener:Landroid/view/View$OnClickListener;

    .line 1625
    new-instance v0, Lcom/perm/kate/ProfileFragment$42;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$42;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    .line 1636
    new-instance v0, Lcom/perm/kate/ProfileFragment$43;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$43;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 1649
    new-instance v0, Lcom/perm/kate/ProfileFragment$44;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$44;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->relation_partner_ClickListener:Landroid/view/View$OnClickListener;

    .line 1674
    new-instance v0, Lcom/perm/kate/ProfileFragment$45;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$45;-><init>(Lcom/perm/kate/ProfileFragment;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->profileIdClickListener:Landroid/view/View$OnClickListener;

    .line 1693
    new-instance v0, Lcom/perm/kate/ProfileFragment$47;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileFragment$47;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->is_friend_callback:Lcom/perm/kate/session/Callback;

    return-void

    :cond_0
    move v0, v1

    .line 130
    goto/16 :goto_0
.end method

.method public static ShowAlbumsAcivity(Landroid/app/Activity;Ljava/lang/Long;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "uid"    # Ljava/lang/Long;

    .prologue
    .line 1142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1143
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/AlbumsActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1144
    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1145
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1146
    return-void
.end method

.method public static ShowAudioAcivity(Landroid/app/Activity;Ljava/lang/Long;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "owner_id"    # Ljava/lang/Long;

    .prologue
    .line 1163
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1164
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/AudioActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1165
    const-string v1, "com.perm.kate.owner_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1166
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1167
    return-void
.end method

.method private ShowFriendsAcivity()V
    .locals 3

    .prologue
    .line 1053
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1054
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/FriendsActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1055
    const-string v1, "com.perm.kate.user_id"

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1056
    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    .line 1057
    return-void
.end method

.method private ShowGroupsAcivity()V
    .locals 3

    .prologue
    .line 1170
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1171
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/GroupsActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1172
    const-string v1, "com.perm.kate.user_id"

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1173
    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    .line 1174
    return-void
.end method

.method private ShowNotesAcivity()V
    .locals 3

    .prologue
    .line 1177
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1178
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/NotesActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1179
    const-string v1, "com.perm.kate.user_id"

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1180
    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    .line 1181
    return-void
.end method

.method public static ShowVideosAcivity(Landroid/content/Context;Ljava/lang/Long;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "owner_id"    # Ljava/lang/Long;

    .prologue
    .line 1149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1150
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1151
    const-class v1, Lcom/perm/kate/VideoActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1152
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1153
    return-void
.end method

.method public static ShowWallAcivity(Landroid/app/Activity;Ljava/lang/Long;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "id"    # Ljava/lang/Long;

    .prologue
    .line 1156
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1157
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/WallActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1158
    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1159
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1160
    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->callback_profile:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->displayUserOnUiThread()V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->getCityIfMissing()V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->getCountryIfMissing()V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/ProfileFragment;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->displayWallCountInUiThread(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/ProfileFragment;Lcom/perm/kate/api/User;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;
    .param p1, "x1"    # Lcom/perm/kate/api/User;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/ProfileFragment;->displayUser(Lcom/perm/kate/api/User;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/ProfileFragment;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->displayWallCount(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/perm/kate/ProfileFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->city:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment;->city:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/perm/kate/ProfileFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->country:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment;->country:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/perm/kate/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->ShowFriendsAcivity()V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->reportClick(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->callback_wall_count:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/perm/kate/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->ShowGroupsAcivity()V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/ProfileFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/perm/kate/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->downloadAvatarsAlbum()V

    return-void
.end method

.method static synthetic access$2300(Lcom/perm/kate/ProfileFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/perm/kate/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->showStatusAcivity()V

    return-void
.end method

.method static synthetic access$2500(Lcom/perm/kate/ProfileFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/perm/kate/ProfileFragment;->new_profile:Z

    return v0
.end method

.method static synthetic access$2600(Lcom/perm/kate/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->showStatusDialog()V

    return-void
.end method

.method static synthetic access$2700(Lcom/perm/kate/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->ShowNotesAcivity()V

    return-void
.end method

.method static synthetic access$2800(Lcom/perm/kate/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->showGiftsAcivity()V

    return-void
.end method

.method static synthetic access$2900(Lcom/perm/kate/ProfileFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->showProfileImage(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->checkDeactivated(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->avatars_photos_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/perm/kate/ProfileFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->isFriend()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/perm/kate/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->showDeleteDialog()V

    return-void
.end method

.method static synthetic access$3300(Lcom/perm/kate/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->showAddDialog()V

    return-void
.end method

.method static synthetic access$3400(Lcom/perm/kate/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->deleteFriend()V

    return-void
.end method

.method static synthetic access$3500(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->addFriend(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->delete_friend_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->add_friend_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/perm/kate/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->displayFriendStatusOnUiThread()V

    return-void
.end method

.method static synthetic access$3902(Lcom/perm/kate/ProfileFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/perm/kate/ProfileFragment;->is_follower:Z

    return p1
.end method

.method static synthetic access$400(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/Audio;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->status_audio:Lcom/perm/kate/api/Audio;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/perm/kate/ProfileFragment;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->displayFriendStatusOnUiThread2(I)V

    return-void
.end method

.method static synthetic access$402(Lcom/perm/kate/ProfileFragment;Lcom/perm/kate/api/Audio;)Lcom/perm/kate/api/Audio;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;
    .param p1, "x1"    # Lcom/perm/kate/api/Audio;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment;->status_audio:Lcom/perm/kate/api/Audio;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/perm/kate/ProfileFragment;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->displayFriendStatus(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/perm/kate/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->showSubscribers()V

    return-void
.end method

.method static synthetic access$4300(Lcom/perm/kate/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->showFollowers()V

    return-void
.end method

.method static synthetic access$4400(Lcom/perm/kate/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->showFaves()V

    return-void
.end method

.method static synthetic access$4500(Lcom/perm/kate/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->showAdditionalInfo()V

    return-void
.end method

.method static synthetic access$4600(Lcom/perm/kate/ProfileFragment;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->is_friend_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/perm/kate/ProfileFragment;Landroid/view/View;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/ProfileFragment;->displayFriendStatus2(Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$4900(Lcom/perm/kate/ProfileFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->scrollView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/perm/kate/ProfileFragment;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->activity_header:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$502(Lcom/perm/kate/ProfileFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment;->is_favorite:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$5100(Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/perm/kate/ProfileFragment;->displayYouBlacklisted(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$5200(Lcom/perm/kate/ProfileFragment;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;
    .param p1, "x1"    # Landroid/widget/ImageView;
    .param p2, "x2"    # Landroid/graphics/Bitmap;

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/ProfileFragment;->setMatrix(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/perm/kate/ProfileFragment;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/perm/kate/ProfileFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment;->can_write_private_message:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$702(Lcom/perm/kate/ProfileFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment;->blacklisted_by_me:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic access$800(Lcom/perm/kate/ProfileFragment;)Lcom/perm/kate/api/User;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    return-object v0
.end method

.method static synthetic access$802(Lcom/perm/kate/ProfileFragment;Lcom/perm/kate/api/User;)Lcom/perm/kate/api/User;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;
    .param p1, "x1"    # Lcom/perm/kate/api/User;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    return-object p1
.end method

.method static synthetic access$900(Lcom/perm/kate/ProfileFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ProfileFragment;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->fetchCityAndCountry()V

    return-void
.end method

.method private addFriend(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 1470
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->showProgressBar(Z)V

    .line 1471
    new-instance v0, Lcom/perm/kate/ProfileFragment$34;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/ProfileFragment$34;-><init>(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)V

    .line 1476
    invoke-virtual {v0}, Lcom/perm/kate/ProfileFragment$34;->start()V

    .line 1477
    return-void
.end method

.method private addToBlackList()V
    .locals 3

    .prologue
    .line 1335
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/ProfileFragment$27;

    invoke-direct {v2, p0}, Lcom/perm/kate/ProfileFragment$27;-><init>(Lcom/perm/kate/ProfileFragment;)V

    invoke-static {v0, v1, v2}, Lcom/perm/kate/BlackListActivity;->AddToBlackList(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V

    .line 1342
    return-void
.end method

.method private checkDeactivated(Ljava/lang/String;)V
    .locals 1
    .param p1, "deactivated"    # Ljava/lang/String;

    .prologue
    .line 335
    invoke-static {p1}, Lcom/perm/kate/Helper;->empty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    :cond_0
    :goto_0
    return-void

    .line 337
    :cond_1
    const-string v0, "deleted"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    const v0, 0x7f0704cc

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->displayToast(I)V

    goto :goto_0

    .line 339
    :cond_2
    const-string v0, "banned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    const v0, 0x7f0704cb

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->displayToast(I)V

    goto :goto_0
.end method

.method private deleteFriend()V
    .locals 1

    .prologue
    .line 1460
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->showProgressBar(Z)V

    .line 1461
    new-instance v0, Lcom/perm/kate/ProfileFragment$33;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$33;-><init>(Lcom/perm/kate/ProfileFragment;)V

    .line 1466
    invoke-virtual {v0}, Lcom/perm/kate/ProfileFragment$33;->start()V

    .line 1467
    return-void
.end method

.method private displayCity(Lcom/perm/kate/api/User;)V
    .locals 3
    .param p1, "user"    # Lcom/perm/kate/api/User;

    .prologue
    .line 726
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->city:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 727
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->country:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_country:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->country:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->city:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileFragment;->setVisiblePlaceRegion(Z)V

    .line 733
    :cond_0
    return-void

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_country:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->city:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private displayCounters(Lcom/perm/kate/api/User;)V
    .locals 6
    .param p1, "user"    # Lcom/perm/kate/api/User;

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 650
    iget v2, p1, Lcom/perm/kate/api/User;->friends_count:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, "friends_count_str":Ljava/lang/String;
    iget-boolean v2, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-eqz v2, :cond_2

    .line 652
    iget-object v2, p1, Lcom/perm/kate/api/User;->online_friends_count:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 653
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/perm/kate/api/User;->online_friends_count:Ljava/lang/Integer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 660
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->tv_friends_count:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->tv_albums_count:Landroid/widget/TextView;

    iget v3, p1, Lcom/perm/kate/api/User;->albums_count:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 662
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->tv_photo_count:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 663
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->tv_photo_count:Landroid/widget/TextView;

    iget v3, p1, Lcom/perm/kate/api/User;->photo_count:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 664
    :cond_1
    iget v2, p1, Lcom/perm/kate/api/User;->user_photos_count:I

    if-nez v2, :cond_3

    .line 665
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->user_photos:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 670
    :goto_1
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->tv_audios_count:Landroid/widget/TextView;

    iget v3, p1, Lcom/perm/kate/api/User;->audios_count:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->tv_videos_count:Landroid/widget/TextView;

    iget v3, p1, Lcom/perm/kate/api/User;->videos_count:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 673
    iget v2, p1, Lcom/perm/kate/api/User;->user_videos_count:I

    if-nez v2, :cond_4

    .line 674
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->user_videos:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 680
    :goto_2
    iget v2, p1, Lcom/perm/kate/api/User;->notes_count:I

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-nez v2, :cond_5

    .line 681
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->notes_layout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 686
    :goto_3
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->tv_groups_count:Landroid/widget/TextView;

    iget v3, p1, Lcom/perm/kate/api/User;->groups_count:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 687
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->tv_followers_count:Landroid/widget/TextView;

    iget v3, p1, Lcom/perm/kate/api/User;->followers_count:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget v2, p1, Lcom/perm/kate/api/User;->gifts_count:I

    if-nez v2, :cond_6

    .line 690
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_gifts_region:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 696
    :goto_4
    iget-object v2, p1, Lcom/perm/kate/api/User;->posts_count:Ljava/lang/Integer;

    invoke-direct {p0, v2}, Lcom/perm/kate/ProfileFragment;->displayWallCount(Ljava/lang/Integer;)V

    .line 697
    return-void

    .line 655
    :cond_2
    iget-object v2, p1, Lcom/perm/kate/api/User;->mutual_friends_count:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/perm/kate/api/User;->mutual_friends_count:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_0

    .line 656
    const v2, 0x7f0702fd

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 657
    .local v1, "label":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/perm/kate/api/User;->mutual_friends_count:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 667
    .end local v1    # "label":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->user_photos:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 668
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->tv_photos_count:Landroid/widget/TextView;

    iget v3, p1, Lcom/perm/kate/api/User;->user_photos_count:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 676
    :cond_4
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->user_videos:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 677
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->tv_user_videos_count:Landroid/widget/TextView;

    iget v3, p1, Lcom/perm/kate/api/User;->user_videos_count:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 683
    :cond_5
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->notes_layout:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 684
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->tv_notes_count:Landroid/widget/TextView;

    iget v3, p1, Lcom/perm/kate/api/User;->notes_count:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 692
    :cond_6
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_gifts_region:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 693
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->tv_gifts_count:Landroid/widget/TextView;

    iget v3, p1, Lcom/perm/kate/api/User;->gifts_count:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4
.end method

.method private displayCountry(Lcom/perm/kate/api/User;)V
    .locals 3
    .param p1, "user"    # Lcom/perm/kate/api/User;

    .prologue
    .line 716
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->country:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->city:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 718
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_country:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->country:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->city:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileFragment;->setVisiblePlaceRegion(Z)V

    .line 723
    :cond_0
    return-void

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_country:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private displayFriendStatus(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1538
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->isFriend()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1539
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->add_friend_region:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1542
    :goto_0
    return-void

    .line 1541
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->add_friend_region:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private displayFriendStatus2(Landroid/view/View;I)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "friend_status"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1722
    if-eqz p2, :cond_0

    if-ne p2, v5, :cond_3

    :cond_0
    move v0, v3

    .line 1723
    .local v0, "show_add_to_friend":Z
    :goto_0
    if-eqz v0, :cond_4

    .line 1724
    iget-object v4, p0, Lcom/perm/kate/ProfileFragment;->add_friend_region:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1727
    :goto_1
    if-eqz p1, :cond_2

    .line 1728
    const v4, 0x7f0e02cd

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1729
    .local v1, "tv_profile_friends_status":Landroid/widget/TextView;
    if-eq p2, v3, :cond_1

    if-ne p2, v5, :cond_6

    .line 1730
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1731
    if-ne p2, v3, :cond_5

    const v2, 0x7f0702ad

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1736
    .end local v1    # "tv_profile_friends_status":Landroid/widget/TextView;
    :cond_2
    :goto_3
    return-void

    .end local v0    # "show_add_to_friend":Z
    :cond_3
    move v0, v2

    .line 1722
    goto :goto_0

    .line 1726
    .restart local v0    # "show_add_to_friend":Z
    :cond_4
    iget-object v4, p0, Lcom/perm/kate/ProfileFragment;->add_friend_region:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1731
    .restart local v1    # "tv_profile_friends_status":Landroid/widget/TextView;
    :cond_5
    const v2, 0x7f0701a5

    goto :goto_2

    .line 1733
    :cond_6
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method

.method private displayFriendStatusOnUiThread()V
    .locals 2

    .prologue
    .line 1527
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1535
    :goto_0
    return-void

    .line 1529
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/ProfileFragment$37;

    invoke-direct {v1, p0}, Lcom/perm/kate/ProfileFragment$37;-><init>(Lcom/perm/kate/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private displayFriendStatusOnUiThread2(I)V
    .locals 2
    .param p1, "friend_status"    # I

    .prologue
    .line 1711
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1719
    :goto_0
    return-void

    .line 1713
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/ProfileFragment$48;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/ProfileFragment$48;-><init>(Lcom/perm/kate/ProfileFragment;I)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private displayUser(Lcom/perm/kate/api/User;Landroid/view/View;)V
    .locals 32
    .param p1, "user"    # Lcom/perm/kate/api/User;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 489
    if-nez p2, :cond_1

    .line 647
    :cond_0
    :goto_0
    return-void

    .line 492
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_id:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_id:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    if-eqz p1, :cond_0

    .line 499
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_d

    :cond_2
    const/4 v13, 0x1

    .line 501
    .local v13, "is_male":Z
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 502
    const v2, 0x7f0e0066

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f07033f

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 503
    const v2, 0x7f0e00ef

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 504
    const v2, 0x7f0e00ee

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_f

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->online:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 515
    :goto_4
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/perm/kate/api/User;->photo_200:Ljava/lang/String;

    .line 516
    .local v3, "photo":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 517
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/perm/kate/api/User;->photo_big:Ljava/lang/String;

    .line 520
    :cond_3
    invoke-static {}, Lcom/perm/kate/ProfileFragment;->wideAva()Z

    move-result v31

    .line 521
    .local v31, "wideAva":Z
    if-eqz v31, :cond_4

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {}, Lcom/perm/kate/NewsCursorAdapter;->shouldDisplayBigPhotos()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 522
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/perm/kate/api/User;->photo_400_orig:Ljava/lang/String;

    .line 523
    :cond_4
    invoke-static {}, Lcom/perm/kate/ProfileFragment;->wideAva()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 527
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/perm/kate/ImageLoader;->isCachedInMemory(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 529
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    iget-object v2, v2, Lcom/perm/kate/ImageLoader;->imageViews:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/ProfileFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/perm/kate/ImageLoader;->getFromMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 531
    .local v9, "bitmap":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    invoke-virtual {v2, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 543
    .end local v9    # "bitmap":Landroid/graphics/Bitmap;
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/perm/kate/ProfileFragment;->globalLayoutListenerAdded:Z

    if-nez v2, :cond_5

    .line 544
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/perm/kate/ProfileFragment;->globalLayoutListenerAdded:Z

    .line 546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v30

    .line 548
    .local v30, "vto":Landroid/view/ViewTreeObserver;
    new-instance v2, Lcom/perm/kate/ProfileFragment$MyObserver;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/perm/kate/ProfileFragment$MyObserver;-><init>(Lcom/perm/kate/ProfileFragment;)V

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 552
    .end local v30    # "vto":Landroid/view/ViewTreeObserver;
    :cond_5
    :goto_6
    const-string v15, ""

    .line 553
    .local v15, "label_name":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    if-eqz v2, :cond_16

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->nickname:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 554
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

    move-result-object v15

    .line 557
    :goto_7
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->verified:Ljava/lang/Integer;

    if-eqz v2, :cond_18

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->verified:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_18

    .line 558
    new-instance v10, Landroid/text/SpannableStringBuilder;

    invoke-direct {v10}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 559
    .local v10, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v10, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v4, "  "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 560
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v2

    if-nez v2, :cond_6

    if-eqz v31, :cond_17

    :cond_6
    const v12, 0x7f02012e

    .line 561
    .local v12, "ic_verified":I
    :goto_8
    new-instance v2, Landroid/text/style/ImageSpan;

    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v4, v12, v5}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v10, v2, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    .end local v10    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v12    # "ic_verified":I
    :goto_9
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/ProfileFragment;->getSex(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v22

    .line 566
    .local v22, "sex":Ljava/lang/String;
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 567
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_sex:Landroid/widget/TextView;

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_sex:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 571
    :goto_a
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->relation:Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/perm/kate/ProfileFragment;->getRelation(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v20

    .line 572
    .local v20, "relation_text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    if-eqz v20, :cond_7

    const-string v2, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    :cond_7
    const/16 v2, 0x8

    :goto_b
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->relation_partner_id:Ljava/lang/Long;

    if-eqz v2, :cond_1b

    .line 575
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->relation:Ljava/lang/Integer;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/perm/kate/api/User;->sex:Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/perm/kate/ProfileFragment;->getRelationIn(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v21

    .line 576
    .local v21, "relation_text_in":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/ProfileFragment;->relation_partner_first_name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/ProfileFragment;->relation_partner_last_name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 577
    .local v18, "partner_name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 578
    new-instance v19, Landroid/text/SpannableString;

    invoke-direct/range {v19 .. v20}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 579
    .local v19, "relation_span":Landroid/text/SpannableString;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v11

    .line 580
    .local v11, "end_pos":I
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v2

    sub-int v23, v11, v2

    .line 581
    .local v23, "start_pos":I
    new-instance v2, Landroid/text/style/StyleSpan;

    const/4 v4, 0x1

    invoke-direct {v2, v4}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 v4, 0x21

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v2, v1, v11, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 582
    new-instance v2, Lcom/perm/kate/ProfileFragment$URLSpanNoUnderline;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://vk.com/id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/ProfileFragment;->relation_partner_id:Ljava/lang/Long;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v4}, Lcom/perm/kate/ProfileFragment$URLSpanNoUnderline;-><init>(Lcom/perm/kate/ProfileFragment;Ljava/lang/String;)V

    const/16 v4, 0x21

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v2, v1, v11, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 583
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/ProfileFragment;->relation_partner_id:Ljava/lang/Long;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/ProfileFragment;->relation_partner_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    .end local v11    # "end_pos":I
    .end local v18    # "partner_name":Ljava/lang/String;
    .end local v19    # "relation_span":Landroid/text/SpannableString;
    .end local v21    # "relation_text_in":Ljava/lang/String;
    .end local v23    # "start_pos":I
    :goto_c
    const v2, 0x7f0e02da

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    check-cast v29, Landroid/widget/TextView;

    .line 596
    .local v29, "tv_profile_info_last_seen":Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/perm/kate/api/User;->last_seen:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_1c

    const/4 v2, 0x0

    :goto_d
    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/perm/kate/api/User;->last_seen:J

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-static {v2, v4, v5, v13, v6}, Lcom/perm/kate/Helper;->getLastSee(Landroid/content/Context;JZZ)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    invoke-direct/range {p0 .. p1}, Lcom/perm/kate/ProfileFragment;->displayCounters(Lcom/perm/kate/api/User;)V

    .line 600
    invoke-direct/range {p0 .. p1}, Lcom/perm/kate/ProfileFragment;->displayCity(Lcom/perm/kate/api/User;)V

    .line 601
    invoke-direct/range {p0 .. p1}, Lcom/perm/kate/ProfileFragment;->displayCountry(Lcom/perm/kate/api/User;)V

    .line 602
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->rate:Ljava/lang/Integer;

    if-eqz v2, :cond_1d

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->rate:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_1d

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f070226

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

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

    move-result-object v16

    .line 604
    .local v16, "label_rate":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_rate:Landroid/widget/TextView;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_rate:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 609
    .end local v16    # "label_rate":Ljava/lang/String;
    :goto_e
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    if-eqz v2, :cond_1e

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->birthdate:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1e

    .line 610
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f07014a

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

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

    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getStringAge(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 611
    .local v14, "label_birthday":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_birthday:Landroid/widget/TextView;

    invoke-virtual {v2, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/ProfileFragment;->setVisibleBirthdayRegion(Z)V

    .line 616
    .end local v14    # "label_birthday":Ljava/lang/String;
    :goto_f
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->university_name:Ljava/lang/String;

    if-eqz v2, :cond_9

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->university_name:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 617
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->university_name:Ljava/lang/String;

    const-string v4, "\r\n"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 618
    .local v17, "label_university_name":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->graduation:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->graduation:Ljava/lang/Integer;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 619
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

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

    move-result-object v17

    .line 620
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_university:Landroid/widget/TextView;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/ProfileFragment;->setVisibleEducationRegion(Z)V

    .line 623
    .end local v17    # "label_university_name":Ljava/lang/String;
    :cond_9
    if-eqz p1, :cond_a

    .line 625
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/ProfileFragment;->setVisibleFriendsRegion(Z)V

    .line 631
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/perm/kate/ProfileFragment;->new_profile:Z

    if-eqz v2, :cond_1f

    const v2, 0x7f0e01c5

    :goto_10
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .line 632
    .local v24, "status_region":Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    if-eqz v2, :cond_20

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    .line 633
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 634
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 636
    .local v26, "text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->status_audio:Lcom/perm/kate/api/Audio;

    if-eqz v2, :cond_b

    .line 637
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\ud83d\udce2 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    .line 639
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-static {v2, v0}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v27

    .line 640
    .local v27, "text1":Ljava/lang/CharSequence;
    const v2, 0x7f0e01c5

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, v27

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    .end local v26    # "text":Ljava/lang/String;
    .end local v27    # "text1":Ljava/lang/CharSequence;
    :goto_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->replies_region:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->can_write_private_message:Ljava/lang/Integer;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->can_write_private_message:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_21

    :cond_c
    const/4 v2, 0x1

    :goto_12
    invoke-virtual {v4, v2}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 499
    .end local v3    # "photo":Ljava/lang/String;
    .end local v13    # "is_male":Z
    .end local v15    # "label_name":Ljava/lang/String;
    .end local v20    # "relation_text":Ljava/lang/String;
    .end local v22    # "sex":Ljava/lang/String;
    .end local v24    # "status_region":Landroid/view/View;
    .end local v29    # "tv_profile_info_last_seen":Landroid/widget/TextView;
    .end local v31    # "wideAva":Z
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 503
    .restart local v13    # "is_male":Z
    :cond_e
    const/16 v2, 0x8

    goto/16 :goto_2

    .line 504
    :cond_f
    const/16 v2, 0x8

    goto/16 :goto_3

    .line 506
    :cond_10
    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/perm/kate/api/User;->last_seen:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_11

    .line 507
    const v2, 0x7f0e0066

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/perm/kate/api/User;->last_seen:J

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/perm/kate/api/User;->online_mobile:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-static {v4, v6, v7, v13, v5}, Lcom/perm/kate/Helper;->getLastSee(Landroid/content/Context;JZZ)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    :goto_13
    const v2, 0x7f0e00ee

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 511
    const v2, 0x7f0e00ef

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 509
    :cond_11
    const v2, 0x7f0e0066

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v4, 0x7f070332

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_13

    .line 537
    .restart local v3    # "photo":Ljava/lang/String;
    .restart local v31    # "wideAva":Z
    :cond_12
    new-instance v25, Lcom/perm/kate/ProfileFragment$PhotoTask;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/perm/kate/ProfileFragment$PhotoTask;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 538
    .local v25, "task":Lcom/perm/kate/ProfileFragment$PhotoTask;
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Lcom/perm/kate/ImageLoader;->displayImage(Lcom/perm/kate/ImageLoader$PhotoToLoad;)V

    goto/16 :goto_5

    .line 551
    .end local v25    # "task":Lcom/perm/kate/ProfileFragment$PhotoTask;
    :cond_13
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/ProfileFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    const/4 v5, 0x1

    if-eqz v31, :cond_14

    const/16 v6, 0x190

    :goto_14
    invoke-static {}, Lcom/perm/kate/ProfileFragment;->getBigAvaStubId()I

    move-result v7

    if-nez v31, :cond_15

    const/4 v8, 0x1

    :goto_15
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    goto/16 :goto_6

    :cond_14
    const/16 v6, 0xc8

    goto :goto_14

    :cond_15
    const/4 v8, 0x0

    goto :goto_15

    .line 556
    .restart local v15    # "label_name":Ljava/lang/String;
    :cond_16
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

    move-result-object v15

    goto/16 :goto_7

    .line 560
    .restart local v10    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_17
    const v12, 0x7f02012f

    goto/16 :goto_8

    .line 564
    .end local v10    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    invoke-virtual {v2, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    .line 570
    .restart local v22    # "sex":Ljava/lang/String;
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_sex:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_a

    .line 572
    .restart local v20    # "relation_text":Ljava/lang/String;
    :cond_1a
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 586
    :catch_0
    move-exception v28

    .line 587
    .local v28, "th":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Throwable;->printStackTrace()V

    .line 589
    invoke-static/range {v28 .. v28}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 592
    .end local v28    # "th":Ljava/lang/Throwable;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 596
    .restart local v29    # "tv_profile_info_last_seen":Landroid/widget/TextView;
    :cond_1c
    const/16 v2, 0x8

    goto/16 :goto_d

    .line 607
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_rate:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_e

    .line 614
    :cond_1e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/ProfileFragment;->setVisibleBirthdayRegion(Z)V

    goto/16 :goto_f

    .line 631
    :cond_1f
    const v2, 0x7f0e02ce

    goto/16 :goto_10

    .line 644
    .restart local v24    # "status_region":Landroid/view/View;
    :cond_20
    const/16 v2, 0x8

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_11

    .line 646
    :cond_21
    const/4 v2, 0x0

    goto/16 :goto_12
.end method

.method private displayUserOnUiThread()V
    .locals 2

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 332
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/ProfileFragment$5;

    invoke-direct {v1, p0}, Lcom/perm/kate/ProfileFragment$5;-><init>(Lcom/perm/kate/ProfileFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private displayWallCount(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "wall_count"    # Ljava/lang/Integer;

    .prologue
    .line 711
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_wall_count:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 712
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->tv_wall_count:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 713
    :cond_0
    return-void
.end method

.method private displayWallCountInUiThread(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "wall_count"    # Ljava/lang/Integer;

    .prologue
    .line 700
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 708
    :cond_0
    :goto_0
    return-void

    .line 702
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/ProfileFragment$6;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/ProfileFragment$6;-><init>(Lcom/perm/kate/ProfileFragment;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private static displayYouBlacklisted(Landroid/app/Activity;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1873
    const v3, 0x7f0704e0

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1874
    .local v2, "text":Ljava/lang/String;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1875
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "OK"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1876
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 1877
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1878
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1879
    return-void
.end method

.method public static displayYouBlacklistedInUiThread(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1862
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1870
    :cond_0
    :goto_0
    return-void

    .line 1864
    :cond_1
    new-instance v0, Lcom/perm/kate/ProfileFragment$53;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$53;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private downloadAvatarsAlbum()V
    .locals 1

    .prologue
    .line 1092
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->showProgressBar(Z)V

    .line 1093
    new-instance v0, Lcom/perm/kate/ProfileFragment$25;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$25;-><init>(Lcom/perm/kate/ProfileFragment;)V

    .line 1099
    invoke-virtual {v0}, Lcom/perm/kate/ProfileFragment$25;->start()V

    .line 1100
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
    .line 1644
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1645
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uris"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1646
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1647
    return-void
.end method

.method private faveAddUser()V
    .locals 2

    .prologue
    .line 1743
    new-instance v0, Lcom/perm/kate/ProfileFragment$49;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileFragment$49;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V

    .line 1760
    .local v0, "fave_add_user_callback":Lcom/perm/kate/session/Callback;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/ProfileFragment;->showProgressBar(Z)V

    .line 1761
    new-instance v1, Lcom/perm/kate/ProfileFragment$50;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/ProfileFragment$50;-><init>(Lcom/perm/kate/ProfileFragment;Lcom/perm/kate/session/Callback;)V

    .line 1766
    invoke-virtual {v1}, Lcom/perm/kate/ProfileFragment$50;->start()V

    .line 1767
    return-void
.end method

.method private faveRemoveUser()V
    .locals 2

    .prologue
    .line 1770
    new-instance v0, Lcom/perm/kate/ProfileFragment$51;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ProfileFragment$51;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/app/Activity;)V

    .line 1787
    .local v0, "fave_remove_user_callback":Lcom/perm/kate/session/Callback;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/ProfileFragment;->showProgressBar(Z)V

    .line 1788
    new-instance v1, Lcom/perm/kate/ProfileFragment$52;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/ProfileFragment$52;-><init>(Lcom/perm/kate/ProfileFragment;Lcom/perm/kate/session/Callback;)V

    .line 1793
    invoke-virtual {v1}, Lcom/perm/kate/ProfileFragment$52;->start()V

    .line 1794
    return-void
.end method

.method private fetchCityAndCountry()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 866
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    if-nez v0, :cond_0

    .line 877
    :goto_0
    return-void

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    .line 870
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchCity(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->city:Ljava/lang/String;

    .line 873
    :goto_1
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v0, v0, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 874
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchCountry(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->country:Ljava/lang/String;

    goto :goto_0

    .line 872
    :cond_1
    iput-object v4, p0, Lcom/perm/kate/ProfileFragment;->city:Ljava/lang/String;

    goto :goto_1

    .line 876
    :cond_2
    iput-object v4, p0, Lcom/perm/kate/ProfileFragment;->country:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getBigAvaStubId()I
    .locals 1

    .prologue
    .line 1806
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/perm/kate/ProfileFragment;->wideAva()Z

    move-result v0

    if-nez v0, :cond_0

    const v0, 0x7f020145

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v0

    goto :goto_0
.end method

.method private getCityIfMissing()V
    .locals 4

    .prologue
    .line 823
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->city:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 824
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 825
    .local v0, "cids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->city:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->callback_city:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/session/Session;->getCities(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 828
    .end local v0    # "cids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    return-void
.end method

.method private getCountryIfMissing()V
    .locals 4

    .prologue
    .line 844
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->country:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 845
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 846
    .local v0, "cids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v1, v1, Lcom/perm/kate/api/User;->country:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 847
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->callback_country:Lcom/perm/kate/session/Callback;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/session/Session;->getCountries(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 849
    .end local v0    # "cids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    return-void
.end method

.method private getIsFriendInThread()V
    .locals 1

    .prologue
    .line 1685
    new-instance v0, Lcom/perm/kate/ProfileFragment$46;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$46;-><init>(Lcom/perm/kate/ProfileFragment;)V

    .line 1690
    invoke-virtual {v0}, Lcom/perm/kate/ProfileFragment$46;->start()V

    .line 1691
    return-void
.end method

.method static getMatrix(IIIILcom/perm/kate/api/User$Rect;)Landroid/graphics/Matrix;
    .locals 20
    .param p0, "imageViewWidth"    # I
    .param p1, "imageViewHeight"    # I
    .param p2, "bitmapWidth"    # I
    .param p3, "bitmapHeight"    # I
    .param p4, "crop_rect"    # Lcom/perm/kate/api/User$Rect;

    .prologue
    .line 1896
    const-wide/16 v10, 0x0

    .local v10, "y1":D
    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    .line 1897
    .local v12, "y2":D
    if-eqz p4, :cond_0

    .line 1898
    move-object/from16 v0, p4

    iget-wide v10, v0, Lcom/perm/kate/api/User$Rect;->y1:D

    .line 1899
    move-object/from16 v0, p4

    iget-wide v12, v0, Lcom/perm/kate/api/User$Rect;->y2:D

    .line 1902
    :cond_0
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 1903
    .local v6, "matrix":Landroid/graphics/Matrix;
    add-double v14, v12, v10

    double-to-float v9, v14

    const/high16 v14, 0x40000000    # 2.0f

    div-float v4, v9, v14

    .line 1905
    .local v4, "crop_center_perc":F
    move/from16 v0, p0

    int-to-float v9, v0

    move/from16 v0, p2

    int-to-float v14, v0

    div-float/2addr v9, v14

    move/from16 v0, p1

    int-to-float v14, v0

    move/from16 v0, p3

    int-to-float v15, v0

    div-float/2addr v14, v15

    invoke-static {v9, v14}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 1906
    .local v7, "scale":F
    invoke-virtual {v6, v7, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1907
    move/from16 v0, p3

    int-to-float v9, v0

    mul-float v3, v9, v7

    .line 1908
    .local v3, "bitmap_height":F
    mul-float v9, v3, v4

    const/high16 v14, 0x42c80000    # 100.0f

    div-float v2, v9, v14

    .line 1909
    .local v2, "above_center":F
    move/from16 v0, p1

    int-to-float v5, v0

    .line 1910
    .local v5, "imageview_height":F
    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v5, v9

    sub-float v8, v2, v9

    .line 1913
    .local v8, "shift":F
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_1

    .line 1914
    const/4 v8, 0x0

    .line 1916
    :cond_1
    move/from16 v0, p1

    int-to-float v9, v0

    add-float/2addr v9, v8

    cmpl-float v9, v9, v3

    if-lez v9, :cond_2

    .line 1917
    move/from16 v0, p1

    int-to-float v9, v0

    sub-float v8, v3, v9

    .line 1921
    :cond_2
    float-to-double v14, v8

    float-to-double v0, v3

    move-wide/from16 v16, v0

    mul-double v16, v16, v10

    const-wide/high16 v18, 0x4059000000000000L    # 100.0

    div-double v16, v16, v18

    cmpl-double v9, v14, v16

    if-lez v9, :cond_3

    .line 1922
    float-to-double v14, v3

    mul-double/2addr v14, v10

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v14, v14, v16

    double-to-float v8, v14

    .line 1923
    :cond_3
    const/4 v9, 0x0

    neg-float v14, v8

    invoke-virtual {v6, v9, v14}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1924
    return-object v6
.end method

.method private getRelation(Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 5
    .param p1, "relation"    # Ljava/lang/Integer;
    .param p2, "sex"    # Ljava/lang/Integer;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const v2, 0x7f070228

    .line 746
    if-nez p1, :cond_0

    .line 747
    const-string v0, ""

    .line 796
    :goto_0
    return-object v0

    .line 748
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 749
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 750
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070229

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 751
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07022a

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 753
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_4

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07022b

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 756
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 757
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_6

    .line 758
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07022c

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 759
    :cond_6
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->relation_partner_id:Ljava/lang/Long;

    if-eqz v0, :cond_7

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07022f

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 761
    :cond_7
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_8

    .line 762
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07022d

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 763
    :cond_8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_9

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07022e

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 766
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    .line 767
    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_b

    .line 768
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070230

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 769
    :cond_b
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_c

    .line 770
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070231

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 771
    :cond_c
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_d

    .line 772
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070232

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 774
    :cond_d
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_11

    .line 775
    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_f

    .line 776
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070233

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 777
    :cond_f
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_10

    .line 778
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070234

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 779
    :cond_10
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_11

    .line 780
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070235

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 782
    :cond_11
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_12

    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070236

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 784
    :cond_12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_13

    .line 785
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070237

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 786
    :cond_13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_17

    .line 787
    if-eqz p2, :cond_14

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_15

    .line 788
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070238

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 789
    :cond_15
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_16

    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070239

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 791
    :cond_16
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_17

    .line 792
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07023a

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 794
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_18

    .line 795
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f07023b

    invoke-virtual {p0, v1}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 796
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

    .line 800
    if-nez p1, :cond_0

    .line 801
    const-string v0, ""

    .line 819
    :goto_0
    return-object v0

    .line 802
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 803
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 804
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07023c

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 807
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07023d

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 810
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_6

    .line 811
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    .line 812
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07023e

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 813
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07023f

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 816
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070240

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 819
    :cond_7
    const-string v0, ""

    goto/16 :goto_0
.end method

.method private getSex(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 3
    .param p1, "sex"    # Ljava/lang/Integer;

    .prologue
    const v2, 0x7f07025d

    .line 736
    if-nez p1, :cond_0

    .line 737
    const-string v0, ""

    .line 742
    :goto_0
    return-object v0

    .line 738
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 739
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f07025f

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 740
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 741
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v0, 0x7f070260

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 742
    :cond_2
    const-string v0, ""

    goto :goto_0
.end method

.method private initUiFields(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 344
    const v5, 0x7f0e02c7

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    .line 345
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/perm/kate/ProfileFragment;->photoClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    invoke-static {}, Lcom/perm/kate/ImageLoader;->roundAvatarsEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/perm/kate/ProfileFragment;->wideAva()Z

    move-result v5

    if-nez v5, :cond_0

    .line 347
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 348
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-static {v8, v9}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v7

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-static {v8, v9}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v8

    invoke-virtual {v3, v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 349
    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 350
    const-wide/high16 v6, 0x405e000000000000L    # 120.0

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 351
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->imv_profile_info_user_photo:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->requestLayout()V

    .line 354
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    const v5, 0x7f0e0107

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_user_name:Landroid/widget/TextView;

    .line 355
    const v5, 0x7f0e02d5

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_sex:Landroid/widget/TextView;

    .line 356
    const v5, 0x7f0e02d6

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_relation:Landroid/widget/TextView;

    .line 357
    const v5, 0x7f0e02c9

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_country:Landroid/widget/TextView;

    .line 358
    const v5, 0x7f0e02d7

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_rate:Landroid/widget/TextView;

    .line 359
    const v5, 0x7f0e02d8

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_birthday:Landroid/widget/TextView;

    .line 360
    const v5, 0x7f0e02d9

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_id:Landroid/widget/TextView;

    .line 361
    const v5, 0x7f0e02cb

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_university:Landroid/widget/TextView;

    .line 365
    const v5, 0x7f0e02c8

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_place_region:Landroid/widget/LinearLayout;

    .line 366
    const v5, 0x7f0e02ca

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_education_region:Landroid/widget/LinearLayout;

    .line 367
    const v5, 0x7f0e00fd

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_friends_region:Landroid/view/View;

    .line 368
    const v5, 0x7f0e0100

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_photos_region:Landroid/view/View;

    .line 369
    const v5, 0x7f0e0103

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_videos_region:Landroid/view/View;

    .line 370
    const v5, 0x7f0e00fe

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_wall_region:Landroid/view/View;

    .line 371
    const v5, 0x7f0e0101

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_audio_region:Landroid/view/View;

    .line 372
    const v5, 0x7f0e02d0

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->add_friend_region:Landroid/view/View;

    .line 373
    const v5, 0x7f0e02d3

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->replies_region:Landroid/view/View;

    .line 374
    const v5, 0x7f0e02ea

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->ll_subscriptions_region:Landroid/widget/LinearLayout;

    .line 375
    const v5, 0x7f0e02e1

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->ll_followers_region:Landroid/widget/LinearLayout;

    .line 376
    const v5, 0x7f0e0104

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_faves_region:Landroid/widget/LinearLayout;

    .line 377
    const v5, 0x7f0e02eb

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_additional_info:Landroid/widget/LinearLayout;

    .line 378
    const v5, 0x7f0e02dc

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->tv_friends_count:Landroid/widget/TextView;

    .line 379
    const v5, 0x7f0e01cf

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->tv_albums_count:Landroid/widget/TextView;

    .line 380
    const v5, 0x7f0e02df

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->tv_photo_count:Landroid/widget/TextView;

    .line 381
    const v5, 0x7f0e01d1

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->tv_photos_count:Landroid/widget/TextView;

    .line 382
    const v5, 0x7f0e01d3

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->tv_audios_count:Landroid/widget/TextView;

    .line 383
    const v5, 0x7f0e01d7

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->tv_videos_count:Landroid/widget/TextView;

    .line 384
    const v5, 0x7f0e02e4

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->tv_user_videos_count:Landroid/widget/TextView;

    .line 385
    const v5, 0x7f0e02e7

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->tv_notes_count:Landroid/widget/TextView;

    .line 386
    const v5, 0x7f0e02dd

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->tv_groups_count:Landroid/widget/TextView;

    .line 387
    const v5, 0x7f0e02e2

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->tv_followers_count:Landroid/widget/TextView;

    .line 388
    const v5, 0x7f0e02e9

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->tv_gifts_count:Landroid/widget/TextView;

    .line 389
    const v5, 0x7f0e01c9

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->tv_wall_count:Landroid/widget/TextView;

    .line 390
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->ll_subscriptions_region:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/perm/kate/ProfileFragment;->subscribersClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->ll_followers_region:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/perm/kate/ProfileFragment;->followersClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 392
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_friends_region:Landroid/view/View;

    iget-object v6, p0, Lcom/perm/kate/ProfileFragment;->Friends_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_photos_region:Landroid/view/View;

    iget-object v6, p0, Lcom/perm/kate/ProfileFragment;->Photos_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_videos_region:Landroid/view/View;

    iget-object v6, p0, Lcom/perm/kate/ProfileFragment;->Videos_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 395
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_wall_region:Landroid/view/View;

    iget-object v6, p0, Lcom/perm/kate/ProfileFragment;->Wall_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_audio_region:Landroid/view/View;

    iget-object v6, p0, Lcom/perm/kate/ProfileFragment;->Audio_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 397
    const v5, 0x7f0e01c6

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->buttons:Landroid/view/View;

    .line 398
    const v5, 0x7f0e02db

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->buttons_separator:Landroid/view/View;

    .line 399
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_faves_region:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/perm/kate/ProfileFragment;->faves_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 400
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_additional_info:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/perm/kate/ProfileFragment;->additional_info_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 401
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_id:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/perm/kate/ProfileFragment;->profileIdClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    const v5, 0x7f0e00ff

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 403
    .local v2, "groups_layout":Landroid/view/View;
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->Groups_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 404
    const v5, 0x7f0e02e0

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->user_photos:Landroid/view/View;

    .line 405
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->user_photos:Landroid/view/View;

    iget-object v6, p0, Lcom/perm/kate/ProfileFragment;->userPhotosClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    const v5, 0x7f0e02e3

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->user_videos:Landroid/view/View;

    .line 407
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->user_videos:Landroid/view/View;

    iget-object v6, p0, Lcom/perm/kate/ProfileFragment;->userVideosClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    const v5, 0x7f0e02e6

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->notes_layout:Landroid/view/View;

    .line 409
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->notes_layout:Landroid/view/View;

    iget-object v6, p0, Lcom/perm/kate/ProfileFragment;->Notes_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 410
    const v5, 0x7f0e02de

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 411
    .local v0, "all_photos":Landroid/view/View;
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->allPhotosClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    const v5, 0x7f0e02e8

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_gifts_region:Landroid/view/View;

    .line 413
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_gifts_region:Landroid/view/View;

    iget-object v6, p0, Lcom/perm/kate/ProfileFragment;->giftsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    const v5, 0x7f0e02e5

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 416
    .local v1, "docs_view":Landroid/view/View;
    iget-boolean v5, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-eqz v5, :cond_3

    .line 417
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->docsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 425
    :cond_1
    :goto_0
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/perm/kate/ProfileFragment;->setVisibleBirthdayRegion(Z)V

    .line 426
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/perm/kate/ProfileFragment;->setVisiblePlaceRegion(Z)V

    .line 427
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/perm/kate/ProfileFragment;->setVisibleEducationRegion(Z)V

    .line 428
    iget-boolean v5, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-nez v5, :cond_4

    const/4 v5, 0x1

    :goto_1
    invoke-direct {p0, v5}, Lcom/perm/kate/ProfileFragment;->setVisibleFriendsRegionsRegion(Z)V

    .line 430
    iget-boolean v5, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    invoke-direct {p0, v5}, Lcom/perm/kate/ProfileFragment;->setVisibleFavesRegion(Z)V

    .line 431
    iget-boolean v5, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-nez v5, :cond_2

    .line 432
    invoke-direct {p0, p1}, Lcom/perm/kate/ProfileFragment;->displayFriendStatus(Landroid/view/View;)V

    .line 433
    iget-boolean v5, p0, Lcom/perm/kate/ProfileFragment;->new_profile:Z

    if-eqz v5, :cond_5

    .line 435
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->add_friend_region:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/ProfileFragment;->friendClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    :cond_2
    :goto_2
    iget-boolean v5, p0, Lcom/perm/kate/ProfileFragment;->new_profile:Z

    if-eqz v5, :cond_6

    .line 441
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->replies_region:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/ProfileFragment;->repliesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 446
    :goto_3
    iget-boolean v5, p0, Lcom/perm/kate/ProfileFragment;->new_profile:Z

    if-eqz v5, :cond_7

    .line 447
    const v5, 0x7f0e01c5

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/ProfileFragment;->statusClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 450
    :goto_4
    return-void

    .line 419
    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 420
    const v5, 0x7f0e01ed

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 421
    .local v4, "sep":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 422
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 428
    .end local v4    # "sep":Landroid/view/View;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 437
    :cond_5
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->add_friend_region:Landroid/view/View;

    iget-object v6, p0, Lcom/perm/kate/ProfileFragment;->friendClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 443
    :cond_6
    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->replies_region:Landroid/view/View;

    iget-object v6, p0, Lcom/perm/kate/ProfileFragment;->repliesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 449
    :cond_7
    const v5, 0x7f0e02ce

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/ProfileFragment;->statusClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4
.end method

.method private isFriend()Z
    .locals 6

    .prologue
    .line 1480
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 1481
    .local v0, "owner_id":J
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    if-nez v2, :cond_0

    .line 1482
    const/4 v2, 0x0

    .line 1483
    :goto_0
    return v2

    :cond_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/perm/kate/db/DataHelper;->isFriend(JJ)Z

    move-result v2

    goto :goto_0
.end method

.method public static isOldProfile()Z
    .locals 3

    .prologue
    .line 1739
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
    .locals 2

    .prologue
    .line 1811
    invoke-static {}, Lcom/perm/kate/ProfileFragment;->wideAva()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    invoke-static {}, Lcom/perm/kate/ProfileFragment;->isOldProfile()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeFromBlackList()V
    .locals 3

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/ProfileFragment$28;

    invoke-direct {v2, p0}, Lcom/perm/kate/ProfileFragment$28;-><init>(Lcom/perm/kate/ProfileFragment;)V

    invoke-static {v0, v1, v2}, Lcom/perm/kate/BlackListActivity;->removeFromBlackList(Ljava/lang/String;Landroid/support/v4/app/FragmentActivity;Lcom/perm/kate/BlackListActivity$BlackListCallback;)V

    .line 1352
    return-void
.end method

.method private reportClick(Ljava/lang/String;)V
    .locals 8
    .param p1, "item"    # Ljava/lang/String;

    .prologue
    .line 1839
    :try_start_0
    iput-object p1, p0, Lcom/perm/kate/ProfileFragment;->clicked_item:Ljava/lang/String;

    .line 1842
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 1843
    .local v2, "time":J
    const-wide/16 v4, 0x2710

    rem-long v4, v2, v4

    const-wide/16 v6, 0x270b

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 1852
    .end local v2    # "time":J
    :goto_0
    return-void

    .line 1845
    .restart local v2    # "time":J
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 1846
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "item"

    invoke-interface {v0, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1847
    const-string v4, "CLICK_IN_PROFILE"

    invoke-static {v4, v0}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1848
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "time":J
    :catch_0
    move-exception v1

    .line 1849
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1850
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static sendGift(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3
    .param p0, "uid_str"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://m.vk.com/gifts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?act=send"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1357
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    .line 1358
    return-void
.end method

.method private setMatrix(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p1, "img_photo_view"    # Landroid/widget/ImageView;
    .param p2, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1882
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    if-nez v1, :cond_1

    .line 1891
    :cond_0
    :goto_0
    return-void

    .line 1884
    :cond_1
    if-eqz p2, :cond_0

    .line 1886
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    if-eqz v1, :cond_0

    .line 1888
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v5, v5, Lcom/perm/kate/api/User;->crop_photo_rect:Lcom/perm/kate/api/User$Rect;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/perm/kate/ProfileFragment;->getMatrix(IIIILcom/perm/kate/api/User$Rect;)Landroid/graphics/Matrix;

    move-result-object v0

    .line 1889
    .local v0, "matrix":Landroid/graphics/Matrix;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1890
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private setVisibleBirthdayRegion(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 453
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->tv_profile_info_birthday:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 454
    return-void

    .line 453
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setVisibleEducationRegion(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 481
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_education_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 482
    return-void

    .line 481
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setVisibleFavesRegion(Z)V
    .locals 5
    .param p1, "is_me"    # Z

    .prologue
    .line 470
    sget-object v3, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 471
    .local v1, "prefs":Landroid/content/SharedPreferences;
    const-string v3, "key_profile_tab"

    const-string v4, "0"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "profile_tab_type":Ljava/lang/String;
    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 473
    .local v0, "full_profile":Z
    iget-object v4, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_faves_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 474
    return-void

    .line 473
    :cond_0
    const/16 v3, 0x8

    goto :goto_0
.end method

.method private setVisibleFriendsRegion(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 485
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_friends_region:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 486
    return-void

    .line 485
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

    .line 459
    iget-object v3, p0, Lcom/perm/kate/ProfileFragment;->replies_region:Landroid/view/View;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iget-object v3, p0, Lcom/perm/kate/ProfileFragment;->add_friend_region:Landroid/view/View;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 462
    iget-boolean v0, p0, Lcom/perm/kate/ProfileFragment;->new_profile:Z

    if-eqz v0, :cond_0

    .line 463
    iget-object v3, p0, Lcom/perm/kate/ProfileFragment;->buttons:Landroid/view/View;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 464
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->buttons_separator:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->buttons_separator:Landroid/view/View;

    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 467
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 459
    goto :goto_0

    :cond_2
    move v0, v2

    .line 460
    goto :goto_1

    :cond_3
    move v0, v2

    .line 463
    goto :goto_2

    :cond_4
    move v1, v2

    .line 465
    goto :goto_3
.end method

.method private setVisiblePlaceRegion(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 477
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->ll_profile_place_region:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 478
    return-void

    .line 477
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private showAddDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1445
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    .line 1446
    .local v3, "factory":Landroid/view/LayoutInflater;
    const v4, 0x7f03001d

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 1447
    .local v1, "captcha_view":Landroid/view/View;
    const v4, 0x7f0e006b

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1448
    .local v2, "et_message":Landroid/widget/EditText;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1449
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v4, 0x7f070114

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f07051d

    new-instance v6, Lcom/perm/kate/ProfileFragment$32;

    invoke-direct {v6, p0, v2}, Lcom/perm/kate/ProfileFragment$32;-><init>(Lcom/perm/kate/ProfileFragment;Landroid/widget/EditText;)V

    .line 1450
    invoke-virtual {v4, v5, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f070319

    .line 1455
    invoke-virtual {v4, v5, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1456
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1457
    return-void
.end method

.method private showAdditionalInfo()V
    .locals 3

    .prologue
    .line 1619
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1620
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/ExtraProfileActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1621
    const-string v1, "com.perm.kate.user_id"

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1622
    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    .line 1623
    return-void
.end method

.method private showDeleteDialog()V
    .locals 4

    .prologue
    .line 1433
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1434
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070184

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07051d

    new-instance v3, Lcom/perm/kate/ProfileFragment$31;

    invoke-direct {v3, p0}, Lcom/perm/kate/ProfileFragment$31;-><init>(Lcom/perm/kate/ProfileFragment;)V

    .line 1435
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070319

    const/4 v3, 0x0

    .line 1440
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1441
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1442
    return-void
.end method

.method private showFaves()V
    .locals 3

    .prologue
    .line 1613
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1614
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/FavesActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1615
    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    .line 1616
    return-void
.end method

.method private showFollowers()V
    .locals 3

    .prologue
    .line 1589
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1590
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.user_id"

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1591
    const-string v1, "com.perm.kate.followers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1592
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/FollowersActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1593
    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    .line 1594
    return-void
.end method

.method private showGiftsAcivity()V
    .locals 3

    .prologue
    .line 1184
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1185
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/GiftsActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1186
    const-string v1, "com.perm.kate.user_id"

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1187
    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    .line 1188
    return-void
.end method

.method static showMentions(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid_str"    # Ljava/lang/String;

    .prologue
    .line 1329
    move-object v1, p0

    check-cast v1, Lcom/perm/kate/BaseActivity;

    const v2, 0x7f0702d5

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 1330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://m.vk.com/search?c[q]=*id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&c[section]=statuses&c[type]=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1331
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    .line 1332
    return-void
.end method

.method public static showNewMessage(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2
    .param p0, "user_id"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1367
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1368
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/NewMessageActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1369
    const-string v1, "com.perm.kate.user_id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1370
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1371
    return-void
.end method

.method private showProfileImage(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1067
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1080
    :cond_0
    :goto_0
    return-void

    .line 1069
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1070
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1071
    if-nez p1, :cond_2

    .line 1072
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1073
    .restart local p1    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 1074
    new-instance v1, Lcom/perm/kate/api/Photo;

    invoke-direct {v1}, Lcom/perm/kate/api/Photo;-><init>()V

    .line 1075
    .local v1, "p":Lcom/perm/kate/api/Photo;
    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v2, v2, Lcom/perm/kate/api/User;->photo_big:Ljava/lang/String;

    iput-object v2, v1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 1076
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1078
    .end local v1    # "p":Lcom/perm/kate/api/Photo;
    :cond_3
    const-string v2, "com.perm.kate.photos"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1079
    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showStatusAcivity()V
    .locals 3

    .prologue
    .line 1361
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1362
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/StatusActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1363
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1364
    return-void
.end method

.method private showStatusDialog()V
    .locals 5

    .prologue
    .line 986
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-object v3, v3, Lcom/perm/kate/api/User;->status:Ljava/lang/String;

    .line 987
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070067

    const/4 v4, 0x0

    .line 988
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070171

    new-instance v4, Lcom/perm/kate/ProfileFragment$20;

    invoke-direct {v4, p0}, Lcom/perm/kate/ProfileFragment$20;-><init>(Lcom/perm/kate/ProfileFragment;)V

    .line 989
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 995
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 996
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 997
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 998
    return-void
.end method

.method private showSubscribers()V
    .locals 3

    .prologue
    .line 1581
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1582
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.user_id"

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1583
    const-string v1, "com.perm.kate.followers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1584
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/FollowersActivity2;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1585
    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    .line 1586
    return-void
.end method

.method private startSquareCrop(Landroid/net/Uri;II)V
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "resize_option"    # I
    .param p3, "rotate"    # I

    .prologue
    .line 1797
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/SinglePhotoViewer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1798
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uri"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1799
    const-string v1, "resize_option"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1800
    const-string v1, "rotate"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1801
    const-string v1, "crop"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1802
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1803
    return-void
.end method

.method private static wideAva()Z
    .locals 3

    .prologue
    .line 192
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
    .locals 9
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/16 v8, 0x138d

    const/16 v7, 0x11

    const/16 v6, 0x22

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1207
    const/16 v1, 0x3f2

    const v2, 0x7f0701d6

    invoke-interface {p1, v4, v7, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1208
    const/16 v1, 0x23

    const/16 v2, 0xf3c

    const v3, 0x7f070177

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1209
    const/16 v1, 0x3f4

    const v2, 0x7f070184

    invoke-interface {p1, v4, v6, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1210
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->isFriend()Z

    move-result v0

    .line 1211
    .local v0, "is_friend":Z
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-nez v1, :cond_0

    .line 1212
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->blacklisted_by_me:Ljava/lang/Integer;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->blacklisted_by_me:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_b

    .line 1213
    const/16 v1, 0x25

    const/16 v2, 0x1770

    const v3, 0x7f070186

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1217
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-nez v1, :cond_c

    if-eqz v0, :cond_c

    .line 1218
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1221
    :goto_1
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-eqz v1, :cond_1

    .line 1222
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1223
    :cond_1
    const/16 v1, 0x3e8

    const/16 v2, 0x1388

    const v3, 0x7f070203

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1224
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-nez v1, :cond_2

    .line 1225
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-static {v1, v2}, Lcom/perm/utils/OnlineNotificationsHelper;->isEnabledUser(Landroid/content/Context;Ljava/lang/Long;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1226
    const/16 v1, 0x3ef

    const v2, 0x7f0701f8

    invoke-interface {p1, v4, v1, v8, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1230
    :cond_2
    :goto_2
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_follower:Z

    if-eqz v1, :cond_3

    .line 1231
    const/16 v1, 0x3fb

    const/16 v2, 0x1b61

    const v3, 0x7f070293

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1232
    :cond_3
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-nez v1, :cond_4

    .line 1233
    const/16 v1, 0x3f5

    const/16 v2, 0x1b65

    const v3, 0x7f07016f

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1234
    :cond_4
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-eqz v1, :cond_5

    .line 1235
    const/16 v1, 0x3f6

    const/16 v2, 0x1b66

    const v3, 0x7f07018d

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1236
    :cond_5
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-nez v1, :cond_6

    if-eqz v0, :cond_6

    .line 1237
    const/16 v1, 0x3fd

    const/16 v2, 0x1b6d

    const v3, 0x7f070190

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1238
    :cond_6
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->is_favorite:Ljava/lang/Integer;

    if-eqz v1, :cond_7

    .line 1239
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->is_favorite:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_e

    .line 1240
    const/16 v1, 0x400

    const/16 v2, 0x1b6f

    const v3, 0x7f070241

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1244
    :cond_7
    :goto_3
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-nez v1, :cond_9

    .line 1245
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/utils/WallSubscriptions;->subscribed(J)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/perm/kate/UpdateService;->regularRefreshEnabled()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1246
    :cond_8
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->deactivated:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1247
    const/16 v1, 0x401

    const/16 v2, 0x1b70

    const v3, 0x7f070512

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1251
    :cond_9
    :goto_4
    iget-boolean v1, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-nez v1, :cond_a

    .line 1252
    const/16 v1, 0x403

    const/16 v2, 0x1b71

    const v3, 0x7f0703d9

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1253
    :cond_a
    const/16 v1, 0x404

    const/16 v2, 0x1b7b

    const v3, 0x7f0703aa

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1254
    const/16 v1, 0x405

    const/16 v2, 0x1b85

    const v3, 0x7f0702d4

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1255
    return v5

    .line 1215
    :cond_b
    const/16 v1, 0x24

    const/16 v2, 0x1770

    const v3, 0x7f07028c

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1220
    :cond_c
    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 1228
    :cond_d
    const/16 v1, 0x3ed

    const v2, 0x7f0701f9

    invoke-interface {p1, v4, v1, v8, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1242
    :cond_e
    const/16 v1, 0x3ff

    const/16 v2, 0x1b6f

    const v3, 0x7f070118

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_3

    .line 1249
    :cond_f
    const/16 v1, 0x402

    const/16 v2, 0x1b70

    const v3, 0x7f070511

    invoke-interface {p1, v4, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_4
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1388
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/perm/kate/photoupload/PhotoChooser;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/perm/kate/photoupload/PhotoChooser$Callback;)Landroid/net/Uri;

    .line 1389
    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 1390
    const-string v0, "uris"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    .line 1391
    .local v8, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v0, "resize_option"

    const/4 v1, 0x2

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1392
    .local v3, "resize_option":I
    const-string v0, "rotate"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1393
    .local v5, "rotate":I
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    invoke-direct {p0, v0, v3, v5}, Lcom/perm/kate/ProfileFragment;->startSquareCrop(Landroid/net/Uri;II)V

    .line 1395
    .end local v3    # "resize_option":I
    .end local v5    # "rotate":I
    .end local v8    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 1396
    if-eqz p3, :cond_1

    .line 1397
    const-string v0, "new_status"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1398
    .local v6, "new_status":Ljava/lang/String;
    invoke-static {v6}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1399
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    const/4 v1, 0x0

    invoke-static {v0, v10, v11, v6, v1}, Lcom/perm/kate/Helper;->showPublishStatusDialog(Landroid/app/Activity;JLjava/lang/String;Z)V

    .line 1402
    .end local v6    # "new_status":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 1403
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->refreshInThread()V

    .line 1404
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 1405
    const-string v0, "uri"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 1406
    .local v2, "uri":Landroid/net/Uri;
    const-string v0, "resize_option"

    const/4 v1, 0x2

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1407
    .restart local v3    # "resize_option":I
    const-string v0, "rotate"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1408
    .restart local v5    # "rotate":I
    const-string v0, "x_y_w"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1409
    .local v7, "square_crop":Ljava/lang/String;
    new-instance v0, Lcom/perm/kate/photoupload/AvatarUploader;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v4, p0, Lcom/perm/kate/ProfileFragment;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/photoupload/AvatarUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;ILcom/perm/kate/photoupload/UploadCallback;I)V

    .line 1410
    invoke-virtual {v0, v7}, Lcom/perm/kate/photoupload/AvatarUploader;->setSquareCrop(Ljava/lang/String;)Lcom/perm/kate/photoupload/AvatarUploader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/photoupload/AvatarUploader;->upload()V

    .line 1412
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v3    # "resize_option":I
    .end local v5    # "rotate":I
    .end local v7    # "square_crop":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1832
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onAttach(Landroid/app/Activity;)V

    .line 1834
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->add_friend_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 1835
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 197
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 198
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->setHasOptionsMenu(Z)V

    .line 199
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/perm/kate/ProfileFragment$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/ProfileFragment$1;-><init>(Lcom/perm/kate/ProfileFragment;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 204
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    const/4 v2, 0x0

    .line 139
    .local v2, "view":Landroid/view/View;
    const v0, 0x7f0300e7

    .line 141
    .local v0, "layout":I
    :try_start_0
    invoke-static {}, Lcom/perm/kate/ProfileFragment;->wideAva()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 142
    const v0, 0x7f0300e9

    .line 144
    :cond_0
    iget-boolean v4, p0, Lcom/perm/kate/ProfileFragment;->new_profile:Z

    if-nez v4, :cond_1

    .line 145
    const v0, 0x7f0300e8

    .line 146
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 147
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "com.perm.kate.user_id"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    .line 150
    iget-object v4, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_2

    move-object v3, v2

    .line 188
    .end local v2    # "view":Landroid/view/View;
    .local v3, "view":Landroid/view/View;
    :goto_0
    return-object v3

    .line 156
    .end local v3    # "view":Landroid/view/View;
    .restart local v2    # "view":Landroid/view/View;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    :goto_1
    :try_start_2
    iget-object v4, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    sget-object v5, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v5}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    .line 162
    invoke-direct {p0, v2}, Lcom/perm/kate/ProfileFragment;->initUiFields(Landroid/view/View;)V

    .line 163
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object v4

    iput-object v4, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    .line 164
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->fetchCityAndCountry()V

    .line 165
    iget-object v4, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    invoke-direct {p0, v4, v2}, Lcom/perm/kate/ProfileFragment;->displayUser(Lcom/perm/kate/api/User;Landroid/view/View;)V

    .line 166
    iget-boolean v4, p0, Lcom/perm/kate/ProfileFragment;->is_me:Z

    if-nez v4, :cond_3

    .line 167
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->getIsFriendInThread()V

    .line 169
    iget-object v4, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    invoke-static {v4}, Lcom/perm/kate/history/History;->addUser(Lcom/perm/kate/api/User;)V

    .line 171
    :cond_3
    iget-boolean v4, p0, Lcom/perm/kate/ProfileFragment;->new_profile:Z

    if-eqz v4, :cond_4

    .line 172
    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-static {v2, v4}, Lcom/perm/kate/ProfileFragment;->setButtonsBg(Landroid/view/View;[I)V

    .line 176
    :cond_4
    invoke-static {}, Lcom/perm/kate/ProfileFragment;->isTransparentHeader()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    instance-of v4, v4, Lcom/perm/kate/MainActivity;

    if-nez v4, :cond_5

    .line 177
    const v4, 0x7f0e0054

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/perm/kate/ProfileFragment;->scrollView:Landroid/view/View;

    .line 178
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const v5, 0x7f0e01f4

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/perm/kate/ProfileFragment;->activity_header:Landroid/view/View;

    .line 179
    iget-object v4, p0, Lcom/perm/kate/ProfileFragment;->scrollView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/ProfileFragment$ScrollChangedListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/perm/kate/ProfileFragment$ScrollChangedListener;-><init>(Lcom/perm/kate/ProfileFragment;Lcom/perm/kate/ProfileFragment$1;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_5
    :goto_2
    move-object v3, v2

    .line 188
    .end local v2    # "view":Landroid/view/View;
    .restart local v3    # "view":Landroid/view/View;
    goto/16 :goto_0

    .line 157
    .end local v3    # "view":Landroid/view/View;
    .restart local v2    # "view":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 158
    .local v1, "th":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uid_str="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 159
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 182
    .end local v1    # "th":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 183
    .restart local v1    # "th":Ljava/lang/Throwable;
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 184
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 185
    instance-of v4, v1, Ljava/lang/OutOfMemoryError;

    if-eqz v4, :cond_5

    .line 186
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/perm/kate/ImageLoader;->clearMemoryCache()V

    goto :goto_2

    .line 172
    :array_0
    .array-data 4
        0x7f0e02d0
        0x7f0e02d3
    .end array-data
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 1856
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onDestroy()V

    .line 1857
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->clicked_item:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1858
    const-string v0, "none"

    invoke-direct {p0, v0}, Lcom/perm/kate/ProfileFragment;->reportClick(Ljava/lang/String;)V

    .line 1859
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 1260
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1325
    invoke-super {p0, p1}, Lcom/perm/kate/BaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1262
    :sswitch_0
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/perm/kate/ProfileFragment;->showNewMessage(Ljava/lang/String;Landroid/app/Activity;)V

    move v0, v1

    .line 1263
    goto :goto_0

    .line 1265
    :sswitch_1
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->showDeleteDialog()V

    move v0, v1

    .line 1266
    goto :goto_0

    .line 1268
    :sswitch_2
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/perm/kate/Helper;->copyProfileLink(Ljava/lang/String;Landroid/content/Context;)V

    move v0, v1

    .line 1269
    goto :goto_0

    .line 1271
    :sswitch_3
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->addToBlackList()V

    move v0, v1

    .line 1272
    goto :goto_0

    .line 1274
    :sswitch_4
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->removeFromBlackList()V

    move v0, v1

    .line 1275
    goto :goto_0

    .line 1277
    :sswitch_5
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->showProfileFromBrowser()V

    move v0, v1

    .line 1278
    goto :goto_0

    .line 1280
    :sswitch_6
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/perm/utils/OnlineNotificationsHelper;->setEnabledUser(Landroid/content/Context;JZ)V

    move v0, v1

    .line 1281
    goto :goto_0

    .line 1283
    :sswitch_7
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->isFriend()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1284
    const v0, 0x7f0704dd

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->displayToast(I)V

    .line 1285
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3, v1}, Lcom/perm/utils/OnlineNotificationsHelper;->setEnabledUser(Landroid/content/Context;JZ)V

    move v0, v1

    .line 1286
    goto :goto_0

    .line 1288
    :sswitch_8
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->deleteFriend()V

    move v0, v1

    .line 1289
    goto :goto_0

    .line 1291
    :sswitch_9
    new-instance v0, Lcom/perm/kate/ReportHelper;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/ReportHelper;->showReportUserDialog(J)V

    move v0, v1

    .line 1292
    goto :goto_0

    .line 1294
    :sswitch_a
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->showOptionsDialog()V

    move v0, v1

    .line 1295
    goto :goto_0

    .line 1297
    :sswitch_b
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseActivity;

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-static {v0, v2}, Lcom/perm/utils/FriendsListsHelper;->showFriendsListsDialogWithCheck(Lcom/perm/kate/BaseActivity;Ljava/lang/Long;)V

    move v0, v1

    .line 1298
    goto :goto_0

    .line 1300
    :sswitch_c
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->faveRemoveUser()V

    move v0, v1

    .line 1301
    goto/16 :goto_0

    .line 1303
    :sswitch_d
    invoke-direct {p0}, Lcom/perm/kate/ProfileFragment;->faveAddUser()V

    move v0, v1

    .line 1304
    goto/16 :goto_0

    .line 1306
    :sswitch_e
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/perm/utils/WallSubscriptions;->subscribe(J)V

    .line 1307
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->ensureRegularRefreshEnabled()V

    .line 1308
    const v0, 0x7f070510

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->displayToast(I)V

    move v0, v1

    .line 1309
    goto/16 :goto_0

    .line 1311
    :sswitch_f
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/perm/utils/WallSubscriptions;->unsubscribe(J)V

    .line 1312
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->disableRegularRefreshIfRequired()V

    .line 1313
    const v0, 0x7f07050f

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->displayToast(I)V

    move v0, v1

    .line 1314
    goto/16 :goto_0

    .line 1316
    :sswitch_10
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/perm/kate/ProfileFragment;->sendGift(Ljava/lang/String;Landroid/app/Activity;)V

    move v0, v1

    .line 1317
    goto/16 :goto_0

    .line 1319
    :sswitch_11
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/BaseActivity;

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/perm/utils/RegistrationDate;->getAndShow(Lcom/perm/kate/BaseActivity;Ljava/lang/String;)V

    move v0, v1

    .line 1320
    goto/16 :goto_0

    .line 1322
    :sswitch_12
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->uid_str:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/perm/kate/ProfileFragment;->showMentions(Landroid/content/Context;Ljava/lang/String;)V

    move v0, v1

    .line 1323
    goto/16 :goto_0

    .line 1260
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_0
        0x22 -> :sswitch_1
        0x23 -> :sswitch_2
        0x24 -> :sswitch_3
        0x25 -> :sswitch_4
        0x3e8 -> :sswitch_5
        0x3ed -> :sswitch_7
        0x3ef -> :sswitch_6
        0x3f5 -> :sswitch_9
        0x3f6 -> :sswitch_a
        0x3fb -> :sswitch_8
        0x3fd -> :sswitch_b
        0x3ff -> :sswitch_d
        0x400 -> :sswitch_c
        0x401 -> :sswitch_e
        0x402 -> :sswitch_f
        0x403 -> :sswitch_10
        0x404 -> :sswitch_11
        0x405 -> :sswitch_12
    .end sparse-switch
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 1661
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->refreshInThread()V

    .line 1662
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 208
    invoke-super {p0}, Lcom/perm/kate/BaseFragment;->onStart()V

    .line 210
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 211
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->fetchUserFull(J)Lcom/perm/kate/api/User;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    .line 212
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/perm/kate/ProfileFragment;->displayUser(Lcom/perm/kate/api/User;Landroid/view/View;)V

    .line 214
    :cond_0
    return-void
.end method

.method refreshInThread()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 236
    :goto_0
    return-void

    .line 220
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->showProgressBar(Z)V

    .line 221
    new-instance v0, Lcom/perm/kate/ProfileFragment$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/ProfileFragment$2;-><init>(Lcom/perm/kate/ProfileFragment;)V

    .line 235
    invoke-virtual {v0}, Lcom/perm/kate/ProfileFragment$2;->start()V

    goto :goto_0
.end method

.method public showEditProfileAcivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 1136
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1137
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/EditProfileActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1138
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1139
    return-void
.end method

.method protected showMessageThread()V
    .locals 3

    .prologue
    .line 1415
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1416
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/perm/kate/MessageThreadActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1417
    const-string v1, "com.perm.kate.message_uid"

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->uid:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1418
    invoke-virtual {p0, v0}, Lcom/perm/kate/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    .line 1419
    return-void
.end method

.method protected showOptionsDialog()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1103
    const/4 v0, 0x1

    .line 1104
    .local v0, "MENU_EDIT_PHOTO":I
    const/4 v2, 0x2

    .line 1105
    .local v2, "MENU_EDIT_STATUS":I
    const/4 v1, 0x3

    .line 1107
    .local v1, "MENU_EDIT_PROFILE":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1108
    .local v4, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f070191

    const/4 v8, 0x3

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1109
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f070098

    invoke-direct {v6, v7, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1110
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f0701e2

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1112
    new-instance v6, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f07018d

    .line 1113
    invoke-virtual {v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    .line 1114
    invoke-static {v4}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v8, Lcom/perm/kate/ProfileFragment$26;

    invoke-direct {v8, p0, v4}, Lcom/perm/kate/ProfileFragment$26;-><init>(Lcom/perm/kate/ProfileFragment;Ljava/util/ArrayList;)V

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 1130
    .local v5, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    .line 1131
    .local v3, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v3, v9}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1132
    invoke-virtual {v3}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1133
    return-void
.end method

.method protected showProfileFromBrowser()V
    .locals 4

    .prologue
    .line 1060
    iget-object v1, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    if-nez v1, :cond_0

    .line 1064
    :goto_0
    return-void

    .line 1062
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://vk.com/id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/ProfileFragment;->u:Lcom/perm/kate/api/User;

    iget-wide v2, v2, Lcom/perm/kate/api/User;->uid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1063
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/perm/kate/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
