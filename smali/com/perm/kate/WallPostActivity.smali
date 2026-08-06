.class public Lcom/perm/kate/WallPostActivity;
.super Lcom/perm/kate/BaseActivity;
.source "WallPostActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/WallPostActivity$MultiUploader;,
        Lcom/perm/kate/WallPostActivity$TextChangedListener;
    }
.end annotation


# static fields
.field static attachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static attachments_objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _id:J

.field private add_attachment_OnClickListerer:Landroid/view/View$OnClickListener;

.field private add_smile:Landroid/widget/ImageButton;

.field private attachments_OnClickListerer:Landroid/view/View$OnClickListener;

.field private btn_add_attachment:Landroid/widget/ImageButton;

.field private btn_attachments:Landroid/widget/ImageButton;

.field private btn_post_settings:Landroid/widget/ImageButton;

.field private btn_save:Landroid/widget/Button;

.field callback_save:Lcom/perm/kate/session/Callback;

.field private counter:Landroid/widget/TextView;

.field private edit_post:Z

.field private ff_attachments_count_placeholder:Landroid/view/View;

.field private from_group:Z

.field private geo_location:Landroid/location/Location;

.field private ib_publish_date_clear:Landroid/widget/ImageButton;

.field private is_suggest:Z

.field private is_suggested:Z

.field listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

.field listener1:Landroid/content/DialogInterface$OnClickListener;

.field private ll_publish_date:Landroid/widget/LinearLayout;

.field private only_friends:Z

.field private owner_id:J

.field private photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

.field private post_id:J

.field private post_text:Ljava/lang/String;

.field private publish_date:Ljava/lang/Long;

.field private publish_date_clear_OnClickListerer:Landroid/view/View$OnClickListener;

.field private publish_dater_OnClickListerer:Landroid/view/View$OnClickListener;

.field private save_OnClickListerer:Landroid/view/View$OnClickListener;

.field private settings_OnClickListerer:Landroid/view/View$OnClickListener;

.field private signed:Z

.field private tb_new_post_text:Landroid/widget/EditText;

.field private tb_publish_date:Landroid/widget/TextView;

.field private tv_attachments_count:Landroid/widget/TextView;

.field protected uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 69
    iput-boolean v1, p0, Lcom/perm/kate/WallPostActivity;->only_friends:Z

    .line 70
    iput-boolean v1, p0, Lcom/perm/kate/WallPostActivity;->from_group:Z

    .line 71
    iput-boolean v1, p0, Lcom/perm/kate/WallPostActivity;->signed:Z

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->geo_location:Landroid/location/Location;

    .line 74
    iput-boolean v1, p0, Lcom/perm/kate/WallPostActivity;->edit_post:Z

    .line 83
    iput-boolean v1, p0, Lcom/perm/kate/WallPostActivity;->is_suggest:Z

    .line 84
    iput-boolean v1, p0, Lcom/perm/kate/WallPostActivity;->is_suggested:Z

    .line 192
    new-instance v0, Lcom/perm/kate/WallPostActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$1;-><init>(Lcom/perm/kate/WallPostActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 218
    new-instance v0, Lcom/perm/kate/WallPostActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/WallPostActivity$2;-><init>(Lcom/perm/kate/WallPostActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->callback_save:Lcom/perm/kate/session/Callback;

    .line 261
    new-instance v0, Lcom/perm/kate/WallPostActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$3;-><init>(Lcom/perm/kate/WallPostActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->add_attachment_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 488
    new-instance v0, Lcom/perm/kate/WallPostActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$4;-><init>(Lcom/perm/kate/WallPostActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->listener1:Landroid/content/DialogInterface$OnClickListener;

    .line 635
    new-instance v0, Lcom/perm/kate/WallPostActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$6;-><init>(Lcom/perm/kate/WallPostActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->attachments_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 795
    new-instance v0, Lcom/perm/kate/WallPostActivity$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$10;-><init>(Lcom/perm/kate/WallPostActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->settings_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 963
    new-instance v0, Lcom/perm/kate/WallPostActivity$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$14;-><init>(Lcom/perm/kate/WallPostActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    .line 980
    new-instance v0, Lcom/perm/kate/WallPostActivity$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$15;-><init>(Lcom/perm/kate/WallPostActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 1080
    new-instance v0, Lcom/perm/kate/WallPostActivity$19;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$19;-><init>(Lcom/perm/kate/WallPostActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    .line 1157
    new-instance v0, Lcom/perm/kate/WallPostActivity$20;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$20;-><init>(Lcom/perm/kate/WallPostActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->publish_dater_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 1164
    new-instance v0, Lcom/perm/kate/WallPostActivity$21;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$21;-><init>(Lcom/perm/kate/WallPostActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->publish_date_clear_OnClickListerer:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private UpdateAttachmentsCount()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->tv_attachments_count:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->tv_attachments_count:Landroid/widget/TextView;

    sget-object v2, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object v2, p0, Lcom/perm/kate/WallPostActivity;->ff_attachments_count_placeholder:Landroid/view/View;

    sget-object v0, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 188
    sget-object v0, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p0, v0, v1, v1}, Lcom/perm/kate/Helper;->checkLimitAttachments(Lcom/perm/kate/BaseActivity;IZZ)Z

    .line 190
    :cond_0
    return-void

    .line 187
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/perm/kate/WallPostActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/WallPostActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/perm/kate/WallPostActivity;->findAttachmentsInsideText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/WallPostActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->getExportString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/perm/kate/WallPostActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/perm/kate/WallPostActivity;->only_friends:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/perm/kate/WallPostActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/perm/kate/WallPostActivity;->only_friends:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/perm/kate/WallPostActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/perm/kate/WallPostActivity;->from_group:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/perm/kate/WallPostActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/perm/kate/WallPostActivity;->from_group:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/perm/kate/WallPostActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/perm/kate/WallPostActivity;->is_suggest:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/perm/kate/WallPostActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->createAddAttachmentDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/WallPostActivity;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/WallPostActivity;->saveExportValues(ZZ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/perm/kate/WallPostActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/perm/kate/WallPostActivity;->showAudioActivity(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/perm/kate/WallPostActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/perm/kate/WallPostActivity;->showSearchActivity(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/perm/kate/WallPostActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/perm/kate/WallPostActivity;->attachVideo(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/WallPostActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->createAttachAudioDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/WallPostActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/perm/kate/WallPostActivity;->disableFieldAndButtonsInUI(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/perm/kate/WallPostActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->createAttachVideoDialog()V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/WallPostActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->getLocationWithCheck()V

    return-void
.end method

.method static synthetic access$2200(Lcom/perm/kate/WallPostActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->createAttachDocsDialog()V

    return-void
.end method

.method static synthetic access$2300(Lcom/perm/kate/WallPostActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/perm/kate/WallPostActivity;->showDocsActivity(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/perm/kate/WallPostActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->showPublishDateActivity()V

    return-void
.end method

.method static synthetic access$2500(Lcom/perm/kate/WallPostActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->showCreatePollActivity()V

    return-void
.end method

.method static synthetic access$2600(Lcom/perm/kate/WallPostActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->showFriendsActivityForSelect()V

    return-void
.end method

.method static synthetic access$2700(Lcom/perm/kate/WallPostActivity;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/perm/kate/WallPostActivity;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/perm/kate/WallPostActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->UpdateAttachmentsCount()V

    return-void
.end method

.method static synthetic access$2900(Lcom/perm/kate/WallPostActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/perm/kate/WallPostActivity;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/WallPostActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/perm/kate/WallPostActivity;->edit_post:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/perm/kate/WallPostActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/perm/kate/WallPostActivity;->photoAttachmentsUploaded(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/perm/kate/WallPostActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->counter:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/perm/kate/WallPostActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->btn_save:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/perm/kate/WallPostActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->btn_post_settings:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/perm/kate/WallPostActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->btn_attachments:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/perm/kate/WallPostActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->btn_add_attachment:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/perm/kate/WallPostActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->add_smile:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/perm/kate/WallPostActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/perm/kate/WallPostActivity;->addSmile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/perm/kate/WallPostActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->updatePublishDateLayout()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/WallPostActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/perm/kate/WallPostActivity;->is_suggested:Z

    return v0
.end method

.method static synthetic access$500(Lcom/perm/kate/WallPostActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/perm/kate/WallPostActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/perm/kate/WallPostActivity;->post_id:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/perm/kate/WallPostActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->publish_date:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$702(Lcom/perm/kate/WallPostActivity;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;
    .param p1, "x1"    # Ljava/lang/Long;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity;->publish_date:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$800(Lcom/perm/kate/WallPostActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/perm/kate/WallPostActivity;->signed:Z

    return v0
.end method

.method static synthetic access$802(Lcom/perm/kate/WallPostActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/perm/kate/WallPostActivity;->signed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/perm/kate/WallPostActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->isMe()Z

    move-result v0

    return v0
.end method

.method private addSmile(Ljava/lang/String;)V
    .locals 4
    .param p1, "smile_string"    # Ljava/lang/String;

    .prologue
    .line 1180
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1182
    .local v0, "smile_spannable":Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    invoke-static {p0, p1, v0, v3}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 1183
    iget-object v3, p0, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1184
    .local v1, "text":Landroid/text/Editable;
    iget-object v3, p0, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 1185
    .local v2, "where_insert":I
    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 1186
    return-void
.end method

.method private attachVideo(Z)V
    .locals 4
    .param p1, "from_group"    # Z

    .prologue
    .line 678
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 679
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/VideoActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 680
    if-eqz p1, :cond_0

    .line 681
    const-string v1, "com.perm.kate.user_id"

    iget-wide v2, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 684
    :goto_0
    const-string v1, "com.perm.kate.select_video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 685
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/WallPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 686
    return-void

    .line 683
    :cond_0
    const-string v1, "com.perm.kate.user_id"

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0
.end method

.method private attachmentsContain(Ljava/lang/String;)Z
    .locals 3
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 853
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 854
    .local v0, "att":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 855
    const/4 v1, 0x1

    .line 856
    .end local v0    # "att":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private checkForMyWall()V
    .locals 4

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->isMe()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->btn_post_settings:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->btn_post_settings:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method private createAddAttachmentDialog()V
    .locals 8

    .prologue
    .line 699
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 700
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070139

    const/16 v5, 0x64

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 701
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070136

    const/16 v5, 0x65

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f07013a

    const/16 v5, 0x66

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0701cd

    const/16 v5, 0x6d

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 704
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070138

    const/16 v5, 0x67

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 705
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070137

    const/16 v5, 0x68

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070117

    const/16 v5, 0x6c

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070409

    const/16 v5, 0x6a

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 708
    iget-wide v4, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_0

    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->isMe()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/perm/kate/WallPostActivity;->publish_date:Ljava/lang/Long;

    if-nez v3, :cond_1

    .line 709
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070289

    const/16 v5, 0x6b

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 710
    :cond_1
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f07003a

    .line 711
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 712
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/WallPostActivity$8;

    invoke-direct {v5, p0, v1}, Lcom/perm/kate/WallPostActivity$8;-><init>(Lcom/perm/kate/WallPostActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 754
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 755
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 756
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 757
    return-void
.end method

.method private createAttachAudioDialog()V
    .locals 8

    .prologue
    .line 585
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 586
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0703d2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0703d4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    iget-wide v4, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 589
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070257

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    :cond_0
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 591
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/WallPostActivity$5;

    invoke-direct {v5, p0, v1}, Lcom/perm/kate/WallPostActivity$5;-><init>(Lcom/perm/kate/WallPostActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 607
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 608
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 609
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 610
    return-void
.end method

.method private createAttachDocsDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 763
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 764
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070409

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 765
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070257

    invoke-direct {v3, v4, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 766
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 767
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/WallPostActivity$9;

    invoke-direct {v5, p0, v1}, Lcom/perm/kate/WallPostActivity$9;-><init>(Lcom/perm/kate/WallPostActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 780
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 781
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 782
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 783
    return-void
.end method

.method private createAttachVideoDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 650
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 651
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0703d6

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 652
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0703d5

    invoke-direct {v3, v4, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    iget-wide v4, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 654
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070257

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    :cond_0
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 656
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/WallPostActivity$7;

    invoke-direct {v5, p0, v1}, Lcom/perm/kate/WallPostActivity$7;-><init>(Lcom/perm/kate/WallPostActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 672
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 673
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v8}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 674
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 675
    return-void
.end method

.method private createExportDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 437
    const/4 v3, 0x2

    new-array v2, v3, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    const-string v4, "Twitter"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "Facebook"

    aput-object v4, v2, v3

    .line 438
    .local v2, "items":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 439
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v3, 0x7f07009f

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 440
    invoke-virtual {v0, v2, v5, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 441
    const v3, 0x7f07024c

    iget-object v4, p0, Lcom/perm/kate/WallPostActivity;->listener1:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 442
    const v3, 0x7f07015d

    invoke-virtual {v0, v3, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 443
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 444
    .local v1, "dialog":Landroid/app/Dialog;
    return-object v1
.end method

.method private createSettingsDialog()Landroid/app/Dialog;
    .locals 12

    .prologue
    const v11, 0x7f070267

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 803
    new-array v0, v10, [Ljava/lang/CharSequence;

    .line 805
    .local v0, "items":[Ljava/lang/CharSequence;
    iget-wide v4, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    .line 806
    iget-boolean v3, p0, Lcom/perm/kate/WallPostActivity;->edit_post:Z

    if-eqz v3, :cond_0

    .line 807
    invoke-virtual {p0, v11}, Lcom/perm/kate/WallPostActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v8

    .line 815
    :goto_0
    new-instance v1, Lcom/perm/kate/WallPostActivity$11;

    invoke-direct {v1, p0}, Lcom/perm/kate/WallPostActivity$11;-><init>(Lcom/perm/kate/WallPostActivity;)V

    .line 830
    .local v1, "save_listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 831
    invoke-virtual {v3, v0, v9, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070483

    .line 832
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070334

    .line 833
    invoke-virtual {v3, v4, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07015d

    .line 834
    invoke-virtual {v3, v4, v9}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 835
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    return-object v3

    .line 809
    .end local v1    # "save_listener":Landroid/content/DialogInterface$OnClickListener;
    .end local v2    # "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    :cond_0
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/CharSequence;

    .line 810
    const v3, 0x7f0701ad

    invoke-virtual {p0, v3}, Lcom/perm/kate/WallPostActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v8

    .line 811
    invoke-virtual {p0, v11}, Lcom/perm/kate/WallPostActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v10

    goto :goto_0

    .line 814
    :cond_1
    const v3, 0x7f0701fa

    invoke-virtual {p0, v3}, Lcom/perm/kate/WallPostActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v0, v8

    goto :goto_0
.end method

.method private disableFieldAndButtonsInUI(Z)V
    .locals 1
    .param p1, "disable"    # Z

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->btn_save:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 1061
    :cond_0
    :goto_0
    return-void

    .line 1048
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/WallPostActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    new-instance v0, Lcom/perm/kate/WallPostActivity$17;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/WallPostActivity$17;-><init>(Lcom/perm/kate/WallPostActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/WallPostActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private displaySharedContent()V
    .locals 6

    .prologue
    .line 517
    :try_start_0
    iget-boolean v5, p0, Lcom/perm/kate/WallPostActivity;->blocked:Z

    if-eqz v5, :cond_1

    .line 533
    :cond_0
    :goto_0
    return-void

    .line 519
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/WallPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 520
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v5, "android.intent.action.SEND"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 522
    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v3

    .line 523
    .local v3, "mime_type":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 524
    .local v1, "ext":Landroid/os/Bundle;
    if-eqz v3, :cond_2

    const-string v5, "text/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 525
    :cond_2
    invoke-direct {p0, v1}, Lcom/perm/kate/WallPostActivity;->displaySharedText(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 529
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "ext":Landroid/os/Bundle;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "mime_type":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 530
    .local v4, "th":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 531
    invoke-static {v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 526
    .end local v4    # "th":Ljava/lang/Throwable;
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "ext":Landroid/os/Bundle;
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "mime_type":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string v5, "image/"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 527
    invoke-direct {p0, v1}, Lcom/perm/kate/WallPostActivity;->displaySharedImage(Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private displaySharedImage(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "ext"    # Landroid/os/Bundle;

    .prologue
    .line 536
    const-string v1, "android.intent.extra.STREAM"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 537
    .local v0, "uri":Landroid/net/Uri;
    invoke-static {v0}, Lcom/perm/kate/Helper;->makeUriList(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/perm/kate/WallPostActivity;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    .line 538
    return-void
.end method

.method private displaySharedText(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "ext"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 548
    if-eqz p1, :cond_2

    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 549
    .local v0, "dat":Ljava/lang/Object;
    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 550
    .local v1, "data":Ljava/lang/String;
    :goto_1
    if-eqz v1, :cond_1

    .line 552
    invoke-static {v1}, Lcom/perm/kate/Helper;->isLink(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 554
    if-eqz p1, :cond_4

    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 555
    .local v2, "subject":Ljava/lang/Object;
    :goto_2
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, "title":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    if-eqz v3, :cond_5

    .end local v3    # "title":Ljava/lang/String;
    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 559
    sget-object v4, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/perm/kate/WallPostActivity;->fixHttpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    sget-object v4, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v5, "link"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    .end local v2    # "subject":Ljava/lang/Object;
    :cond_1
    :goto_4
    return-void

    .end local v0    # "dat":Ljava/lang/Object;
    .end local v1    # "data":Ljava/lang/String;
    :cond_2
    move-object v0, v3

    .line 548
    goto :goto_0

    .restart local v0    # "dat":Ljava/lang/Object;
    :cond_3
    move-object v1, v3

    .line 549
    goto :goto_1

    .restart local v1    # "data":Ljava/lang/String;
    :cond_4
    move-object v2, v3

    .line 554
    goto :goto_2

    .restart local v2    # "subject":Ljava/lang/Object;
    .restart local v3    # "title":Ljava/lang/String;
    :cond_5
    move-object v3, v1

    .line 557
    goto :goto_3

    .line 562
    .end local v2    # "subject":Ljava/lang/Object;
    .end local v3    # "title":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 563
    invoke-direct {p0, v1}, Lcom/perm/kate/WallPostActivity;->extractLinkFromSharedText(Ljava/lang/String;)V

    goto :goto_4
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
    .line 541
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 543
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uris"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 544
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/WallPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 545
    return-void
.end method

.method private extractLinkFromSharedText(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 573
    invoke-static {p1, v3}, Lcom/perm/kate/Helper;->extractUrl(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 574
    .local v0, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 575
    sget-object v2, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/perm/kate/WallPostActivity;->fixHttpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v2, "link"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    :cond_0
    return-void
.end method

.method private findAttachmentsInsideText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 839
    const/4 v2, 0x0

    invoke-static {p1, v2}, Lcom/perm/kate/Helper;->extractUrl(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 840
    .local v1, "urls":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 842
    .local v0, "url":Ljava/lang/String;
    const-string v3, "youtube.com/watch"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 843
    invoke-direct {p0, v0}, Lcom/perm/kate/WallPostActivity;->attachmentsContain(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 844
    const-string v3, ""

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 845
    sget-object v3, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 849
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    return-object p1
.end method

.method private fixHttpString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 569
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "link":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method private getExportString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 497
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->getExportValues()[Z

    move-result-object v0

    .line 498
    .local v0, "checked":[Z
    const-string v1, ""

    .line 499
    .local v1, "res":Ljava/lang/String;
    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    if-eqz v2, :cond_0

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "twitter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 501
    :cond_0
    const/4 v2, 0x1

    aget-boolean v2, v0, v2

    if-eqz v2, :cond_2

    .line 502
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 504
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "facebook"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 506
    :cond_2
    return-object v1
.end method

.method private getExportValues()[Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 473
    const/4 v2, 0x2

    new-array v1, v2, [Z

    fill-array-data v1, :array_0

    .line 474
    .local v1, "values":[Z
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 475
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const/4 v2, 0x0

    const-string v3, "export_twitter"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    aput-boolean v3, v1, v2

    .line 476
    const-string v2, "export_facebook"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    aput-boolean v2, v1, v4

    .line 477
    return-object v1

    .line 473
    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method private getLocation()V
    .locals 2

    .prologue
    .line 880
    new-instance v0, Lcom/perm/utils/MyLocation;

    invoke-direct {v0, p0}, Lcom/perm/utils/MyLocation;-><init>(Landroid/content/Context;)V

    .line 881
    .local v0, "geo":Lcom/perm/utils/MyLocation;
    new-instance v1, Lcom/perm/kate/WallPostActivity$12;

    invoke-direct {v1, p0}, Lcom/perm/kate/WallPostActivity$12;-><init>(Lcom/perm/kate/WallPostActivity;)V

    .line 890
    .local v1, "loc_res":Lcom/perm/utils/MyLocation$LocationResult;
    invoke-virtual {v0, v1}, Lcom/perm/utils/MyLocation;->getLocation(Lcom/perm/utils/MyLocation$LocationResult;)Z

    .line 891
    return-void
.end method

.method private getLocationWithCheck()V
    .locals 1

    .prologue
    .line 860
    invoke-static {}, Lcom/perm/kate/Helper;->isGoogleMapsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->showGoogleMapsActivity()V

    .line 864
    :goto_0
    return-void

    .line 863
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->getLocation()V

    goto :goto_0
.end method

.method private isMe()Z
    .locals 4

    .prologue
    .line 510
    iget-wide v0, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    :cond_0
    const/4 v0, 0x1

    .line 512
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private photoAttachmentsUploaded(Ljava/util/ArrayList;)V
    .locals 6
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
    .line 1064
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1065
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Photo;

    .line 1066
    .local v1, "uploaded_photo":Lcom/perm/kate/api/Photo;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "photo"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, v1, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1067
    .local v0, "attachment":Ljava/lang/String;
    new-instance v2, Lcom/perm/kate/WallPostActivity$18;

    invoke-direct {v2, p0, v0, v1}, Lcom/perm/kate/WallPostActivity$18;-><init>(Lcom/perm/kate/WallPostActivity;Ljava/lang/String;Lcom/perm/kate/api/Photo;)V

    invoke-virtual {p0, v2}, Lcom/perm/kate/WallPostActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1078
    .end local v0    # "attachment":Ljava/lang/String;
    .end local v1    # "uploaded_photo":Lcom/perm/kate/api/Photo;
    :cond_0
    return-void
.end method

.method private saveExportValues(ZZ)V
    .locals 3
    .param p1, "twitter"    # Z
    .param p2, "facebook"    # Z

    .prologue
    .line 481
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 482
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 483
    .local v0, "e":Landroid/content/SharedPreferences$Editor;
    const-string v2, "export_twitter"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 484
    const-string v2, "export_facebook"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 485
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 486
    return-void
.end method

.method private showAudioActivity(Z)V
    .locals 4
    .param p1, "from_group"    # Z

    .prologue
    .line 613
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 614
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/AudioActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 615
    if-eqz p1, :cond_0

    .line 616
    const-string v1, "com.perm.kate.owner_id"

    iget-wide v2, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 619
    :goto_0
    const-string v1, "com.perm.kate.select_audio"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 620
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/WallPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 621
    return-void

    .line 618
    :cond_0
    const-string v1, "com.perm.kate.owner_id"

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0
.end method

.method private showCancelConfirmDialog()V
    .locals 5

    .prologue
    .line 1024
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1025
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v2, 0x7f07044c

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07051d

    new-instance v4, Lcom/perm/kate/WallPostActivity$16;

    invoke-direct {v4, p0}, Lcom/perm/kate/WallPostActivity$16;-><init>(Lcom/perm/kate/WallPostActivity;)V

    .line 1026
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070319

    const/4 v4, 0x0

    .line 1031
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 1032
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    .line 1033
    .local v1, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1034
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 1035
    return-void
.end method

.method private showCreatePollActivity()V
    .locals 4

    .prologue
    .line 1189
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1190
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/PollCreateActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1191
    const-string v1, "com.perm.kate.owner_id"

    iget-wide v2, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1192
    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/WallPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1193
    return-void
.end method

.method private showDocsActivity(Z)V
    .locals 4
    .param p1, "from_group"    # Z

    .prologue
    .line 786
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/DocsActivity2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 787
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 788
    const-string v1, "owner_id"

    iget-wide v2, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 791
    :goto_0
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 792
    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/WallPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 793
    return-void

    .line 790
    :cond_0
    const-string v1, "owner_id"

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0
.end method

.method private showFriendsActivityForSelect()V
    .locals 3

    .prologue
    .line 1196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1197
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/MembersActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1198
    const-string v1, "com.perm.kate.only_members"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1199
    const/16 v1, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/WallPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1200
    return-void
.end method

.method private showGoogleMapsActivity()V
    .locals 2

    .prologue
    .line 867
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 868
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/GoogleMapsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 869
    sget v1, Lcom/perm/kate/GoogleMapsActivity;->CHOOSE_LOCATION:I

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/WallPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 870
    return-void
.end method

.method private showPost()V
    .locals 13

    .prologue
    .line 912
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->post_text:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 913
    const-string v0, ""

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->post_text:Ljava/lang/String;

    .line 914
    :cond_0
    new-instance v12, Landroid/text/SpannableStringBuilder;

    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->post_text:Ljava/lang/String;

    invoke-direct {v12, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 916
    .local v12, "smile_spannable":Landroid/text/SpannableStringBuilder;
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->post_text:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, v12, v1}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 918
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    invoke-virtual {v0, v12}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 919
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/WallPostActivity;->post_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/perm/kate/WallPostActivity;->post_text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 920
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 921
    .local v8, "account_id":Ljava/lang/Long;
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/perm/kate/WallPostActivity;->_id:J

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/db/DataHelper;->fetchAttachments(IJJZ)Ljava/util/ArrayList;

    move-result-object v10

    .line 922
    .local v10, "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/api/Attachment;

    .line 923
    .local v7, "a":Lcom/perm/kate/api/Attachment;
    iget-object v1, v7, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v7, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    if-eqz v1, :cond_3

    .line 924
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-wide v2, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-wide v2, v2, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 925
    .local v9, "attachment":Ljava/lang/String;
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 956
    .end local v7    # "a":Lcom/perm/kate/api/Attachment;
    .end local v8    # "account_id":Ljava/lang/Long;
    .end local v9    # "attachment":Ljava/lang/String;
    .end local v10    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    .end local v12    # "smile_spannable":Landroid/text/SpannableStringBuilder;
    :catch_0
    move-exception v11

    .line 957
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 958
    invoke-static {v11}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 960
    .end local v11    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->UpdateAttachmentsCount()V

    .line 961
    return-void

    .line 927
    .restart local v7    # "a":Lcom/perm/kate/api/Attachment;
    .restart local v8    # "account_id":Ljava/lang/Long;
    .restart local v10    # "atts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    .restart local v12    # "smile_spannable":Landroid/text/SpannableStringBuilder;
    :cond_3
    :try_start_1
    iget-object v1, v7, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v7, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    if-eqz v1, :cond_4

    .line 928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    iget-wide v2, v2, Lcom/perm/kate/api/Video;->owner_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    iget-wide v2, v2, Lcom/perm/kate/api/Video;->vid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 929
    .restart local v9    # "attachment":Ljava/lang/String;
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 930
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 931
    .end local v9    # "attachment":Ljava/lang/String;
    :cond_4
    iget-object v1, v7, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v7, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    if-eqz v1, :cond_5

    .line 932
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    iget-wide v2, v2, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 933
    .restart local v9    # "attachment":Ljava/lang/String;
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 934
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 935
    .end local v9    # "attachment":Ljava/lang/String;
    :cond_5
    iget-object v1, v7, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v2, "geo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v7, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    if-eqz v1, :cond_6

    .line 936
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    iget-object v2, v2, Lcom/perm/kate/api/Geo;->lat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    iget-object v2, v2, Lcom/perm/kate/api/Geo;->lon:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 937
    .restart local v9    # "attachment":Ljava/lang/String;
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 938
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 939
    .end local v9    # "attachment":Ljava/lang/String;
    :cond_6
    iget-object v1, v7, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v2, "link"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v7, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    if-eqz v1, :cond_7

    .line 940
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    iget-object v2, v7, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v2, v2, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 941
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v2, "link"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 942
    :cond_7
    iget-object v1, v7, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v2, "doc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v7, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    if-eqz v1, :cond_8

    .line 943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-wide v2, v2, Lcom/perm/kate/api/Document;->owner_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-wide v2, v2, Lcom/perm/kate/api/Document;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 944
    .restart local v9    # "attachment":Ljava/lang/String;
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 945
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v2, "doc"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 946
    .end local v9    # "attachment":Ljava/lang/String;
    :cond_8
    iget-object v1, v7, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v2, "poll"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v7, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    if-eqz v1, :cond_9

    .line 947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "poll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    iget-wide v2, v2, Lcom/perm/kate/api/VkPoll;->owner_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    iget-wide v2, v2, Lcom/perm/kate/api/VkPoll;->id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 948
    .restart local v9    # "attachment":Ljava/lang/String;
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 949
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v2, "poll"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 950
    .end local v9    # "attachment":Ljava/lang/String;
    :cond_9
    iget-object v1, v7, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v2, "album"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v7, Lcom/perm/kate/api/Attachment;->album:Lcom/perm/kate/api/Album;

    if-eqz v1, :cond_1

    .line 951
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "album"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/perm/kate/api/Attachment;->album:Lcom/perm/kate/api/Album;

    iget-wide v2, v2, Lcom/perm/kate/api/Album;->owner_id:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v7, Lcom/perm/kate/api/Attachment;->album:Lcom/perm/kate/api/Album;

    iget-wide v2, v2, Lcom/perm/kate/api/Album;->aid:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 952
    .restart local v9    # "attachment":Ljava/lang/String;
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 953
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v2, "album"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method private showPublishDateActivity()V
    .locals 3

    .prologue
    .line 1173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1174
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/PublishDateActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1175
    const-string v1, "com.perm.kate.publish_date"

    iget-object v2, p0, Lcom/perm/kate/WallPostActivity;->publish_date:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1176
    const/16 v1, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/WallPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1177
    return-void
.end method

.method private showSearchActivity(Z)V
    .locals 3
    .param p1, "video"    # Z

    .prologue
    const/4 v2, 0x1

    .line 624
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 625
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/SearchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 626
    if-eqz p1, :cond_0

    .line 627
    const-string v1, "com.perm.kate.select_video"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 628
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/WallPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 633
    :goto_0
    return-void

    .line 630
    :cond_0
    const-string v1, "com.perm.kate.select_audio"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 631
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/WallPostActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private thereIsText()Z
    .locals 2

    .prologue
    .line 1015
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1016
    .local v0, "text":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1017
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->showCancelConfirmDialog()V

    .line 1018
    const/4 v1, 0x1

    .line 1020
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateLocation(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 894
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity;->geo_location:Landroid/location/Location;

    .line 895
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity;->geo_location:Landroid/location/Location;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 896
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/WallPostActivity;->geo_location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/WallPostActivity;->geo_location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 897
    .local v0, "attachment":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/perm/kate/WallPostActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 898
    new-instance v1, Lcom/perm/kate/WallPostActivity$13;

    invoke-direct {v1, p0, v0}, Lcom/perm/kate/WallPostActivity$13;-><init>(Lcom/perm/kate/WallPostActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/perm/kate/WallPostActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 908
    .end local v0    # "attachment":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "lat"    # Ljava/lang/String;
    .param p2, "lon"    # Ljava/lang/String;

    .prologue
    .line 873
    new-instance v0, Landroid/location/Location;

    const-string v1, "network"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 874
    .local v0, "l":Landroid/location/Location;
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 875
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 876
    invoke-direct {p0, v0}, Lcom/perm/kate/WallPostActivity;->updateLocation(Landroid/location/Location;)V

    .line 877
    return-void
.end method

.method private updatePublishDateLayout()V
    .locals 8

    .prologue
    .line 1145
    iget-object v2, p0, Lcom/perm/kate/WallPostActivity;->publish_date:Ljava/lang/Long;

    if-eqz v2, :cond_0

    .line 1146
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "d MMMM yyyy HH:mm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1147
    .local v0, "df":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070223

    invoke-virtual {p0, v3}, Lcom/perm/kate/WallPostActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    iget-object v4, p0, Lcom/perm/kate/WallPostActivity;->publish_date:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/perm/utils/TimeFix;->fix(J)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1148
    .local v1, "text_publish_date":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/WallPostActivity;->tb_publish_date:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1149
    iget-object v2, p0, Lcom/perm/kate/WallPostActivity;->ll_publish_date:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1150
    iget-object v2, p0, Lcom/perm/kate/WallPostActivity;->btn_save:Landroid/widget/Button;

    const v3, 0x7f0701ba

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 1155
    .end local v0    # "df":Ljava/text/SimpleDateFormat;
    .end local v1    # "text_publish_date":Ljava/lang/String;
    :goto_0
    return-void

    .line 1152
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/WallPostActivity;->ll_publish_date:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1153
    iget-object v2, p0, Lcom/perm/kate/WallPostActivity;->btn_save:Landroid/widget/Button;

    const v3, 0x7f0701f1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 408
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->isMe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 409
    const/4 v0, 0x0

    const/16 v1, 0x3eb

    const v2, 0x7f07009f

    invoke-interface {p1, v0, v3, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 410
    :cond_0
    return v3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 42
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 283
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/WallPostActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v5}, Lcom/perm/kate/photoupload/PhotoChooser;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/perm/kate/photoupload/PhotoChooser$Callback;)Landroid/net/Uri;

    .line 284
    if-nez p1, :cond_2

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_2

    .line 285
    const-string v5, "audios"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 286
    .local v31, "audios":Ljava/lang/String;
    if-eqz v31, :cond_0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 287
    const-string v5, ","

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 288
    .local v32, "audios_array":[Ljava/lang/String;
    move-object/from16 v0, v32

    array-length v6, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v30, v32, v5

    .line 289
    .local v30, "attachment":Ljava/lang/String;
    sget-object v7, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    sget-object v7, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 293
    .end local v30    # "attachment":Ljava/lang/String;
    .end local v32    # "audios_array":[Ljava/lang/String;
    :cond_0
    const-string v5, "audio_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 294
    .local v21, "attached_audio_id":Ljava/lang/Long;
    const-string v5, "owner_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    .line 295
    .local v25, "attached_owner_id":Ljava/lang/Long;
    const-string v5, "Kate.WallPostActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attached_audio_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attached_owner_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 297
    .restart local v30    # "attachment":Ljava/lang/String;
    sget-object v5, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    sget-object v5, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    .end local v21    # "attached_audio_id":Ljava/lang/Long;
    .end local v25    # "attached_owner_id":Ljava/lang/Long;
    .end local v30    # "attachment":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/WallPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f07003d

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 302
    .end local v31    # "audios":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x4

    move/from16 v0, p1

    if-ne v0, v5, :cond_5

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_5

    .line 303
    const-string v5, "audios"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 304
    .restart local v31    # "audios":Ljava/lang/String;
    if-eqz v31, :cond_3

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 305
    const-string v5, ","

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 306
    .restart local v32    # "audios_array":[Ljava/lang/String;
    move-object/from16 v0, v32

    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v30, v32, v5

    .line 307
    .restart local v30    # "attachment":Ljava/lang/String;
    sget-object v7, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    sget-object v7, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 306
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 311
    .end local v30    # "attachment":Ljava/lang/String;
    .end local v32    # "audios_array":[Ljava/lang/String;
    :cond_3
    const-string v5, "audio_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 312
    .restart local v21    # "attached_audio_id":Ljava/lang/Long;
    const-string v5, "owner_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 313
    .local v22, "attached_audio_owner_id":Ljava/lang/Long;
    const-string v5, "Kate.WallPostActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attached_audio_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attached_audio_owner_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 315
    .restart local v30    # "attachment":Ljava/lang/String;
    sget-object v5, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    sget-object v5, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    .end local v21    # "attached_audio_id":Ljava/lang/Long;
    .end local v22    # "attached_audio_owner_id":Ljava/lang/Long;
    .end local v30    # "attachment":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/WallPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f07003d

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 320
    .end local v31    # "audios":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x6

    move/from16 v0, p1

    if-ne v0, v5, :cond_6

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_6

    .line 321
    const-string v5, "video_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    .line 322
    .local v28, "attached_video_id":Ljava/lang/Long;
    const-string v5, "owner_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v29

    .line 323
    .local v29, "attached_video_owner_id":Ljava/lang/Long;
    const-string v5, "Kate.WallPostActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attached_video_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attached_video_owner_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 325
    .restart local v30    # "attachment":Ljava/lang/String;
    sget-object v5, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    sget-object v5, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/WallPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f070506

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 329
    .end local v28    # "attached_video_id":Ljava/lang/Long;
    .end local v29    # "attached_video_owner_id":Ljava/lang/Long;
    .end local v30    # "attachment":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x3

    move/from16 v0, p1

    if-ne v0, v5, :cond_7

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_7

    .line 330
    const-string v5, "video_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    .line 331
    .restart local v28    # "attached_video_id":Ljava/lang/Long;
    const-string v5, "owner_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    .line 332
    .restart local v25    # "attached_owner_id":Ljava/lang/Long;
    const-string v5, "Kate.WallPostActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attached_video_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v28

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attached_owner_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v25

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 334
    .restart local v30    # "attachment":Ljava/lang/String;
    sget-object v5, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    sget-object v5, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/WallPostActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f070506

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 338
    .end local v25    # "attached_owner_id":Ljava/lang/Long;
    .end local v28    # "attached_video_id":Ljava/lang/Long;
    .end local v30    # "attachment":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x7

    move/from16 v0, p1

    if-ne v0, v5, :cond_8

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_8

    .line 339
    const-string v5, "uris"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v40

    check-cast v40, Ljava/util/ArrayList;

    .line 340
    .local v40, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v5, "resize_option"

    const/4 v6, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 341
    .local v10, "resize_option":I
    const-string v5, "rotate"

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v37

    .line 342
    .local v37, "rotate":I
    const v5, 0x7f070378

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/perm/kate/WallPostActivity;->displayToast(I)V

    .line 343
    invoke-virtual/range {v40 .. v40}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    .line 344
    new-instance v5, Lcom/perm/kate/photoupload/WallUploader;

    const/4 v6, 0x0

    move-object/from16 v0, v40

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/perm/kate/WallPostActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v13}, Lcom/perm/kate/photoupload/WallUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;JILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/perm/kate/photoupload/WallUploader;->upload()V

    .line 348
    .end local v10    # "resize_option":I
    .end local v37    # "rotate":I
    .end local v40    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_8
    :goto_2
    const/16 v5, 0x8

    move/from16 v0, p1

    if-ne v0, v5, :cond_9

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_9

    .line 349
    const-string v5, "uri"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 351
    .local v13, "uri":Landroid/net/Uri;
    const v5, 0x7f070378

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/perm/kate/WallPostActivity;->displayToast(I)V

    .line 352
    new-instance v11, Lcom/perm/kate/photoupload/WallUploader;

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    move-object/from16 v17, v0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v12, p0

    invoke-direct/range {v11 .. v19}, Lcom/perm/kate/photoupload/WallUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;JILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/perm/kate/photoupload/WallUploader;->upload()V

    .line 354
    .end local v13    # "uri":Landroid/net/Uri;
    :cond_9
    const/16 v5, 0x9

    move/from16 v0, p1

    if-ne v0, v5, :cond_a

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_a

    .line 355
    const-string v5, "doc_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    .line 356
    .local v23, "attached_doc_id":Ljava/lang/Long;
    const-string v5, "owner_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    .line 357
    .local v24, "attached_doc_owner_id":Ljava/lang/Long;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 358
    .restart local v30    # "attachment":Ljava/lang/String;
    sget-object v5, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    sget-object v5, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v6, "doc"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    .end local v23    # "attached_doc_id":Ljava/lang/Long;
    .end local v24    # "attached_doc_owner_id":Ljava/lang/Long;
    .end local v30    # "attachment":Ljava/lang/String;
    :cond_a
    invoke-static {}, Lcom/perm/kate/Helper;->isGoogleMapsSupported()Z

    move-result v5

    if-eqz v5, :cond_b

    sget v5, Lcom/perm/kate/GoogleMapsActivity;->CHOOSE_LOCATION:I

    move/from16 v0, p1

    if-ne v0, v5, :cond_b

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_b

    .line 362
    const-string v5, "latitude"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 363
    .local v33, "latitude":Ljava/lang/String;
    const-string v5, "longitude"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    .line 364
    .local v34, "longitude":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v34

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/WallPostActivity;->updateLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    .end local v33    # "latitude":Ljava/lang/String;
    .end local v34    # "longitude":Ljava/lang/String;
    :cond_b
    const/16 v5, 0xb

    move/from16 v0, p1

    if-ne v0, v5, :cond_d

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_d

    .line 367
    const-string v5, "publish_date"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 368
    .local v4, "_publishDate":Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-lez v5, :cond_c

    .line 369
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/perm/kate/WallPostActivity;->publish_date:Ljava/lang/Long;

    .line 370
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/WallPostActivity;->updatePublishDateLayout()V

    .line 372
    .end local v4    # "_publishDate":Ljava/lang/Long;
    :cond_d
    const/16 v5, 0xc

    move/from16 v0, p1

    if-ne v0, v5, :cond_e

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_e

    .line 373
    const-string v5, "poll_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    .line 374
    .local v26, "attached_poll_id":Ljava/lang/Long;
    const-string v5, "owner_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    .line 375
    .local v27, "attached_poll_owner_id":Ljava/lang/Long;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "poll"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 376
    .restart local v30    # "attachment":Ljava/lang/String;
    sget-object v5, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    sget-object v5, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v6, "poll"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    .end local v26    # "attached_poll_id":Ljava/lang/Long;
    .end local v27    # "attached_poll_owner_id":Ljava/lang/Long;
    .end local v30    # "attachment":Ljava/lang/String;
    :cond_e
    const/16 v5, 0xd

    move/from16 v0, p1

    if-ne v0, v5, :cond_f

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_f

    .line 380
    const-string v5, "com.perm.kate.member_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v35

    .line 381
    .local v35, "member_id":Ljava/lang/Long;
    if-eqz v35, :cond_11

    const/4 v5, 0x1

    move v6, v5

    :goto_3
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v14, 0x0

    cmp-long v5, v8, v14

    if-lez v5, :cond_12

    const/4 v5, 0x1

    :goto_4
    and-int/2addr v5, v6

    if-eqz v5, :cond_f

    .line 382
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v38

    .line 383
    .local v38, "text":Landroid/text/Editable;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v41

    .line 384
    .local v41, "where_insert":I
    invoke-interface/range {v38 .. v38}, Landroid/text/Editable;->length()I

    move-result v5

    if-eqz v5, :cond_13

    if-lez v41, :cond_13

    add-int/lit8 v5, v41, -0x1

    move-object/from16 v0, v38

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-eq v5, v6, :cond_13

    const-string v36, " "

    .line 385
    .local v36, "mention":Ljava/lang/String;
    :goto_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "*id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {v35 .. v35}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 386
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v20

    .line 387
    .local v20, "_u":Lcom/perm/kate/api/User;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v20, :cond_14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " ("

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    iget-object v7, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ") "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_6
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 388
    move-object/from16 v0, v38

    move/from16 v1, v41

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 391
    .end local v20    # "_u":Lcom/perm/kate/api/User;
    .end local v35    # "member_id":Ljava/lang/Long;
    .end local v36    # "mention":Ljava/lang/String;
    .end local v38    # "text":Landroid/text/Editable;
    .end local v41    # "where_insert":I
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/WallPostActivity;->UpdateAttachmentsCount()V

    .line 396
    :goto_7
    return-void

    .line 346
    .restart local v10    # "resize_option":I
    .restart local v37    # "rotate":I
    .restart local v40    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_10
    new-instance v5, Lcom/perm/kate/WallPostActivity$MultiUploader;

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-direct {v5, v0, v1, v10}, Lcom/perm/kate/WallPostActivity$MultiUploader;-><init>(Lcom/perm/kate/WallPostActivity;Ljava/util/ArrayList;I)V

    invoke-virtual {v5}, Lcom/perm/kate/WallPostActivity$MultiUploader;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 392
    .end local v10    # "resize_option":I
    .end local v37    # "rotate":I
    .end local v40    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :catch_0
    move-exception v39

    .line 393
    .local v39, "th":Ljava/lang/Throwable;
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Throwable;->printStackTrace()V

    .line 394
    invoke-static/range {v39 .. v39}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 381
    .end local v39    # "th":Ljava/lang/Throwable;
    .restart local v35    # "member_id":Ljava/lang/Long;
    :cond_11
    const/4 v5, 0x0

    move v6, v5

    goto/16 :goto_3

    :cond_12
    const/4 v5, 0x0

    goto/16 :goto_4

    .line 384
    .restart local v38    # "text":Landroid/text/Editable;
    .restart local v41    # "where_insert":I
    :cond_13
    :try_start_1
    const-string v36, ""

    goto/16 :goto_5

    .line 387
    .restart local v20    # "_u":Lcom/perm/kate/api/User;
    .restart local v36    # "mention":Ljava/lang/String;
    :cond_14
    const-string v5, " "
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const v6, 0x7f030120

    invoke-virtual {p0, v6}, Lcom/perm/kate/WallPostActivity;->setContentView(I)V

    .line 90
    const v6, 0x7f070479

    invoke-virtual {p0, v6}, Lcom/perm/kate/WallPostActivity;->setHeaderTitle(I)V

    .line 91
    invoke-virtual {p0}, Lcom/perm/kate/WallPostActivity;->setupMenuButton()V

    .line 92
    sget-object v6, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v6, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/perm/kate/WallPostActivity;->finish()V

    .line 167
    :goto_0
    return-void

    .line 96
    :cond_0
    sget-object v6, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 97
    sget-object v6, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 98
    const v6, 0x7f0e0365

    invoke-virtual {p0, v6}, Lcom/perm/kate/WallPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/EditText;

    iput-object v6, p0, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    .line 99
    iget-object v6, p0, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    new-instance v7, Lcom/perm/kate/WallPostActivity$TextChangedListener;

    invoke-direct {v7, p0}, Lcom/perm/kate/WallPostActivity$TextChangedListener;-><init>(Lcom/perm/kate/WallPostActivity;)V

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 100
    const v6, 0x7f0e019f

    invoke-virtual {p0, v6}, Lcom/perm/kate/WallPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/perm/kate/WallPostActivity;->btn_save:Landroid/widget/Button;

    .line 101
    const v6, 0x7f0e025e

    invoke-virtual {p0, v6}, Lcom/perm/kate/WallPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/perm/kate/WallPostActivity;->btn_post_settings:Landroid/widget/ImageButton;

    .line 102
    iget-object v6, p0, Lcom/perm/kate/WallPostActivity;->btn_save:Landroid/widget/Button;

    iget-object v7, p0, Lcom/perm/kate/WallPostActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v6, p0, Lcom/perm/kate/WallPostActivity;->btn_post_settings:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/perm/kate/WallPostActivity;->settings_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v6, 0x7f0e025b

    invoke-virtual {p0, v6}, Lcom/perm/kate/WallPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/perm/kate/WallPostActivity;->add_smile:Landroid/widget/ImageButton;

    .line 105
    const v6, 0x7f0e0241

    invoke-virtual {p0, v6}, Lcom/perm/kate/WallPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/perm/kate/WallPostActivity;->tv_attachments_count:Landroid/widget/TextView;

    .line 106
    const v6, 0x7f0e025c

    invoke-virtual {p0, v6}, Lcom/perm/kate/WallPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/perm/kate/WallPostActivity;->ff_attachments_count_placeholder:Landroid/view/View;

    .line 107
    invoke-virtual {p0}, Lcom/perm/kate/WallPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.perm.kate.owner_id"

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    .line 108
    iget-wide v6, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 109
    sget-object v6, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v6}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/WallPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.perm.kate.post_id"

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/perm/kate/WallPostActivity;->post_id:J

    .line 111
    invoke-virtual {p0}, Lcom/perm/kate/WallPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.perm.kate.post_text"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/perm/kate/WallPostActivity;->post_text:Ljava/lang/String;

    .line 112
    invoke-virtual {p0}, Lcom/perm/kate/WallPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.perm.kate.publish_date"

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 113
    .local v0, "_publishDate":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    .line 114
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iput-object v6, p0, Lcom/perm/kate/WallPostActivity;->publish_date:Ljava/lang/Long;

    .line 115
    :cond_2
    invoke-virtual {p0}, Lcom/perm/kate/WallPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.perm.kate._id"

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/perm/kate/WallPostActivity;->_id:J

    .line 116
    iget-wide v6, p0, Lcom/perm/kate/WallPostActivity;->post_id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_7

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Lcom/perm/kate/WallPostActivity;->edit_post:Z

    .line 117
    invoke-virtual {p0}, Lcom/perm/kate/WallPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.perm.kate.is_suggest"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/perm/kate/WallPostActivity;->is_suggest:Z

    .line 118
    invoke-virtual {p0}, Lcom/perm/kate/WallPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.perm.kate.is_suggested"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/perm/kate/WallPostActivity;->is_suggested:Z

    .line 119
    invoke-virtual {p0}, Lcom/perm/kate/WallPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "signed"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/perm/kate/WallPostActivity;->signed:Z

    .line 122
    iget-wide v6, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    .line 123
    sget-object v6, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v8, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    neg-long v8, v8

    invoke-virtual {v6, v8, v9}, Lcom/perm/kate/db/DataHelper;->fetchGroupFull(J)Lcom/perm/kate/api/Group;

    move-result-object v4

    .line 124
    .local v4, "g":Lcom/perm/kate/api/Group;
    if-eqz v4, :cond_3

    iget-object v6, v4, Lcom/perm/kate/api/Group;->can_see_all_posts:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_3

    .line 125
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/perm/kate/WallPostActivity;->from_group:Z

    .line 128
    .end local v4    # "g":Lcom/perm/kate/api/Group;
    :cond_3
    const v6, 0x7f0e00ea

    invoke-virtual {p0, v6}, Lcom/perm/kate/WallPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/perm/kate/WallPostActivity;->btn_add_attachment:Landroid/widget/ImageButton;

    .line 129
    iget-object v6, p0, Lcom/perm/kate/WallPostActivity;->btn_add_attachment:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/perm/kate/WallPostActivity;->add_attachment_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    const v6, 0x7f0e025d

    invoke-virtual {p0, v6}, Lcom/perm/kate/WallPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/perm/kate/WallPostActivity;->btn_attachments:Landroid/widget/ImageButton;

    .line 131
    iget-object v6, p0, Lcom/perm/kate/WallPostActivity;->btn_attachments:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/perm/kate/WallPostActivity;->attachments_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->checkForMyWall()V

    .line 134
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->displaySharedContent()V

    .line 135
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->UpdateAttachmentsCount()V

    .line 136
    iget-boolean v6, p0, Lcom/perm/kate/WallPostActivity;->edit_post:Z

    if-eqz v6, :cond_5

    .line 137
    iget-boolean v6, p0, Lcom/perm/kate/WallPostActivity;->is_suggested:Z

    if-nez v6, :cond_8

    .line 140
    iget-wide v6, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-lez v6, :cond_4

    .line 141
    const v6, 0x7f0e025e

    invoke-virtual {p0, v6}, Lcom/perm/kate/WallPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->showPost()V

    .line 148
    :cond_5
    const v6, 0x7f0e0264

    invoke-virtual {p0, v6}, Lcom/perm/kate/WallPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/perm/kate/WallPostActivity;->counter:Landroid/widget/TextView;

    .line 149
    const v6, 0x7f0e0366

    invoke-virtual {p0, v6}, Lcom/perm/kate/WallPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/perm/kate/WallPostActivity;->ll_publish_date:Landroid/widget/LinearLayout;

    .line 150
    iget-object v6, p0, Lcom/perm/kate/WallPostActivity;->ll_publish_date:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/perm/kate/WallPostActivity;->publish_dater_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    const v6, 0x7f0e0367

    invoke-virtual {p0, v6}, Lcom/perm/kate/WallPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/perm/kate/WallPostActivity;->tb_publish_date:Landroid/widget/TextView;

    .line 152
    const v6, 0x7f0e0368

    invoke-virtual {p0, v6}, Lcom/perm/kate/WallPostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/perm/kate/WallPostActivity;->ib_publish_date_clear:Landroid/widget/ImageButton;

    .line 153
    iget-object v6, p0, Lcom/perm/kate/WallPostActivity;->ib_publish_date_clear:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/perm/kate/WallPostActivity;->publish_date_clear_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->updatePublishDateLayout()V

    .line 155
    invoke-virtual {p0}, Lcom/perm/kate/WallPostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "com.perm.kate.photo"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/api/Photo;

    .line 156
    .local v5, "photo":Lcom/perm/kate/api/Photo;
    if-eqz v5, :cond_6

    .line 157
    iget-wide v6, v5, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "attached_photo_id":Ljava/lang/String;
    const-string v6, "Kate.WallPostActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "attached_photo_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " owner_id="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "photo"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "attachment":Ljava/lang/String;
    sget-object v6, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v6, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v7, "photo"

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    .end local v2    # "attached_photo_id":Ljava/lang/String;
    .end local v3    # "attachment":Ljava/lang/String;
    :cond_6
    new-instance v6, Lcom/perm/kate/smile/SmileKeyboard;

    invoke-direct {v6}, Lcom/perm/kate/smile/SmileKeyboard;-><init>()V

    iput-object v6, p0, Lcom/perm/kate/WallPostActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    .line 165
    iget-object v6, p0, Lcom/perm/kate/WallPostActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    iget-object v7, p0, Lcom/perm/kate/WallPostActivity;->add_smile:Landroid/widget/ImageButton;

    iget-object v8, p0, Lcom/perm/kate/WallPostActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    invoke-virtual {v6, p0, v7, v8}, Lcom/perm/kate/smile/SmileKeyboard;->init(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;)V

    .line 166
    iget-object v6, p0, Lcom/perm/kate/WallPostActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    iget-object v7, p0, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    invoke-virtual {v6, v7}, Lcom/perm/kate/smile/SmileKeyboard;->registerEditText(Landroid/widget/EditText;)V

    goto/16 :goto_0

    .line 116
    .end local v5    # "photo":Lcom/perm/kate/api/Photo;
    :cond_7
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 143
    :cond_8
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/perm/kate/WallPostActivity;->signed:Z

    .line 144
    const v6, 0x7f07027a

    invoke-virtual {p0, v6}, Lcom/perm/kate/WallPostActivity;->setHeaderTitle(I)V

    goto/16 :goto_2
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 427
    packed-switch p1, :pswitch_data_0

    .line 433
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 429
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->createExportDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 431
    :pswitch_1
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->createSettingsDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 427
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 402
    invoke-virtual {p0, p1}, Lcom/perm/kate/WallPostActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 403
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onGoHome()V
    .locals 1

    .prologue
    .line 1040
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->thereIsText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1043
    :goto_0
    return-void

    .line 1042
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onGoHome()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1006
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1008
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->thereIsText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    const/4 v0, 0x1

    .line 1011
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 417
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 423
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 419
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/perm/kate/WallPostActivity;->showDialog(I)V

    .line 420
    const/4 v0, 0x1

    goto :goto_0

    .line 417
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 8
    .param p1, "id"    # I
    .param p2, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 449
    if-nez p1, :cond_0

    move-object v2, p2

    .line 450
    check-cast v2, Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 451
    .local v1, "lv":Landroid/widget/ListView;
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->getExportValues()[Z

    move-result-object v0

    .line 452
    .local v0, "checked":[Z
    aget-boolean v2, v0, v6

    invoke-virtual {v1, v6, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 453
    aget-boolean v2, v0, v7

    invoke-virtual {v1, v7, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 455
    .end local v0    # "checked":[Z
    .end local v1    # "lv":Landroid/widget/ListView;
    :cond_0
    if-ne p1, v7, :cond_1

    .line 456
    check-cast p2, Landroid/support/v7/app/AlertDialog;

    .end local p2    # "dialog":Landroid/app/Dialog;
    invoke-virtual {p2}, Landroid/support/v7/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 457
    .restart local v1    # "lv":Landroid/widget/ListView;
    iget-wide v2, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 458
    iget-boolean v2, p0, Lcom/perm/kate/WallPostActivity;->edit_post:Z

    if-eqz v2, :cond_2

    .line 459
    iget-boolean v2, p0, Lcom/perm/kate/WallPostActivity;->signed:Z

    invoke-virtual {v1, v6, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 467
    .end local v1    # "lv":Landroid/widget/ListView;
    :cond_1
    :goto_0
    return-void

    .line 461
    .restart local v1    # "lv":Landroid/widget/ListView;
    :cond_2
    iget-boolean v2, p0, Lcom/perm/kate/WallPostActivity;->from_group:Z

    invoke-virtual {v1, v6, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 462
    iget-boolean v2, p0, Lcom/perm/kate/WallPostActivity;->signed:Z

    invoke-virtual {v1, v7, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 465
    :cond_3
    iget-boolean v2, p0, Lcom/perm/kate/WallPostActivity;->only_friends:Z

    invoke-virtual {v1, v6, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onResume()V

    .line 181
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->UpdateAttachmentsCount()V

    .line 182
    return-void
.end method
