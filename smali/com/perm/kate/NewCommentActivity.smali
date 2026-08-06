.class public Lcom/perm/kate/NewCommentActivity;
.super Lcom/perm/kate/BaseActivity;
.source "NewCommentActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/NewCommentActivity$MultiUploader;
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
.field private add_attachment_OnClickListerer:Landroid/view/View$OnClickListener;

.field private add_smile:Landroid/widget/ImageButton;

.field private attachments_OnClickListerer:Landroid/view/View$OnClickListener;

.field private btn_add_attachment:Landroid/widget/ImageButton;

.field private btn_attachments:Landroid/widget/ImageButton;

.field private btn_new_comment_save:Landroid/widget/Button;

.field private btn_post_settings:Landroid/widget/ImageButton;

.field private callback_save:Lcom/perm/kate/session/Callback;

.field private callback_save2:Lcom/perm/kate/session/Callback;

.field private cid:J

.field private comment_type:I

.field private content_id:Ljava/lang/Long;

.field private edit:Z

.field private ff_attachments_count_placeholder:Landroid/view/View;

.field private from_group:Z

.field listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

.field private owner_id:Ljava/lang/Long;

.field private photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

.field replyCids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field replyUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private reply_to_cid:Ljava/lang/Long;

.field private reply_to_user_name:Ljava/lang/String;

.field private save_OnClickListerer:Landroid/view/View$OnClickListener;

.field private settings_OnClickListerer:Landroid/view/View$OnClickListener;

.field private tb_new_comment_text:Landroid/widget/EditText;

.field private text:Ljava/lang/String;

.field private tv_attachments_count:Landroid/widget/TextView;

.field protected uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    .line 55
    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->replyCids:Ljava/util/ArrayList;

    .line 56
    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->replyUsers:Ljava/util/ArrayList;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->text:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/perm/kate/NewCommentActivity;->from_group:Z

    .line 187
    new-instance v0, Lcom/perm/kate/NewCommentActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewCommentActivity$1;-><init>(Lcom/perm/kate/NewCommentActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 223
    new-instance v0, Lcom/perm/kate/NewCommentActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/NewCommentActivity$3;-><init>(Lcom/perm/kate/NewCommentActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->callback_save2:Lcom/perm/kate/session/Callback;

    .line 250
    new-instance v0, Lcom/perm/kate/NewCommentActivity$4;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/NewCommentActivity$4;-><init>(Lcom/perm/kate/NewCommentActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->callback_save:Lcom/perm/kate/session/Callback;

    .line 307
    new-instance v0, Lcom/perm/kate/NewCommentActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewCommentActivity$7;-><init>(Lcom/perm/kate/NewCommentActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->add_attachment_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 314
    new-instance v0, Lcom/perm/kate/NewCommentActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewCommentActivity$8;-><init>(Lcom/perm/kate/NewCommentActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->attachments_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 598
    new-instance v0, Lcom/perm/kate/NewCommentActivity$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewCommentActivity$13;-><init>(Lcom/perm/kate/NewCommentActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    .line 621
    new-instance v0, Lcom/perm/kate/NewCommentActivity$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewCommentActivity$14;-><init>(Lcom/perm/kate/NewCommentActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 663
    new-instance v0, Lcom/perm/kate/NewCommentActivity$17;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewCommentActivity$17;-><init>(Lcom/perm/kate/NewCommentActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->settings_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 731
    new-instance v0, Lcom/perm/kate/NewCommentActivity$19;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewCommentActivity$19;-><init>(Lcom/perm/kate/NewCommentActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    return-void
.end method

.method private UpdateAttachmentsCount()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 591
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->tv_attachments_count:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->tv_attachments_count:Landroid/widget/TextView;

    sget-object v2, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v2, p0, Lcom/perm/kate/NewCommentActivity;->ff_attachments_count_placeholder:Landroid/view/View;

    sget-object v0, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 594
    sget-object v0, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v0, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {p0, v2, v0, v1}, Lcom/perm/kate/Helper;->checkLimitAttachments(Lcom/perm/kate/BaseActivity;IZZ)Z

    .line 596
    :cond_0
    return-void

    .line 593
    :cond_1
    const/16 v0, 0x8

    goto :goto_0

    :cond_2
    move v0, v1

    .line 594
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/perm/kate/NewCommentActivity;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;
    .param p1, "x1"    # Ljava/lang/Integer;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/NewCommentActivity;->send(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/NewCommentActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/perm/kate/NewCommentActivity;->edit:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/perm/kate/NewCommentActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->callback_save:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/perm/kate/NewCommentActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/NewCommentActivity;->disableFieldAndButtonsInUI(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/perm/kate/NewCommentActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity;->createAddAttachmentDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/NewCommentActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity;->createAttachAudioDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/NewCommentActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity;->createAttachVideoDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/NewCommentActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity;->createAttachDocsDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/perm/kate/NewCommentActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/NewCommentActivity;->showDocsActivity(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/perm/kate/NewCommentActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/NewCommentActivity;->showAudioActivity(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/perm/kate/NewCommentActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/NewCommentActivity;->showSearchActivity(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/NewCommentActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/NewCommentActivity;->attachVideo(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/NewCommentActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 38
    iget v0, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    return v0
.end method

.method static synthetic access$2000(Lcom/perm/kate/NewCommentActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/NewCommentActivity;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/NewCommentActivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/NewCommentActivity;->photoAttachmentsUploaded(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/perm/kate/NewCommentActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity;->UpdateAttachmentsCount()V

    return-void
.end method

.method static synthetic access$2300(Lcom/perm/kate/NewCommentActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->btn_new_comment_save:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/perm/kate/NewCommentActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->btn_post_settings:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/perm/kate/NewCommentActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->btn_attachments:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/perm/kate/NewCommentActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->btn_add_attachment:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/perm/kate/NewCommentActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/perm/kate/NewCommentActivity;)Landroid/widget/ImageButton;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->add_smile:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/perm/kate/NewCommentActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/perm/kate/NewCommentActivity;->addSmile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->owner_id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/perm/kate/NewCommentActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity;->showMyStickersActivity()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->content_id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->text:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->reply_to_cid:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$700(Lcom/perm/kate/NewCommentActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/perm/kate/NewCommentActivity;->from_group:Z

    return v0
.end method

.method static synthetic access$702(Lcom/perm/kate/NewCommentActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/perm/kate/NewCommentActivity;->from_group:Z

    return p1
.end method

.method static synthetic access$800(Lcom/perm/kate/NewCommentActivity;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->callback_save2:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/perm/kate/NewCommentActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/perm/kate/NewCommentActivity;

    .prologue
    .line 38
    iget-wide v0, p0, Lcom/perm/kate/NewCommentActivity;->cid:J

    return-wide v0
.end method

.method private addSmile(Ljava/lang/String;)V
    .locals 4
    .param p1, "smile_string"    # Ljava/lang/String;

    .prologue
    .line 751
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 753
    .local v0, "smile_spannable":Landroid/text/SpannableStringBuilder;
    const/4 v3, 0x0

    invoke-static {p0, p1, v0, v3}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 755
    iget-object v3, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 756
    .local v1, "text":Landroid/text/Editable;
    iget-object v3, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v2

    .line 757
    .local v2, "where_insert":I
    invoke-interface {v1, v2, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 758
    return-void
.end method

.method private attachVideo(Z)V
    .locals 4
    .param p1, "from_group"    # Z

    .prologue
    .line 490
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 491
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/VideoActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 492
    if-eqz p1, :cond_0

    .line 493
    const-string v1, "com.perm.kate.user_id"

    iget-object v2, p0, Lcom/perm/kate/NewCommentActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 496
    :goto_0
    const-string v1, "com.perm.kate.select_video"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 497
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/NewCommentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 498
    return-void

    .line 495
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

.method private createAddAttachmentDialog()V
    .locals 6

    .prologue
    .line 330
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070139

    const/16 v5, 0x64

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070136

    const/16 v5, 0x65

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f07013a

    const/16 v5, 0x66

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070409

    const/16 v5, 0x6a

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f07003a

    .line 336
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    .line 337
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/NewCommentActivity$9;

    invoke-direct {v5, p0, v1}, Lcom/perm/kate/NewCommentActivity$9;-><init>(Lcom/perm/kate/NewCommentActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 361
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 362
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 363
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 364
    return-void
.end method

.method private createAttachAudioDialog()V
    .locals 8

    .prologue
    .line 407
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 408
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0703d2

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0703d4

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    iget-object v3, p0, Lcom/perm/kate/NewCommentActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 411
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070257

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_0
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 413
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/NewCommentActivity$11;

    invoke-direct {v5, p0, v1}, Lcom/perm/kate/NewCommentActivity$11;-><init>(Lcom/perm/kate/NewCommentActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 429
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 430
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 431
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 432
    return-void
.end method

.method private createAttachDocsDialog()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 370
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 371
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070409

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070257

    invoke-direct {v3, v4, v6}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 373
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 374
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/NewCommentActivity$10;

    invoke-direct {v5, p0, v1}, Lcom/perm/kate/NewCommentActivity$10;-><init>(Lcom/perm/kate/NewCommentActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 387
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 388
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v6}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 389
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 390
    return-void
.end method

.method private createAttachVideoDialog()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 462
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 463
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0703d6

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f0703d5

    invoke-direct {v3, v4, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v3, p0, Lcom/perm/kate/NewCommentActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 466
    new-instance v3, Lcom/perm/kate/MenuItemDetails;

    const v4, 0x7f070257

    const/4 v5, 0x2

    invoke-direct {v3, v4, v5}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    :cond_0
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 468
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v4

    new-instance v5, Lcom/perm/kate/NewCommentActivity$12;

    invoke-direct {v5, p0, v1}, Lcom/perm/kate/NewCommentActivity$12;-><init>(Lcom/perm/kate/NewCommentActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 484
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 485
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v8}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 486
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 487
    return-void
.end method

.method public static createComment(ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 12
    .param p0, "comment_type"    # I
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "content_id"    # Ljava/lang/Long;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "reply_to_cid"    # Ljava/lang/Long;
    .param p5, "from_group"    # Z
    .param p6, "sticker_id"    # Ljava/lang/Integer;
    .param p7, "callback"    # Lcom/perm/kate/session/Callback;
    .param p8, "activity"    # Landroid/app/Activity;

    .prologue
    .line 717
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 718
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    sget-object v5, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/perm/kate/session/Session;->createWallComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;ZLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 729
    :cond_0
    :goto_0
    return-void

    .line 719
    :cond_1
    if-nez p0, :cond_2

    .line 720
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    sget-object v5, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/perm/kate/session/Session;->createPhotoComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;ZLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 721
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 722
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->createNoteComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 723
    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    .line 724
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    sget-object v5, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/perm/kate/session/Session;->createVideoComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;ZLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 725
    :cond_4
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    .line 726
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    neg-long v2, v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v7, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-object v6, p3

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/session/Session;->createGroupTopicComment(JJLjava/lang/String;Ljava/util/ArrayList;ZLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 727
    :cond_5
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 728
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    sget-object v5, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-virtual/range {v0 .. v9}, Lcom/perm/kate/session/Session;->createMarketComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;ZLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private createSettingsDialog()Landroid/app/Dialog;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 682
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/CharSequence;

    .line 683
    .local v0, "items":[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    const v4, 0x7f0701ad

    invoke-virtual {p0, v4}, Lcom/perm/kate/NewCommentActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v0, v3

    .line 684
    new-instance v1, Lcom/perm/kate/NewCommentActivity$18;

    invoke-direct {v1, p0}, Lcom/perm/kate/NewCommentActivity$18;-><init>(Lcom/perm/kate/NewCommentActivity;)V

    .line 691
    .local v1, "save_listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 692
    invoke-virtual {v3, v0, v5, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070483

    .line 693
    invoke-virtual {v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f070334

    .line 694
    invoke-virtual {v3, v4, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f07015d

    .line 695
    invoke-virtual {v3, v4, v5}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 696
    .local v2, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private disableFieldAndButtonsInUI(Z)V
    .locals 1
    .param p1, "disable"    # Z

    .prologue
    .line 646
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->btn_new_comment_save:Landroid/widget/Button;

    if-nez v0, :cond_1

    .line 661
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/NewCommentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 650
    new-instance v0, Lcom/perm/kate/NewCommentActivity$16;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/NewCommentActivity$16;-><init>(Lcom/perm/kate/NewCommentActivity;Z)V

    invoke-virtual {p0, v0}, Lcom/perm/kate/NewCommentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static editComment(ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;J)V
    .locals 12
    .param p0, "comment_type"    # I
    .param p1, "owner_id"    # Ljava/lang/Long;
    .param p2, "content_id"    # Ljava/lang/Long;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "reply_to_cid"    # Ljava/lang/Long;
    .param p5, "from_group"    # Z
    .param p6, "callback"    # Lcom/perm/kate/session/Callback;
    .param p7, "activity"    # Landroid/app/Activity;
    .param p8, "cid"    # J

    .prologue
    .line 701
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 702
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    sget-object v6, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-wide/from16 v2, p8

    move-object v4, p1

    move-object v5, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->editWallComment(JLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 713
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    if-nez p0, :cond_2

    .line 704
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v8, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-wide/from16 v2, p8

    move-object v6, p1

    move-object v7, p3

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v10}, Lcom/perm/kate/session/Session;->editPhotoComment(JJLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 705
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 706
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-wide/from16 v2, p8

    move-object v4, p1

    move-object v5, p3

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/session/Session;->editNoteComment(JLjava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 707
    :cond_3
    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    .line 708
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    sget-object v6, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-wide/from16 v2, p8

    move-object v4, p1

    move-object v5, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->editVideoComment(JLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 709
    :cond_4
    const/4 v0, 0x4

    if-ne p0, v0, :cond_5

    .line 710
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    neg-long v4, v2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v9, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-wide/from16 v2, p8

    move-object v8, p3

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-virtual/range {v1 .. v11}, Lcom/perm/kate/session/Session;->editGroupTopicComment(JJJLjava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 711
    :cond_5
    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    .line 712
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    sget-object v6, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-wide/from16 v2, p8

    move-object v4, p1

    move-object v5, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->editMarketComment(JLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
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
    .line 616
    .local p1, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 617
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "uris"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 618
    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/NewCommentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 619
    return-void
.end method

.method private fillForEdit()V
    .locals 14

    .prologue
    .line 135
    iget-boolean v8, p0, Lcom/perm/kate/NewCommentActivity;->edit:Z

    if-nez v8, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/NewCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "com.perm.kate.comment"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Comment;

    .line 138
    .local v3, "comment":Lcom/perm/kate/api/Comment;
    if-eqz v3, :cond_0

    .line 144
    iget v8, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_3

    iget-wide v8, v3, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_3

    .line 145
    iget-object v8, v3, Lcom/perm/kate/api/Comment;->replyCids:Ljava/util/ArrayList;

    if-eqz v8, :cond_2

    iget-object v8, v3, Lcom/perm/kate/api/Comment;->replyCids:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_2

    .line 146
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    iget-object v8, v3, Lcom/perm/kate/api/Comment;->replyUsers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_2

    .line 147
    iget-object v8, v3, Lcom/perm/kate/api/Comment;->replyCids:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 148
    .local v5, "reply_to_cid2":Ljava/lang/String;
    iget-object v8, v3, Lcom/perm/kate/api/Comment;->replyUsers:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 149
    .local v6, "reply_to_user_name2":Ljava/lang/String;
    iget-object v8, v3, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\\[(id|club)\\d*:bp-\\d*_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\\|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\\],"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[post"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "],"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    .line 146
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 152
    .end local v4    # "i":I
    .end local v5    # "reply_to_cid2":Ljava/lang/String;
    .end local v6    # "reply_to_user_name2":Ljava/lang/String;
    :cond_2
    iget-object v8, v3, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\\[(id|club)\\d*:bp-\\d*_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-wide v10, v3, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\\|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/perm/kate/api/Comment;->reply_to_user_name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\\],"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[post"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, v3, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v3, Lcom/perm/kate/api/Comment;->reply_to_user_name:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "],"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v3, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    .line 154
    :cond_3
    new-instance v7, Landroid/text/SpannableStringBuilder;

    iget-object v8, v3, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-direct {v7, v8}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 156
    .local v7, "smile_spannable":Landroid/text/SpannableStringBuilder;
    iget-object v8, v3, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {p0, v8, v7, v9}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 158
    iget-object v8, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    invoke-virtual {v8, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v8, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    iget-object v9, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setSelection(I)V

    .line 160
    iget-object v8, v3, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    if-eqz v8, :cond_0

    iget-object v8, v3, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_0

    .line 161
    iget-object v8, v3, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Attachment;

    .line 162
    .local v0, "a":Lcom/perm/kate/api/Attachment;
    const/4 v1, 0x0

    .line 163
    .local v1, "attachment":Ljava/lang/String;
    const/4 v2, 0x0

    .line 164
    .local v2, "attachment_object":Ljava/lang/String;
    iget-object v9, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v10, "audio"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    iget-object v9, v0, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    if-eqz v9, :cond_6

    .line 165
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "audio"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-wide v10, v10, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-wide v10, v10, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 166
    const-string v2, "audio"

    .line 177
    :cond_5
    :goto_3
    if-eqz v1, :cond_4

    .line 178
    sget-object v9, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v9, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 167
    :cond_6
    iget-object v9, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v10, "photo"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    if-eqz v9, :cond_7

    .line 168
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "photo"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    iget-object v10, v10, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    iget-wide v10, v10, Lcom/perm/kate/api/Photo;->pid:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 169
    const-string v2, "photo"

    goto :goto_3

    .line 170
    :cond_7
    iget-object v9, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v10, "video"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, v0, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    if-eqz v9, :cond_8

    .line 171
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "video"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    iget-wide v10, v10, Lcom/perm/kate/api/Video;->owner_id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    iget-wide v10, v10, Lcom/perm/kate/api/Video;->vid:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    const-string v2, "video"

    goto :goto_3

    .line 173
    :cond_8
    iget-object v9, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v10, "doc"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v0, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    if-eqz v9, :cond_5

    .line 174
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doc"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-wide v10, v10, Lcom/perm/kate/api/Document;->owner_id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-wide v10, v10, Lcom/perm/kate/api/Document;->id:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    const-string v2, "doc"

    goto/16 :goto_3

    .line 182
    .end local v0    # "a":Lcom/perm/kate/api/Attachment;
    .end local v1    # "attachment":Ljava/lang/String;
    .end local v2    # "attachment_object":Ljava/lang/String;
    :cond_9
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity;->UpdateAttachmentsCount()V

    goto/16 :goto_0
.end method

.method private onConfirmCancel()Z
    .locals 5

    .prologue
    .line 289
    iget-object v2, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "text":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 291
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 292
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v2, 0x7f07044c

    invoke-virtual {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f07051d

    new-instance v4, Lcom/perm/kate/NewCommentActivity$6;

    invoke-direct {v4, p0}, Lcom/perm/kate/NewCommentActivity$6;-><init>(Lcom/perm/kate/NewCommentActivity;)V

    .line 293
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f070319

    new-instance v4, Lcom/perm/kate/NewCommentActivity$5;

    invoke-direct {v4, p0}, Lcom/perm/kate/NewCommentActivity$5;-><init>(Lcom/perm/kate/NewCommentActivity;)V

    .line 298
    invoke-virtual {v2, v3, v4}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 301
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 302
    const/4 v2, 0x1

    .line 304
    .end local v0    # "builder":Landroid/support/v7/app/AlertDialog$Builder;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

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
    .line 629
    .local p1, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 643
    :goto_0
    return-void

    .line 631
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Photo;

    .line 632
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

    .line 633
    .local v0, "attachment":Ljava/lang/String;
    new-instance v2, Lcom/perm/kate/NewCommentActivity$15;

    invoke-direct {v2, p0, v0, v1}, Lcom/perm/kate/NewCommentActivity$15;-><init>(Lcom/perm/kate/NewCommentActivity;Ljava/lang/String;Lcom/perm/kate/api/Photo;)V

    invoke-virtual {p0, v2}, Lcom/perm/kate/NewCommentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private send(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "sticker_id"    # Ljava/lang/Integer;

    .prologue
    const/4 v7, 0x1

    .line 195
    iget-object v3, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/NewCommentActivity;->text:Ljava/lang/String;

    .line 196
    iget-object v3, p0, Lcom/perm/kate/NewCommentActivity;->text:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    if-nez p1, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/perm/kate/NewCommentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0702df

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 221
    :goto_0
    return-void

    .line 200
    :cond_0
    iget v3, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/perm/kate/NewCommentActivity;->reply_to_cid:Ljava/lang/Long;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/perm/kate/NewCommentActivity;->reply_to_user_name:Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/perm/kate/NewCommentActivity;->reply_to_user_name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 201
    iget-object v3, p0, Lcom/perm/kate/NewCommentActivity;->replyCids:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/perm/kate/NewCommentActivity;->replyUsers:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 202
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/perm/kate/NewCommentActivity;->replyUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 203
    iget-object v3, p0, Lcom/perm/kate/NewCommentActivity;->replyCids:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 204
    .local v1, "reply_to_cid2":Ljava/lang/String;
    iget-object v3, p0, Lcom/perm/kate/NewCommentActivity;->replyUsers:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 205
    .local v2, "reply_to_user_name2":Ljava/lang/String;
    iget-object v3, p0, Lcom/perm/kate/NewCommentActivity;->text:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[post"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "],"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/NewCommentActivity;->text:Ljava/lang/String;

    .line 202
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 208
    .end local v0    # "i":I
    .end local v1    # "reply_to_cid2":Ljava/lang/String;
    .end local v2    # "reply_to_user_name2":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/NewCommentActivity;->text:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/perm/kate/NewCommentActivity;->reply_to_user_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[post"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/NewCommentActivity;->reply_to_cid:Ljava/lang/Long;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "|"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/perm/kate/NewCommentActivity;->reply_to_user_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "],"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/perm/kate/NewCommentActivity;->text:Ljava/lang/String;

    .line 210
    :cond_2
    invoke-direct {p0, v7}, Lcom/perm/kate/NewCommentActivity;->disableFieldAndButtonsInUI(Z)V

    .line 211
    invoke-virtual {p0, v7}, Lcom/perm/kate/NewCommentActivity;->showProgressBar(Z)V

    .line 212
    new-instance v3, Lcom/perm/kate/NewCommentActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/perm/kate/NewCommentActivity$2;-><init>(Lcom/perm/kate/NewCommentActivity;Ljava/lang/Integer;)V

    .line 220
    invoke-virtual {v3}, Lcom/perm/kate/NewCommentActivity$2;->start()V

    goto/16 :goto_0
.end method

.method private showAudioActivity(Z)V
    .locals 4
    .param p1, "from_group"    # Z

    .prologue
    .line 435
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 436
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/AudioActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 437
    if-eqz p1, :cond_0

    .line 438
    const-string v1, "com.perm.kate.owner_id"

    iget-object v2, p0, Lcom/perm/kate/NewCommentActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 441
    :goto_0
    const-string v1, "com.perm.kate.select_audio"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 442
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/NewCommentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 443
    return-void

    .line 440
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

.method private showDocsActivity(Z)V
    .locals 4
    .param p1, "from_group"    # Z

    .prologue
    .line 393
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/DocsActivity2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 394
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 395
    const-string v1, "owner_id"

    iget-object v2, p0, Lcom/perm/kate/NewCommentActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 398
    :goto_0
    const-string v1, "select"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 399
    const/16 v1, 0x9

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/NewCommentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 400
    return-void

    .line 397
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

.method private showMyStickersActivity()V
    .locals 2

    .prologue
    .line 761
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 762
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/MyStickersActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 763
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/NewCommentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 764
    return-void
.end method

.method private showSearchActivity(Z)V
    .locals 3
    .param p1, "video"    # Z

    .prologue
    const/4 v2, 0x1

    .line 446
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 447
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/SearchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 448
    if-eqz p1, :cond_0

    .line 449
    const-string v1, "com.perm.kate.select_video"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 450
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/NewCommentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 455
    :goto_0
    return-void

    .line 452
    :cond_0
    const-string v1, "com.perm.kate.select_audio"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 453
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/perm/kate/NewCommentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 25
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 511
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/NewCommentActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3, v5}, Lcom/perm/kate/photoupload/PhotoChooser;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/perm/kate/photoupload/PhotoChooser$Callback;)Landroid/net/Uri;

    .line 512
    if-nez p1, :cond_2

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_2

    .line 513
    const-string v5, "audios"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 514
    .local v21, "audios":Ljava/lang/String;
    if-eqz v21, :cond_0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 515
    const-string v5, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 516
    .local v22, "audios_array":[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v6, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v20, v22, v5

    .line 517
    .local v20, "attachment":Ljava/lang/String;
    sget-object v7, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    sget-object v7, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 521
    .end local v20    # "attachment":Ljava/lang/String;
    .end local v22    # "audios_array":[Ljava/lang/String;
    :cond_0
    const-string v5, "audio_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 522
    .local v4, "attached_audio_id":Ljava/lang/Long;
    const-string v5, "owner_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 523
    .local v17, "attached_owner_id":Ljava/lang/Long;
    const-string v5, "Kate.NewCommentActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attached_audio_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attached_owner_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 525
    .restart local v20    # "attachment":Ljava/lang/String;
    sget-object v5, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 526
    sget-object v5, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    .end local v4    # "attached_audio_id":Ljava/lang/Long;
    .end local v17    # "attached_owner_id":Ljava/lang/Long;
    .end local v20    # "attachment":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewCommentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f07003d

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 530
    .end local v21    # "audios":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x4

    move/from16 v0, p1

    if-ne v0, v5, :cond_5

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_5

    .line 531
    const-string v5, "audios"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 532
    .restart local v21    # "audios":Ljava/lang/String;
    if-eqz v21, :cond_3

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_3

    .line 533
    const-string v5, ","

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .line 534
    .restart local v22    # "audios_array":[Ljava/lang/String;
    move-object/from16 v0, v22

    array-length v6, v0

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v20, v22, v5

    .line 535
    .restart local v20    # "attachment":Ljava/lang/String;
    sget-object v7, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    sget-object v7, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v8, "audio"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 534
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 539
    .end local v20    # "attachment":Ljava/lang/String;
    .end local v22    # "audios_array":[Ljava/lang/String;
    :cond_3
    const-string v5, "audio_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 540
    .restart local v4    # "attached_audio_id":Ljava/lang/Long;
    const-string v5, "owner_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 541
    .local v14, "attached_audio_owner_id":Ljava/lang/Long;
    const-string v5, "Kate.NewCommentActivity"

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

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 543
    .restart local v20    # "attachment":Ljava/lang/String;
    sget-object v5, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 544
    sget-object v5, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 546
    .end local v4    # "attached_audio_id":Ljava/lang/Long;
    .end local v14    # "attached_audio_owner_id":Ljava/lang/Long;
    .end local v20    # "attachment":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewCommentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f07003d

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 548
    .end local v21    # "audios":Ljava/lang/String;
    :cond_5
    const/4 v5, 0x6

    move/from16 v0, p1

    if-ne v0, v5, :cond_6

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_6

    .line 549
    const-string v5, "video_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 550
    .local v18, "attached_video_id":Ljava/lang/Long;
    const-string v5, "owner_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    .line 551
    .local v19, "attached_video_owner_id":Ljava/lang/Long;
    const-string v5, "Kate.NewCommentActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attached_video_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attached_video_owner_id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 553
    .restart local v20    # "attachment":Ljava/lang/String;
    sget-object v5, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    sget-object v5, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewCommentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f070506

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 557
    .end local v18    # "attached_video_id":Ljava/lang/Long;
    .end local v19    # "attached_video_owner_id":Ljava/lang/Long;
    .end local v20    # "attachment":Ljava/lang/String;
    :cond_6
    const/4 v5, 0x3

    move/from16 v0, p1

    if-ne v0, v5, :cond_7

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_7

    .line 558
    const-string v5, "video_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    .line 559
    .restart local v18    # "attached_video_id":Ljava/lang/Long;
    const-string v5, "owner_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 560
    .restart local v17    # "attached_owner_id":Ljava/lang/Long;
    const-string v5, "Kate.NewCommentActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "attached_video_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " attached_owner_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 562
    .restart local v20    # "attachment":Ljava/lang/String;
    sget-object v5, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    sget-object v5, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v6, "video"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    invoke-virtual/range {p0 .. p0}, Lcom/perm/kate/NewCommentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f070506

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 566
    .end local v17    # "attached_owner_id":Ljava/lang/Long;
    .end local v18    # "attached_video_id":Ljava/lang/Long;
    .end local v20    # "attachment":Ljava/lang/String;
    :cond_7
    const/4 v5, 0x7

    move/from16 v0, p1

    if-ne v0, v5, :cond_8

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_8

    .line 567
    const-string v5, "uris"

    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v24

    check-cast v24, Ljava/util/ArrayList;

    .line 568
    .local v24, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    const-string v5, "resize_option"

    const/4 v6, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 569
    .local v10, "resize_option":I
    const-string v5, "rotate"

    const/4 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    .line 570
    .local v23, "rotate":I
    const v5, 0x7f070378

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/perm/kate/NewCommentActivity;->displayToast(I)V

    .line 571
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 572
    new-instance v5, Lcom/perm/kate/photoupload/WallUploader;

    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/perm/kate/NewCommentActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/perm/kate/NewCommentActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v13}, Lcom/perm/kate/photoupload/WallUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;JILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/perm/kate/photoupload/WallUploader;->upload()V

    .line 577
    .end local v10    # "resize_option":I
    .end local v23    # "rotate":I
    .end local v24    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_8
    :goto_2
    const/16 v5, 0x9

    move/from16 v0, p1

    if-ne v0, v5, :cond_9

    const/4 v5, -0x1

    move/from16 v0, p2

    if-ne v0, v5, :cond_9

    .line 578
    const-string v5, "doc_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    .line 579
    .local v15, "attached_doc_id":Ljava/lang/Long;
    const-string v5, "owner_id"

    const-wide/16 v6, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    .line 580
    .local v16, "attached_doc_owner_id":Ljava/lang/Long;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doc"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 581
    .restart local v20    # "attachment":Ljava/lang/String;
    sget-object v5, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    sget-object v5, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v6, "doc"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    .end local v15    # "attached_doc_id":Ljava/lang/Long;
    .end local v16    # "attached_doc_owner_id":Ljava/lang/Long;
    .end local v20    # "attachment":Ljava/lang/String;
    :cond_9
    const/16 v5, 0xa

    move/from16 v0, p1

    if-ne v0, v5, :cond_a

    .line 585
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/perm/kate/NewCommentActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-virtual {v5}, Lcom/perm/kate/smile/SmileKeyboard;->updatePages()V

    .line 587
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/NewCommentActivity;->UpdateAttachmentsCount()V

    .line 588
    return-void

    .line 574
    .restart local v10    # "resize_option":I
    .restart local v23    # "rotate":I
    .restart local v24    # "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    :cond_b
    new-instance v5, Lcom/perm/kate/NewCommentActivity$MultiUploader;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v5, v0, v1, v10}, Lcom/perm/kate/NewCommentActivity$MultiUploader;-><init>(Lcom/perm/kate/NewCommentActivity;Ljava/util/ArrayList;I)V

    invoke-virtual {v5}, Lcom/perm/kate/NewCommentActivity$MultiUploader;->start()V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-wide/16 v12, 0x0

    const/4 v11, 0x3

    const/4 v1, 0x1

    const/4 v10, 0x4

    const/4 v6, 0x0

    .line 67
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const v5, 0x7f0300b5

    invoke-virtual {p0, v5}, Lcom/perm/kate/NewCommentActivity;->setContentView(I)V

    .line 69
    const v5, 0x7f070476

    invoke-virtual {p0, v5}, Lcom/perm/kate/NewCommentActivity;->setHeaderTitle(I)V

    .line 70
    sget-object v5, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 71
    sget-object v5, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 72
    const v5, 0x7f0e025a

    invoke-virtual {p0, v5}, Lcom/perm/kate/NewCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    iput-object v5, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    .line 73
    const v5, 0x7f0e025f

    invoke-virtual {p0, v5}, Lcom/perm/kate/NewCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/perm/kate/NewCommentActivity;->btn_new_comment_save:Landroid/widget/Button;

    .line 74
    iget-object v5, p0, Lcom/perm/kate/NewCommentActivity;->btn_new_comment_save:Landroid/widget/Button;

    iget-object v7, p0, Lcom/perm/kate/NewCommentActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v5, 0x7f0e0241

    invoke-virtual {p0, v5}, Lcom/perm/kate/NewCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/perm/kate/NewCommentActivity;->tv_attachments_count:Landroid/widget/TextView;

    .line 76
    const v5, 0x7f0e025c

    invoke-virtual {p0, v5}, Lcom/perm/kate/NewCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/perm/kate/NewCommentActivity;->ff_attachments_count_placeholder:Landroid/view/View;

    .line 77
    const v5, 0x7f0e00ea

    invoke-virtual {p0, v5}, Lcom/perm/kate/NewCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/perm/kate/NewCommentActivity;->btn_add_attachment:Landroid/widget/ImageButton;

    .line 78
    iget-object v5, p0, Lcom/perm/kate/NewCommentActivity;->btn_add_attachment:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/perm/kate/NewCommentActivity;->add_attachment_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    const v5, 0x7f0e025d

    invoke-virtual {p0, v5}, Lcom/perm/kate/NewCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/perm/kate/NewCommentActivity;->btn_attachments:Landroid/widget/ImageButton;

    .line 80
    iget-object v5, p0, Lcom/perm/kate/NewCommentActivity;->btn_attachments:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/perm/kate/NewCommentActivity;->attachments_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    const v5, 0x7f0e025e

    invoke-virtual {p0, v5}, Lcom/perm/kate/NewCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/perm/kate/NewCommentActivity;->btn_post_settings:Landroid/widget/ImageButton;

    .line 82
    const v5, 0x7f0e025b

    invoke-virtual {p0, v5}, Lcom/perm/kate/NewCommentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/perm/kate/NewCommentActivity;->add_smile:Landroid/widget/ImageButton;

    .line 83
    invoke-virtual {p0}, Lcom/perm/kate/NewCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "com.perm.kate.pid"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/perm/kate/NewCommentActivity;->content_id:Ljava/lang/Long;

    .line 84
    invoke-virtual {p0}, Lcom/perm/kate/NewCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "com.perm.kate.owner_id"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/perm/kate/NewCommentActivity;->owner_id:Ljava/lang/Long;

    .line 85
    invoke-virtual {p0}, Lcom/perm/kate/NewCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "com.perm.kate.comment_type"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    .line 86
    invoke-virtual {p0}, Lcom/perm/kate/NewCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "com.perm.kate.reply_to_cid"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 87
    .local v3, "tmp":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 88
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/perm/kate/NewCommentActivity;->reply_to_cid:Ljava/lang/Long;

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/NewCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "com.perm.kate.reply_to_user_name"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/perm/kate/NewCommentActivity;->reply_to_user_name:Ljava/lang/String;

    .line 90
    iget v5, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    if-ne v5, v10, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/perm/kate/NewCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "com.perm.kate.replyCids"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/perm/kate/NewCommentActivity;->replyCids:Ljava/util/ArrayList;

    .line 92
    invoke-virtual {p0}, Lcom/perm/kate/NewCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "com.perm.kate.replyUsers"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/perm/kate/NewCommentActivity;->replyUsers:Ljava/util/ArrayList;

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/NewCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "text"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "text":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 97
    const-string v2, ""

    .line 98
    :cond_2
    iget-object v5, p0, Lcom/perm/kate/NewCommentActivity;->reply_to_user_name:Ljava/lang/String;

    if-eqz v5, :cond_5

    .line 99
    const-string v0, ""

    .line 100
    .local v0, "names":Ljava/lang/String;
    iget-object v5, p0, Lcom/perm/kate/NewCommentActivity;->replyUsers:Ljava/util/ArrayList;

    if-eqz v5, :cond_4

    .line 101
    iget-object v5, p0, Lcom/perm/kate/NewCommentActivity;->replyUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 102
    .local v4, "user_name":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_3

    .line 103
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 106
    .end local v4    # "user_name":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/perm/kate/NewCommentActivity;->reply_to_user_name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 109
    .end local v0    # "names":Ljava/lang/String;
    :cond_5
    iget-object v5, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v5, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setSelection(I)V

    .line 111
    iget-object v5, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {p0, v2, v5, v6}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 113
    invoke-virtual {p0}, Lcom/perm/kate/NewCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "com.perm.kate.edit"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/perm/kate/NewCommentActivity;->edit:Z

    .line 114
    invoke-virtual {p0}, Lcom/perm/kate/NewCommentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v7, "com.perm.kate.cid"

    invoke-virtual {v5, v7, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/perm/kate/NewCommentActivity;->cid:J

    .line 115
    iget-boolean v5, p0, Lcom/perm/kate/NewCommentActivity;->edit:Z

    if-eqz v5, :cond_6

    .line 116
    const v5, 0x7f070465

    invoke-virtual {p0, v5}, Lcom/perm/kate/NewCommentActivity;->setHeaderTitle(I)V

    .line 117
    :cond_6
    iget v5, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    if-eq v5, v10, :cond_7

    iget v5, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    if-eq v5, v1, :cond_7

    iget v5, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    if-eqz v5, :cond_7

    iget v5, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    const/4 v7, 0x2

    if-eq v5, v7, :cond_7

    iget v5, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    const/4 v7, 0x5

    if-ne v5, v7, :cond_8

    .line 119
    :cond_7
    iget-object v5, p0, Lcom/perm/kate/NewCommentActivity;->btn_add_attachment:Landroid/widget/ImageButton;

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 121
    :cond_8
    iget v5, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    if-eq v5, v11, :cond_9

    iget-boolean v5, p0, Lcom/perm/kate/NewCommentActivity;->edit:Z

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/perm/kate/NewCommentActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v5, v8, v12

    if-ltz v5, :cond_a

    :cond_9
    iget v5, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    if-ne v5, v10, :cond_b

    iget-boolean v5, p0, Lcom/perm/kate/NewCommentActivity;->edit:Z

    if-nez v5, :cond_b

    .line 123
    :cond_a
    iget-object v5, p0, Lcom/perm/kate/NewCommentActivity;->btn_post_settings:Landroid/widget/ImageButton;

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 124
    iget-object v5, p0, Lcom/perm/kate/NewCommentActivity;->btn_post_settings:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/perm/kate/NewCommentActivity;->settings_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :cond_b
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity;->fillForEdit()V

    .line 128
    new-instance v5, Lcom/perm/kate/smile/SmileKeyboard;

    invoke-direct {v5}, Lcom/perm/kate/smile/SmileKeyboard;-><init>()V

    iput-object v5, p0, Lcom/perm/kate/NewCommentActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    .line 129
    iget v5, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    if-eq v5, v11, :cond_c

    .line 130
    .local v1, "show_stickers":Z
    :goto_1
    iget-object v5, p0, Lcom/perm/kate/NewCommentActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    iget-object v6, p0, Lcom/perm/kate/NewCommentActivity;->add_smile:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/perm/kate/NewCommentActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    invoke-virtual {v5, p0, v6, v7, v1}, Lcom/perm/kate/smile/SmileKeyboard;->init(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;Z)V

    .line 131
    iget-object v5, p0, Lcom/perm/kate/NewCommentActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    iget-object v6, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    invoke-virtual {v5, v6}, Lcom/perm/kate/smile/SmileKeyboard;->registerEditText(Landroid/widget/EditText;)V

    .line 132
    return-void

    .end local v1    # "show_stickers":Z
    :cond_c
    move v1, v6

    .line 129
    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 674
    packed-switch p1, :pswitch_data_0

    .line 678
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 676
    :pswitch_0
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity;->createSettingsDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    .line 674
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 768
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 769
    sget-object v0, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 770
    sget-object v0, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 771
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 280
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 282
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity;->onConfirmCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    const/4 v0, 0x1

    .line 285
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
