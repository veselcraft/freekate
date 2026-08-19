.class public Lcom/perm/kate/GroupActivity;
.super Lcom/perm/kate/BaseActivity;
.source "GroupActivity.java"


# instance fields
.field private albumsClickListener:Landroid/view/View$OnClickListener;

.field private allPhotosClickListener:Landroid/view/View$OnClickListener;

.field private audioClickListener:Landroid/view/View$OnClickListener;

.field private avatars_photos_callback:Lcom/perm/kate/session/Callback;

.field private callback:Lcom/perm/kate/session/Callback;

.field private callback_wall_count:Lcom/perm/kate/session/Callback;

.field private contacts:Ljava/util/ArrayList;

.field private contactsClickListener:Landroid/view/View$OnClickListener;

.field private coverView:Landroid/widget/ImageView;

.field private descriptionLongClickListener:Landroid/view/View$OnLongClickListener;

.field private docs:Landroid/view/View;

.field private docsClickListener:Landroid/view/View$OnClickListener;

.field private docs_separator:Landroid/view/View;

.field private g:Lcom/perm/kate/api/Group;

.field private goodsClickListener:Landroid/view/View$OnClickListener;

.field private groupMenuClickListener:Landroid/view/View$OnClickListener;

.field private group_id:Ljava/lang/Long;

.field private is_closed:Z

.field private is_favorite:Ljava/lang/Integer;

.field private is_join_group:Z

.field is_messages_blocked:Ljava/lang/Integer;

.field private is_suggest:Z

.field private joinClickListener:Landroid/view/View$OnClickListener;

.field private join_callback:Lcom/perm/kate/session/Callback;

.field private label_status:Landroid/widget/TextView;

.field private leave_callback:Lcom/perm/kate/session/Callback;

.field private links:Ljava/util/ArrayList;

.field private linksClickListener:Landroid/view/View$OnClickListener;

.field private membersClickListener:Landroid/view/View$OnClickListener;

.field private messageClick:Landroid/view/View$OnClickListener;

.field private messagesReadClick:Landroid/view/View$OnClickListener;

.field private photo:Landroid/widget/ImageView;

.field private photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

.field private photoClickListener:Landroid/view/View$OnClickListener;

.field private podcastsClickListener:Landroid/view/View$OnClickListener;

.field private statusClickListener:Landroid/view/View$OnClickListener;

.field private status_audio:Lcom/perm/kate/api/Audio;

.field private storiesClickListener:Landroid/view/View$OnClickListener;

.field private topicClickListener:Landroid/view/View$OnClickListener;

.field private tv_albums_count:Landroid/widget/TextView;

.field private tv_audios_count:Landroid/widget/TextView;

.field private tv_contacts_count:Landroid/widget/TextView;

.field private tv_docs_count:Landroid/widget/TextView;

.field private tv_links_count:Landroid/widget/TextView;

.field private tv_members_count:Landroid/widget/TextView;

.field private tv_photos_count:Landroid/widget/TextView;

.field private tv_podcasts_count:Landroid/widget/TextView;

.field private tv_topics_count:Landroid/widget/TextView;

.field private tv_videos_count:Landroid/widget/TextView;

.field private tv_wall_count:Landroid/widget/TextView;

.field protected uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

.field private user_id:Ljava/lang/Long;

.field private videoClickListener:Landroid/view/View$OnClickListener;

.field private wallClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public static synthetic $r8$lambda$XXdkgRgSa8-PuuKLPtguxtsveUo(Lcom/perm/kate/GroupActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/perm/kate/GroupActivity;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    .line 69
    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    const/4 v1, 0x0

    .line 70
    iput-boolean v1, p0, Lcom/perm/kate/GroupActivity;->is_join_group:Z

    .line 71
    iput-boolean v1, p0, Lcom/perm/kate/GroupActivity;->is_closed:Z

    .line 441
    new-instance v1, Lcom/perm/kate/GroupActivity$4;

    invoke-direct {v1, p0, p0}, Lcom/perm/kate/GroupActivity$4;-><init>(Lcom/perm/kate/GroupActivity;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/perm/kate/GroupActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 475
    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->is_messages_blocked:Ljava/lang/Integer;

    .line 477
    new-instance v0, Lcom/perm/kate/GroupActivity$5;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupActivity$5;-><init>(Lcom/perm/kate/GroupActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->callback_wall_count:Lcom/perm/kate/session/Callback;

    .line 534
    new-instance v0, Lcom/perm/kate/GroupActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$8;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->topicClickListener:Landroid/view/View$OnClickListener;

    .line 544
    new-instance v0, Lcom/perm/kate/GroupActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$9;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->goodsClickListener:Landroid/view/View$OnClickListener;

    .line 554
    new-instance v0, Lcom/perm/kate/GroupActivity$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$10;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->wallClickListener:Landroid/view/View$OnClickListener;

    .line 565
    new-instance v0, Lcom/perm/kate/GroupActivity$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$11;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->audioClickListener:Landroid/view/View$OnClickListener;

    .line 572
    new-instance v0, Lcom/perm/kate/GroupActivity$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$12;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->albumsClickListener:Landroid/view/View$OnClickListener;

    .line 579
    new-instance v0, Lcom/perm/kate/GroupActivity$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$13;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->allPhotosClickListener:Landroid/view/View$OnClickListener;

    .line 586
    new-instance v0, Lcom/perm/kate/GroupActivity$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$14;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->videoClickListener:Landroid/view/View$OnClickListener;

    .line 593
    new-instance v0, Lcom/perm/kate/GroupActivity$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$15;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->groupMenuClickListener:Landroid/view/View$OnClickListener;

    .line 604
    new-instance v0, Lcom/perm/kate/GroupActivity$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$16;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->joinClickListener:Landroid/view/View$OnClickListener;

    .line 611
    new-instance v0, Lcom/perm/kate/GroupActivity$17;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$17;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->membersClickListener:Landroid/view/View$OnClickListener;

    .line 618
    new-instance v0, Lcom/perm/kate/GroupActivity$18;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$18;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->contactsClickListener:Landroid/view/View$OnClickListener;

    .line 626
    new-instance v0, Lcom/perm/kate/GroupActivity$19;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$19;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->linksClickListener:Landroid/view/View$OnClickListener;

    .line 635
    new-instance v0, Lcom/perm/kate/GroupActivity$20;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$20;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->podcastsClickListener:Landroid/view/View$OnClickListener;

    .line 676
    new-instance v0, Lcom/perm/kate/GroupActivity$21;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$21;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->docsClickListener:Landroid/view/View$OnClickListener;

    .line 685
    new-instance v0, Lcom/perm/kate/GroupActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->storiesClickListener:Landroid/view/View$OnClickListener;

    .line 716
    new-instance v0, Lcom/perm/kate/GroupActivity$24;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupActivity$24;-><init>(Lcom/perm/kate/GroupActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->join_callback:Lcom/perm/kate/session/Callback;

    .line 1003
    new-instance v0, Lcom/perm/kate/GroupActivity$31;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupActivity$31;-><init>(Lcom/perm/kate/GroupActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->leave_callback:Lcom/perm/kate/session/Callback;

    .line 1022
    new-instance v0, Lcom/perm/kate/GroupActivity$32;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$32;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->descriptionLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1034
    new-instance v0, Lcom/perm/kate/GroupActivity$33;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$33;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->photoClickListener:Landroid/view/View$OnClickListener;

    .line 1096
    new-instance v0, Lcom/perm/kate/GroupActivity$34;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$34;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    .line 1107
    new-instance v0, Lcom/perm/kate/GroupActivity$35;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$35;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 1139
    new-instance v0, Lcom/perm/kate/GroupActivity$36;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupActivity$36;-><init>(Lcom/perm/kate/GroupActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->avatars_photos_callback:Lcom/perm/kate/session/Callback;

    .line 1159
    new-instance v0, Lcom/perm/kate/GroupActivity$38;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$38;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->statusClickListener:Landroid/view/View$OnClickListener;

    .line 1311
    new-instance v0, Lcom/perm/kate/GroupActivity$46;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$46;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->messageClick:Landroid/view/View$OnClickListener;

    .line 1325
    new-instance v0, Lcom/perm/kate/GroupActivity$47;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$47;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->messagesReadClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->coverClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->displayData()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->displayDataOnUiThread()V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/GroupActivity;JLjava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/GroupActivity;->displayBanInfoInUiThread(JLjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/GroupActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupActivity;->displayWallCountInUiThread(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/GroupActivity;JLjava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/GroupActivity;->displayBanInfo(JLjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/GroupActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupActivity;->displayWallCount(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/GroupActivity;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/perm/kate/GroupActivity;->is_suggest:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/api/Group;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showJoinDialog()V

    return-void
.end method

.method static synthetic access$1800(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showGroupMembers()V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showGroupContacts()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->refresh()V

    return-void
.end method

.method static synthetic access$2000(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showGroupLinks()V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showPodcasts()V

    return-void
.end method

.method static synthetic access$2200(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->joinGroup()V

    return-void
.end method

.method static synthetic access$2300(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/GroupActivity;->join_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/perm/kate/GroupActivity;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/perm/kate/GroupActivity;->is_closed:Z

    return p0
.end method

.method static synthetic access$2500(Lcom/perm/kate/GroupActivity;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupActivity;->subscribe(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showGroupSettingsActivity()V

    return-void
.end method

.method static synthetic access$2700(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showRequestsToGroupActivity()V

    return-void
.end method

.method static synthetic access$2800(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showManagementActivity()V

    return-void
.end method

.method static synthetic access$2900(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showGroupBlackList()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/GroupActivity;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/perm/kate/GroupActivity;->is_join_group:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showStatusAcivity()V

    return-void
.end method

.method static synthetic access$3100(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->leaveGroup()V

    return-void
.end method

.method static synthetic access$3200(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/GroupActivity;->leave_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->downloadAvatarsAlbum()V

    return-void
.end method

.method static synthetic access$3400(Lcom/perm/kate/GroupActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupActivity;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->refreshInThread()V

    return-void
.end method

.method static synthetic access$3600(Lcom/perm/kate/GroupActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupActivity;->showAvatarImage(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/GroupActivity;->avatars_photos_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showStatusDialog()V

    return-void
.end method

.method static synthetic access$3900(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->startDialogs()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$4000(Lcom/perm/kate/GroupActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showGroupTokenDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/GroupActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/GroupActivity;->contacts:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$602(Lcom/perm/kate/GroupActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->contacts:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/perm/kate/GroupActivity;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/GroupActivity;->links:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$702(Lcom/perm/kate/GroupActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->links:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/api/Audio;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/GroupActivity;->status_audio:Lcom/perm/kate/api/Audio;

    return-object p0
.end method

.method static synthetic access$802(Lcom/perm/kate/GroupActivity;Lcom/perm/kate/api/Audio;)Lcom/perm/kate/api/Audio;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->status_audio:Lcom/perm/kate/api/Audio;

    return-object p1
.end method

.method static synthetic access$902(Lcom/perm/kate/GroupActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->is_favorite:Ljava/lang/Integer;

    return-object p1
.end method

.method private adjustCoverViewSize()V
    .locals 2

    .line 178
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 180
    sget-boolean v1, Lcom/perm/kate/KApplication;->isTablet:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 182
    :goto_0
    sget-boolean v1, Lcom/perm/kate/KApplication;->isTablet:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    .line 183
    :goto_1
    div-int/2addr v0, v1

    .line 184
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->coverView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method private allowMessages()V
    .locals 1

    .line 864
    new-instance v0, Lcom/perm/kate/GroupActivity$26;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$26;-><init>(Lcom/perm/kate/GroupActivity;)V

    .line 876
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private choseSubscriptionType()V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const v1, 0x7f0f0334

    .line 882
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x7f0f0339

    .line 883
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 884
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f059d

    .line 885
    invoke-virtual {v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/perm/kate/GroupActivity$27;

    invoke-direct {v3, p0}, Lcom/perm/kate/GroupActivity$27;-><init>(Lcom/perm/kate/GroupActivity;)V

    .line 886
    invoke-virtual {v1, v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 901
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 902
    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 903
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private coverClick()V
    .locals 5

    .line 164
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    const-class v1, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 168
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 169
    new-instance v2, Lcom/perm/kate/api/Photo;

    invoke-direct {v2}, Lcom/perm/kate/api/Photo;-><init>()V

    .line 170
    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v3, Lcom/perm/kate/api/Group;->cover_800:Ljava/lang/String;

    iput-object v4, v2, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 171
    iget-object v3, v3, Lcom/perm/kate/api/Group;->cover_400:Ljava/lang/String;

    iput-object v3, v2, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    .line 172
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "com.perm.kate.photos"

    .line 173
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 174
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private denyMessages()V
    .locals 1

    .line 848
    new-instance v0, Lcom/perm/kate/GroupActivity$25;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$25;-><init>(Lcom/perm/kate/GroupActivity;)V

    .line 860
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private displayBanInfo(JLjava/lang/String;Ljava/lang/Integer;)V
    .locals 5

    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0f053d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ": "

    if-eqz p4, :cond_0

    .line 502
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f0f01a8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f030004

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    aget-object p4, v0, p4

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long p4, p1, v3

    if-lez p4, :cond_1

    .line 505
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f0f0065

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->getDate(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz p3, :cond_2

    .line 506
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_2

    .line 507
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p2, 0x7f0f04dd

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 508
    :cond_2
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 509
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    const/4 p3, 0x0

    const-string p4, "OK"

    invoke-virtual {p2, p4, p3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 510
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    const/4 p2, 0x1

    .line 511
    invoke-virtual {p1, p2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 512
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private displayBanInfoInUiThread(JLjava/lang/String;Ljava/lang/Integer;)V
    .locals 7

    .line 490
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 492
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupActivity$6;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/perm/kate/GroupActivity$6;-><init>(Lcom/perm/kate/GroupActivity;JLjava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displayData()V
    .locals 14

    .line 195
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchGroupFull(J)Lcom/perm/kate/api/Group;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    if-nez v0, :cond_0

    return-void

    .line 198
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->getIsSuggest()V

    .line 199
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v0, v0, Lcom/perm/kate/api/Group;->is_closed:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v0, v0, Lcom/perm/kate/api/Group;->is_closed:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/perm/kate/GroupActivity;->is_closed:Z

    const v0, 0x7f090239

    .line 200
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 201
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->verified:Ljava/lang/Integer;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_4

    .line 202
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 203
    iget-object v5, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v5, v5, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    const-string v6, "  "

    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 204
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, 0x7f0801ed

    goto :goto_2

    :cond_3
    const v5, 0x7f0801ee

    .line 205
    :goto_2
    new-instance v6, Landroid/text/style/ImageSpan;

    invoke-direct {v6, p0, v5, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v4, v6, v5, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 206
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v5, v5, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", \u0441\u0442\u0440\u0430\u043d\u0438\u0446\u0430 \u043f\u043e\u0434\u0442\u0432\u0435\u0440\u0436\u0434\u0435\u043d\u0430"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 209
    :cond_4
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    const v0, 0x7f090375

    .line 210
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 211
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v5, v4, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->is_closed:Ljava/lang/Integer;

    invoke-static {p0, v5, v4}, Lcom/perm/kate/GroupActivity;->getStringTypeGroup(Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0903da

    .line 212
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 213
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v1, :cond_5

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v1, v1, Lcom/perm/kate/api/Group;->start_date:Ljava/lang/Long;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-lez v1, :cond_5

    .line 214
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v1, v1, Lcom/perm/kate/api/Group;->start_date:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, p0}, Lcom/perm/kate/Helper;->getStringDate(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :cond_5
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/perm/kate/db/DataHelper;->isJoinGroup(JJ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/GroupActivity;->is_join_group:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    const v1, 0x7f090139

    .line 219
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 220
    iget-boolean v4, p0, Lcom/perm/kate/GroupActivity;->is_join_group:Z

    const/16 v5, 0x8

    if-eqz v4, :cond_7

    const/16 v4, 0x8

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const v4, 0x7f0901ae

    .line 221
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-boolean v6, p0, Lcom/perm/kate/GroupActivity;->is_closed:Z

    if-eqz v6, :cond_8

    const v6, 0x7f0f02a1

    goto :goto_6

    :cond_8
    const v6, 0x7f0f021b

    :goto_6
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 222
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v7

    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v8, v4, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    iget-object v9, p0, Lcom/perm/kate/GroupActivity;->photo:Landroid/widget/ImageView;

    const/4 v10, 0x1

    const/16 v11, 0x5a

    .line 223
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v12

    const/4 v13, 0x1

    .line 222
    invoke-virtual/range {v7 .. v13}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 225
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x17

    if-ne v4, v6, :cond_9

    .line 226
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v6, v4, Lcom/perm/kate/api/Group;->description:Ljava/lang/String;

    if-eqz v6, :cond_9

    const-string v7, "\u00ad"

    const-string v8, "-"

    .line 227
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/perm/kate/api/Group;->description:Ljava/lang/String;

    .line 228
    :cond_9
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->description:Ljava/lang/String;

    const v6, 0x7f090160

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_a

    const v4, 0x7f0901d1

    .line 229
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 230
    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 231
    new-instance v4, Landroid/text/SpannableStringBuilder;

    iget-object v7, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v7, v7, Lcom/perm/kate/api/Group;->description:Ljava/lang/String;

    invoke-direct {v4, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 235
    invoke-static {v4}, Lcom/perm/utils/Linkify;->addWebLinks(Landroid/text/Spannable;)V

    .line 236
    invoke-static {v4, p0, v2}, Lcom/perm/kate/NewsCursorAdapter;->spannableLink(Landroid/text/SpannableStringBuilder;Landroid/app/Activity;Z)V

    const v7, 0x7f090364

    .line 237
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 239
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v7, p0, Lcom/perm/kate/GroupActivity;->descriptionLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 243
    :cond_a
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->wiki_page:Ljava/lang/String;

    const v7, 0x7f09015f

    if-nez v4, :cond_b

    .line 244
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 245
    invoke-static {}, Lcom/perm/kate/GroupActivity;->isOldUI()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 247
    :cond_b
    invoke-virtual {p0, v7}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 248
    invoke-static {}, Lcom/perm/kate/GroupActivity;->isOldUI()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 251
    :cond_c
    :goto_7
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->tv_contacts_count:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/perm/kate/GroupActivity;->contacts:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v7, "0"

    if-eqz v6, :cond_d

    :try_start_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_d

    iget-object v6, p0, Lcom/perm/kate/GroupActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_8

    :cond_d
    move-object v6, v7

    :goto_8
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->tv_contacts_count:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->members_count:Ljava/lang/Integer;

    if-eqz v4, :cond_e

    .line 255
    iget-object v6, p0, Lcom/perm/kate/GroupActivity;->tv_members_count:Landroid/widget/TextView;

    if-eqz v6, :cond_e

    .line 256
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->tv_members_count:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 261
    :cond_e
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->tv_links_count:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/perm/kate/GroupActivity;->links:Ljava/util/ArrayList;

    if-eqz v6, :cond_f

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_f

    iget-object v6, p0, Lcom/perm/kate/GroupActivity;->links:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    :cond_f
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->tv_links_count:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/perm/kate/GroupActivity;->updateLabelStatus(Ljava/lang/String;)V

    .line 264
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->videos_count:Ljava/lang/Integer;

    if-eqz v4, :cond_10

    .line 265
    iget-object v6, p0, Lcom/perm/kate/GroupActivity;->tv_videos_count:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->tv_videos_count:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    :cond_10
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->topics_count:Ljava/lang/Integer;

    if-eqz v4, :cond_11

    .line 269
    iget-object v6, p0, Lcom/perm/kate/GroupActivity;->tv_topics_count:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->tv_topics_count:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    :cond_11
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->photos_count:Ljava/lang/Integer;

    if-eqz v4, :cond_12

    .line 273
    iget-object v6, p0, Lcom/perm/kate/GroupActivity;->tv_photos_count:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->tv_photos_count:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 276
    :cond_12
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->albums_count:Ljava/lang/Integer;

    if-eqz v4, :cond_13

    .line 277
    iget-object v6, p0, Lcom/perm/kate/GroupActivity;->tv_albums_count:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->tv_albums_count:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 280
    :cond_13
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->audios_count:Ljava/lang/Integer;

    if-eqz v4, :cond_14

    .line 281
    iget-object v6, p0, Lcom/perm/kate/GroupActivity;->tv_audios_count:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->tv_audios_count:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 284
    :cond_14
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v2, :cond_15

    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->docs_count:Ljava/lang/Integer;

    if-eqz v4, :cond_15

    .line 285
    iget-object v6, p0, Lcom/perm/kate/GroupActivity;->tv_docs_count:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->tv_docs_count:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_9

    .line 287
    :cond_15
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v2, :cond_16

    .line 288
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->docs:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 289
    invoke-static {}, Lcom/perm/kate/GroupActivity;->isOldUI()Z

    move-result v4

    if-eqz v4, :cond_16

    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->docs_separator:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 291
    :cond_16
    :goto_9
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->podcasts_count:Ljava/lang/Integer;

    if-eqz v4, :cond_17

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_17

    const v4, 0x7f090279

    .line 292
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 293
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->tv_podcasts_count:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v6, v6, Lcom/perm/kate/api/Group;->podcasts_count:Ljava/lang/Integer;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v4, 0x7f09027a

    .line 294
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_17

    .line 296
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 298
    :cond_17
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->posts_count:Ljava/lang/Integer;

    invoke-direct {p0, v4}, Lcom/perm/kate/GroupActivity;->displayWallCount(Ljava/lang/Integer;)V

    const v4, 0x7f090138

    .line 299
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 300
    iget-object v6, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v6, v6, Lcom/perm/kate/api/Group;->can_message:Ljava/lang/Boolean;

    if-eqz v6, :cond_18

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_18

    const/4 v6, 0x1

    goto :goto_a

    :cond_18
    const/4 v6, 0x0

    :goto_a
    if-eqz v6, :cond_19

    .line 302
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 303
    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget-object v7, p0, Lcom/perm/kate/GroupActivity;->messageClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v7, 0x4020000000000000L    # 8.0

    invoke-static {v7, v8}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_b

    .line 306
    :cond_19
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 307
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    :goto_b
    const v1, 0x7f0900a2

    .line 311
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v0, :cond_1b

    if-eqz v6, :cond_1a

    goto :goto_c

    .line 315
    :cond_1a
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d

    .line 313
    :cond_1b
    :goto_c
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_d
    const v0, 0x7f09022e

    .line 318
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090296

    .line 319
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 320
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->can_message:Ljava/lang/Boolean;

    if-eqz v4, :cond_1c

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1c

    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v6, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    iget-object v7, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-virtual {v4, v6, v7, v8}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 321
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->messagesReadClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 323
    invoke-static {}, Lcom/perm/kate/GroupActivity;->isOldUI()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_e

    .line 325
    :cond_1c
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 326
    invoke-static {}, Lcom/perm/kate/GroupActivity;->isOldUI()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 329
    :cond_1d
    :goto_e
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v0, v0, Lcom/perm/kate/api/Group;->market_enabled:Ljava/lang/Boolean;

    const v1, 0x7f09015a

    const v4, 0x7f090159

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v2, :cond_1e

    .line 330
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 331
    invoke-static {}, Lcom/perm/kate/GroupActivity;->isOldUI()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_f

    .line 333
    :cond_1e
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 334
    invoke-static {}, Lcom/perm/kate/GroupActivity;->isOldUI()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 337
    :cond_1f
    :goto_f
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->getCoverUrl()Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 339
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->coverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 340
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->coverView:Landroid/widget/ImageView;

    const/4 v4, 0x1

    const/16 v5, 0x320

    invoke-static {}, Lcom/perm/kate/Helper;->getSquareStubId()I

    move-result v6

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    goto :goto_10

    .line 342
    :cond_20
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->coverView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_10

    :catchall_0
    move-exception v0

    .line 345
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 346
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_10
    return-void
.end method

.method private displayDataOnUiThread()V
    .locals 1

    .line 408
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 410
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$2;-><init>(Lcom/perm/kate/GroupActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displayWallCount(Ljava/lang/Integer;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 529
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->tv_wall_count:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object p1, p0, Lcom/perm/kate/GroupActivity;->tv_wall_count:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private displayWallCountInUiThread(Ljava/lang/Integer;)V
    .locals 1

    .line 516
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 518
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/GroupActivity$7;-><init>(Lcom/perm/kate/GroupActivity;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private downloadAvatarsAlbum()V
    .locals 1

    const/4 v0, 0x1

    .line 1149
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 1150
    new-instance v0, Lcom/perm/kate/GroupActivity$37;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$37;-><init>(Lcom/perm/kate/GroupActivity;)V

    .line 1156
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private editPhotoBeforeUpload(Ljava/util/ArrayList;)V
    .locals 2

    .line 1115
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uris"

    .line 1116
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 1117
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private faveAddGroup()V
    .locals 2

    .line 1251
    new-instance v0, Lcom/perm/kate/GroupActivity$42;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupActivity$42;-><init>(Lcom/perm/kate/GroupActivity;Landroid/app/Activity;)V

    const/4 v1, 0x1

    .line 1268
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 1269
    new-instance v1, Lcom/perm/kate/GroupActivity$43;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/GroupActivity$43;-><init>(Lcom/perm/kate/GroupActivity;Lcom/perm/kate/session/Callback;)V

    .line 1274
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private faveRemoveGroup()V
    .locals 2

    .line 1278
    new-instance v0, Lcom/perm/kate/GroupActivity$44;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupActivity$44;-><init>(Lcom/perm/kate/GroupActivity;Landroid/app/Activity;)V

    const/4 v1, 0x1

    .line 1295
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 1296
    new-instance v1, Lcom/perm/kate/GroupActivity$45;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/GroupActivity$45;-><init>(Lcom/perm/kate/GroupActivity;Lcom/perm/kate/session/Callback;)V

    .line 1301
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private getCoverUrl()Ljava/lang/String;
    .locals 2

    .line 352
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 353
    sget-boolean v1, Lcom/perm/kate/KApplication;->isTablet:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 354
    :goto_0
    div-int/lit8 v0, v0, 0x3

    const/16 v1, 0x190

    if-le v0, v1, :cond_1

    .line 355
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v0, v0, Lcom/perm/kate/api/Group;->cover_800:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v0, v0, Lcom/perm/kate/api/Group;->cover_400:Ljava/lang/String;

    :goto_1
    return-object v0
.end method

.method private getIsSuggest()V
    .locals 5

    .line 400
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v0, v0, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 402
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 404
    :cond_1
    iput-boolean v1, p0, Lcom/perm/kate/GroupActivity;->is_suggest:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static getStringTypeGroup(Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p0, ""

    goto/16 :goto_0

    .line 377
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const p1, 0x7f0f0278

    .line 378
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 379
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    if-eqz p2, :cond_2

    .line 380
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f0f0259

    .line 381
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    .line 382
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_3

    const p1, 0x7f0f01d2

    .line 383
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_3
    const p1, 0x7f0f01fb

    .line 385
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    .line 387
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_5

    const p1, 0x7f0f025a

    .line 388
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    .line 389
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_6

    const p1, 0x7f0f01d3

    .line 390
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_6
    if-eqz p2, :cond_7

    .line 391
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_7

    const p1, 0x7f0f0274

    .line 392
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_7
    const p1, 0x7f0f0108

    .line 394
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private groupsInvite(Ljava/util/ArrayList;)V
    .locals 2

    .line 1200
    new-instance v0, Lcom/perm/kate/GroupActivity$40;

    invoke-direct {v0, p0, p0, p1}, Lcom/perm/kate/GroupActivity$40;-><init>(Lcom/perm/kate/GroupActivity;Landroid/app/Activity;Ljava/util/ArrayList;)V

    const/4 v1, 0x1

    .line 1219
    invoke-virtual {p0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 1220
    new-instance v1, Lcom/perm/kate/GroupActivity$41;

    invoke-direct {v1, p0, p1, v0}, Lcom/perm/kate/GroupActivity$41;-><init>(Lcom/perm/kate/GroupActivity;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;)V

    .line 1226
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static isOldUI()Z
    .locals 3

    .line 1373
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "old_group_1"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private joinGroup()V
    .locals 1

    const/4 v0, 0x1

    .line 707
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 708
    new-instance v0, Lcom/perm/kate/GroupActivity$23;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$23;-><init>(Lcom/perm/kate/GroupActivity;)V

    .line 713
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 3

    .line 686
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/perm/kate/StoriesActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 687
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    const-string v2, "owner_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 688
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private leaveGroup()V
    .locals 1

    const/4 v0, 0x1

    .line 994
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 995
    new-instance v0, Lcom/perm/kate/GroupActivity$30;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$30;-><init>(Lcom/perm/kate/GroupActivity;)V

    .line 1000
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private refresh()V
    .locals 7

    const/4 v0, 0x1

    .line 429
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 430
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 431
    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->callback:Lcom/perm/kate/session/Callback;

    const-string v4, "description,wiki_page,can_see_all_posts,contacts,members_count,links,start_date,status,counters,is_favorite,ban_info,verified,can_message,market,cover,is_messages_blocked"

    invoke-virtual {v2, v1, v4, v3, p0}, Lcom/perm/kate/session/Session;->getGroups(Ljava/util/ArrayList;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 433
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v1, :cond_0

    return-void

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/32 v3, 0x18daf37

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 438
    :goto_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    mul-long v2, v2, v5

    iget-object v5, p0, Lcom/perm/kate/GroupActivity;->callback_wall_count:Lcom/perm/kate/session/Callback;

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/session/Session;->getWallCount(JZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method

.method private refreshInThread()V
    .locals 1

    const/4 v0, 0x1

    .line 419
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 420
    new-instance v0, Lcom/perm/kate/GroupActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$3;-><init>(Lcom/perm/kate/GroupActivity;)V

    .line 425
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private showAvatarImage(Ljava/util/ArrayList;)V
    .locals 4

    .line 1121
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1123
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1124
    const-class v1, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    if-nez p1, :cond_1

    .line 1126
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1127
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 1128
    new-instance v1, Lcom/perm/kate/api/Photo;

    invoke-direct {v1}, Lcom/perm/kate/api/Photo;-><init>()V

    .line 1129
    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v3, v2, Lcom/perm/kate/api/Group;->photo_big:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1130
    iput-object v3, v1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    goto :goto_0

    .line 1132
    :cond_2
    iget-object v2, v2, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    iput-object v2, v1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 1133
    :goto_0
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string v1, "com.perm.kate.photos"

    .line 1135
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1136
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showEditOptionsDialog()V
    .locals 5

    .line 913
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 914
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 915
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f00d0

    const/16 v3, 0xb

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 916
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->isAdminInGroup(Ljava/lang/Long;J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 917
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f04f0

    const/16 v3, 0xc

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0500

    const/16 v3, 0x12

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 920
    :cond_1
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->isModerInGroup(Ljava/lang/Long;J)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 921
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v1, v1, Lcom/perm/kate/api/Group;->is_closed:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    .line 922
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f02a2

    const/16 v3, 0x11

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 923
    :cond_3
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f01b6

    const/16 v3, 0x8

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 925
    :cond_4
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 926
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f023d

    const/16 v3, 0x13

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    :cond_5
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0247

    .line 928
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 929
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/GroupActivity$28;

    invoke-direct {v3, p0, v0}, Lcom/perm/kate/GroupActivity$28;-><init>(Lcom/perm/kate/GroupActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 954
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 955
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 956
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showGroupBlackList()V
    .locals 3

    .line 975
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 976
    const-class v1, Lcom/perm/kate/GroupBannedActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 977
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    const-string v2, "com.perm.kate.group_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 978
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showGroupContacts()V
    .locals 3

    .line 659
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 660
    const-class v1, Lcom/perm/kate/GroupContactsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 661
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->contacts:Ljava/util/ArrayList;

    const-string v2, "com.perm.kate.contacts"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 662
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showGroupLinks()V
    .locals 5

    .line 666
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 667
    const-class v1, Lcom/perm/kate/GroupLinksActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 668
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    const-string v2, "com.perm.kate.group_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 669
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->links:Ljava/util/ArrayList;

    const-string v2, "com.perm.kate.links"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 670
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->isAdminInGroup(Ljava/lang/Long;J)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    .line 671
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 673
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method private showGroupMembers()V
    .locals 3

    .line 650
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 651
    const-class v1, Lcom/perm/kate/GroupMembersActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 652
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    const-string v2, "com.perm.kate.gid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 653
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    const-string v2, "com.perm.kate.is_event"

    .line 654
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 655
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showGroupSettingsActivity()V
    .locals 3

    .line 1237
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/EditGroupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1238
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    const-string v2, "com.perm.kate.group_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1239
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1240
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "com.perm.kate.group_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/4 v1, 0x2

    .line 1241
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showGroupTokenDialog()V
    .locals 4

    .line 1345
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f010a

    .line 1346
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1347
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0099

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09033e

    .line 1348
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1349
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1350
    new-instance v1, Lcom/perm/kate/GroupActivity$48;

    invoke-direct {v1, p0, v2}, Lcom/perm/kate/GroupActivity$48;-><init>(Lcom/perm/kate/GroupActivity;Landroid/widget/EditText;)V

    const v2, 0x7f0f0398

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f0f01c5

    .line 1359
    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1360
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 1361
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1362
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showJoinDialog()V
    .locals 4

    .line 692
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0159

    .line 695
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f021b

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/GroupActivity$22;

    invoke-direct {v2, p0}, Lcom/perm/kate/GroupActivity$22;-><init>(Lcom/perm/kate/GroupActivity;)V

    const v3, 0x7f0f05a7

    .line 696
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f037a

    const/4 v3, 0x0

    .line 701
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 703
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showLeaveDialog()V
    .locals 4

    .line 982
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f030a

    .line 983
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0221

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/GroupActivity$29;

    invoke-direct {v2, p0}, Lcom/perm/kate/GroupActivity$29;-><init>(Lcom/perm/kate/GroupActivity;)V

    const v3, 0x7f0f05a7

    .line 984
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f037a

    const/4 v3, 0x0

    .line 989
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 990
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showManagementActivity()V
    .locals 5

    .line 960
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 961
    const-class v1, Lcom/perm/kate/GroupManagementActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 962
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    const-string v2, "com.perm.kate.group_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 963
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->contacts:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 964
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 965
    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Contact;

    .line 966
    iget-object v4, v3, Lcom/perm/kate/api/Contact;->user_id:Ljava/lang/Long;

    if-eqz v4, :cond_0

    .line 967
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v2, "com.perm.kate.contacts"

    .line 969
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 971
    :cond_2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showMembersActivity()V
    .locals 3

    .line 1193
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1194
    const-class v1, Lcom/perm/kate/CheckMembersActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.friends_invite"

    const/4 v2, 0x1

    .line 1195
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1196
    invoke-virtual {p0, v0, v2}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showPodcasts()V
    .locals 5

    .line 643
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 644
    const-class v1, Lcom/perm/kate/PodcastsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 645
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, -0x1

    mul-long v1, v1, v3

    const-string v3, "com.perm.kate.owner_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 646
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showRequestsToGroupActivity()V
    .locals 3

    .line 1245
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/RequestsToGroupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1246
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    const-string v2, "com.perm.kate.group_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1247
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showStatsActivity()V
    .locals 3

    .line 1230
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1231
    const-class v1, Lcom/perm/kate/StatsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1232
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    const-string v2, "com.perm.kate.group_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1233
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private showStatusAcivity()V
    .locals 3

    .line 1305
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1306
    const-class v1, Lcom/perm/kate/StatusActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1307
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    const-string v2, "com.perm.kate.group_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 1308
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showStatusDialog()V
    .locals 3

    .line 1178
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v1, v1, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    .line 1179
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f0086

    const/4 v2, 0x0

    .line 1180
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/perm/kate/GroupActivity$39;

    invoke-direct {v1, p0}, Lcom/perm/kate/GroupActivity$39;-><init>(Lcom/perm/kate/GroupActivity;)V

    const v2, 0x7f0f01d9

    .line 1181
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 1187
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 1188
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1189
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private startDialogs()V
    .locals 3

    .line 1366
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1367
    const-class v1, Lcom/perm/kate/DialogsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1368
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    const-string v2, "group_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1369
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private subscribe(I)V
    .locals 3

    .line 907
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    neg-long v1, v1

    invoke-virtual {v0, v1, v2, p1}, Lcom/perm/utils/WallSubscriptions;->subscribe(JI)V

    .line 908
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->ensureRegularRefreshEnabled()V

    const p1, 0x7f0f059b

    .line 909
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return-void
.end method

.method private updateLabelStatus(Ljava/lang/String;)V
    .locals 2

    .line 359
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->label_status:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->status_audio:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_0

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\ud83d\udce2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 366
    :cond_0
    invoke-static {p0, p1}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 367
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->label_status:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 370
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/GroupActivity;->label_status:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/16 v2, 0x3e9

    const v3, 0x7f0f0422

    .line 757
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    const/4 v1, 0x4

    const/16 v2, 0x3ea

    const v3, 0x7f0f01db

    .line 758
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 759
    iget-boolean v1, p0, Lcom/perm/kate/GroupActivity;->is_join_group:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x3eb

    const v3, 0x7f0f0221

    .line 760
    invoke-interface {p1, v0, v2, v1, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_0
    const/16 v1, 0x3e8

    const/16 v3, 0x3ed

    const v4, 0x7f0f025d

    .line 761
    invoke-interface {p1, v0, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 762
    iget-boolean v1, p0, Lcom/perm/kate/GroupActivity;->is_join_group:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v1, v1, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v1, v1, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v1, v1, Lcom/perm/kate/api/Group;->start_date:Ljava/lang/Long;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    :cond_1
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    .line 763
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->isModerInGroup(Ljava/lang/Long;J)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/perm/kate/GroupActivity;->is_closed:Z

    if-nez v1, :cond_3

    :cond_2
    const/16 v1, 0xe

    const/16 v2, 0x3f7

    const v3, 0x7f0f0219

    .line 764
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 765
    :cond_3
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x10

    const/16 v2, 0x3f9

    const v3, 0x7f0f04f1

    .line 766
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 767
    :cond_4
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/perm/kate/db/DataHelper;->isModerInGroup(Ljava/lang/Long;J)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    const/16 v1, 0xa

    const/16 v2, 0x457

    const v3, 0x7f0f0247

    .line 768
    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 769
    :cond_6
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->is_favorite:Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    .line 770
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x1b6f

    if-ne v1, v2, :cond_7

    const/16 v1, 0x400

    const v4, 0x7f0f029b

    .line 771
    invoke-interface {p1, v0, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    :cond_7
    const/16 v1, 0x3ff

    const v4, 0x7f0f0186

    .line 773
    invoke-interface {p1, v0, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 775
    :cond_8
    :goto_0
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object v1

    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    neg-long v3, v3

    invoke-virtual {v1, v3, v4}, Lcom/perm/utils/WallSubscriptions;->subscribed(J)Z

    move-result v1

    const/16 v3, 0x1b70

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/perm/kate/UpdateService;->regularRefreshEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    const/16 v1, 0x402

    const v4, 0x7f0f059c

    .line 778
    invoke-interface {p1, v0, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2

    :cond_a
    :goto_1
    const/16 v1, 0x401

    const v4, 0x7f0f059d

    .line 776
    invoke-interface {p1, v0, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 781
    :goto_2
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    if-eqz v1, :cond_c

    iget-object v1, v1, Lcom/perm/kate/api/Group;->can_message:Ljava/lang/Boolean;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 782
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->is_messages_blocked:Ljava/lang/Integer;

    if-eqz v1, :cond_c

    .line 783
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v3, 0x1b76

    if-ne v1, v2, :cond_b

    const/16 v1, 0x403

    const v4, 0x7f0f0049

    .line 784
    invoke-interface {p1, v0, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_3

    :cond_b
    const/16 v1, 0x404

    const v4, 0x7f0f00c0

    .line 786
    invoke-interface {p1, v0, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    :cond_c
    :goto_3
    const/16 v1, 0x405

    const/16 v3, 0x1b80

    const v4, 0x7f0f0037

    .line 788
    invoke-interface {p1, v0, v1, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return v2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 1050
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    invoke-static {p0, p1, p2, p3, v0}, Lcom/perm/kate/photoupload/PhotoChooser;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/perm/kate/photoupload/PhotoChooser$Callback;)Landroid/net/Uri;

    const/4 v0, 0x2

    const/4 v1, -0x1

    if-nez p1, :cond_0

    if-ne p2, v1, :cond_0

    const-string v2, "uris"

    .line 1052
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const-string v3, "resize_option"

    .line 1053
    invoke-virtual {p3, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v0, "rotate"

    const/4 v3, 0x0

    .line 1054
    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1055
    new-instance v0, Lcom/perm/kate/photoupload/AvatarUploader;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/net/Uri;

    iget-object v8, p0, Lcom/perm/kate/GroupActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/perm/kate/photoupload/AvatarUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;ILcom/perm/kate/photoupload/UploadCallback;I)V

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/perm/kate/photoupload/AvatarUploader;->upload(Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 1057
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->refreshInThread()V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_3

    if-eqz p3, :cond_3

    const-string v2, "com.perm.kate.user_ids"

    .line 1061
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1062
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_3

    .line 1064
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1065
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1066
    :cond_2
    invoke-direct {p0, v3}, Lcom/perm/kate/GroupActivity;->groupsInvite(Ljava/util/ArrayList;)V

    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_4

    if-ne p2, v1, :cond_4

    if-eqz p3, :cond_4

    .line 1072
    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    const-string v3, "new_status"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    .line 1073
    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/perm/kate/GroupActivity;->updateLabelStatus(Ljava/lang/String;)V

    .line 1074
    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    invoke-static {v2}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/16 v2, -0x1

    .line 1075
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long v4, v4, v2

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    invoke-static {p0, v4, v5, v2, v0}, Lcom/perm/kate/Helper;->showPublishStatusDialog(Landroid/app/Activity;JLjava/lang/String;Z)V

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    if-ne p2, v1, :cond_6

    if-eqz p3, :cond_5

    const-string v0, "links"

    .line 1080
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 1082
    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->links:Ljava/util/ArrayList;

    .line 1083
    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->tv_links_count:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1086
    :cond_5
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->refreshInThread()V

    :cond_6
    :goto_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_7

    if-ne p2, v1, :cond_7

    const-string v0, "access_token"

    .line 1089
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1090
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/perm/kate/KApplication;->addGroupToken(Ljava/lang/String;J)V

    .line 1091
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->startDialogs()V

    .line 1093
    :cond_7
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 98
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez p1, :cond_0

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 103
    :cond_0
    invoke-static {}, Lcom/perm/kate/GroupActivity;->isOldUI()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0c009a

    goto :goto_0

    :cond_1
    const p1, 0x7f0c0093

    :goto_0
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0108

    .line 104
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 105
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 106
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupRefreshButton()V

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-wide/16 v0, 0x0

    const-string v2, "com.perm.kate.group_id"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    .line 108
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    const p1, 0x7f090342

    .line 109
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->topicClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090159

    .line 110
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->goodsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090419

    .line 111
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->wallClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090049

    .line 112
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->audioClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09003c

    .line 113
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->albumsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090040

    .line 114
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->allPhotosClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090409

    .line 115
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->videoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901ae

    .line 116
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->joinClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901db

    .line 117
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->membersClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901cd

    .line 118
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->contactsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0901d9

    .line 119
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->linksClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090279

    .line 120
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->podcastsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900f7

    .line 121
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->docs:Landroid/view/View;

    .line 122
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->docsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0900f8

    .line 123
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->docs_separator:Landroid/view/View;

    const p1, 0x7f09015f

    .line 124
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->groupMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09026d

    .line 125
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->photo:Landroid/widget/ImageView;

    .line 126
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->photoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09038b

    .line 127
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->tv_members_count:Landroid/widget/TextView;

    const p1, 0x7f090360

    .line 128
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->tv_contacts_count:Landroid/widget/TextView;

    const p1, 0x7f090385

    .line 129
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->tv_links_count:Landroid/widget/TextView;

    const p1, 0x7f0901af

    .line 130
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->label_status:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->statusClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0903ec

    .line 132
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->tv_videos_count:Landroid/widget/TextView;

    const p1, 0x7f0903e0

    .line 133
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->tv_topics_count:Landroid/widget/TextView;

    const p1, 0x7f090397

    .line 134
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->tv_photos_count:Landroid/widget/TextView;

    const p1, 0x7f09034f

    .line 135
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->tv_albums_count:Landroid/widget/TextView;

    const p1, 0x7f090357

    .line 136
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->tv_audios_count:Landroid/widget/TextView;

    const p1, 0x7f090367

    .line 137
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->tv_docs_count:Landroid/widget/TextView;

    const p1, 0x7f0903ed

    .line 138
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->tv_wall_count:Landroid/widget/TextView;

    const p1, 0x7f09039a

    .line 139
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->tv_podcasts_count:Landroid/widget/TextView;

    const p1, 0x7f0900e0

    .line 140
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->coverView:Landroid/widget/ImageView;

    const p1, 0x7f09030e

    .line 143
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 146
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->storiesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->adjustCoverViewSize()V

    .line 150
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->displayData()V

    .line 151
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->refreshInThread()V

    .line 152
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setButtonsBg()V

    .line 153
    iget-object p1, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    invoke-static {p1}, Lcom/perm/kate/history/History;->addGroup(Lcom/perm/kate/api/Group;)V

    .line 155
    iget-object p1, p0, Lcom/perm/kate/GroupActivity;->coverView:Landroid/widget/ImageView;

    new-instance v0, Lcom/perm/kate/GroupActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$1;-><init>(Lcom/perm/kate/GroupActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5

    .line 794
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/16 v1, 0xa

    if-eq v0, v1, :cond_4

    const/16 v1, 0xe

    if-eq v0, v1, :cond_3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 841
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/perm/utils/ShortcutHelper;->createGroupShortcutIcon(Landroid/app/Activity;J)V

    .line 844
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 838
    :pswitch_1
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->denyMessages()V

    return v2

    .line 835
    :pswitch_2
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->allowMessages()V

    return v2

    .line 830
    :pswitch_3
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/perm/utils/WallSubscriptions;->unsubscribe(J)V

    .line 831
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->disableRegularRefreshIfRequired()V

    const p1, 0x7f0f059a

    .line 832
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    return v2

    .line 824
    :pswitch_4
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v0, v3, v4}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object p1, p1, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_0

    .line 825
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->choseSubscriptionType()V

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    .line 827
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupActivity;->subscribe(I)V

    :goto_1
    return v2

    .line 818
    :pswitch_5
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->faveRemoveGroup()V

    return v2

    .line 821
    :pswitch_6
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->faveAddGroup()V

    return v2

    .line 805
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V


    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 806
    invoke-static {p1, p0}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    return v2

    .line 812
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showStatsActivity()V

    return v2

    .line 809
    :cond_3
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showMembersActivity()V

    return v2

    .line 815
    :cond_4
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showEditOptionsDialog()V

    return v2

    .line 802
    :cond_5
    iget-object p1, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/perm/kate/Helper;->copyGroupLink(JLandroid/content/Context;)V

    return v2

    .line 799
    :cond_6
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->refreshInThread()V

    return v2

    .line 796
    :cond_7
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showLeaveDialog()V

    return v2

    :pswitch_data_0
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

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 741
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 742
    invoke-virtual {p0, p1}, Lcom/perm/kate/GroupActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 743
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onRefreshButton()V
    .locals 0

    .line 190
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->refreshInThread()V

    return-void
.end method

.method protected showMessageThread()V
    .locals 4

    .line 1319
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1320
    const-class v1, Lcom/perm/kate/MessageThreadActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1321
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/perm/kate/api/User;->groupIdToVirtualUserId(J)J

    move-result-wide v1

    const-string v3, "com.perm.kate.message_uid"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1322
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
