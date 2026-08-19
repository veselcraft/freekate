.class public Lcom/perm/kate/NewMessageActivity;
.super Lcom/perm/kate/BaseActivity;
.source "NewMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/NewMessageActivity$MultiUploader;,
        Lcom/perm/kate/NewMessageActivity$TextChangedListener;
    }
.end annotation


# static fields
.field static FORWARD_MESSAGES_PREFIX:Ljava/lang/String; = null

.field private static MessageText:Ljava/lang/String; = ""

.field private static UserID:Ljava/lang/String; = ""

.field static attachments:Ljava/util/ArrayList;

.field static attachments_objects:Ljava/util/ArrayList;

.field static forward_messages:Ljava/util/ArrayList;


# instance fields
.field private add_attachment_OnClickListerer:Landroid/view/View$OnClickListener;

.field private attachments_OnClickListerer:Landroid/view/View$OnClickListener;

.field private btn_new_message_send:Landroid/widget/Button;

.field private callback3:Lcom/perm/kate/MessageSender$MessageSenderCallback;

.field private chat_id:J

.field private counter:Landroid/widget/TextView;

.field editCallback:Lcom/perm/kate/session/Callback;

.field edit_message:Lcom/perm/kate/api/Message;

.field private ff_attachments_count_placeholder:Landroid/view/View;

.field private geo_location:Landroid/location/Location;

.field private last_activity:J

.field listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

.field private message_type:Ljava/lang/String;

.field peer_id:J

.field private photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

.field private send_clickListener:Landroid/view/View$OnClickListener;

.field private tb_new_message_text:Landroid/widget/EditText;

.field private tv_attachments_count:Landroid/widget/TextView;

.field protected uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

.field private user_id:Ljava/lang/Long;

.field user_ids:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/NewMessageActivity;->forward_messages:Ljava/util/ArrayList;

    const-string v0, "forward_messages"

    .line 222
    sput-object v0, Lcom/perm/kate/NewMessageActivity;->FORWARD_MESSAGES_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 75
    iput-object v0, p0, Lcom/perm/kate/NewMessageActivity;->geo_location:Landroid/location/Location;

    .line 238
    new-instance v0, Lcom/perm/kate/NewMessageActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMessageActivity$2;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMessageActivity;->send_clickListener:Landroid/view/View$OnClickListener;

    .line 310
    new-instance v0, Lcom/perm/kate/NewMessageActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/NewMessageActivity$3;-><init>(Lcom/perm/kate/NewMessageActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMessageActivity;->editCallback:Lcom/perm/kate/session/Callback;

    .line 326
    new-instance v0, Lcom/perm/kate/NewMessageActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMessageActivity$4;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMessageActivity;->callback3:Lcom/perm/kate/MessageSender$MessageSenderCallback;

    .line 552
    new-instance v0, Lcom/perm/kate/NewMessageActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMessageActivity$8;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMessageActivity;->attachments_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 562
    new-instance v0, Lcom/perm/kate/NewMessageActivity$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMessageActivity$9;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMessageActivity;->add_attachment_OnClickListerer:Landroid/view/View$OnClickListener;

    const-wide/16 v0, 0x0

    .line 728
    iput-wide v0, p0, Lcom/perm/kate/NewMessageActivity;->last_activity:J

    .line 750
    new-instance v0, Lcom/perm/kate/NewMessageActivity$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMessageActivity$14;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMessageActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    .line 768
    new-instance v0, Lcom/perm/kate/NewMessageActivity$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMessageActivity$15;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMessageActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 798
    new-instance v0, Lcom/perm/kate/NewMessageActivity$17;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMessageActivity$17;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMessageActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    return-void
.end method

.method private UpdateAttachmentsCount()V
    .locals 3

    .line 231
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity;->tv_attachments_count:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    sget-object v1, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 232
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity;->ff_attachments_count_placeholder:Landroid/view/View;

    sget-object v1, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

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

    .line 234
    sget-object v0, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p0, v0, v2, v2}, Lcom/perm/kate/Helper;->checkLimitAttachments(Lcom/perm/kate/BaseActivity;IZZ)Z

    :cond_1
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 52
    sget-object v0, Lcom/perm/kate/NewMessageActivity;->MessageText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 52
    sput-object p0, Lcom/perm/kate/NewMessageActivity;->MessageText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->setMessageActivity()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->showAudioActivity()V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/NewMessageActivity;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/perm/kate/NewMessageActivity;->showSearchActivity(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->attachVideo()V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->createAddAttachmentDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->createAttachAudioDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->createAttachVideoDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->getLocationWithCheck()V

    return-void
.end method

.method static synthetic access$1700(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->showDocsActivity()V

    return-void
.end method

.method static synthetic access$1800(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->showCreatePollActivity()V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/NewMessageActivity;Landroid/location/Location;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/perm/kate/NewMessageActivity;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/NewMessageActivity;)Landroid/widget/EditText;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->UpdateAttachmentsCount()V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/NewMessageActivity;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/NewMessageActivity;->counter:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/perm/kate/NewMessageActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/perm/kate/NewMessageActivity;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/perm/kate/NewMessageActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/perm/kate/NewMessageActivity;->photoAttachmentsUploaded(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/perm/kate/NewMessageActivity;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/perm/kate/NewMessageActivity;->addSmile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/NewMessageActivity;)Ljava/lang/Long;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$400(Lcom/perm/kate/NewMessageActivity;)J
    .locals 2

    .line 52
    iget-wide v0, p0, Lcom/perm/kate/NewMessageActivity;->chat_id:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/perm/kate/NewMessageActivity;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/NewMessageActivity;->message_type:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/NewMessageActivity;)Lcom/perm/kate/MessageSender$MessageSenderCallback;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/NewMessageActivity;->callback3:Lcom/perm/kate/MessageSender$MessageSenderCallback;

    return-object p0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 52
    sput-object p0, Lcom/perm/kate/NewMessageActivity;->UserID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/NewMessageActivity;)Landroid/widget/Button;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/perm/kate/NewMessageActivity;->btn_new_message_send:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$900(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->enableButtonOnUiThread()V

    return-void
.end method

.method private addSmile(Ljava/lang/String;)V
    .locals 2

    .line 510
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 512
    invoke-static {p0, p1, v0, v1}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 513
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 514
    iget-object v1, p0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 515
    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method static allowSendTypingStatus()Z
    .locals 3

    .line 856
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_typing_status"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private attachVideo()V
    .locals 4

    .line 545
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 546
    const-class v1, Lcom/perm/kate/VideoActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 547
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "com.perm.kate.user_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.perm.kate.select_video"

    const/4 v2, 0x1

    .line 548
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x3

    .line 549
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private createAddAttachmentDialog()V
    .locals 6

    .line 579
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 580
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0265

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f04ea

    const/16 v3, 0x65

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f051d

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f01a4

    const/16 v3, 0x67

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f01a3

    const/16 v3, 0x68

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    iget-wide v1, p0, Lcom/perm/kate/NewMessageActivity;->chat_id:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 586
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0185

    const/16 v3, 0x6c

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    :cond_0
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f04a0

    const/16 v3, 0x69

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 588
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0051

    .line 589
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 590
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/NewMessageActivity$10;

    invoke-direct {v3, p0, v0}, Lcom/perm/kate/NewMessageActivity$10;-><init>(Lcom/perm/kate/NewMessageActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 623
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 624
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 625
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createAttachAudioDialog()V
    .locals 4

    .line 392
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 393
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f045d

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f045f

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 397
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/NewMessageActivity$6;

    invoke-direct {v3, p0, v0}, Lcom/perm/kate/NewMessageActivity$6;-><init>(Lcom/perm/kate/NewMessageActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 414
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 415
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createAttachVideoDialog()V
    .locals 5

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 523
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0460

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f045f

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 526
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Lcom/perm/kate/NewMessageActivity$7;

    invoke-direct {v4, p0, v0}, Lcom/perm/kate/NewMessageActivity$7;-><init>(Lcom/perm/kate/NewMessageActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 539
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 540
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 541
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private editPhotoBeforeUpload(Ljava/util/ArrayList;)V
    .locals 2

    .line 776
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uris"

    .line 778
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x7

    .line 779
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private enableButtonOnUiThread()V
    .locals 1

    .line 364
    new-instance v0, Lcom/perm/kate/NewMessageActivity$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMessageActivity$5;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getLocation()V
    .locals 2

    .line 666
    new-instance v0, Lcom/perm/utils/MyLocation;

    invoke-direct {v0, p0}, Lcom/perm/utils/MyLocation;-><init>(Landroid/content/Context;)V

    .line 667
    new-instance v1, Lcom/perm/kate/NewMessageActivity$11;

    invoke-direct {v1, p0}, Lcom/perm/kate/NewMessageActivity$11;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    .line 676
    invoke-virtual {v0, v1}, Lcom/perm/utils/MyLocation;->getLocation(Lcom/perm/utils/MyLocation$LocationResult;)Z

    return-void
.end method

.method private getLocationWithCheck()V
    .locals 1

    .line 659
    invoke-static {}, Lcom/perm/kate/Helper;->isGoogleMapsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 660
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->showGoogleMapsActivity()V

    goto :goto_0

    .line 662
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->getLocation()V

    :goto_0
    return-void
.end method

.method private photoAttachmentsUploaded(Ljava/util/ArrayList;)V
    .locals 4

    .line 783
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 785
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Photo;

    .line 786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "photo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v0, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 787
    new-instance v1, Lcom/perm/kate/NewMessageActivity$16;

    invoke-direct {v1, p0, v0, p1}, Lcom/perm/kate/NewMessageActivity$16;-><init>(Lcom/perm/kate/NewMessageActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setMessageActivity()V
    .locals 7

    .line 730
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity;->edit_message:Lcom/perm/kate/api/Message;

    if-eqz v0, :cond_0

    return-void

    .line 733
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity;->user_ids:Ljava/util/Set;

    if-eqz v0, :cond_1

    return-void

    .line 735
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 736
    iget-wide v2, p0, Lcom/perm/kate/NewMessageActivity;->last_activity:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x5

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 737
    iput-wide v0, p0, Lcom/perm/kate/NewMessageActivity;->last_activity:J

    .line 738
    new-instance v0, Lcom/perm/kate/NewMessageActivity$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMessageActivity$13;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    .line 746
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method private showAudioActivity()V
    .locals 4

    .line 419
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 420
    const-class v1, Lcom/perm/kate/AudioActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 421
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "com.perm.kate.owner_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "com.perm.kate.select_audio"

    const/4 v2, 0x1

    .line 422
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 423
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showCreatePollActivity()V
    .locals 3

    .line 650
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 651
    const-class v1, Lcom/perm/kate/PollCreateActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "save"

    const/4 v2, 0x1

    .line 653
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0xc

    .line 654
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showDocsActivity()V
    .locals 4

    .line 643
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/DocsActivity2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 644
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "owner_id"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "select"

    const/4 v2, 0x1

    .line 645
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v1, 0xa

    .line 646
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showGoogleMapsActivity()V
    .locals 2

    .line 704
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 705
    const-class v1, Lcom/perm/kate/GoogleMapsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 706
    sget v1, Lcom/perm/kate/GoogleMapsActivity;->CHOOSE_LOCATION:I

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showSearchActivity(Z)V
    .locals 2

    .line 427
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 428
    const-class v1, Lcom/perm/kate/SearchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string p1, "com.perm.kate.select_video"

    .line 430
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x6

    .line 431
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const-string p1, "com.perm.kate.select_audio"

    .line 433
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x4

    .line 434
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method private updateLocation(Landroid/location/Location;)V
    .locals 3

    .line 687
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity;->geo_location:Landroid/location/Location;

    if-eqz p1, :cond_0

    .line 688
    sget-object p1, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 689
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "location:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/NewMessageActivity;->geo_location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/perm/kate/NewMessageActivity;->geo_location:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 690
    sget-object v1, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    sget-object p1, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 693
    invoke-static {}, Lcom/perm/kate/AttachmentsActivity;->attachmentsChanged()V

    .line 694
    new-instance p1, Lcom/perm/kate/NewMessageActivity$12;

    invoke-direct {p1, p0}, Lcom/perm/kate/NewMessageActivity$12;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private updateLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 680
    new-instance v0, Landroid/location/Location;

    const-string v1, "network"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 681
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 682
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Landroid/location/Location;->setLongitude(D)V

    .line 683
    invoke-direct {p0, v0}, Lcom/perm/kate/NewMessageActivity;->updateLocation(Landroid/location/Location;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 24

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    .line 450
    invoke-super/range {p0 .. p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 451
    iget-object v0, v9, Lcom/perm/kate/NewMessageActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    invoke-static {v9, v10, v11, v12, v0}, Lcom/perm/kate/photoupload/PhotoChooser;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/perm/kate/photoupload/PhotoChooser$Callback;)Landroid/net/Uri;

    const/4 v13, 0x0

    const/4 v0, 0x1

    const/4 v14, -0x1

    if-eqz v10, :cond_0

    const/4 v1, 0x4

    if-ne v10, v1, :cond_2

    :cond_0
    if-ne v11, v14, :cond_2

    const-string v1, "audios"

    .line 453
    invoke-virtual {v12, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 454
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    const-string v2, ","

    .line 455
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 456
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 457
    sget-object v5, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    sget-object v4, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 461
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0053

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_2
    const/4 v1, 0x6

    const-string v15, "_"

    const-string v7, "Kate.NewMessageActivity"

    const-string v8, "owner_id"

    const-wide/16 v5, 0x0

    if-eq v10, v1, :cond_3

    const/4 v1, 0x3

    if-ne v10, v1, :cond_4

    :cond_3
    if-ne v11, v14, :cond_4

    const-string v1, "video_id"

    .line 464
    invoke-virtual {v12, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 465
    invoke-virtual {v12, v8, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 466
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "attached_video_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " attached_video_owner_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "video"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 468
    sget-object v2, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    sget-object v1, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f058b

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 472
    :cond_4
    invoke-static {}, Lcom/perm/kate/Helper;->isGoogleMapsSupported()Z

    move-result v1

    if-eqz v1, :cond_5

    sget v1, Lcom/perm/kate/GoogleMapsActivity;->CHOOSE_LOCATION:I

    if-ne v10, v1, :cond_5

    if-ne v11, v14, :cond_5

    const-string v1, "latitude"

    .line 473
    invoke-virtual {v12, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "longitude"

    .line 474
    invoke-virtual {v12, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 475
    invoke-direct {v9, v1, v2}, Lcom/perm/kate/NewMessageActivity;->updateLocation(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const/4 v1, 0x7

    if-ne v10, v1, :cond_7

    if-ne v11, v14, :cond_7

    const-string v1, "uris"

    .line 478
    invoke-virtual {v12, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    const-string v3, "resize_option"

    .line 479
    invoke-virtual {v12, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v2, "rotate"

    .line 480
    invoke-virtual {v12, v2, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 481
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v0, :cond_6

    .line 482
    new-instance v16, Lcom/perm/kate/photoupload/MessageUploader;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/net/Uri;

    iget-object v1, v9, Lcom/perm/kate/NewMessageActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v0, v16

    move-object/from16 v21, v1

    move-object/from16 v1, p0

    move-object v2, v4

    move-object/from16 v4, v21

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    move-wide/from16 v7, v19

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/photoupload/MessageUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;ILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/Integer;Ljava/lang/String;J)V

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/photoupload/MessageUploader;->upload()V

    goto :goto_1

    :cond_6
    move-object/from16 v22, v7

    move-object/from16 v23, v8

    .line 484
    new-instance v0, Lcom/perm/kate/NewMessageActivity$MultiUploader;

    invoke-direct {v0, v9, v1, v3}, Lcom/perm/kate/NewMessageActivity$MultiUploader;-><init>(Lcom/perm/kate/NewMessageActivity;Ljava/util/ArrayList;I)V

    invoke-virtual {v0}, Lcom/perm/kate/NewMessageActivity$MultiUploader;->start()V

    goto :goto_1

    :cond_7
    move-object/from16 v22, v7

    move-object/from16 v23, v8

    :goto_1
    const/16 v0, 0x8

    if-ne v10, v0, :cond_8

    if-ne v11, v14, :cond_8

    const-string v0, "uri"

    .line 487
    invoke-virtual {v12, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 489
    new-instance v16, Lcom/perm/kate/photoupload/MessageUploader;

    const/4 v3, 0x0

    iget-object v4, v9, Lcom/perm/kate/NewMessageActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/photoupload/MessageUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;ILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/Integer;Ljava/lang/String;J)V

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/photoupload/MessageUploader;->upload()V

    :cond_8
    const/16 v0, 0xa

    if-ne v10, v0, :cond_9

    if-ne v11, v14, :cond_9

    const-string v0, "doc_id"

    const-wide/16 v1, 0x0

    .line 492
    invoke-virtual {v12, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object/from16 v3, v23

    .line 493
    invoke-virtual {v12, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 494
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attached_doc_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " attached_doc_owner_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, v22

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 496
    sget-object v3, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    sget-object v0, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    const-wide/16 v1, 0x0

    :goto_2
    const/16 v0, 0xc

    if-ne v10, v0, :cond_a

    if-ne v11, v14, :cond_a

    const-string v0, "poll_id"

    .line 501
    invoke-virtual {v12, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "poll"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    sget-object v1, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 504
    sget-object v0, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/NewMessageActivity;->UpdateAttachmentsCount()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 85
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00ca

    .line 86
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0232

    .line 87
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.user_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    .line 92
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.user_ids"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity;->user_ids:Ljava/util/Set;

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "message"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Message;

    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity;->edit_message:Lcom/perm/kate/api/Message;

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "peer_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/NewMessageActivity;->peer_id:J

    .line 96
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity;->edit_message:Lcom/perm/kate/api/Message;

    if-eqz p1, :cond_1

    const p1, 0x7f0f01ef

    .line 97
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 99
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.chat_id"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/perm/kate/NewMessageActivity;->chat_id:J

    .line 100
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    if-nez p1, :cond_2

    cmp-long p1, v3, v1

    if-gtz p1, :cond_2

    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity;->user_ids:Ljava/util/Set;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity;->edit_message:Lcom/perm/kate/api/Message;

    if-nez p1, :cond_2

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 102
    :cond_2
    sget-object p1, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 103
    sget-object p1, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 104
    sget-object p1, Lcom/perm/kate/NewMessageActivity;->forward_messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 106
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    const-string v0, " "

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-eqz p1, :cond_3

    .line 107
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, ""

    .line 111
    :goto_1
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 112
    iget-object v5, p0, Lcom/perm/kate/NewMessageActivity;->user_ids:Ljava/util/Set;

    if-eqz v5, :cond_8

    .line 113
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 114
    invoke-static {v6, v7}, Lcom/perm/kate/ThreadIdHelper;->isUser(J)Z

    move-result v8

    const-string v9, ", "

    if-eqz v8, :cond_6

    .line 115
    sget-object v8, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v6, v7}, Lcom/perm/kate/ThreadIdHelper;->getUserId(J)J

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    .line 118
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 119
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v6, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, v6, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 122
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_7

    .line 123
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 124
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {v6, v7}, Lcom/perm/kate/ThreadIdHelper;->getChatId(J)J

    move-result-wide v6

    invoke-virtual {p1, v6, v7, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchChatName(JJ)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    .line 128
    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "com.perm.kate.message_type"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/perm/kate/NewMessageActivity;->message_type:Ljava/lang/String;

    const v5, 0x7f0900df

    .line 129
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/perm/kate/NewMessageActivity;->counter:Landroid/widget/TextView;

    const v5, 0x7f090323

    .line 130
    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    .line 131
    iget-object v6, p0, Lcom/perm/kate/NewMessageActivity;->edit_message:Lcom/perm/kate/api/Message;

    if-nez v6, :cond_a

    .line 132
    iget-wide v6, p0, Lcom/perm/kate/NewMessageActivity;->chat_id:J

    const v8, 0x7f0f0366

    cmp-long v9, v6, v1

    if-lez v9, :cond_9

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v6, p0, Lcom/perm/kate/NewMessageActivity;->chat_id:J

    invoke-virtual {v0, v6, v7, v3, v4}, Lcom/perm/kate/db/DataHelper;->fetchChatName(JJ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 135
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v8}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 137
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    new-instance v0, Lcom/perm/kate/NewMessageActivity$TextChangedListener;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMessageActivity$TextChangedListener;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.message_text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 140
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    sget-object v3, Lcom/perm/kate/NewMessageActivity;->UserID:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/perm/kate/NewMessageActivity;->MessageText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 141
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    sget-object v3, Lcom/perm/kate/NewMessageActivity;->MessageText:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 142
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_c

    .line 143
    sput-object p1, Lcom/perm/kate/NewMessageActivity;->MessageText:Ljava/lang/String;

    .line 144
    iget-object v1, p0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v1, p0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {p0, p1, v1, v0}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    goto :goto_5

    .line 147
    :cond_c
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long p1, v3, v1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_4

    :cond_d
    iget-wide v1, p0, Lcom/perm/kate/NewMessageActivity;->chat_id:J

    .line 148
    :goto_4
    invoke-static {v1, v2}, Lcom/perm/utils/TempMessages;->take(J)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 150
    iget-object v1, p0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v1, p0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 152
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, p1, v0}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 156
    :cond_e
    :goto_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.perm.kate.photo_attachment"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 157
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_f

    .line 158
    sget-object v1, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object p1, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v1, "photo"

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_f
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v1, "com.perm.kate.forward_messages"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object p1

    if-eqz p1, :cond_11

    .line 162
    array-length v1, p1

    if-lez v1, :cond_11

    .line 163
    array-length v1, p1

    :goto_6
    if-ge v0, v1, :cond_10

    aget-wide v2, p1, v0

    .line 164
    sget-object v4, Lcom/perm/kate/NewMessageActivity;->forward_messages:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 166
    :cond_10
    sget-object p1, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/perm/kate/NewMessageActivity;->FORWARD_MESSAGES_PREFIX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/perm/kate/NewMessageActivity;->forward_messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object p1, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    sget-object v0, Lcom/perm/kate/NewMessageActivity;->FORWARD_MESSAGES_PREFIX:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    :cond_11
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/perm/kate/NewMessageActivity;->UserID:Ljava/lang/String;

    const p1, 0x7f090083

    .line 170
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity;->btn_new_message_send:Landroid/widget/Button;

    .line 171
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity;->send_clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 173
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    new-instance v0, Lcom/perm/kate/NewMessageActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMessageActivity$1;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const p1, 0x7f09005f

    .line 186
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 187
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity;->add_attachment_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090065

    .line 188
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 189
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity;->attachments_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity;->edit_message:Lcom/perm/kate/api/Message;

    if-eqz p1, :cond_12

    .line 192
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    iget-object p1, p1, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 193
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity;->edit_message:Lcom/perm/kate/api/Message;

    iget-object v0, v0, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/perm/kate/NewMessageActivity;->edit_message:Lcom/perm/kate/api/Message;

    iget-object v1, v1, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 194
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity;->btn_new_message_send:Landroid/widget/Button;

    const v0, 0x7f0f02a6

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(I)V

    .line 195
    iget-object p1, p0, Lcom/perm/kate/NewMessageActivity;->edit_message:Lcom/perm/kate/api/Message;

    iget-object p1, p1, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    sget-object v0, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    sget-object v1, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-static {p1, v0, v1}, Lcom/perm/kate/WallPostActivity;->attachmentsToStrings(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_12
    const p1, 0x7f090351

    .line 198
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity;->tv_attachments_count:Landroid/widget/TextView;

    const p1, 0x7f09012c

    .line 199
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity;->ff_attachments_count_placeholder:Landroid/view/View;

    .line 200
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->UpdateAttachmentsCount()V

    .line 203
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "shared_photo"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    if-eqz p1, :cond_13

    .line 205
    invoke-static {p1}, Lcom/perm/kate/Helper;->makeUriList(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/perm/kate/NewMessageActivity;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    .line 207
    :cond_13
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "shared_photos"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_14

    .line 209
    invoke-direct {p0, p1}, Lcom/perm/kate/NewMessageActivity;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    .line 211
    :cond_14
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "shared_text"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-static {p1}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 213
    sput-object p1, Lcom/perm/kate/NewMessageActivity;->MessageText:Ljava/lang/String;

    .line 214
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 217
    :cond_15
    new-instance p1, Lcom/perm/kate/smile/SmileKeyboard;

    invoke-direct {p1}, Lcom/perm/kate/smile/SmileKeyboard;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    const v0, 0x7f090036

    .line 218
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/NewMessageActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    invoke-virtual {p1, p0, v0, v1}, Lcom/perm/kate/smile/SmileKeyboard;->init(Landroidx/fragment/app/FragmentActivity;Landroid/view/View;Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;)V

    .line 219
    iget-object p1, p0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/perm/kate/smile/SmileKeyboard;->registerEditText(Landroid/widget/EditText;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 380
    iget-object v1, p0, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v1, p0, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/perm/kate/NewMessageActivity;->chat_id:J

    .line 381
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/perm/utils/TempMessages;->put(JLjava/lang/String;)V

    .line 384
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    return-void

    .line 633
    :cond_0
    array-length p1, p3

    if-lez p1, :cond_1

    const/4 p1, 0x0

    aget p1, p3, p1

    if-nez p1, :cond_1

    .line 634
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->getLocationWithCheck()V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 226
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onResume()V

    .line 227
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->UpdateAttachmentsCount()V

    return-void
.end method
