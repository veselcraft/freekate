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

.field static attachments_objects:Ljava/util/ArrayList;


# instance fields
.field private add_attachment_OnClickListerer:Landroid/view/View$OnClickListener;

.field private add_smile:Landroid/widget/ImageButton;

.field private attachments_OnClickListerer:Landroid/view/View$OnClickListener;

.field private btn_add_attachment:Landroid/widget/ImageButton;

.field private btn_attachments:Landroid/widget/ImageButton;

.field private btn_post_settings:Landroid/widget/ImageButton;

.field private btn_save:Landroid/widget/Button;

.field callback_save:Lcom/perm/kate/session/Callback;

.field private copyright_link:Ljava/lang/String;

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

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lcom/perm/kate/WallPostActivity;->only_friends:Z

    .line 75
    iput-boolean v0, p0, Lcom/perm/kate/WallPostActivity;->from_group:Z

    .line 76
    iput-boolean v0, p0, Lcom/perm/kate/WallPostActivity;->signed:Z

    const/4 v1, 0x0

    .line 77
    iput-object v1, p0, Lcom/perm/kate/WallPostActivity;->geo_location:Landroid/location/Location;

    .line 79
    iput-boolean v0, p0, Lcom/perm/kate/WallPostActivity;->edit_post:Z

    .line 86
    iput-boolean v0, p0, Lcom/perm/kate/WallPostActivity;->is_suggest:Z

    .line 87
    iput-boolean v0, p0, Lcom/perm/kate/WallPostActivity;->is_suggested:Z

    .line 206
    new-instance v0, Lcom/perm/kate/WallPostActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$1;-><init>(Lcom/perm/kate/WallPostActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 234
    new-instance v0, Lcom/perm/kate/WallPostActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/WallPostActivity$2;-><init>(Lcom/perm/kate/WallPostActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->callback_save:Lcom/perm/kate/session/Callback;

    .line 277
    new-instance v0, Lcom/perm/kate/WallPostActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$3;-><init>(Lcom/perm/kate/WallPostActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->add_attachment_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 475
    new-instance v0, Lcom/perm/kate/WallPostActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$4;-><init>(Lcom/perm/kate/WallPostActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->listener1:Landroid/content/DialogInterface$OnClickListener;

    .line 622
    new-instance v0, Lcom/perm/kate/WallPostActivity$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$6;-><init>(Lcom/perm/kate/WallPostActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->attachments_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 802
    new-instance v0, Lcom/perm/kate/WallPostActivity$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$10;-><init>(Lcom/perm/kate/WallPostActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->settings_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 990
    new-instance v0, Lcom/perm/kate/WallPostActivity$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$14;-><init>(Lcom/perm/kate/WallPostActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    .line 1007
    new-instance v0, Lcom/perm/kate/WallPostActivity$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$15;-><init>(Lcom/perm/kate/WallPostActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 1108
    new-instance v0, Lcom/perm/kate/WallPostActivity$19;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$19;-><init>(Lcom/perm/kate/WallPostActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    .line 1185
    new-instance v0, Lcom/perm/kate/WallPostActivity$20;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$20;-><init>(Lcom/perm/kate/WallPostActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->publish_dater_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 1192
    new-instance v0, Lcom/perm/kate/WallPostActivity$21;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$21;-><init>(Lcom/perm/kate/WallPostActivity;)V

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->publish_date_clear_OnClickListerer:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private UpdateAttachmentsCount()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->tv_attachments_count:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 200
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->ff_attachments_count_placeholder:Landroid/view/View;

    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 202
    sget-object v0, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p0, v0, v2, v2}, Lcom/perm/kate/Helper;->checkLimitAttachments(Lcom/perm/kate/BaseActivity;IZZ)Z

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/WallPostActivity;)Landroid/widget/EditText;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/WallPostActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/perm/kate/WallPostActivity;->findAttachmentsInsideText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/perm/kate/WallPostActivity;)Z
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->isMe()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/perm/kate/WallPostActivity;)Ljava/lang/String;
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->getExportString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/perm/kate/WallPostActivity;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/perm/kate/WallPostActivity;->only_friends:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/perm/kate/WallPostActivity;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/perm/kate/WallPostActivity;->only_friends:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/perm/kate/WallPostActivity;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/perm/kate/WallPostActivity;->from_group:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/perm/kate/WallPostActivity;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/perm/kate/WallPostActivity;->from_group:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/perm/kate/WallPostActivity;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/perm/kate/WallPostActivity;->is_suggest:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/perm/kate/WallPostActivity;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->createAddAttachmentDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/perm/kate/WallPostActivity;ZZ)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/perm/kate/WallPostActivity;->saveExportValues(ZZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/perm/kate/WallPostActivity;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/perm/kate/WallPostActivity;->showAudioActivity(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/perm/kate/WallPostActivity;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/perm/kate/WallPostActivity;->showSearchActivity(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/WallPostActivity;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/perm/kate/WallPostActivity;->attachVideo(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/WallPostActivity;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/perm/kate/WallPostActivity;->disableFieldAndButtonsInUI(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/perm/kate/WallPostActivity;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->createAttachAudioDialog()V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/WallPostActivity;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->createAttachVideoDialog()V

    return-void
.end method

.method static synthetic access$2200(Lcom/perm/kate/WallPostActivity;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->getLocationWithCheck()V

    return-void
.end method

.method static synthetic access$2300(Lcom/perm/kate/WallPostActivity;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->createAttachDocsDialog()V

    return-void
.end method

.method static synthetic access$2400(Lcom/perm/kate/WallPostActivity;Z)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/perm/kate/WallPostActivity;->showDocsActivity(Z)V

    return-void
.end method

.method static synthetic access$2500(Lcom/perm/kate/WallPostActivity;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->showPublishDateActivity()V

    return-void
.end method

.method static synthetic access$2600(Lcom/perm/kate/WallPostActivity;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->showCreatePollActivity()V

    return-void
.end method

.method static synthetic access$2700(Lcom/perm/kate/WallPostActivity;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->showFriendsActivityForSelect()V

    return-void
.end method

.method static synthetic access$2800(Lcom/perm/kate/WallPostActivity;Landroid/location/Location;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/perm/kate/WallPostActivity;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/perm/kate/WallPostActivity;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->UpdateAttachmentsCount()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/WallPostActivity;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/perm/kate/WallPostActivity;->edit_post:Z

    return p0
.end method

.method static synthetic access$3000(Lcom/perm/kate/WallPostActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/perm/kate/WallPostActivity;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/perm/kate/WallPostActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/perm/kate/WallPostActivity;->photoAttachmentsUploaded(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/perm/kate/WallPostActivity;)Landroid/widget/TextView;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/perm/kate/WallPostActivity;->counter:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/perm/kate/WallPostActivity;)Landroid/widget/Button;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/perm/kate/WallPostActivity;->btn_save:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/perm/kate/WallPostActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/perm/kate/WallPostActivity;->btn_post_settings:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$3500(Lcom/perm/kate/WallPostActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/perm/kate/WallPostActivity;->btn_attachments:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/perm/kate/WallPostActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/perm/kate/WallPostActivity;->btn_add_attachment:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/perm/kate/WallPostActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/perm/kate/WallPostActivity;->add_smile:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/perm/kate/WallPostActivity;Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/perm/kate/WallPostActivity;->addSmile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/WallPostActivity;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/perm/kate/WallPostActivity;->is_suggested:Z

    return p0
.end method

.method static synthetic access$4000(Lcom/perm/kate/WallPostActivity;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->updatePublishDateLayout()V

    return-void
.end method

.method static synthetic access$500(Lcom/perm/kate/WallPostActivity;)J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/perm/kate/WallPostActivity;)J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/perm/kate/WallPostActivity;->post_id:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/perm/kate/WallPostActivity;)Ljava/lang/Long;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/perm/kate/WallPostActivity;->publish_date:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$702(Lcom/perm/kate/WallPostActivity;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity;->publish_date:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$800(Lcom/perm/kate/WallPostActivity;)Z
    .locals 0

    .line 60
    iget-boolean p0, p0, Lcom/perm/kate/WallPostActivity;->signed:Z

    return p0
.end method

.method static synthetic access$802(Lcom/perm/kate/WallPostActivity;Z)Z
    .locals 0

    .line 60
    iput-boolean p1, p0, Lcom/perm/kate/WallPostActivity;->signed:Z

    return p1
.end method

.method static synthetic access$900(Lcom/perm/kate/WallPostActivity;)Ljava/lang/String;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/perm/kate/WallPostActivity;->copyright_link:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$902(Lcom/perm/kate/WallPostActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity;->copyright_link:Ljava/lang/String;

    return-object p1
.end method

.method private addSmile(Ljava/lang/String;)V
    .locals 2

    .line 1208
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 1210
    invoke-static {p0, p1, v0, v1}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 1211
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 1212
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 1213
    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method private attachVideo(Z)V
    .locals 4

    .line 665
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 666
    const-class v1, Lcom/perm/kate/VideoActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.user_id"

    if-eqz p1, :cond_0

    .line 668
    iget-wide v2, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 670
    :cond_0
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :goto_0
    const/4 p1, 0x1

    const-string v1, "com.perm.kate.select_video"

    .line 671
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x3

    .line 672
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private attachmentsContain(Ljava/lang/String;)Z
    .locals 2

    .line 860
    sget-object v0, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 861
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public static attachmentsToStrings(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6

    .line 944
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Attachment;

    .line 945
    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "_"

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    if-eqz v1, :cond_2

    .line 946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-wide v4, v4, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-wide v4, v4, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 948
    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-object v4, v4, Lcom/perm/kate/api/Audio;->access_key:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 949
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-object v0, v0, Lcom/perm/kate/api/Audio;->access_key:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 950
    :cond_1
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 951
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 952
    :cond_2
    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    if-eqz v1, :cond_3

    .line 953
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    iget-wide v4, v4, Lcom/perm/kate/api/Video;->owner_id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    iget-wide v3, v0, Lcom/perm/kate/api/Video;->vid:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 954
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 955
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 956
    :cond_3
    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    if-eqz v1, :cond_5

    .line 957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    iget-object v4, v4, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    iget-wide v4, v4, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 959
    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    iget-object v4, v4, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 960
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    iget-object v0, v0, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 961
    :cond_4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 962
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 963
    :cond_5
    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v2, "geo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    if-eqz v1, :cond_6

    .line 964
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    iget-object v2, v2, Lcom/perm/kate/api/Geo;->lat:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    iget-object v0, v0, Lcom/perm/kate/api/Geo;->lon:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 965
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "location"

    .line 966
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 967
    :cond_6
    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v2, "link"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    if-eqz v1, :cond_7

    .line 968
    iget-object v0, v1, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 969
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 970
    :cond_7
    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v2, "doc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    if-eqz v1, :cond_8

    .line 971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-wide v4, v4, Lcom/perm/kate/api/Document;->owner_id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-wide v3, v0, Lcom/perm/kate/api/Document;->id:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 972
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 973
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 974
    :cond_8
    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v2, "poll"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    if-eqz v1, :cond_9

    .line 975
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    iget-wide v4, v4, Lcom/perm/kate/api/VkPoll;->owner_id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    iget-wide v3, v0, Lcom/perm/kate/api/VkPoll;->id:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 976
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 977
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 978
    :cond_9
    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v2, "album"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->album:Lcom/perm/kate/api/Album;

    if-eqz v1, :cond_a

    .line 979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->album:Lcom/perm/kate/api/Album;

    iget-wide v4, v4, Lcom/perm/kate/api/Album;->owner_id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/perm/kate/api/Attachment;->album:Lcom/perm/kate/api/Album;

    iget-wide v3, v0, Lcom/perm/kate/api/Album;->aid:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 980
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 982
    :cond_a
    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v2, "wall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    if-eqz v1, :cond_0

    .line 983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    iget-wide v4, v2, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v2, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 984
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    iget-object v0, v0, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method private checkForMyWall()V
    .locals 5

    .line 184
    iget-wide v0, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 185
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->isMe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->btn_post_settings:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->btn_post_settings:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private createAddAttachmentDialog()V
    .locals 6

    .line 688
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 689
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0265

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 690
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f04ea

    const/16 v3, 0x65

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f051d

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 692
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0229

    const/16 v3, 0x6d

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f01a4

    const/16 v3, 0x67

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f01a3

    const/16 v3, 0x68

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0185

    const/16 v3, 0x6c

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 696
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f04a0

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 697
    iget-wide v1, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->isMe()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity;->publish_date:Ljava/lang/Long;

    if-nez v1, :cond_1

    .line 698
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f02e1

    const/16 v3, 0x6b

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_1
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0051

    .line 700
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 701
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/WallPostActivity$8;

    invoke-direct {v3, p0, v0}, Lcom/perm/kate/WallPostActivity$8;-><init>(Lcom/perm/kate/WallPostActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 747
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 748
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 749
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createAttachAudioDialog()V
    .locals 6

    .line 572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 573
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f045d

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f045f

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    iget-wide v1, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 576
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f02b1

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    :cond_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 578
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/WallPostActivity$5;

    invoke-direct {v3, p0, v0}, Lcom/perm/kate/WallPostActivity$5;-><init>(Lcom/perm/kate/WallPostActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 594
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 595
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 596
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createAttachDocsDialog()V
    .locals 5

    .line 770
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 771
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f04a0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f02b1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 773
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 774
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Lcom/perm/kate/WallPostActivity$9;

    invoke-direct {v4, p0, v0}, Lcom/perm/kate/WallPostActivity$9;-><init>(Lcom/perm/kate/WallPostActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 787
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 788
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 789
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createAttachVideoDialog()V
    .locals 7

    .line 637
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 638
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0460

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f045f

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    iget-wide v1, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-gez v6, :cond_0

    .line 641
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f02b1

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    :cond_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 643
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Lcom/perm/kate/WallPostActivity$7;

    invoke-direct {v4, p0, v0}, Lcom/perm/kate/WallPostActivity$7;-><init>(Lcom/perm/kate/WallPostActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 659
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 660
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 661
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createExportDialog()Landroid/app/Dialog;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "Twitter"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Facebook"

    aput-object v2, v0, v1

    .line 425
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f00d9

    .line 426
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v2, 0x0

    .line 427
    invoke-virtual {v1, v0, v2, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 428
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->listener1:Landroid/content/DialogInterface$OnClickListener;

    const v3, 0x7f0f02a6

    invoke-virtual {v1, v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f0f01c5

    .line 429
    invoke-virtual {v1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 430
    invoke-virtual {v1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createSettingsDialog()Landroid/app/Dialog;
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 812
    iget-wide v2, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-gez v7, :cond_1

    .line 813
    iget-boolean v2, p0, Lcom/perm/kate/WallPostActivity;->edit_post:Z

    const v3, 0x7f0f02c0

    if-eqz v2, :cond_0

    .line 814
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v1, v4

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const v2, 0x7f0f0209

    .line 817
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v4

    .line 818
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_0

    :cond_1
    const v0, 0x7f0f0255

    .line 821
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v1, v4

    .line 822
    :goto_0
    new-instance v0, Lcom/perm/kate/WallPostActivity$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$11;-><init>(Lcom/perm/kate/WallPostActivity;)V

    .line 837
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 838
    invoke-virtual {v2, v1, v3, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0512

    .line 839
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f0398

    .line 840
    invoke-virtual {v1, v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f01c5

    .line 841
    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 842
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private disableFieldAndButtonsInUI(Z)V
    .locals 1

    .line 1074
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->btn_save:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 1076
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1078
    :cond_1
    new-instance v0, Lcom/perm/kate/WallPostActivity$17;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/WallPostActivity$17;-><init>(Lcom/perm/kate/WallPostActivity;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private displaySharedContent()V
    .locals 3

    .line 504
    :try_start_0
    iget-boolean v0, p0, Lcom/perm/kate/BaseActivity;->blocked:Z

    if-eqz v0, :cond_0

    return-void

    .line 506
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "android.intent.action.SEND"

    .line 508
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 509
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    .line 510
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v1, :cond_2

    const-string v2, "text/"

    .line 511
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "image/"

    .line 513
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 514
    invoke-direct {p0, v0}, Lcom/perm/kate/WallPostActivity;->displaySharedImage(Landroid/os/Bundle;)V

    goto :goto_1

    .line 512
    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/perm/kate/WallPostActivity;->displaySharedText(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 517
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 518
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private displaySharedImage(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "android.intent.extra.STREAM"

    .line 523
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 524
    invoke-static {p1}, Lcom/perm/kate/Helper;->makeUriList(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/perm/kate/WallPostActivity;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    return-void
.end method

.method private displaySharedText(Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "android.intent.extra.TEXT"

    .line 535
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 536
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_6

    .line 539
    invoke-static {v1}, Lcom/perm/kate/Helper;->isLink(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz p1, :cond_2

    const-string v2, "android.intent.extra.SUBJECT"

    .line 541
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_2
    move-object p1, v0

    :goto_2
    if-eqz p1, :cond_3

    .line 542
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 544
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    if-eqz v0, :cond_4

    goto :goto_3

    :cond_4
    move-object v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 546
    sget-object p1, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/perm/kate/WallPostActivity;->fixHttpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    sget-object p1, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v0, "link"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 549
    :cond_5
    iget-object p1, p0, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 550
    invoke-direct {p0, v1}, Lcom/perm/kate/WallPostActivity;->extractLinkFromSharedText(Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method

.method private editPhotoBeforeUpload(Ljava/util/ArrayList;)V
    .locals 2

    .line 528
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uris"

    .line 530
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x7

    .line 531
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private extractLinkFromSharedText(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 560
    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->extractUrl(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 561
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 562
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/perm/kate/WallPostActivity;->fixHttpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    sget-object p1, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v0, "link"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private findAttachmentsInsideText(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 846
    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->extractUrl(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 847
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "youtube.com/watch"

    .line 849
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 850
    invoke-direct {p0, v1}, Lcom/perm/kate/WallPostActivity;->attachmentsContain(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 851
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 852
    sget-object v2, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private fixHttpString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "http"

    .line 556
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getExportString()Ljava/lang/String;
    .locals 4

    .line 484
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->getExportValues()[Z

    move-result-object v0

    const/4 v1, 0x0

    .line 486
    aget-boolean v1, v0, v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "twitter"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const/4 v3, 0x1

    .line 488
    aget-boolean v0, v0, v3

    if-eqz v0, :cond_2

    .line 489
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 491
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "facebook"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method private getExportValues()[Z
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 460
    fill-array-data v0, :array_0

    .line 461
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "export_twitter"

    const/4 v3, 0x1

    .line 462
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x0

    aput-boolean v2, v0, v4

    const-string v2, "export_facebook"

    .line 463
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    aput-boolean v1, v0, v3

    return-object v0

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data
.end method

.method private getLocation()V
    .locals 2

    .line 887
    new-instance v0, Lcom/perm/utils/MyLocation;

    invoke-direct {v0, p0}, Lcom/perm/utils/MyLocation;-><init>(Landroid/content/Context;)V

    .line 888
    new-instance v1, Lcom/perm/kate/WallPostActivity$12;

    invoke-direct {v1, p0}, Lcom/perm/kate/WallPostActivity$12;-><init>(Lcom/perm/kate/WallPostActivity;)V

    .line 897
    invoke-virtual {v0, v1}, Lcom/perm/utils/MyLocation;->getLocation(Lcom/perm/utils/MyLocation$LocationResult;)Z

    return-void
.end method

.method private getLocationWithCheck()V
    .locals 1

    .line 867
    invoke-static {}, Lcom/perm/kate/Helper;->isGoogleMapsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->showGoogleMapsActivity()V

    goto :goto_0

    .line 870
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->getLocation()V

    :goto_0
    return-void
.end method

.method private isMe()Z
    .locals 5

    .line 497
    iget-wide v0, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private photoAttachmentsUploaded(Ljava/util/ArrayList;)V
    .locals 3

    .line 1092
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 1093
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Photo;

    .line 1094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "photo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p1, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1095
    new-instance v1, Lcom/perm/kate/WallPostActivity$18;

    invoke-direct {v1, p0, v0, p1}, Lcom/perm/kate/WallPostActivity$18;-><init>(Lcom/perm/kate/WallPostActivity;Ljava/lang/String;Lcom/perm/kate/api/Photo;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private saveExportValues(ZZ)V
    .locals 2

    .line 468
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 469
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "export_twitter"

    .line 470
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string p1, "export_facebook"

    .line 471
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 472
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private showAudioActivity(Z)V
    .locals 4

    .line 600
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 601
    const-class v1, Lcom/perm/kate/AudioActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.owner_id"

    if-eqz p1, :cond_0

    .line 603
    iget-wide v2, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 605
    :cond_0
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :goto_0
    const/4 p1, 0x1

    const-string v1, "com.perm.kate.select_audio"

    .line 606
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 607
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showCancelConfirmDialog()V
    .locals 4

    .line 1052
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f04de

    .line 1053
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/perm/kate/WallPostActivity$16;

    invoke-direct {v2, p0}, Lcom/perm/kate/WallPostActivity$16;-><init>(Lcom/perm/kate/WallPostActivity;)V

    const v3, 0x7f0f05a7

    .line 1054
    invoke-virtual {v1, v3, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f037a

    const/4 v3, 0x0

    .line 1059
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1060
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 1061
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1062
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showCopyrightLinkDialog()V
    .locals 5

    .line 1231
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f0488

    .line 1232
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1233
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c0020

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09011c

    .line 1234
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 1235
    iget-object v4, p0, Lcom/perm/kate/WallPostActivity;->copyright_link:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 1236
    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1237
    :cond_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f0f0398

    .line 1238
    new-instance v4, Lcom/perm/kate/WallPostActivity$22;

    invoke-direct {v4, p0, v2}, Lcom/perm/kate/WallPostActivity$22;-><init>(Lcom/perm/kate/WallPostActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f0f007f

    .line 1243
    new-instance v2, Lcom/perm/kate/WallPostActivity$23;

    invoke-direct {v2, p0}, Lcom/perm/kate/WallPostActivity$23;-><init>(Lcom/perm/kate/WallPostActivity;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v1, 0x7f0f01c5

    .line 1248
    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1249
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 1250
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 1251
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showCreatePollActivity()V
    .locals 4

    .line 1217
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1218
    const-class v1, Lcom/perm/kate/PollCreateActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1219
    iget-wide v1, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    const-string v3, "com.perm.kate.owner_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/16 v1, 0xc

    .line 1220
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showDocsActivity(Z)V
    .locals 4

    .line 793
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/DocsActivity2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "owner_id"

    if-eqz p1, :cond_0

    .line 795
    iget-wide v2, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_0

    .line 797
    :cond_0
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :goto_0
    const/4 p1, 0x1

    const-string v1, "select"

    .line 798
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x9

    .line 799
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showFriendsActivityForSelect()V
    .locals 3

    .line 1224
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1225
    const-class v1, Lcom/perm/kate/MembersActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.only_members"

    const/4 v2, 0x1

    .line 1226
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0xd

    .line 1227
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showGoogleMapsActivity()V
    .locals 2

    .line 874
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 875
    const-class v1, Lcom/perm/kate/GoogleMapsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 876
    sget v1, Lcom/perm/kate/GoogleMapsActivity;->CHOOSE_LOCATION:I

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showPost()V
    .locals 8

    .line 919
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->post_text:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 920
    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->post_text:Ljava/lang/String;

    .line 921
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/perm/kate/WallPostActivity;->post_text:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 923
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity;->post_text:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 925
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 926
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/perm/kate/WallPostActivity;->post_text:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lcom/perm/kate/WallPostActivity;->post_text:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 927
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 928
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, p0, Lcom/perm/kate/WallPostActivity;->post_id:J

    iget-wide v4, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->fetchWallPostFull(JJJ)Lcom/perm/kate/api/WallMessage;

    move-result-object v0

    if-nez v0, :cond_1

    .line 932
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 935
    :cond_1
    iget-object v0, v0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    sget-object v2, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/perm/kate/WallPostActivity;->attachmentsToStrings(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 937
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 938
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 940
    :goto_0
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->UpdateAttachmentsCount()V

    return-void
.end method

.method private showPublishDateActivity()V
    .locals 3

    .line 1201
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1202
    const-class v1, Lcom/perm/kate/PublishDateActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1203
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity;->publish_date:Ljava/lang/Long;

    const-string v2, "com.perm.kate.publish_date"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/16 v1, 0xb

    .line 1204
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showSearchActivity(Z)V
    .locals 2

    .line 611
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 612
    const-class v1, Lcom/perm/kate/SearchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string p1, "com.perm.kate.select_video"

    .line 614
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x6

    .line 615
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const-string p1, "com.perm.kate.select_audio"

    .line 617
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x4

    .line 618
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method private thereIsText()Z
    .locals 2

    .line 1043
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 1044
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1045
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->showCancelConfirmDialog()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateLocation(Landroid/location/Location;)V
    .locals 2

    .line 901
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity;->geo_location:Landroid/location/Location;

    if-eqz p1, :cond_0

    .line 902
    sget-object p1, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 903
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "location:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->geo_location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->geo_location:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 904
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 905
    new-instance v0, Lcom/perm/kate/WallPostActivity$13;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/WallPostActivity$13;-><init>(Lcom/perm/kate/WallPostActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 880
    new-instance v0, Landroid/location/Location;

    const-string v1, "network"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 881
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 882
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLongitude(D)V

    .line 883
    invoke-direct {p0, v0}, Lcom/perm/kate/WallPostActivity;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method private updatePublishDateLayout()V
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 1173
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->publish_date:Ljava/lang/Long;

    if-eqz v0, :cond_0

    .line 1174
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "d MMMM yyyy HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1175
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0f027d

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    iget-object v3, p0, Lcom/perm/kate/WallPostActivity;->publish_date:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/perm/utils/TimeFix;->fix(J)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1176
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity;->tb_publish_date:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1177
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->ll_publish_date:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1178
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->btn_save:Landroid/widget/Button;

    const v1, 0x7f0f0216

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 1180
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->ll_publish_date:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1181
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->btn_save:Landroid/widget/Button;

    const v1, 0x7f0f024c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected fillMenuItems(Landroid/view/Menu;)Z
    .locals 5

    .line 392
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->isMe()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x3eb

    const v3, 0x7f0f00d9

    .line 393
    invoke-interface {p1, v2, v1, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v3, 0x1080055

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    :cond_0
    const/4 v0, 0x2

    const/16 v3, 0x3ed

    const v4, 0x7f0f0488

    .line 394
    invoke-interface {p1, v2, v0, v3, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return v1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 24

    move-object/from16 v10, p0

    move/from16 v0, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    const-string v1, "video"

    const-string v13, "poll"

    const-string v14, "doc"

    .line 298
    invoke-super/range {p0 .. p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 300
    :try_start_0
    iget-object v2, v10, Lcom/perm/kate/WallPostActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    invoke-static {v10, v0, v11, v12, v2}, Lcom/perm/kate/photoupload/PhotoChooser;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/perm/kate/photoupload/PhotoChooser$Callback;)Landroid/net/Uri;

    const/4 v9, 0x1

    const/4 v8, -0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    :cond_0
    if-ne v11, v8, :cond_2

    const-string v2, "audios"

    .line 302
    invoke-virtual {v12, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 303
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, ","

    .line 304
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 305
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 306
    sget-object v6, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    sget-object v5, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 310
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0053

    invoke-static {v2, v3, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const/4 v2, 0x6

    const-string v7, "_"

    const-string v6, "owner_id"

    const-wide/16 v4, 0x0

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    :cond_3
    if-ne v11, v8, :cond_4

    :try_start_1
    const-string v2, "video_id"

    .line 313
    invoke-virtual {v12, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 314
    invoke-virtual {v12, v6, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "Kate.WallPostActivity"

    .line 315
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "attached_video_id="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, " attached_video_owner_id="

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 317
    sget-object v3, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 318
    sget-object v2, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f058b

    invoke-static {v1, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_4
    const/4 v1, 0x7

    const v15, 0x7f0f03e1

    if-ne v0, v1, :cond_6

    if-ne v11, v8, :cond_6

    const-string v1, "uris"

    .line 322
    invoke-virtual {v12, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const-string v2, "resize_option"

    const/4 v3, 0x2

    .line 323
    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v2, "rotate"

    const/4 v3, 0x0

    .line 324
    invoke-virtual {v12, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 325
    invoke-virtual {v10, v15}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 326
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v9, :cond_5

    .line 327
    new-instance v18, Lcom/perm/kate/photoupload/WallUploader;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/net/Uri;

    iget-wide v8, v10, Lcom/perm/kate/WallPostActivity;->owner_id:J

    iget-object v5, v10, Lcom/perm/kate/WallPostActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    move/from16 v21, v4

    move-object/from16 v16, v5

    move-object/from16 v17, v13

    move-object/from16 v22, v14

    const-wide/16 v13, 0x0

    move-wide v4, v8

    move-object v9, v6

    move/from16 v6, v21

    move-object v8, v7

    move-object/from16 v7, v16

    move-object/from16 v23, v8

    const/4 v13, -0x1

    move-object/from16 v8, v19

    move-object v14, v9

    move-object/from16 v9, v20

    invoke-direct/range {v1 .. v9}, Lcom/perm/kate/photoupload/WallUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;JILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lcom/perm/kate/photoupload/WallUploader;->upload()V

    goto :goto_1

    :cond_5
    move/from16 v21, v4

    move-object/from16 v23, v7

    move-object/from16 v17, v13

    move-object/from16 v22, v14

    const/4 v13, -0x1

    move-object v14, v6

    .line 329
    new-instance v2, Lcom/perm/kate/WallPostActivity$MultiUploader;

    move/from16 v3, v21

    invoke-direct {v2, v10, v1, v3}, Lcom/perm/kate/WallPostActivity$MultiUploader;-><init>(Lcom/perm/kate/WallPostActivity;Ljava/util/ArrayList;I)V

    invoke-virtual {v2}, Lcom/perm/kate/WallPostActivity$MultiUploader;->start()V

    goto :goto_1

    :cond_6
    move-object/from16 v23, v7

    move-object/from16 v17, v13

    move-object/from16 v22, v14

    const/4 v13, -0x1

    move-object v14, v6

    :goto_1
    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    if-ne v11, v13, :cond_7

    const-string v1, "uri"

    .line 332
    invoke-virtual {v12, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 334
    invoke-virtual {v10, v15}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 335
    new-instance v15, Lcom/perm/kate/photoupload/WallUploader;

    iget-wide v4, v10, Lcom/perm/kate/WallPostActivity;->owner_id:J

    const/4 v6, 0x0

    iget-object v7, v10, Lcom/perm/kate/WallPostActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    const/16 v16, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    move-object v1, v15

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/perm/kate/photoupload/WallUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;JILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/perm/kate/photoupload/WallUploader;->upload()V

    goto :goto_2

    :cond_7
    const/16 v16, 0x0

    :goto_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    if-ne v11, v13, :cond_8

    const-string v1, "doc_id"

    const-wide/16 v2, 0x0

    .line 338
    invoke-virtual {v12, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 339
    invoke-virtual {v12, v14, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 340
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v22

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v23

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 341
    sget-object v3, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    move-object/from16 v2, v23

    .line 344
    :goto_3
    invoke-static {}, Lcom/perm/kate/Helper;->isGoogleMapsSupported()Z

    move-result v1

    if-eqz v1, :cond_9

    sget v1, Lcom/perm/kate/GoogleMapsActivity;->CHOOSE_LOCATION:I

    if-ne v0, v1, :cond_9

    if-ne v11, v13, :cond_9

    const-string v1, "latitude"

    .line 345
    invoke-virtual {v12, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "longitude"

    .line 346
    invoke-virtual {v12, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 347
    invoke-direct {v10, v1, v3}, Lcom/perm/kate/WallPostActivity;->updateLocation(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    const/16 v1, 0xb

    if-ne v0, v1, :cond_b

    if-ne v11, v13, :cond_b

    const-string v1, "publish_date"

    const-wide/16 v3, 0x0

    .line 350
    invoke-virtual {v12, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 351
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v5, v3

    if-lez v7, :cond_a

    .line 352
    iput-object v1, v10, Lcom/perm/kate/WallPostActivity;->publish_date:Ljava/lang/Long;

    .line 353
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/WallPostActivity;->updatePublishDateLayout()V

    :cond_b
    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    if-ne v11, v13, :cond_c

    const-string v1, "poll_id"

    const-wide/16 v3, 0x0

    .line 356
    invoke-virtual {v12, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 357
    invoke-virtual {v12, v14, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 358
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v5, v17

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 359
    sget-object v2, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    sget-object v1, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c
    const/16 v1, 0xd

    if-ne v0, v1, :cond_11

    if-ne v11, v13, :cond_11

    const-string v0, "com.perm.kate.member_id"

    const-wide/16 v1, 0x0

    .line 363
    invoke-virtual {v12, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v9, 0x1

    goto :goto_4

    :cond_d
    const/4 v9, 0x0

    .line 364
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_e

    const/4 v15, 0x1

    goto :goto_5

    :cond_e
    const/4 v15, 0x0

    :goto_5
    and-int v1, v9, v15

    if-eqz v1, :cond_11

    .line 365
    iget-object v1, v10, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 366
    iget-object v2, v10, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 367
    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v4, " "

    if-eqz v3, :cond_f

    if-lez v2, :cond_f

    add-int/lit8 v3, v2, -0x1

    :try_start_2
    invoke-interface {v1, v3}, Landroid/text/Editable;->charAt(I)C

    move-result v3

    const/16 v5, 0x20

    if-eq v3, v5, :cond_f

    move-object v3, v4

    goto :goto_6

    :cond_f
    const-string v3, ""

    .line 368
    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "*id"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 369
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    .line 370
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_10

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_10
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 374
    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/WallPostActivity;->UpdateAttachmentsCount()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    :catchall_0
    move-exception v0

    .line 376
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 377
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 92
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0140

    .line 93
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0508

    .line 94
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 95
    invoke-virtual {p0}, Lcom/perm/kate/BaseActivity;->setupMenuButton()V

    .line 96
    sget-object p1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez p1, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 100
    :cond_0
    sget-object p1, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 101
    sget-object p1, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const p1, 0x7f090327

    .line 102
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    .line 103
    new-instance v0, Lcom/perm/kate/WallPostActivity$TextChangedListener;

    invoke-direct {v0, p0}, Lcom/perm/kate/WallPostActivity$TextChangedListener;-><init>(Lcom/perm/kate/WallPostActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f090090

    .line 104
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/WallPostActivity;->btn_save:Landroid/widget/Button;

    const p1, 0x7f09008a

    .line 105
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->btn_post_settings:Landroid/widget/ImageButton;

    .line 106
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->btn_save:Landroid/widget/Button;

    iget-object v1, p0, Lcom/perm/kate/WallPostActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->btn_post_settings:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/perm/kate/WallPostActivity;->settings_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090036

    .line 108
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->add_smile:Landroid/widget/ImageButton;

    const v0, 0x7f090351

    .line 109
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->tv_attachments_count:Landroid/widget/TextView;

    const v0, 0x7f09012c

    .line 110
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->ff_attachments_count_placeholder:Landroid/view/View;

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.owner_id"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 113
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    .line 114
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.post_id"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/perm/kate/WallPostActivity;->post_id:J

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.post_text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->post_text:Ljava/lang/String;

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.publish_date"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 118
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->publish_date:Ljava/lang/Long;

    .line 119
    :cond_2
    iget-wide v0, p0, Lcom/perm/kate/WallPostActivity;->post_id:J

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-lez v6, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/perm/kate/WallPostActivity;->edit_post:Z

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.is_suggest"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/WallPostActivity;->is_suggest:Z

    .line 121
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.is_suggested"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/WallPostActivity;->is_suggested:Z

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "signed"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/WallPostActivity;->signed:Z

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "copyright_link"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->copyright_link:Ljava/lang/String;

    .line 126
    iget-wide v0, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    cmp-long v5, v0, v2

    if-gez v5, :cond_4

    .line 127
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 128
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v5, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    neg-long v5, v5

    invoke-virtual {v1, v0, v5, v6}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 129
    iput-boolean v4, p0, Lcom/perm/kate/WallPostActivity;->from_group:Z

    :cond_4
    const v0, 0x7f09005f

    .line 132
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->btn_add_attachment:Landroid/widget/ImageButton;

    .line 133
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity;->add_attachment_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090065

    .line 134
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/perm/kate/WallPostActivity;->btn_attachments:Landroid/widget/ImageButton;

    .line 135
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity;->attachments_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->checkForMyWall()V

    .line 138
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->displaySharedContent()V

    .line 139
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->UpdateAttachmentsCount()V

    .line 140
    iget-boolean v0, p0, Lcom/perm/kate/WallPostActivity;->edit_post:Z

    if-eqz v0, :cond_7

    .line 141
    iget-boolean v0, p0, Lcom/perm/kate/WallPostActivity;->is_suggested:Z

    if-nez v0, :cond_5

    .line 144
    iget-wide v0, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_6

    .line 145
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 147
    :cond_5
    iput-boolean v4, p0, Lcom/perm/kate/WallPostActivity;->signed:Z

    const p1, 0x7f0f02d3

    .line 148
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 150
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->showPost()V

    :cond_7
    const p1, 0x7f0900df

    .line 152
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/WallPostActivity;->counter:Landroid/widget/TextView;

    const p1, 0x7f0901f4

    .line 153
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/perm/kate/WallPostActivity;->ll_publish_date:Landroid/widget/LinearLayout;

    .line 154
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->publish_dater_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090324

    .line 155
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/WallPostActivity;->tb_publish_date:Landroid/widget/TextView;

    const p1, 0x7f090170

    .line 156
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/perm/kate/WallPostActivity;->ib_publish_date_clear:Landroid/widget/ImageButton;

    .line 157
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->publish_date_clear_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->updatePublishDateLayout()V

    .line 159
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.photo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Photo;

    if-eqz p1, :cond_8

    .line 161
    iget-wide v0, p1, Lcom/perm/kate/api/Photo;->pid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attached_photo_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " owner_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Kate.WallPostActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 164
    sget-object v0, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object p1, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.audio_playlist"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 169
    sget-object v0, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object p1, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v0, "audio_playlist"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.audio_attachment"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 174
    sget-object v0, Lcom/perm/kate/WallPostActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object p1, Lcom/perm/kate/WallPostActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_a
    new-instance p1, Lcom/perm/kate/smile/SmileKeyboard;

    invoke-direct {p1}, Lcom/perm/kate/smile/SmileKeyboard;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    .line 179
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->add_smile:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/perm/kate/WallPostActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    invoke-virtual {p1, p0, v0, v1}, Lcom/perm/kate/smile/SmileKeyboard;->init(Landroidx/fragment/app/FragmentActivity;Landroid/view/View;Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;)V

    .line 180
    iget-object p1, p0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    iget-object v0, p0, Lcom/perm/kate/WallPostActivity;->tb_new_post_text:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/perm/kate/smile/SmileKeyboard;->registerEditText(Landroid/widget/EditText;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 418
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->createSettingsDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 416
    :cond_1
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->createExportDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 386
    invoke-virtual {p0, p1}, Lcom/perm/kate/WallPostActivity;->fillMenuItems(Landroid/view/Menu;)Z

    .line 387
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onGoHome()V
    .locals 1

    .line 1068
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->thereIsText()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1070
    :cond_0
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onGoHome()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1036
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->thereIsText()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1039
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 402
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 410
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 407
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->showCopyrightLinkDialog()V

    return v1

    :cond_1
    const/4 p1, 0x0

    .line 404
    invoke-virtual {p0, p1}, Landroid/app/Activity;->showDialog(I)V

    return v1
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 437
    move-object v2, p2

    check-cast v2, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 438
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->getExportValues()[Z

    move-result-object v3

    .line 439
    aget-boolean v4, v3, v1

    invoke-virtual {v2, v1, v4}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 440
    aget-boolean v3, v3, v0

    invoke-virtual {v2, v0, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    if-ne p1, v0, :cond_3

    .line 443
    check-cast p2, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 444
    iget-wide v2, p0, Lcom/perm/kate/WallPostActivity;->owner_id:J

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-gez p2, :cond_2

    .line 445
    iget-boolean p2, p0, Lcom/perm/kate/WallPostActivity;->edit_post:Z

    if-eqz p2, :cond_1

    .line 446
    iget-boolean p2, p0, Lcom/perm/kate/WallPostActivity;->signed:Z

    invoke-virtual {p1, v1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 448
    :cond_1
    iget-boolean p2, p0, Lcom/perm/kate/WallPostActivity;->from_group:Z

    invoke-virtual {p1, v1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 449
    iget-boolean p2, p0, Lcom/perm/kate/WallPostActivity;->signed:Z

    invoke-virtual {p1, v0, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 452
    :cond_2
    iget-boolean p2, p0, Lcom/perm/kate/WallPostActivity;->only_friends:Z

    invoke-virtual {p1, v1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    return-void

    .line 757
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 758
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->getLocationWithCheck()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 194
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onResume()V

    .line 195
    invoke-direct {p0}, Lcom/perm/kate/WallPostActivity;->UpdateAttachmentsCount()V

    return-void
.end method
