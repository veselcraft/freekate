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
.field static FORWARD_MESSAGES_PREFIX:Ljava/lang/String;

.field private static MessageText:Ljava/lang/String;

.field private static UserID:Ljava/lang/String;

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

.field static forward_messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private add_attachment_OnClickListerer:Landroid/view/View$OnClickListener;

.field private attachments_OnClickListerer:Landroid/view/View$OnClickListener;

.field private btn_new_message_send:Landroid/widget/Button;

.field private callback3:Lcom/perm/kate/MessageSender$MessageSenderCallback;

.field private chat_id:J

.field private counter:Landroid/widget/TextView;

.field private ff_attachments_count_placeholder:Landroid/view/View;

.field private geo_location:Landroid/location/Location;

.field private last_activity:J

.field listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

.field private message_type:Ljava/lang/String;

.field private photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

.field private send_clickListener:Landroid/view/View$OnClickListener;

.field private tb_new_message_text:Landroid/widget/EditText;

.field private tv_attachments_count:Landroid/widget/TextView;

.field protected uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

.field private user_id:Ljava/lang/Long;

.field user_ids:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, ""

    sput-object v0, Lcom/perm/kate/NewMessageActivity;->MessageText:Ljava/lang/String;

    .line 51
    const-string v0, ""

    sput-object v0, Lcom/perm/kate/NewMessageActivity;->UserID:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/NewMessageActivity;->forward_messages:Ljava/util/ArrayList;

    .line 210
    const-string v0, "forward_messages"

    sput-object v0, Lcom/perm/kate/NewMessageActivity;->FORWARD_MESSAGES_PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/perm/kate/NewMessageActivity;->geo_location:Landroid/location/Location;

    .line 226
    new-instance v0, Lcom/perm/kate/NewMessageActivity$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMessageActivity$2;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMessageActivity;->send_clickListener:Landroid/view/View$OnClickListener;

    .line 262
    new-instance v0, Lcom/perm/kate/NewMessageActivity$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMessageActivity$3;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMessageActivity;->callback3:Lcom/perm/kate/MessageSender$MessageSenderCallback;

    .line 514
    new-instance v0, Lcom/perm/kate/NewMessageActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMessageActivity$7;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMessageActivity;->attachments_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 524
    new-instance v0, Lcom/perm/kate/NewMessageActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMessageActivity$8;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMessageActivity;->add_attachment_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 653
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/perm/kate/NewMessageActivity;->last_activity:J

    .line 673
    new-instance v0, Lcom/perm/kate/NewMessageActivity$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMessageActivity$12;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMessageActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    .line 691
    new-instance v0, Lcom/perm/kate/NewMessageActivity$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMessageActivity$13;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMessageActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 721
    new-instance v0, Lcom/perm/kate/NewMessageActivity$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMessageActivity$15;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewMessageActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    return-void
.end method

.method private UpdateAttachmentsCount()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity;->tv_attachments_count:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity;->tv_attachments_count:Landroid/widget/TextView;

    sget-object v2, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 221
    iget-object v2, p0, Lcom/perm/kate/NewMessageActivity;->ff_attachments_count_placeholder:Landroid/view/View;

    sget-object v0, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 222
    sget-object v0, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p0, v0, v1, v1}, Lcom/perm/kate/Helper;->checkLimitAttachments(Lcom/perm/kate/BaseActivity;IZZ)Z

    .line 224
    :cond_0
    return-void

    .line 221
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/perm/kate/NewMessageActivity;->MessageText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 46
    sput-object p0, Lcom/perm/kate/NewMessageActivity;->MessageText:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->setMessageActivity()V

    return-void
.end method

.method static synthetic access$1000(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->showAudioActivity()V

    return-void
.end method

.method static synthetic access$1100(Lcom/perm/kate/NewMessageActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewMessageActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/perm/kate/NewMessageActivity;->showSearchActivity(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->attachVideo()V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->createAddAttachmentDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->createAttachAudioDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->createAttachVideoDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->getLocationWithCheck()V

    return-void
.end method

.method static synthetic access$1700(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->showDocsActivity()V

    return-void
.end method

.method static synthetic access$1800(Lcom/perm/kate/NewMessageActivity;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewMessageActivity;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/perm/kate/NewMessageActivity;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/NewMessageActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity;->counter:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/NewMessageActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/perm/kate/NewMessageActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewMessageActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/perm/kate/NewMessageActivity;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/NewMessageActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewMessageActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/perm/kate/NewMessageActivity;->photoAttachmentsUploaded(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->UpdateAttachmentsCount()V

    return-void
.end method

.method static synthetic access$2300(Lcom/perm/kate/NewMessageActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewMessageActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/perm/kate/NewMessageActivity;->addSmile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/NewMessageActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$400(Lcom/perm/kate/NewMessageActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/perm/kate/NewMessageActivity;->chat_id:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/perm/kate/NewMessageActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity;->message_type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/perm/kate/NewMessageActivity;)Lcom/perm/kate/MessageSender$MessageSenderCallback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity;->callback3:Lcom/perm/kate/MessageSender$MessageSenderCallback;

    return-object v0
.end method

.method static synthetic access$702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 46
    sput-object p0, Lcom/perm/kate/NewMessageActivity;->UserID:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/NewMessageActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/perm/kate/NewMessageActivity;->btn_new_message_send:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/perm/kate/NewMessageActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewMessageActivity;

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->enableButtonOnUiThread()V

    return-void
.end method

.method private addSmile(Ljava/lang/String;)V
    .locals 4
    .param p1, "smile_string"    # Ljava/lang/String;

    .prologue
    .line 472
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 474
    .local v0, "smile_spannable":Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    invoke-static {p0, p1, v0, v3}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 475
    iget-object v3, p0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 476
    .local v1, "text":Landroid/text/Editable;
    iget-object v3, p0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 477
    .local v2, "where_insert":I
    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 478
    return-void
.end method

.method static allowSendTypingStatus()Z
    .locals 3

    .prologue
    .line 779
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

    .prologue
    .line 507
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 508
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/VideoActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 509
    const-string v1, "com.perm.kate.user_id"

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 510
    const-string v1, "com.perm.kate.select_video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 511
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/NewMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 512
    return-void
.end method

.method private createAddAttachmentDialog()V
    .locals 6

    .prologue
    .line 539
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 540
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070139

    const/16 v5, 0x64

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070136

    const/16 v5, 0x65

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f07013a

    const/16 v5, 0x66

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070138

    const/16 v5, 0x67

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070137

    const/16 v5, 0x68

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070409

    const/16 v5, 0x69

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f07003a

    .line 547
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 548
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/NewMessageActivity$9;

    invoke-direct {v5, p0, v1}, Lcom/perm/kate/NewMessageActivity$9;-><init>(Lcom/perm/kate/NewMessageActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 575
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 576
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 577
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 578
    return-void
.end method

.method private createAttachAudioDialog()V
    .locals 6

    .prologue
    .line 328
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0703d2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0703d4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 333
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/NewMessageActivity$5;

    invoke-direct {v5, p0, v1}, Lcom/perm/kate/NewMessageActivity$5;-><init>(Lcom/perm/kate/NewMessageActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 349
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 350
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 351
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 352
    return-void
.end method

.method private createAttachVideoDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 484
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 485
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0703d6

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0703d5

    invoke-direct {v3, v4, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 488
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/NewMessageActivity$6;

    invoke-direct {v5, p0, v1}, Lcom/perm/kate/NewMessageActivity$6;-><init>(Lcom/perm/kate/NewMessageActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 501
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 502
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 503
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 504
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
    .line 699
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 701
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uris"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 702
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/NewMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 703
    return-void
.end method

.method private enableButtonOnUiThread()V
    .locals 1

    .prologue
    .line 300
    new-instance v0, Lcom/perm/kate/NewMessageActivity$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewMessageActivity$4;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 308
    return-void
.end method

.method private getLocation()V
    .locals 2

    .prologue
    .line 596
    new-instance v0, Lcom/perm/utils/MyLocation;

    invoke-direct {v0, p0}, Lcom/perm/utils/MyLocation;-><init>(Landroid/content/Context;)V

    .line 597
    .local v0, "geo":Lcom/perm/utils/MyLocation;
    new-instance v1, Lcom/perm/kate/NewMessageActivity$10;

    invoke-direct {v1, p0}, Lcom/perm/kate/NewMessageActivity$10;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    .line 606
    .local v1, "loc_res":Lcom/perm/utils/MyLocation$LocationResult;
    invoke-virtual {v0, v1}, Lcom/perm/utils/MyLocation;->getLocation(Lcom/perm/utils/MyLocation$LocationResult;)Z

    .line 607
    return-void
.end method

.method private getLocationWithCheck()V
    .locals 1

    .prologue
    .line 589
    invoke-static {}, Lcom/perm/kate/Helper;->isGoogleMapsSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->showGoogleMapsActivity()V

    .line 593
    :goto_0
    return-void

    .line 592
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->getLocation()V

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
    .line 706
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 719
    :goto_0
    return-void

    .line 708
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Photo;

    .line 709
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

    .line 710
    .local v0, "attachment":Ljava/lang/String;
    new-instance v2, Lcom/perm/kate/NewMessageActivity$14;

    invoke-direct {v2, p0, v0, p1}, Lcom/perm/kate/NewMessageActivity$14;-><init>(Lcom/perm/kate/NewMessageActivity;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/perm/kate/NewMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setMessageActivity()V
    .locals 6

    .prologue
    .line 656
    iget-object v2, p0, Lcom/perm/kate/NewMessageActivity;->user_ids:Ljava/util/Set;

    if-eqz v2, :cond_1

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 658
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 659
    .local v0, "tick":J
    iget-wide v2, p0, Lcom/perm/kate/NewMessageActivity;->last_activity:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const-wide/16 v4, 0x5

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 660
    iput-wide v0, p0, Lcom/perm/kate/NewMessageActivity;->last_activity:J

    .line 661
    new-instance v2, Lcom/perm/kate/NewMessageActivity$11;

    invoke-direct {v2, p0}, Lcom/perm/kate/NewMessageActivity$11;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    .line 669
    invoke-virtual {v2}, Lcom/perm/kate/NewMessageActivity$11;->start()V

    goto :goto_0
.end method

.method private showAudioActivity()V
    .locals 4

    .prologue
    .line 355
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 356
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/AudioActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 357
    const-string v1, "com.perm.kate.owner_id"

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 358
    const-string v1, "com.perm.kate.select_audio"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 359
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/NewMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 360
    return-void
.end method

.method private showDocsActivity()V
    .locals 4

    .prologue
    .line 581
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/DocsActivity2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 582
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "owner_id"

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 583
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 584
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/NewMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 585
    return-void
.end method

.method private showGoogleMapsActivity()V
    .locals 2

    .prologue
    .line 630
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 631
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/GoogleMapsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 632
    sget v1, Lcom/perm/kate/GoogleMapsActivity;->CHOOSE_LOCATION:I

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/NewMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 633
    return-void
.end method

.method private showSearchActivity(Z)V
    .locals 3
    .param p1, "video"    # Z

    .prologue
    const/4 v2, 0x1

    .line 363
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 364
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/SearchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 365
    if-eqz p1, :cond_0

    .line 366
    const-string v1, "com.perm.kate.select_video"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 367
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/NewMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 372
    :goto_0
    return-void

    .line 369
    :cond_0
    const-string v1, "com.perm.kate.select_audio"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 370
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/NewMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private updateLocation(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 617
    iput-object p1, p0, Lcom/perm/kate/NewMessageActivity;->geo_location:Landroid/location/Location;

    .line 618
    iget-object v1, p0, Lcom/perm/kate/NewMessageActivity;->geo_location:Landroid/location/Location;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 619
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "location:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/NewMessageActivity;->geo_location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/NewMessageActivity;->geo_location:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    .local v0, "attachment":Ljava/lang/String;
    sget-object v1, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 621
    sget-object v1, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v2, "location"

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    invoke-static {}, Lcom/perm/kate/AttachmentsActivity;->attachmentsChanged()V

    .line 624
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->UpdateAttachmentsCount()V

    .line 626
    .end local v0    # "attachment":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private updateLocation(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "lat"    # Ljava/lang/String;
    .param p2, "lon"    # Ljava/lang/String;

    .prologue
    .line 610
    new-instance v0, Landroid/location/Location;

    const-string v1, "network"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 611
    .local v0, "l":Landroid/location/Location;
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLatitude(D)V

    .line 612
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    .line 613
    invoke-direct {p0, v0}, Lcom/perm/kate/NewMessageActivity;->updateLocation(Landroid/location/Location;)V

    .line 614
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 31
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 385
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/NewMessageActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v5}, Lcom/perm/kate/photoupload/PhotoChooser;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/perm/kate/photoupload/PhotoChooser$Callback;)Landroid/net/Uri;

    .line 386
    if-nez p1, :cond_2

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_2

    .line 387
    const-string v5, "audios"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 388
    .local v25, "audios":Ljava/lang/String;
    if-eqz v25, :cond_0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 389
    const-string v5, ","

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 390
    .local v26, "audios_array":[Ljava/lang/String;
    move-object/from16 v0, v26

    array-length v6, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v24, v26, v5

    .line 391
    .local v24, "attachment":Ljava/lang/String;
    sget-object v7, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    sget-object v7, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v9, "audio"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 390
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 395
    .end local v24    # "attachment":Ljava/lang/String;
    .end local v26    # "audios_array":[Ljava/lang/String;
    :cond_0
    const-string v5, "audio_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 396
    .local v4, "attached_audio_id":Ljava/lang/Long;
    const-string v5, "owner_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 397
    .local v18, "attached_audio_owner_id":Ljava/lang/Long;
    const-string v5, "Kate.NewMessageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attached_audio_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attached_audio_owner_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 399
    .restart local v24    # "attachment":Ljava/lang/String;
    sget-object v5, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    sget-object v5, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    .end local v4    # "attached_audio_id":Ljava/lang/Long;
    .end local v18    # "attached_audio_owner_id":Ljava/lang/Long;
    .end local v24    # "attachment":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f07003d

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 404
    .end local v25    # "audios":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x4

    move/from16 v0, p1

    if-ne v0, v5, :cond_5

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_5

    .line 405
    const-string v5, "audios"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 406
    .restart local v25    # "audios":Ljava/lang/String;
    if-eqz v25, :cond_3

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 407
    const-string v5, ","

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v26

    .line 408
    .restart local v26    # "audios_array":[Ljava/lang/String;
    move-object/from16 v0, v26

    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v24, v26, v5

    .line 409
    .restart local v24    # "attachment":Ljava/lang/String;
    sget-object v7, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    sget-object v7, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v9, "audio"

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 413
    .end local v24    # "attachment":Ljava/lang/String;
    .end local v26    # "audios_array":[Ljava/lang/String;
    :cond_3
    const-string v5, "audio_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 414
    .restart local v4    # "attached_audio_id":Ljava/lang/Long;
    const-string v5, "owner_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 415
    .restart local v18    # "attached_audio_owner_id":Ljava/lang/Long;
    const-string v5, "Kate.NewMessageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attached_audio_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attached_audio_owner_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 417
    .restart local v24    # "attachment":Ljava/lang/String;
    sget-object v5, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    sget-object v5, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 420
    .end local v4    # "attached_audio_id":Ljava/lang/Long;
    .end local v18    # "attached_audio_owner_id":Ljava/lang/Long;
    .end local v24    # "attachment":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f07003d

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 422
    .end local v25    # "audios":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x6

    move/from16 v0, p1

    if-ne v0, v5, :cond_6

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_6

    .line 423
    const-string v5, "video_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 424
    .local v21, "attached_video_id":Ljava/lang/Long;
    const-string v5, "owner_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v22

    .line 425
    .local v22, "attached_video_owner_id":Ljava/lang/Long;
    const-string v5, "Kate.NewMessageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attached_video_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attached_video_owner_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video"

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

    move-result-object v24

    .line 427
    .restart local v24    # "attachment":Ljava/lang/String;
    sget-object v5, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    sget-object v5, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f070506

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 431
    .end local v21    # "attached_video_id":Ljava/lang/Long;
    .end local v22    # "attached_video_owner_id":Ljava/lang/Long;
    .end local v24    # "attachment":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x3

    move/from16 v0, p1

    if-ne v0, v5, :cond_7

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_7

    .line 432
    const-string v5, "video_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .line 433
    .restart local v21    # "attached_video_id":Ljava/lang/Long;
    const-string v5, "owner_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v22

    .line 434
    .local v22, "attached_video_owner_id":J
    const-string v5, "Kate.NewMessageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attached_video_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, v22

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 436
    .restart local v24    # "attachment":Ljava/lang/String;
    sget-object v5, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 437
    sget-object v5, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 438
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewMessageActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f070506

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 440
    .end local v21    # "attached_video_id":Ljava/lang/Long;
    .end local v22    # "attached_video_owner_id":J
    .end local v24    # "attachment":Ljava/lang/String;
    :cond_7
    invoke-static {}, Lcom/perm/kate/Helper;->isGoogleMapsSupported()Z

    move-result v5

    if-eqz v5, :cond_8

    sget v5, Lcom/perm/kate/GoogleMapsActivity;->CHOOSE_LOCATION:I

    move/from16 v0, p1

    if-ne v0, v5, :cond_8

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_8

    .line 441
    const-string v5, "latitude"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 442
    .local v27, "latitude":Ljava/lang/String;
    const-string v5, "longitude"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 443
    .local v28, "longitude":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/NewMessageActivity;->updateLocation(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .end local v27    # "latitude":Ljava/lang/String;
    .end local v28    # "longitude":Ljava/lang/String;
    :cond_8
    const/4 v5, 0x7

    move/from16 v0, p1

    if-ne v0, v5, :cond_9

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_9

    .line 446
    const-string v5, "uris"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v30

    check-cast v30, Ljava/util/ArrayList;

    .line 447
    .local v30, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v5, "resize_option"

    const/4 v6, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 448
    .local v8, "resize_option":I
    const-string v5, "rotate"

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    .line 449
    .local v29, "rotate":I
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    .line 450
    new-instance v5, Lcom/perm/kate/photoupload/MessageUploader;

    const/4 v6, 0x0

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/perm/kate/NewMessageActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v13}, Lcom/perm/kate/photoupload/MessageUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;ILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/Integer;Ljava/lang/String;J)V

    invoke-virtual {v5}, Lcom/perm/kate/photoupload/MessageUploader;->upload()V

    .line 454
    .end local v8    # "resize_option":I
    .end local v29    # "rotate":I
    .end local v30    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_9
    :goto_2
    const/16 v5, 0x8

    move/from16 v0, p1

    if-ne v0, v5, :cond_a

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_a

    .line 455
    const-string v5, "uri"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v11

    .line 457
    .local v11, "uri":Landroid/net/Uri;
    new-instance v9, Lcom/perm/kate/photoupload/MessageUploader;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/perm/kate/NewMessageActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v9 .. v17}, Lcom/perm/kate/photoupload/MessageUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;ILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/Integer;Ljava/lang/String;J)V

    invoke-virtual {v9}, Lcom/perm/kate/photoupload/MessageUploader;->upload()V

    .line 459
    .end local v11    # "uri":Landroid/net/Uri;
    :cond_a
    const/16 v5, 0xa

    move/from16 v0, p1

    if-ne v0, v5, :cond_b

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_b

    .line 460
    const-string v5, "doc_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    .line 461
    .local v19, "attached_doc_id":Ljava/lang/Long;
    const-string v5, "owner_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    .line 462
    .local v20, "attached_doc_owner_id":Ljava/lang/Long;
    const-string v5, "Kate.NewMessageActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attached_doc_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attached_doc_owner_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 464
    .restart local v24    # "attachment":Ljava/lang/String;
    sget-object v5, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    sget-object v5, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v6, "doc"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    .end local v19    # "attached_doc_id":Ljava/lang/Long;
    .end local v20    # "attached_doc_owner_id":Ljava/lang/Long;
    .end local v24    # "attachment":Ljava/lang/String;
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/NewMessageActivity;->UpdateAttachmentsCount()V

    .line 469
    return-void

    .line 452
    .restart local v8    # "resize_option":I
    .restart local v29    # "rotate":I
    .restart local v30    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_c
    new-instance v5, Lcom/perm/kate/NewMessageActivity$MultiUploader;

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v5, v0, v1, v8}, Lcom/perm/kate/NewMessageActivity$MultiUploader;-><init>(Lcom/perm/kate/NewMessageActivity;Ljava/util/ArrayList;I)V

    invoke-virtual {v5}, Lcom/perm/kate/NewMessageActivity$MultiUploader;->start()V

    goto/16 :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 34
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super/range {p0 .. p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v28, 0x7f0300b7

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewMessageActivity;->setContentView(I)V

    .line 76
    const v28, 0x7f0701d6

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewMessageActivity;->setHeaderTitle(I)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "com.perm.kate.user_id"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_4

    .line 78
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "com.perm.kate.user_id"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    .line 81
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "com.perm.kate.user_ids"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v28

    check-cast v28, Ljava/util/HashSet;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/NewMessageActivity;->user_ids:Ljava/util/Set;

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "com.perm.kate.chat_id"

    const-wide/16 v30, 0x0

    invoke-virtual/range {v28 .. v31}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/perm/kate/NewMessageActivity;->chat_id:J

    .line 83
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    move-object/from16 v28, v0

    if-nez v28, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/perm/kate/NewMessageActivity;->chat_id:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-gtz v28, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->user_ids:Ljava/util/Set;

    move-object/from16 v28, v0

    if-nez v28, :cond_0

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewMessageActivity;->finish()V

    .line 85
    :cond_0
    sget-object v28, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V

    .line 86
    sget-object v28, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V

    .line 87
    sget-object v28, Lcom/perm/kate/NewMessageActivity;->forward_messages:Ljava/util/ArrayList;

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V

    .line 88
    const-string v25, ""

    .line 89
    .local v25, "user_name":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_1

    .line 90
    sget-object v28, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v30

    move-object/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v21

    .line 91
    .local v21, "u":Lcom/perm/kate/api/User;
    if-eqz v21, :cond_1

    .line 92
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 94
    .end local v21    # "u":Lcom/perm/kate/api/User;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->user_ids:Ljava/util/Set;

    move-object/from16 v28, v0

    if-eqz v28, :cond_5

    .line 95
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->user_ids:Ljava/util/Set;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_2
    :goto_1
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v28

    if-eqz v28, :cond_5

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/Long;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 96
    .local v10, "id":J
    sget-object v28, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, v28

    invoke-virtual {v0, v10, v11}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v21

    .line 97
    .restart local v21    # "u":Lcom/perm/kate/api/User;
    if-eqz v21, :cond_2

    .line 98
    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_3

    .line 99
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, ", "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 100
    :cond_3
    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v30, " "

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    goto :goto_1

    .line 80
    .end local v10    # "id":J
    .end local v21    # "u":Lcom/perm/kate/api/User;
    .end local v25    # "user_name":Ljava/lang/String;
    :cond_4
    const-wide/16 v28, 0x0

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    goto/16 :goto_0

    .line 104
    .restart local v25    # "user_name":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "com.perm.kate.message_type"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/NewMessageActivity;->message_type:Ljava/lang/String;

    .line 105
    const v28, 0x7f0e0264

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/NewMessageActivity;->counter:Landroid/widget/TextView;

    .line 106
    const v28, 0x7f0e0262

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/EditText;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    .line 107
    sget-object v28, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual/range {v28 .. v28}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 108
    .local v4, "account_id":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/perm/kate/NewMessageActivity;->chat_id:J

    move-wide/from16 v28, v0

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-lez v28, :cond_d

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const v30, 0x7f070304

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewMessageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v30, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/perm/kate/NewMessageActivity;->chat_id:J

    move-wide/from16 v32, v0

    move-object/from16 v0, v30

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchChatName(JJ)Ljava/lang/CharSequence;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 112
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    move-object/from16 v28, v0

    new-instance v29, Lcom/perm/kate/NewMessageActivity$TextChangedListener;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/perm/kate/NewMessageActivity$TextChangedListener;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    invoke-virtual/range {v28 .. v29}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "com.perm.kate.message_text"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 115
    .local v13, "message_text":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    move-object/from16 v28, v0

    sget-object v29, Lcom/perm/kate/NewMessageActivity;->UserID:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-eqz v28, :cond_6

    sget-object v28, Lcom/perm/kate/NewMessageActivity;->MessageText:Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_6

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    move-object/from16 v28, v0

    sget-object v29, Lcom/perm/kate/NewMessageActivity;->MessageText:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 117
    :cond_6
    if-eqz v13, :cond_e

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_e

    .line 118
    sput-object v13, Lcom/perm/kate/NewMessageActivity;->MessageText:Ljava/lang/String;

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v0, v13, v1, v2}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 131
    :cond_7
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "com.perm.kate.photo_attachment"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 132
    .local v16, "photo_attachment":Ljava/lang/String;
    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_8

    .line 133
    sget-object v28, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v28, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v29, "photo"

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "com.perm.kate.wall_attachment"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 137
    .local v27, "wall_attachment":Ljava/lang/String;
    if-eqz v27, :cond_9

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_9

    .line 138
    sget-object v28, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v28, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v29, "wall"

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "com.perm.kate.audio_attachment"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, "audio_attachment":Ljava/lang/String;
    if-eqz v6, :cond_a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_a

    .line 143
    sget-object v28, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v28, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v29, "audio"

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "com.perm.kate.video_attachment"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 147
    .local v26, "video_attachment":Ljava/lang/String;
    if-eqz v26, :cond_b

    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_b

    .line 148
    sget-object v28, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v28, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v29, "video"

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "com.perm.kate.doc_attachment"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 152
    .local v9, "doc_attachment":Ljava/lang/String;
    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v28

    if-lez v28, :cond_c

    .line 153
    sget-object v28, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v28, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v29, "doc"

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "com.perm.kate.forward_messages"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v12

    .line 157
    .local v12, "long_array":[J
    if-eqz v12, :cond_11

    array-length v0, v12

    move/from16 v28, v0

    if-lez v28, :cond_11

    .line 158
    array-length v0, v12

    move/from16 v29, v0

    const/16 v28, 0x0

    :goto_4
    move/from16 v0, v28

    move/from16 v1, v29

    if-ge v0, v1, :cond_10

    aget-wide v14, v12, v28

    .line 159
    .local v14, "mid":J
    sget-object v30, Lcom/perm/kate/NewMessageActivity;->forward_messages:Ljava/util/ArrayList;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    add-int/lit8 v28, v28, 0x1

    goto :goto_4

    .line 111
    .end local v6    # "audio_attachment":Ljava/lang/String;
    .end local v9    # "doc_attachment":Ljava/lang/String;
    .end local v12    # "long_array":[J
    .end local v13    # "message_text":Ljava/lang/String;
    .end local v14    # "mid":J
    .end local v16    # "photo_attachment":Ljava/lang/String;
    .end local v26    # "video_attachment":Ljava/lang/String;
    .end local v27    # "wall_attachment":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    move-object/from16 v28, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const v30, 0x7f070304

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewMessageActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 122
    .restart local v13    # "message_text":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    const-wide/16 v30, 0x0

    cmp-long v28, v28, v30

    if-eqz v28, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    .line 123
    .local v22, "uid":J
    :goto_5
    invoke-static/range {v22 .. v23}, Lcom/perm/utils/TempMessages;->take(J)Ljava/lang/String;

    move-result-object v19

    .line 124
    .local v19, "temp":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_7

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    move-object/from16 v28, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/widget/EditText;->setSelection(I)V

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v20

    .line 128
    .local v20, "text":Landroid/text/Editable;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v20

    move/from16 v3, v29

    invoke-static {v0, v1, v2, v3}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    goto/16 :goto_3

    .line 122
    .end local v19    # "temp":Ljava/lang/String;
    .end local v20    # "text":Landroid/text/Editable;
    .end local v22    # "uid":J
    :cond_f
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/perm/kate/NewMessageActivity;->chat_id:J

    move-wide/from16 v22, v0

    goto :goto_5

    .line 161
    .restart local v6    # "audio_attachment":Ljava/lang/String;
    .restart local v9    # "doc_attachment":Ljava/lang/String;
    .restart local v12    # "long_array":[J
    .restart local v16    # "photo_attachment":Ljava/lang/String;
    .restart local v26    # "video_attachment":Ljava/lang/String;
    .restart local v27    # "wall_attachment":Ljava/lang/String;
    :cond_10
    sget-object v28, Lcom/perm/kate/NewMessageActivity;->attachments:Ljava/util/ArrayList;

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v30, Lcom/perm/kate/NewMessageActivity;->FORWARD_MESSAGES_PREFIX:Ljava/lang/String;

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    sget-object v30, Lcom/perm/kate/NewMessageActivity;->forward_messages:Ljava/util/ArrayList;

    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v28, Lcom/perm/kate/NewMessageActivity;->attachments_objects:Ljava/util/ArrayList;

    sget-object v29, Lcom/perm/kate/NewMessageActivity;->FORWARD_MESSAGES_PREFIX:Ljava/lang/String;

    invoke-virtual/range {v28 .. v29}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Long;->longValue()J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v28

    sput-object v28, Lcom/perm/kate/NewMessageActivity;->UserID:Ljava/lang/String;

    .line 165
    const v28, 0x7f0e0263

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/Button;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/NewMessageActivity;->btn_new_message_send:Landroid/widget/Button;

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->btn_new_message_send:Landroid/widget/Button;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->send_clickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/widget/EditText;->requestFocus()Z

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    move-object/from16 v28, v0

    new-instance v29, Lcom/perm/kate/NewMessageActivity$1;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/perm/kate/NewMessageActivity$1;-><init>(Lcom/perm/kate/NewMessageActivity;)V

    invoke-virtual/range {v28 .. v29}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 181
    const v28, 0x7f0e00ea

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    .line 182
    .local v7, "btn_add_attachment":Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->add_attachment_OnClickListerer:Landroid/view/View$OnClickListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v7, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const v28, 0x7f0e025d

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageButton;

    .line 184
    .local v8, "btn_attachments":Landroid/widget/ImageButton;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->attachments_OnClickListerer:Landroid/view/View$OnClickListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v28, 0x7f0e0241

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    check-cast v28, Landroid/widget/TextView;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/NewMessageActivity;->tv_attachments_count:Landroid/widget/TextView;

    .line 187
    const v28, 0x7f0e025c

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/NewMessageActivity;->ff_attachments_count_placeholder:Landroid/view/View;

    .line 188
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/NewMessageActivity;->UpdateAttachmentsCount()V

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "shared_photo"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v17

    check-cast v17, Landroid/net/Uri;

    .line 192
    .local v17, "shared_photo":Landroid/net/Uri;
    if-eqz v17, :cond_12

    .line 193
    invoke-static/range {v17 .. v17}, Lcom/perm/kate/Helper;->makeUriList(Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v28

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/perm/kate/NewMessageActivity;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    .line 195
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "shared_photos"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v24

    check-cast v24, Ljava/util/ArrayList;

    .line 196
    .local v24, "uris_shared":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v24, :cond_13

    .line 197
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/perm/kate/NewMessageActivity;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    .line 199
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v28

    const-string v29, "shared_text"

    invoke-virtual/range {v28 .. v29}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 200
    .local v18, "shared_text":Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/perm/kate/Helper;->isNotEmpty(Ljava/lang/String;)Z

    move-result v28

    if-eqz v28, :cond_14

    .line 201
    sput-object v18, Lcom/perm/kate/NewMessageActivity;->MessageText:Ljava/lang/String;

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 205
    :cond_14
    new-instance v28, Lcom/perm/kate/smile/SmileKeyboard;

    invoke-direct/range {v28 .. v28}, Lcom/perm/kate/smile/SmileKeyboard;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/perm/kate/NewMessageActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    move-object/from16 v28, v0

    const v29, 0x7f0e025b

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    move-object/from16 v30, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    move-object/from16 v3, v30

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/smile/SmileKeyboard;->init(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;)V

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Lcom/perm/kate/smile/SmileKeyboard;->registerEditText(Landroid/widget/EditText;)V

    .line 208
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 312
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/perm/kate/NewMessageActivity;->tb_new_message_text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "text":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    iget-object v1, p0, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/perm/kate/NewMessageActivity;->user_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 317
    .local v2, "uid":J
    :goto_0
    invoke-static {v2, v3, v0}, Lcom/perm/utils/TempMessages;->put(JLjava/lang/String;)V

    .line 320
    .end local v0    # "text":Ljava/lang/String;
    .end local v2    # "uid":J
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1

    .line 316
    .restart local v0    # "text":Ljava/lang/String;
    :cond_1
    iget-wide v2, p0, Lcom/perm/kate/NewMessageActivity;->chat_id:J

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 214
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onResume()V

    .line 215
    invoke-direct {p0}, Lcom/perm/kate/NewMessageActivity;->UpdateAttachmentsCount()V

    .line 216
    return-void
.end method
