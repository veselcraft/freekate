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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Contact;",
            ">;"
        }
    .end annotation
.end field

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

.field private invite_callback:Lcom/perm/kate/session/Callback;

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Link;",
            ">;"
        }
    .end annotation
.end field

.field private linksClickListener:Landroid/view/View$OnClickListener;

.field private membersClickListener:Landroid/view/View$OnClickListener;

.field private messageClick:Landroid/view/View$OnClickListener;

.field private messagesReadClick:Landroid/view/View$OnClickListener;

.field private photo:Landroid/widget/ImageView;

.field private photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

.field private photoClickListener:Landroid/view/View$OnClickListener;

.field private statusClickListener:Landroid/view/View$OnClickListener;

.field private status_audio:Lcom/perm/kate/api/Audio;

.field private topicClickListener:Landroid/view/View$OnClickListener;

.field private tv_albums_count:Landroid/widget/TextView;

.field private tv_audios_count:Landroid/widget/TextView;

.field private tv_contacts_count:Landroid/widget/TextView;

.field private tv_docs_count:Landroid/widget/TextView;

.field private tv_links_count:Landroid/widget/TextView;

.field private tv_members_count:Landroid/widget/TextView;

.field private tv_photos_count:Landroid/widget/TextView;

.field private tv_topics_count:Landroid/widget/TextView;

.field private tv_videos_count:Landroid/widget/TextView;

.field private tv_wall_count:Landroid/widget/TextView;

.field protected uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

.field private user_id:Ljava/lang/Long;

.field private videoClickListener:Landroid/view/View$OnClickListener;

.field private wallClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 49
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 65
    iput-object v1, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    .line 66
    iput-object v1, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    .line 67
    iput-boolean v0, p0, Lcom/perm/kate/GroupActivity;->is_join_group:Z

    .line 68
    iput-boolean v0, p0, Lcom/perm/kate/GroupActivity;->is_closed:Z

    .line 413
    new-instance v0, Lcom/perm/kate/GroupActivity$4;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupActivity$4;-><init>(Lcom/perm/kate/GroupActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->callback:Lcom/perm/kate/session/Callback;

    .line 447
    iput-object v1, p0, Lcom/perm/kate/GroupActivity;->is_messages_blocked:Ljava/lang/Integer;

    .line 449
    new-instance v0, Lcom/perm/kate/GroupActivity$5;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupActivity$5;-><init>(Lcom/perm/kate/GroupActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->callback_wall_count:Lcom/perm/kate/session/Callback;

    .line 505
    new-instance v0, Lcom/perm/kate/GroupActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$8;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->topicClickListener:Landroid/view/View$OnClickListener;

    .line 515
    new-instance v0, Lcom/perm/kate/GroupActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$9;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->goodsClickListener:Landroid/view/View$OnClickListener;

    .line 525
    new-instance v0, Lcom/perm/kate/GroupActivity$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$10;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->wallClickListener:Landroid/view/View$OnClickListener;

    .line 536
    new-instance v0, Lcom/perm/kate/GroupActivity$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$11;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->audioClickListener:Landroid/view/View$OnClickListener;

    .line 543
    new-instance v0, Lcom/perm/kate/GroupActivity$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$12;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->albumsClickListener:Landroid/view/View$OnClickListener;

    .line 550
    new-instance v0, Lcom/perm/kate/GroupActivity$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$13;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->allPhotosClickListener:Landroid/view/View$OnClickListener;

    .line 557
    new-instance v0, Lcom/perm/kate/GroupActivity$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$14;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->videoClickListener:Landroid/view/View$OnClickListener;

    .line 564
    new-instance v0, Lcom/perm/kate/GroupActivity$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$15;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->groupMenuClickListener:Landroid/view/View$OnClickListener;

    .line 575
    new-instance v0, Lcom/perm/kate/GroupActivity$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$16;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->joinClickListener:Landroid/view/View$OnClickListener;

    .line 582
    new-instance v0, Lcom/perm/kate/GroupActivity$17;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$17;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->membersClickListener:Landroid/view/View$OnClickListener;

    .line 589
    new-instance v0, Lcom/perm/kate/GroupActivity$18;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$18;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->contactsClickListener:Landroid/view/View$OnClickListener;

    .line 597
    new-instance v0, Lcom/perm/kate/GroupActivity$19;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$19;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->linksClickListener:Landroid/view/View$OnClickListener;

    .line 633
    new-instance v0, Lcom/perm/kate/GroupActivity$20;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$20;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->docsClickListener:Landroid/view/View$OnClickListener;

    .line 667
    new-instance v0, Lcom/perm/kate/GroupActivity$23;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupActivity$23;-><init>(Lcom/perm/kate/GroupActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->join_callback:Lcom/perm/kate/session/Callback;

    .line 949
    new-instance v0, Lcom/perm/kate/GroupActivity$30;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupActivity$30;-><init>(Lcom/perm/kate/GroupActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->leave_callback:Lcom/perm/kate/session/Callback;

    .line 968
    new-instance v0, Lcom/perm/kate/GroupActivity$31;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$31;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->descriptionLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 980
    new-instance v0, Lcom/perm/kate/GroupActivity$32;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$32;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->photoClickListener:Landroid/view/View$OnClickListener;

    .line 1038
    new-instance v0, Lcom/perm/kate/GroupActivity$33;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$33;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    .line 1049
    new-instance v0, Lcom/perm/kate/GroupActivity$34;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$34;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 1081
    new-instance v0, Lcom/perm/kate/GroupActivity$35;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupActivity$35;-><init>(Lcom/perm/kate/GroupActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->avatars_photos_callback:Lcom/perm/kate/session/Callback;

    .line 1101
    new-instance v0, Lcom/perm/kate/GroupActivity$37;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$37;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->statusClickListener:Landroid/view/View$OnClickListener;

    .line 1153
    new-instance v0, Lcom/perm/kate/GroupActivity$40;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupActivity$40;-><init>(Lcom/perm/kate/GroupActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->invite_callback:Lcom/perm/kate/session/Callback;

    .line 1244
    new-instance v0, Lcom/perm/kate/GroupActivity$45;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$45;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->messageClick:Landroid/view/View$OnClickListener;

    .line 1258
    new-instance v0, Lcom/perm/kate/GroupActivity$46;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$46;-><init>(Lcom/perm/kate/GroupActivity;)V

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->messagesReadClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/GroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->coverClick()V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/GroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->displayData()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/GroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->displayDataOnUiThread()V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/GroupActivity;JLjava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/Integer;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/GroupActivity;->displayBanInfoInUiThread(JLjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/GroupActivity;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupActivity;->displayWallCountInUiThread(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/GroupActivity;JLjava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # Ljava/lang/Integer;

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/perm/kate/GroupActivity;->displayBanInfo(JLjava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/GroupActivity;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupActivity;->displayWallCount(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/GroupActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/perm/kate/GroupActivity;->is_suggest:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/api/Group;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/perm/kate/GroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showJoinDialog()V

    return-void
.end method

.method static synthetic access$1800(Lcom/perm/kate/GroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showGroupMembers()V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/GroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showGroupContacts()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/GroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->refresh()V

    return-void
.end method

.method static synthetic access$2000(Lcom/perm/kate/GroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showGroupLinks()V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/GroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->joinGroup()V

    return-void
.end method

.method static synthetic access$2200(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->join_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/perm/kate/GroupActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/perm/kate/GroupActivity;->is_closed:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/perm/kate/GroupActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;
    .param p1, "x1"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupActivity;->subscribe(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/perm/kate/GroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showGroupSettingsActivity()V

    return-void
.end method

.method static synthetic access$2600(Lcom/perm/kate/GroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showRequestsToGroupActivity()V

    return-void
.end method

.method static synthetic access$2700(Lcom/perm/kate/GroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showManagementActivity()V

    return-void
.end method

.method static synthetic access$2800(Lcom/perm/kate/GroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showGroupBlackList()V

    return-void
.end method

.method static synthetic access$2900(Lcom/perm/kate/GroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showStatusAcivity()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/GroupActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/perm/kate/GroupActivity;->is_join_group:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/perm/kate/GroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->leaveGroup()V

    return-void
.end method

.method static synthetic access$3100(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->leave_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/perm/kate/GroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->downloadAvatarsAlbum()V

    return-void
.end method

.method static synthetic access$3300(Lcom/perm/kate/GroupActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupActivity;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/perm/kate/GroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->refreshInThread()V

    return-void
.end method

.method static synthetic access$3500(Lcom/perm/kate/GroupActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/perm/kate/GroupActivity;->showAvatarImage(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->avatars_photos_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/perm/kate/GroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showStatusDialog()V

    return-void
.end method

.method static synthetic access$3800(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->invite_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/perm/kate/GroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->startDialogs()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/perm/kate/GroupActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showGroupTokenDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/GroupActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$600(Lcom/perm/kate/GroupActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->contacts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$602(Lcom/perm/kate/GroupActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->contacts:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$700(Lcom/perm/kate/GroupActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->links:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$702(Lcom/perm/kate/GroupActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->links:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$800(Lcom/perm/kate/GroupActivity;)Lcom/perm/kate/api/Audio;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->status_audio:Lcom/perm/kate/api/Audio;

    return-object v0
.end method

.method static synthetic access$802(Lcom/perm/kate/GroupActivity;Lcom/perm/kate/api/Audio;)Lcom/perm/kate/api/Audio;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;
    .param p1, "x1"    # Lcom/perm/kate/api/Audio;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->status_audio:Lcom/perm/kate/api/Audio;

    return-object p1
.end method

.method static synthetic access$902(Lcom/perm/kate/GroupActivity;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/GroupActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/perm/kate/GroupActivity;->is_favorite:Ljava/lang/Integer;

    return-object p1
.end method

.method private adjustCoverViewSize()V
    .locals 6

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/perm/kate/GroupActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 168
    .local v1, "display":Landroid/view/Display;
    sget-boolean v4, Lcom/perm/kate/KApplication;->isTablet:Z

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 170
    .local v3, "screen_width":I
    :goto_0
    sget-boolean v4, Lcom/perm/kate/KApplication;->isTablet:Z

    if-eqz v4, :cond_1

    const/4 v2, 0x6

    .line 171
    .local v2, "ratio":I
    :goto_1
    div-int v0, v3, v2

    .line 172
    .local v0, "cover_height":I
    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->coverView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 174
    return-void

    .line 168
    .end local v0    # "cover_height":I
    .end local v2    # "ratio":I
    .end local v3    # "screen_width":I
    :cond_0
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    .line 170
    .restart local v3    # "screen_width":I
    :cond_1
    const/4 v2, 0x4

    goto :goto_1
.end method

.method private allowMessages()V
    .locals 1

    .prologue
    .line 810
    new-instance v0, Lcom/perm/kate/GroupActivity$25;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$25;-><init>(Lcom/perm/kate/GroupActivity;)V

    .line 822
    invoke-virtual {v0}, Lcom/perm/kate/GroupActivity$25;->start()V

    .line 823
    return-void
.end method

.method private choseSubscriptionType()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 826
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/CharSequence;

    .line 828
    .local v1, "items":[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    const v4, 0x7f0702d7

    invoke-virtual {p0, v4}, Lcom/perm/kate/GroupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v1, v3

    .line 829
    const v3, 0x7f0702dc

    invoke-virtual {p0, v3}, Lcom/perm/kate/GroupActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v5

    .line 830
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f070512

    .line 831
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lcom/perm/kate/GroupActivity$26;

    invoke-direct {v4, p0}, Lcom/perm/kate/GroupActivity$26;-><init>(Lcom/perm/kate/GroupActivity;)V

    .line 832
    invoke-virtual {v3, v1, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 847
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 848
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v5}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 849
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 850
    return-void
.end method

.method private coverClick()V
    .locals 4

    .prologue
    .line 152
    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    if-nez v3, :cond_0

    .line 163
    :goto_0
    return-void

    .line 154
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v0, "intent":Landroid/content/Intent;
    const-class v3, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .local v2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    new-instance v1, Lcom/perm/kate/api/Photo;

    invoke-direct {v1}, Lcom/perm/kate/api/Photo;-><init>()V

    .line 158
    .local v1, "p":Lcom/perm/kate/api/Photo;
    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v3, v3, Lcom/perm/kate/api/Group;->cover_800:Ljava/lang/String;

    iput-object v3, v1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 159
    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v3, v3, Lcom/perm/kate/api/Group;->cover_400:Ljava/lang/String;

    iput-object v3, v1, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    .line 160
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    const-string v3, "com.perm.kate.photos"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private denyMessages()V
    .locals 1

    .prologue
    .line 794
    new-instance v0, Lcom/perm/kate/GroupActivity$24;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$24;-><init>(Lcom/perm/kate/GroupActivity;)V

    .line 806
    invoke-virtual {v0}, Lcom/perm/kate/GroupActivity$24;->start()V

    .line 807
    return-void
.end method

.method private displayBanInfo(JLjava/lang/String;Ljava/lang/Integer;)V
    .locals 7
    .param p1, "end_date"    # J
    .param p3, "comment"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/Integer;

    .prologue
    .line 473
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0704b7

    invoke-virtual {p0, v4}, Lcom/perm/kate/GroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 474
    .local v2, "text":Ljava/lang/String;
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    .line 475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f07013f

    invoke-virtual {p0, v4}, Lcom/perm/kate/GroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/perm/kate/GroupActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 476
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-lez v3, :cond_1

    .line 477
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f07004c

    invoke-virtual {p0, v4}, Lcom/perm/kate/GroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0, p1, p2}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 478
    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f07044b

    invoke-virtual {p0, v4}, Lcom/perm/kate/GroupActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 480
    :cond_2
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 481
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const-string v4, "OK"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 482
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 483
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 484
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 485
    return-void
.end method

.method private displayBanInfoInUiThread(JLjava/lang/String;Ljava/lang/Integer;)V
    .locals 7
    .param p1, "end_date"    # J
    .param p3, "comment"    # Ljava/lang/String;
    .param p4, "reason"    # Ljava/lang/Integer;

    .prologue
    .line 462
    invoke-virtual {p0}, Lcom/perm/kate/GroupActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    :goto_0
    return-void

    .line 464
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupActivity$6;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/GroupActivity$6;-><init>(Lcom/perm/kate/GroupActivity;JLjava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private displayData()V
    .locals 22

    .prologue
    .line 183
    :try_start_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchGroupFull(J)Lcom/perm/kate/api/Group;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    .line 184
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    if-nez v2, :cond_0

    .line 323
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/GroupActivity;->getIsSuggest()V

    .line 187
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->is_closed:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->is_closed:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_f

    :cond_1
    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/perm/kate/GroupActivity;->is_closed:Z

    .line 188
    const v2, 0x7f0e0198

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 189
    .local v15, "name":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->verified:Ljava/lang/Integer;

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->verified:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_11

    .line 190
    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 191
    .local v9, "builder":Landroid/text/SpannableStringBuilder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v9, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const-string v4, "  "

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 192
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v2

    if-eqz v2, :cond_10

    const v12, 0x7f02012e

    .line 193
    .local v12, "ic_verified":I
    :goto_2
    new-instance v2, Landroid/text/style/ImageSpan;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v12, v4}, Landroid/text/style/ImageSpan;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    const/16 v6, 0x21

    invoke-virtual {v9, v2, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 194
    invoke-virtual {v15, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    .end local v9    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v12    # "ic_verified":I
    :goto_3
    const v2, 0x7f0e01e0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 198
    .local v11, "group_type":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->is_closed:Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-static {v0, v2, v4}, Lcom/perm/kate/GroupActivity;->getStringTypeGroup(Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    const v2, 0x7f0e01c4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 200
    .local v21, "tv_start_date":Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->start_date:Ljava/lang/Long;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->start_date:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    .line 201
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->start_date:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-static {v4, v5, v0}, Lcom/perm/kate/Helper;->getStringDate(JLandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :cond_2
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/perm/kate/db/DataHelper;->isJoinGroup(JJ)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/perm/kate/GroupActivity;->is_join_group:Z

    .line 205
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/perm/kate/GroupActivity;->is_join_group:Z

    if-nez v2, :cond_12

    const/16 v18, 0x1

    .line 206
    .local v18, "show_join_button":Z
    :goto_4
    const v2, 0x7f0e00a3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    .line 207
    .local v13, "join_button":Landroid/view/View;
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/perm/kate/GroupActivity;->is_join_group:Z

    if-eqz v2, :cond_13

    const/16 v2, 0x8

    :goto_5
    invoke-virtual {v13, v2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    const v2, 0x7f0e01c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/perm/kate/GroupActivity;->is_closed:Z

    if-eqz v4, :cond_14

    const v4, 0x7f070247

    :goto_6
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 209
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v3, v4, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->photo:Landroid/widget/ImageView;

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 210
    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v7

    const/4 v8, 0x1

    .line 209
    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->description:Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 212
    const v2, 0x7f0e01df

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 213
    const v2, 0x7f0e01de

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 214
    new-instance v9, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->description:Ljava/lang/String;

    invoke-direct {v9, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 218
    .restart local v9    # "builder":Landroid/text/SpannableStringBuilder;
    invoke-static {v9}, Lcom/perm/utils/Linkify;->addWebLinks(Landroid/text/Spannable;)V

    .line 219
    const v2, 0x7f0e00f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    const v2, 0x7f0e00f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 221
    const v2, 0x7f0e00f0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->descriptionLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 225
    .end local v9    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->wiki_page:Ljava/lang/String;

    if-nez v2, :cond_15

    .line 226
    const v2, 0x7f0e01dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 227
    invoke-static {}, Lcom/perm/kate/GroupActivity;->isOldUI()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0e01de

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :cond_4
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->tv_contacts_count:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->contacts:Ljava/util/ArrayList;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_8
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->tv_contacts_count:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->members_count:Ljava/lang/Integer;

    if-eqz v2, :cond_5

    .line 237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->tv_members_count:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    .line 238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->tv_members_count:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->members_count:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->tv_members_count:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 243
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->tv_links_count:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->links:Ljava/util/ArrayList;

    if-eqz v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->links:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->links:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    :goto_9
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->tv_links_count:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/GroupActivity;->updateLabelStatus(Ljava/lang/String;)V

    .line 246
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->videos_count:Ljava/lang/Integer;

    if-eqz v2, :cond_6

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->tv_videos_count:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->videos_count:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 248
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->tv_videos_count:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->topics_count:Ljava/lang/Integer;

    if-eqz v2, :cond_7

    .line 251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->tv_topics_count:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->topics_count:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->tv_topics_count:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->photos_count:Ljava/lang/Integer;

    if-eqz v2, :cond_8

    .line 255
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->tv_photos_count:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->photos_count:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->tv_photos_count:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->albums_count:Ljava/lang/Integer;

    if-eqz v2, :cond_9

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->tv_albums_count:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->albums_count:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->tv_albums_count:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 262
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->audios_count:Ljava/lang/Integer;

    if-eqz v2, :cond_a

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->tv_audios_count:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->audios_count:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->tv_audios_count:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    if-eq v2, v4, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->docs_count:Ljava/lang/Integer;

    if-eqz v2, :cond_18

    .line 267
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->tv_docs_count:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->docs_count:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->tv_docs_count:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 273
    :cond_b
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->posts_count:Ljava/lang/Integer;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/perm/kate/GroupActivity;->displayWallCount(Ljava/lang/Integer;)V

    .line 274
    const v2, 0x7f0e0068

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 275
    .local v14, "messages_button":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->can_message:Ljava/lang/Boolean;

    if-eqz v2, :cond_19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->can_message:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_19

    const/16 v19, 0x1

    .line 276
    .local v19, "show_messages_button":Z
    :goto_b
    if-eqz v19, :cond_1a

    .line 277
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/view/View;->setVisibility(I)V

    .line 278
    check-cast v14, Landroid/view/ViewGroup;

    .end local v14    # "messages_button":Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->messageClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 286
    :goto_c
    const v2, 0x7f0e01c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 287
    .local v10, "buttons":Landroid/view/View;
    if-nez v18, :cond_c

    if-eqz v19, :cond_1b

    .line 288
    :cond_c
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    .line 293
    :goto_d
    const v2, 0x7f0e01d4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 294
    .local v17, "read_messages_view":Landroid/view/View;
    const v2, 0x7f0e01eb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 295
    .local v16, "read_messages_separator":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->can_message:Ljava/lang/Boolean;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->can_message:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1c

    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v4, v6, v7}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->messagesReadClick:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 298
    invoke-static {}, Lcom/perm/kate/GroupActivity;->isOldUI()Z

    move-result v2

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 304
    :cond_d
    :goto_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->market_enabled:Ljava/lang/Boolean;

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->market_enabled:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1d

    .line 305
    const v2, 0x7f0e01d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 306
    invoke-static {}, Lcom/perm/kate/GroupActivity;->isOldUI()Z

    move-result v2

    if-eqz v2, :cond_e

    const v2, 0x7f0e01ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 312
    :cond_e
    :goto_f
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/GroupActivity;->getCoverUrl()Ljava/lang/String;

    move-result-object v3

    .line 313
    .local v3, "cover":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->coverView:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 315
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->coverView:Landroid/widget/ImageView;

    const/4 v5, 0x1

    const/16 v6, 0x320

    invoke-static {}, Lcom/perm/kate/Helper;->getSquareStubId()I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 319
    .end local v3    # "cover":Ljava/lang/String;
    .end local v10    # "buttons":Landroid/view/View;
    .end local v11    # "group_type":Landroid/widget/TextView;
    .end local v13    # "join_button":Landroid/view/View;
    .end local v15    # "name":Landroid/widget/TextView;
    .end local v16    # "read_messages_separator":Landroid/view/View;
    .end local v17    # "read_messages_view":Landroid/view/View;
    .end local v18    # "show_join_button":Z
    .end local v19    # "show_messages_button":Z
    .end local v21    # "tv_start_date":Landroid/widget/TextView;
    :catch_0
    move-exception v20

    .line 320
    .local v20, "th":Ljava/lang/Throwable;
    invoke-static/range {v20 .. v20}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 321
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 187
    .end local v20    # "th":Ljava/lang/Throwable;
    :cond_f
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 192
    .restart local v9    # "builder":Landroid/text/SpannableStringBuilder;
    .restart local v15    # "name":Landroid/widget/TextView;
    :cond_10
    const v12, 0x7f02012f

    goto/16 :goto_2

    .line 196
    .end local v9    # "builder":Landroid/text/SpannableStringBuilder;
    :cond_11
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 205
    .restart local v11    # "group_type":Landroid/widget/TextView;
    .restart local v21    # "tv_start_date":Landroid/widget/TextView;
    :cond_12
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 207
    .restart local v13    # "join_button":Landroid/view/View;
    .restart local v18    # "show_join_button":Z
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 208
    :cond_14
    const v4, 0x7f0701bf

    goto/16 :goto_6

    .line 229
    :cond_15
    const v2, 0x7f0e01dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 230
    invoke-static {}, Lcom/perm/kate/GroupActivity;->isOldUI()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f0e01de

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7

    .line 233
    :cond_16
    const-string v2, "0"

    goto/16 :goto_8

    .line 243
    :cond_17
    const-string v2, "0"

    goto/16 :goto_9

    .line 269
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_b

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->docs:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 271
    invoke-static {}, Lcom/perm/kate/GroupActivity;->isOldUI()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->docs_separator:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 275
    .restart local v14    # "messages_button":Landroid/view/View;
    :cond_19
    const/16 v19, 0x0

    goto/16 :goto_b

    .line 281
    .restart local v19    # "show_messages_button":Z
    :cond_1a
    const/16 v2, 0x8

    invoke-virtual {v14, v2}, Landroid/view/View;->setVisibility(I)V

    .line 282
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto/16 :goto_c

    .line 290
    .end local v14    # "messages_button":Landroid/view/View;
    .restart local v10    # "buttons":Landroid/view/View;
    :cond_1b
    const/16 v2, 0x8

    invoke-virtual {v10, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 300
    .restart local v16    # "read_messages_separator":Landroid/view/View;
    .restart local v17    # "read_messages_view":Landroid/view/View;
    :cond_1c
    const/16 v2, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 301
    invoke-static {}, Lcom/perm/kate/GroupActivity;->isOldUI()Z

    move-result v2

    if-eqz v2, :cond_d

    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_e

    .line 308
    :cond_1d
    const v2, 0x7f0e01d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 309
    invoke-static {}, Lcom/perm/kate/GroupActivity;->isOldUI()Z

    move-result v2

    if-eqz v2, :cond_e

    const v2, 0x7f0e01ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f

    .line 317
    .restart local v3    # "cover":Ljava/lang/String;
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/GroupActivity;->coverView:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private displayDataOnUiThread()V
    .locals 1

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/perm/kate/GroupActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 385
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$2;-><init>(Lcom/perm/kate/GroupActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private displayWallCount(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "wall_count"    # Ljava/lang/Integer;

    .prologue
    .line 499
    if-eqz p1, :cond_0

    .line 500
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->tv_wall_count:Landroid/widget/TextView;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->tv_wall_count:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 503
    :cond_0
    return-void
.end method

.method private displayWallCountInUiThread(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "wall_count"    # Ljava/lang/Integer;

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/perm/kate/GroupActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    :goto_0
    return-void

    .line 490
    :cond_0
    new-instance v0, Lcom/perm/kate/GroupActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/GroupActivity$7;-><init>(Lcom/perm/kate/GroupActivity;Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private downloadAvatarsAlbum()V
    .locals 1

    .prologue
    .line 1091
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->showProgressBar(Z)V

    .line 1092
    new-instance v0, Lcom/perm/kate/GroupActivity$36;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$36;-><init>(Lcom/perm/kate/GroupActivity;)V

    .line 1098
    invoke-virtual {v0}, Lcom/perm/kate/GroupActivity$36;->start()V

    .line 1099
    return-void
.end method

.method private editPhotoBeforeUpload(Ljava/util/ArrayList;)V
    .locals 2
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
    .line 1057
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1058
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uris"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1059
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/GroupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1060
    return-void
.end method

.method private faveAddGroup()V
    .locals 2

    .prologue
    .line 1184
    new-instance v0, Lcom/perm/kate/GroupActivity$41;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupActivity$41;-><init>(Lcom/perm/kate/GroupActivity;Landroid/app/Activity;)V

    .line 1201
    .local v0, "fave_add_group_callback":Lcom/perm/kate/session/Callback;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/GroupActivity;->showProgressBar(Z)V

    .line 1202
    new-instance v1, Lcom/perm/kate/GroupActivity$42;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/GroupActivity$42;-><init>(Lcom/perm/kate/GroupActivity;Lcom/perm/kate/session/Callback;)V

    .line 1207
    invoke-virtual {v1}, Lcom/perm/kate/GroupActivity$42;->start()V

    .line 1208
    return-void
.end method

.method private faveRemoveGroup()V
    .locals 2

    .prologue
    .line 1211
    new-instance v0, Lcom/perm/kate/GroupActivity$43;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/GroupActivity$43;-><init>(Lcom/perm/kate/GroupActivity;Landroid/app/Activity;)V

    .line 1228
    .local v0, "fave_remove_group_callback":Lcom/perm/kate/session/Callback;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/GroupActivity;->showProgressBar(Z)V

    .line 1229
    new-instance v1, Lcom/perm/kate/GroupActivity$44;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/GroupActivity$44;-><init>(Lcom/perm/kate/GroupActivity;Lcom/perm/kate/session/Callback;)V

    .line 1234
    invoke-virtual {v1}, Lcom/perm/kate/GroupActivity$44;->start()V

    .line 1235
    return-void
.end method

.method private getCoverUrl()Ljava/lang/String;
    .locals 4

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/perm/kate/GroupActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 328
    .local v0, "display":Landroid/view/Display;
    sget-boolean v2, Lcom/perm/kate/KApplication;->isTablet:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 329
    .local v1, "screen_width":I
    :goto_0
    div-int/lit8 v1, v1, 0x3

    .line 330
    const/16 v2, 0x190

    if-le v1, v2, :cond_1

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->cover_800:Ljava/lang/String;

    :goto_1
    return-object v2

    .line 328
    .end local v1    # "screen_width":I
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    .line 330
    .restart local v1    # "screen_width":I
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->cover_400:Ljava/lang/String;

    goto :goto_1
.end method

.method private getIsSuggest()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 375
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v0, v0, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v0, v0, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v4, v0, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 377
    :cond_1
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 379
    iput-boolean v4, p0, Lcom/perm/kate/GroupActivity;->is_suggest:Z

    goto :goto_0
.end method

.method public static getStringTypeGroup(Landroid/app/Activity;Ljava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/String;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # Ljava/lang/Integer;
    .param p2, "isClosed"    # Ljava/lang/Integer;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 350
    if-nez p1, :cond_0

    .line 351
    const-string v0, ""

    .line 371
    .local v0, "text":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 352
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 353
    const v1, 0x7f07021e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 354
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_4

    .line 355
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    .line 356
    const v1, 0x7f0701ff

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 357
    .end local v0    # "text":Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 358
    const v1, 0x7f07016a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 360
    .end local v0    # "text":Ljava/lang/String;
    :cond_3
    const v1, 0x7f07019e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 362
    .end local v0    # "text":Ljava/lang/String;
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_5

    .line 363
    const v1, 0x7f070200

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 364
    .end local v0    # "text":Ljava/lang/String;
    :cond_5
    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_6

    .line 365
    const v1, 0x7f07016b

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 366
    .end local v0    # "text":Ljava/lang/String;
    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v3, :cond_7

    .line 367
    const v1, 0x7f07021a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0

    .line 369
    .end local v0    # "text":Ljava/lang/String;
    :cond_7
    const v1, 0x7f0700bf

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "text":Ljava/lang/String;
    goto :goto_0
.end method

.method private groupsInvite(J)V
    .locals 1
    .param p1, "member_id"    # J

    .prologue
    .line 1143
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->showProgressBar(Z)V

    .line 1144
    new-instance v0, Lcom/perm/kate/GroupActivity$39;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/kate/GroupActivity$39;-><init>(Lcom/perm/kate/GroupActivity;J)V

    .line 1150
    invoke-virtual {v0}, Lcom/perm/kate/GroupActivity$39;->start()V

    .line 1151
    return-void
.end method

.method static isOldUI()Z
    .locals 3

    .prologue
    .line 1306
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "old_group"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private joinGroup()V
    .locals 1

    .prologue
    .line 658
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->showProgressBar(Z)V

    .line 659
    new-instance v0, Lcom/perm/kate/GroupActivity$22;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$22;-><init>(Lcom/perm/kate/GroupActivity;)V

    .line 664
    invoke-virtual {v0}, Lcom/perm/kate/GroupActivity$22;->start()V

    .line 665
    return-void
.end method

.method private leaveGroup()V
    .locals 1

    .prologue
    .line 940
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->showProgressBar(Z)V

    .line 941
    new-instance v0, Lcom/perm/kate/GroupActivity$29;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$29;-><init>(Lcom/perm/kate/GroupActivity;)V

    .line 946
    invoke-virtual {v0}, Lcom/perm/kate/GroupActivity$29;->start()V

    .line 947
    return-void
.end method

.method private refresh()V
    .locals 6

    .prologue
    .line 404
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/perm/kate/GroupActivity;->showProgressBar(Z)V

    .line 405
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .local v0, "uids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const-string v2, "description,wiki_page,can_see_all_posts,contacts,members_count,links,start_date,status,counters,is_favorite,ban_info,verified,can_message,market,cover,is_messages_blocked"

    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v1, v0, v2, v3, p0}, Lcom/perm/kate/session/Session;->getGroups(Ljava/util/ArrayList;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 408
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v1, :cond_0

    .line 411
    :goto_0
    return-void

    .line 410
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const-wide/16 v2, -0x1

    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    mul-long/2addr v2, v4

    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->callback_wall_count:Lcom/perm/kate/session/Callback;

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/perm/kate/session/Session;->getWallCount(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private refreshInThread()V
    .locals 1

    .prologue
    .line 394
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->showProgressBar(Z)V

    .line 395
    new-instance v0, Lcom/perm/kate/GroupActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/GroupActivity$3;-><init>(Lcom/perm/kate/GroupActivity;)V

    .line 400
    invoke-virtual {v0}, Lcom/perm/kate/GroupActivity$3;->start()V

    .line 401
    return-void
.end method

.method private showAvatarImage(Ljava/util/ArrayList;)V
    .locals 3
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
    .line 1063
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/perm/kate/GroupActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1079
    :cond_0
    :goto_0
    return-void

    .line 1065
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1066
    .local v0, "intent":Landroid/content/Intent;
    const-class v2, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1067
    if-nez p1, :cond_2

    .line 1068
    new-instance p1, Ljava/util/ArrayList;

    .end local p1    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1069
    .restart local p1    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 1070
    new-instance v1, Lcom/perm/kate/api/Photo;

    invoke-direct {v1}, Lcom/perm/kate/api/Photo;-><init>()V

    .line 1071
    .local v1, "p":Lcom/perm/kate/api/Photo;
    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->photo_big:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1072
    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->photo_big:Ljava/lang/String;

    iput-object v2, v1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 1075
    :goto_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1077
    .end local v1    # "p":Lcom/perm/kate/api/Photo;
    :cond_3
    const-string v2, "com.perm.kate.photos"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1078
    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1074
    .restart local v1    # "p":Lcom/perm/kate/api/Photo;
    :cond_4
    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    iput-object v2, v1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    goto :goto_1
.end method

.method private showEditOptionsDialog()V
    .locals 8

    .prologue
    .line 859
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 860
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    iget-object v5, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 861
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070098

    const/16 v5, 0xb

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 862
    :cond_0
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    iget-object v5, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/perm/kate/db/DataHelper;->isAdminInGroup(Ljava/lang/Long;J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 863
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070460

    const/16 v5, 0xc

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070471

    const/16 v5, 0x12

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 866
    :cond_1
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    iget-object v5, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/perm/kate/db/DataHelper;->isModerInGroup(Ljava/lang/Long;J)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 867
    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v3, v3, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v3, v3, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v3, v3, Lcom/perm/kate/api/Group;->is_closed:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eqz v3, :cond_3

    .line 868
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070248

    const/16 v5, 0x11

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 869
    :cond_3
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f07014d

    const/16 v5, 0x8

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 871
    :cond_4
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    iget-object v5, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 872
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0701e2

    const/16 v5, 0x13

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    :cond_5
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0701ec

    .line 874
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 875
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/GroupActivity$27;

    invoke-direct {v5, p0, v1}, Lcom/perm/kate/GroupActivity$27;-><init>(Lcom/perm/kate/GroupActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 900
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 901
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 902
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 903
    return-void
.end method

.method private showGroupBlackList()V
    .locals 3

    .prologue
    .line 921
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 922
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/GroupBannedActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 923
    const-string v1, "com.perm.kate.group_id"

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 924
    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->startActivity(Landroid/content/Intent;)V

    .line 925
    return-void
.end method

.method private showGroupContacts()V
    .locals 3

    .prologue
    .line 616
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 617
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/GroupContactsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 618
    const-string v1, "com.perm.kate.contacts"

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 619
    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->startActivity(Landroid/content/Intent;)V

    .line 620
    return-void
.end method

.method private showGroupLinks()V
    .locals 6

    .prologue
    .line 623
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 624
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/GroupLinksActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 625
    const-string v1, "com.perm.kate.group_id"

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 626
    const-string v1, "com.perm.kate.links"

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->links:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 627
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->isAdminInGroup(Ljava/lang/Long;J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 628
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/GroupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 631
    :goto_0
    return-void

    .line 630
    :cond_0
    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private showGroupMembers()V
    .locals 3

    .prologue
    .line 607
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 608
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/GroupMembersActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 609
    const-string v1, "com.perm.kate.gid"

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 610
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v1, v1, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v1, v1, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 611
    const-string v1, "com.perm.kate.is_event"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 612
    :cond_0
    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->startActivity(Landroid/content/Intent;)V

    .line 613
    return-void
.end method

.method private showGroupSettingsActivity()V
    .locals 3

    .prologue
    .line 1170
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/EditGroupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1171
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.group_id"

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1172
    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v1, v1, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 1173
    const-string v1, "com.perm.kate.group_type"

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1174
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/GroupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1175
    return-void
.end method

.method private showGroupTokenDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1278
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1279
    .local v0, "alert":Landroid/support/v7/app/AlertDialog$Builder;
    const v4, 0x7f0700c1

    invoke-virtual {v0, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1280
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03008c

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1281
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f0e01ea

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1282
    .local v2, "input":Landroid/widget/EditText;
    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1283
    const v4, 0x7f070334

    new-instance v5, Lcom/perm/kate/GroupActivity$47;

    invoke-direct {v5, p0, v2}, Lcom/perm/kate/GroupActivity$47;-><init>(Lcom/perm/kate/GroupActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1292
    const v4, 0x7f07015d

    invoke-virtual {v0, v4, v6}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1293
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 1294
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1295
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1296
    return-void
.end method

.method private showJoinDialog()V
    .locals 4

    .prologue
    .line 643
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 646
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f07010b

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0701bf

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07051d

    new-instance v3, Lcom/perm/kate/GroupActivity$21;

    invoke-direct {v3, p0}, Lcom/perm/kate/GroupActivity$21;-><init>(Lcom/perm/kate/GroupActivity;)V

    .line 647
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070319

    const/4 v3, 0x0

    .line 652
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 654
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 655
    return-void
.end method

.method private showLeaveDialog()V
    .locals 4

    .prologue
    .line 928
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 929
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f0702b1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0701c5

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f07051d

    new-instance v3, Lcom/perm/kate/GroupActivity$28;

    invoke-direct {v3, p0}, Lcom/perm/kate/GroupActivity$28;-><init>(Lcom/perm/kate/GroupActivity;)V

    .line 930
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f070319

    const/4 v3, 0x0

    .line 935
    invoke-virtual {v1, v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 936
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 937
    return-void
.end method

.method private showManagementActivity()V
    .locals 5

    .prologue
    .line 906
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 907
    .local v2, "intent":Landroid/content/Intent;
    const-class v3, Lcom/perm/kate/GroupManagementActivity;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 908
    const-string v3, "com.perm.kate.group_id"

    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 909
    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->contacts:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 910
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 911
    .local v1, "contacts1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Contact;>;"
    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->contacts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Contact;

    .line 912
    .local v0, "c":Lcom/perm/kate/api/Contact;
    iget-object v4, v0, Lcom/perm/kate/api/Contact;->user_id:Ljava/lang/Long;

    if-eqz v4, :cond_0

    .line 913
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 915
    .end local v0    # "c":Lcom/perm/kate/api/Contact;
    :cond_1
    const-string v3, "com.perm.kate.contacts"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 917
    .end local v1    # "contacts1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Contact;>;"
    :cond_2
    invoke-virtual {p0, v2}, Lcom/perm/kate/GroupActivity;->startActivity(Landroid/content/Intent;)V

    .line 918
    return-void
.end method

.method private showMembersActivity()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1135
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1136
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/MembersActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1137
    const-string v1, "com.perm.kate.only_members"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1138
    const-string v1, "com.perm.kate.friends_invite"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1139
    invoke-virtual {p0, v0, v2}, Lcom/perm/kate/GroupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1140
    return-void
.end method

.method private showRequestsToGroupActivity()V
    .locals 3

    .prologue
    .line 1178
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/RequestsToGroupActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1179
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.perm.kate.group_id"

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1180
    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->startActivity(Landroid/content/Intent;)V

    .line 1181
    return-void
.end method

.method private showStatsActivity()V
    .locals 3

    .prologue
    .line 1163
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1164
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/StatsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1165
    const-string v1, "com.perm.kate.group_id"

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1166
    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->startActivity(Landroid/content/Intent;)V

    .line 1167
    return-void
.end method

.method private showStatusAcivity()V
    .locals 3

    .prologue
    .line 1238
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1239
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/StatusActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1240
    const-string v1, "com.perm.kate.group_id"

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1241
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/GroupActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1242
    return-void
.end method

.method private showStatusDialog()V
    .locals 5

    .prologue
    .line 1120
    new-instance v2, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v3, v3, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    .line 1121
    invoke-virtual {v2, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070067

    const/4 v4, 0x0

    .line 1122
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070171

    new-instance v4, Lcom/perm/kate/GroupActivity$38;

    invoke-direct {v4, p0}, Lcom/perm/kate/GroupActivity$38;-><init>(Lcom/perm/kate/GroupActivity;)V

    .line 1123
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 1129
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 1130
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1131
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1132
    return-void
.end method

.method private startDialogs()V
    .locals 3

    .prologue
    .line 1299
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1300
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/DialogsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1301
    const-string v1, "group_id"

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1302
    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->startActivity(Landroid/content/Intent;)V

    .line 1303
    return-void
.end method

.method private subscribe(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    .line 853
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    neg-long v2, v2

    invoke-virtual {v0, v2, v3, p1}, Lcom/perm/utils/WallSubscriptions;->subscribe(JI)V

    .line 854
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->ensureRegularRefreshEnabled()V

    .line 855
    const v0, 0x7f070510

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->displayToast(I)V

    .line 856
    return-void
.end method

.method private updateLabelStatus(Ljava/lang/String;)V
    .locals 4
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 334
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 335
    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->label_status:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    move-object v0, p1

    .line 338
    .local v0, "text":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->status_audio:Lcom/perm/kate/api/Audio;

    if-eqz v2, :cond_0

    .line 339
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ud83d\udce2 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    :cond_0
    invoke-static {p0, v0}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 342
    .local v1, "text1":Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->label_status:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    .end local v0    # "text":Ljava/lang/String;
    .end local v1    # "text1":Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 345
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->label_status:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 10
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/16 v9, 0x1b70

    const/16 v8, 0x1b6f

    const/4 v3, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 707
    const/4 v0, 0x3

    const/16 v1, 0x3e9

    const v2, 0x7f0703a5

    invoke-interface {p1, v6, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 708
    const/4 v0, 0x4

    const/16 v1, 0x3ea

    const v2, 0x7f070173

    invoke-interface {p1, v6, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 709
    iget-boolean v0, p0, Lcom/perm/kate/GroupActivity;->is_join_group:Z

    if-eqz v0, :cond_0

    .line 710
    const/16 v0, 0x3eb

    const v1, 0x7f0701c5

    invoke-interface {p1, v6, v3, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 711
    :cond_0
    const/16 v0, 0x3e8

    const/16 v1, 0x3ed

    const v2, 0x7f070203

    invoke-interface {p1, v6, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 712
    iget-boolean v0, p0, Lcom/perm/kate/GroupActivity;->is_join_group:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v0, v0, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v0, v0, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v0, v0, Lcom/perm/kate/api/Group;->start_date:Ljava/lang/Long;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v0, v0, Lcom/perm/kate/api/Group;->start_date:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    :cond_1
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    .line 713
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->isModerInGroup(Ljava/lang/Long;J)Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/perm/kate/GroupActivity;->is_closed:Z

    if-nez v0, :cond_3

    .line 714
    :cond_2
    const/16 v0, 0xe

    const/16 v1, 0x3f7

    const v2, 0x7f0701bd

    invoke-interface {p1, v6, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 715
    :cond_3
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 716
    const/16 v0, 0x10

    const/16 v1, 0x3f9

    const v2, 0x7f070461

    invoke-interface {p1, v6, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 717
    :cond_4
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->isModerInGroup(Ljava/lang/Long;J)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 718
    :cond_5
    const/16 v0, 0xa

    const/16 v1, 0x457

    const v2, 0x7f0701ec

    invoke-interface {p1, v6, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 719
    :cond_6
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->is_favorite:Ljava/lang/Integer;

    if-eqz v0, :cond_7

    .line 720
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->is_favorite:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_a

    .line 721
    const/16 v0, 0x400

    const v1, 0x7f070241

    invoke-interface {p1, v6, v0, v8, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 725
    :cond_7
    :goto_0
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    neg-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/perm/utils/WallSubscriptions;->subscribed(J)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/perm/kate/UpdateService;->regularRefreshEnabled()Z

    move-result v0

    if-nez v0, :cond_b

    .line 726
    :cond_8
    const/16 v0, 0x401

    const v1, 0x7f070512

    invoke-interface {p1, v6, v0, v9, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 731
    :goto_1
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v0, v0, Lcom/perm/kate/api/Group;->can_message:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v0, v0, Lcom/perm/kate/api/Group;->can_message:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 732
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->is_messages_blocked:Ljava/lang/Integer;

    if-eqz v0, :cond_9

    .line 733
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->is_messages_blocked:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_c

    .line 734
    const/16 v0, 0x403

    const/16 v1, 0x1b76

    const v2, 0x7f070033

    invoke-interface {p1, v6, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 738
    :cond_9
    :goto_2
    return v7

    .line 723
    :cond_a
    const/16 v0, 0x3ff

    const v1, 0x7f070118

    invoke-interface {p1, v6, v0, v8, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0

    .line 728
    :cond_b
    const/16 v0, 0x402

    const v1, 0x7f070511

    invoke-interface {p1, v6, v0, v9, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1

    .line 736
    :cond_c
    const/16 v0, 0x404

    const/16 v1, 0x1b76

    const v2, 0x7f070089

    invoke-interface {p1, v6, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 18
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 996
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/photoupload/PhotoChooser;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/perm/kate/photoupload/PhotoChooser$Callback;)Landroid/net/Uri;

    .line 997
    if-nez p1, :cond_5

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_5

    .line 998
    const-string v4, "uris"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    .line 999
    .local v14, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v4, "resize_option"

    const/4 v5, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 1000
    .local v7, "resize_option":I
    const-string v4, "rotate"

    const/4 v5, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 1001
    .local v9, "rotate":I
    new-instance v4, Lcom/perm/kate/photoupload/AvatarUploader;

    const/4 v5, 0x0

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/perm/kate/GroupActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/perm/kate/photoupload/AvatarUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;ILcom/perm/kate/photoupload/UploadCallback;I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    move-wide/from16 v0, v16

    neg-long v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/perm/kate/photoupload/AvatarUploader;->upload(Ljava/lang/Long;)V

    .line 1005
    .end local v7    # "resize_option":I
    .end local v9    # "rotate":I
    .end local v14    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_0
    :goto_0
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_1

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_1

    .line 1006
    if-eqz p3, :cond_1

    .line 1007
    const-string v4, "com.perm.kate.member_id"

    const-wide/16 v16, 0x0

    move-object/from16 v0, p3

    move-wide/from16 v1, v16

    invoke-virtual {v0, v4, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 1008
    .local v10, "member_id":J
    const-wide/16 v4, 0x0

    cmp-long v4, v10, v4

    if-lez v4, :cond_1

    .line 1009
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/perm/kate/GroupActivity;->groupsInvite(J)V

    .line 1012
    .end local v10    # "member_id":J
    :cond_1
    const/4 v4, 0x3

    move/from16 v0, p1

    if-ne v0, v4, :cond_2

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_2

    .line 1013
    if-eqz p3, :cond_2

    .line 1014
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    const-string v5, "new_status"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    .line 1015
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/perm/kate/GroupActivity;->updateLabelStatus(Ljava/lang/String;)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v4, v4, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    invoke-static {v4}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1017
    const-wide/16 v4, -0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    mul-long v4, v4, v16

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v6, v6, Lcom/perm/kate/api/Group;->status:Ljava/lang/String;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v8}, Lcom/perm/kate/Helper;->showPublishStatusDialog(Landroid/app/Activity;JLjava/lang/String;Z)V

    .line 1020
    :cond_2
    const/4 v4, 0x4

    move/from16 v0, p1

    if-ne v0, v4, :cond_3

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_3

    .line 1021
    if-eqz p3, :cond_6

    .line 1022
    const-string v4, "links"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v13

    check-cast v13, Ljava/util/ArrayList;

    .line 1023
    .local v13, "updated_links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Link;>;"
    if-eqz v13, :cond_3

    .line 1024
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/perm/kate/GroupActivity;->links:Ljava/util/ArrayList;

    .line 1025
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->tv_links_count:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/GroupActivity;->links:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1030
    .end local v13    # "updated_links":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Link;>;"
    :cond_3
    :goto_1
    const/4 v4, 0x5

    move/from16 v0, p1

    if-ne v0, v4, :cond_4

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_4

    .line 1031
    const-string v4, "access_token"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1032
    .local v12, "token":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v12, v4, v5}, Lcom/perm/kate/KApplication;->addGroupToken(Ljava/lang/String;J)V

    .line 1033
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/GroupActivity;->startDialogs()V

    .line 1035
    .end local v12    # "token":Ljava/lang/String;
    :cond_4
    invoke-super/range {p0 .. p3}, Lcom/perm/kate/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 1036
    return-void

    .line 1002
    :cond_5
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_0

    const/4 v4, -0x1

    move/from16 v0, p2

    if-ne v0, v4, :cond_0

    .line 1003
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/GroupActivity;->refreshInThread()V

    goto/16 :goto_0

    .line 1028
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/GroupActivity;->refreshInThread()V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 95
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/perm/kate/GroupActivity;->finish()V

    .line 149
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-static {}, Lcom/perm/kate/GroupActivity;->isOldUI()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f03008d

    :goto_1
    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->setContentView(I)V

    .line 100
    const v0, 0x7f0700bf

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->setHeaderTitle(I)V

    .line 101
    invoke-virtual {p0}, Lcom/perm/kate/GroupActivity;->setupMenuButton()V

    .line 102
    invoke-virtual {p0}, Lcom/perm/kate/GroupActivity;->setupRefreshButton()V

    .line 103
    invoke-virtual {p0}, Lcom/perm/kate/GroupActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.group_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    .line 104
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    .line 105
    const v0, 0x7f0e01ca

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->topicClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v0, 0x7f0e01d5

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->goodsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    const v0, 0x7f0e01c8

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->wallClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f0e01d2

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->audioClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    const v0, 0x7f0e01ce

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->albumsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v0, 0x7f0e01d0

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->allPhotosClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    const v0, 0x7f0e01d6

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->videoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f0e01c7

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->joinClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const v0, 0x7f0e01cc

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->membersClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f0e01da

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->contactsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v0, 0x7f0e01d8

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->linksClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v0, 0x7f0e0128

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->docs:Landroid/view/View;

    .line 117
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->docs:Landroid/view/View;

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->docsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f0e01ed

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->docs_separator:Landroid/view/View;

    .line 119
    const v0, 0x7f0e01dd

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->groupMenuClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v0, 0x7f0e0077

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->photo:Landroid/widget/ImageView;

    .line 121
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->photo:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->photoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    const v0, 0x7f0e01cd

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->tv_members_count:Landroid/widget/TextView;

    .line 123
    const v0, 0x7f0e01db

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->tv_contacts_count:Landroid/widget/TextView;

    .line 124
    const v0, 0x7f0e01d9

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->tv_links_count:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f0e01c5

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->label_status:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->label_status:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/perm/kate/GroupActivity;->statusClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    const v0, 0x7f0e01d7

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->tv_videos_count:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0e01cb

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->tv_topics_count:Landroid/widget/TextView;

    .line 129
    const v0, 0x7f0e01d1

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->tv_photos_count:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0e01cf

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->tv_albums_count:Landroid/widget/TextView;

    .line 131
    const v0, 0x7f0e01d3

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->tv_audios_count:Landroid/widget/TextView;

    .line 132
    const v0, 0x7f0e01dc

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->tv_docs_count:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0e01c9

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->tv_wall_count:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0e01c3

    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/perm/kate/GroupActivity;->coverView:Landroid/widget/ImageView;

    .line 136
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->adjustCoverViewSize()V

    .line 138
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->displayData()V

    .line 139
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->refreshInThread()V

    .line 140
    invoke-virtual {p0}, Lcom/perm/kate/GroupActivity;->setButtonsBg()V

    .line 141
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    invoke-static {v0}, Lcom/perm/kate/history/History;->addGroup(Lcom/perm/kate/api/Group;)V

    .line 143
    iget-object v0, p0, Lcom/perm/kate/GroupActivity;->coverView:Landroid/widget/ImageView;

    new-instance v1, Lcom/perm/kate/GroupActivity$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/GroupActivity$1;-><init>(Lcom/perm/kate/GroupActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 99
    :cond_1
    const v0, 0x7f030086

    goto/16 :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x1

    .line 743
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 790
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 745
    :sswitch_0
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showLeaveDialog()V

    goto :goto_0

    .line 748
    :sswitch_1
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->refreshInThread()V

    goto :goto_0

    .line 751
    :sswitch_2
    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, p0}, Lcom/perm/kate/Helper;->copyGroupLink(JLandroid/content/Context;)V

    goto :goto_0

    .line 754
    :sswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "club"

    invoke-static {v3}, Lcom/perm/kate/KApplication;->instanceLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0, p0}, Lcom/perm/kate/Helper;->openUrlInBrowser(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 758
    .end local v0    # "url":Ljava/lang/String;
    :sswitch_4
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showMembersActivity()V

    goto :goto_0

    .line 761
    :sswitch_5
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showStatsActivity()V

    goto :goto_0

    .line 764
    :sswitch_6
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->showEditOptionsDialog()V

    goto :goto_0

    .line 767
    :sswitch_7
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->faveRemoveGroup()V

    goto :goto_0

    .line 770
    :sswitch_8
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->faveAddGroup()V

    goto :goto_0

    .line 773
    :sswitch_9
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->user_id:Ljava/lang/Long;

    iget-object v4, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->g:Lcom/perm/kate/api/Group;

    iget-object v2, v2, Lcom/perm/kate/api/Group;->type:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 774
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->choseSubscriptionType()V

    goto :goto_0

    .line 776
    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/perm/kate/GroupActivity;->subscribe(I)V

    goto :goto_0

    .line 779
    :sswitch_a
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->getInstance()Lcom/perm/utils/WallSubscriptions;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    neg-long v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/perm/utils/WallSubscriptions;->unsubscribe(J)V

    .line 780
    invoke-static {}, Lcom/perm/utils/WallSubscriptions;->disableRegularRefreshIfRequired()V

    .line 781
    const v2, 0x7f07050f

    invoke-virtual {p0, v2}, Lcom/perm/kate/GroupActivity;->displayToast(I)V

    goto :goto_0

    .line 784
    :sswitch_b
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->allowMessages()V

    goto/16 :goto_0

    .line 787
    :sswitch_c
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->denyMessages()V

    goto/16 :goto_0

    .line 743
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x4 -> :sswitch_2
        0xa -> :sswitch_6
        0xe -> :sswitch_4
        0x10 -> :sswitch_5
        0x3e8 -> :sswitch_3
        0x3ff -> :sswitch_8
        0x400 -> :sswitch_7
        0x401 -> :sswitch_9
        0x402 -> :sswitch_a
        0x403 -> :sswitch_b
        0x404 -> :sswitch_c
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 692
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 693
    invoke-virtual {p0, p1}, Lcom/perm/kate/GroupActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 694
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRefreshButton()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Lcom/perm/kate/GroupActivity;->refreshInThread()V

    .line 179
    return-void
.end method

.method protected showMessageThread()V
    .locals 4

    .prologue
    .line 1252
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1253
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/MessageThreadActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1254
    const-string v1, "com.perm.kate.message_uid"

    iget-object v2, p0, Lcom/perm/kate/GroupActivity;->group_id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/perm/kate/api/User;->groupIdToVirtualUserId(J)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1255
    invoke-virtual {p0, v0}, Lcom/perm/kate/GroupActivity;->startActivity(Landroid/content/Intent;)V

    .line 1256
    return-void
.end method
