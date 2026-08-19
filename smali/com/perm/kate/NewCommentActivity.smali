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

.field static attachments_objects:Ljava/util/ArrayList;


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

.field private from_group:Ljava/lang/Long;

.field listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

.field private owner_id:Ljava/lang/Long;

.field private photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

.field replyCids:Ljava/util/ArrayList;

.field replyUsers:Ljava/util/ArrayList;

.field private reply_to_cid:Ljava/lang/Long;

.field private reply_to_user_name:Ljava/lang/String;

.field private save_OnClickListerer:Landroid/view/View$OnClickListener;

.field private settings_OnClickListerer:Landroid/view/View$OnClickListener;

.field private tb_new_comment_text:Landroid/widget/EditText;

.field private text:Ljava/lang/String;

.field private tv_attachments_count:Landroid/widget/TextView;

.field protected uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;


# direct methods
.method public static synthetic $r8$lambda$5GY4p6aAiOU_s2Vtgmre2gSjwqs(Lcom/perm/utils/SimpleListener;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/perm/kate/NewCommentActivity;->lambda$showAnswer$0(Lcom/perm/utils/SimpleListener;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/perm/kate/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->replyCids:Ljava/util/ArrayList;

    .line 65
    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->replyUsers:Ljava/util/ArrayList;

    const-string v1, ""

    .line 69
    iput-object v1, p0, Lcom/perm/kate/NewCommentActivity;->text:Ljava/lang/String;

    .line 74
    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->from_group:Ljava/lang/Long;

    .line 181
    new-instance v0, Lcom/perm/kate/NewCommentActivity$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewCommentActivity$1;-><init>(Lcom/perm/kate/NewCommentActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 235
    new-instance v0, Lcom/perm/kate/NewCommentActivity$3;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/NewCommentActivity$3;-><init>(Lcom/perm/kate/NewCommentActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->callback_save2:Lcom/perm/kate/session/Callback;

    .line 262
    new-instance v0, Lcom/perm/kate/NewCommentActivity$4;

    invoke-direct {v0, p0, p0}, Lcom/perm/kate/NewCommentActivity$4;-><init>(Lcom/perm/kate/NewCommentActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->callback_save:Lcom/perm/kate/session/Callback;

    .line 330
    new-instance v0, Lcom/perm/kate/NewCommentActivity$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewCommentActivity$7;-><init>(Lcom/perm/kate/NewCommentActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->add_attachment_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 337
    new-instance v0, Lcom/perm/kate/NewCommentActivity$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewCommentActivity$8;-><init>(Lcom/perm/kate/NewCommentActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->attachments_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 591
    new-instance v0, Lcom/perm/kate/NewCommentActivity$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewCommentActivity$13;-><init>(Lcom/perm/kate/NewCommentActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    .line 614
    new-instance v0, Lcom/perm/kate/NewCommentActivity$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewCommentActivity$14;-><init>(Lcom/perm/kate/NewCommentActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    .line 656
    new-instance v0, Lcom/perm/kate/NewCommentActivity$17;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewCommentActivity$17;-><init>(Lcom/perm/kate/NewCommentActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->settings_OnClickListerer:Landroid/view/View$OnClickListener;

    .line 789
    new-instance v0, Lcom/perm/kate/NewCommentActivity$20;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewCommentActivity$20;-><init>(Lcom/perm/kate/NewCommentActivity;)V

    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    return-void
.end method

.method private UpdateAttachmentsCount()V
    .locals 4

    .line 584
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->tv_attachments_count:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 585
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->ff_attachments_count_placeholder:Landroid/view/View;

    sget-object v1, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

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

    .line 587
    sget-object v0, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {p0, v0, v1, v2}, Lcom/perm/kate/Helper;->checkLimitAttachments(Lcom/perm/kate/BaseActivity;IZZ)Z

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/perm/kate/NewCommentActivity;->text:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/perm/kate/NewCommentActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity;->text:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/perm/kate/NewCommentActivity;)Landroid/widget/EditText;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/perm/kate/NewCommentActivity;)J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/perm/kate/NewCommentActivity;->cid:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/perm/kate/NewCommentActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/perm/kate/NewCommentActivity;->callback_save:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/perm/kate/NewCommentActivity;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/perm/kate/NewCommentActivity;->disableFieldAndButtonsInUI(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/perm/kate/NewCommentActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity;->createAddAttachmentDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/perm/kate/NewCommentActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity;->createAttachAudioDialog()V

    return-void
.end method

.method static synthetic access$1500(Lcom/perm/kate/NewCommentActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity;->createAttachVideoDialog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/perm/kate/NewCommentActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity;->createAttachDocsDialog()V

    return-void
.end method

.method static synthetic access$1700(Lcom/perm/kate/NewCommentActivity;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/perm/kate/NewCommentActivity;->showDocsActivity(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/perm/kate/NewCommentActivity;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/perm/kate/NewCommentActivity;->showAudioActivity(Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/perm/kate/NewCommentActivity;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/perm/kate/NewCommentActivity;->showSearchActivity(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/perm/kate/NewCommentActivity;)Z
    .locals 0

    .line 47
    iget-boolean p0, p0, Lcom/perm/kate/NewCommentActivity;->edit:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/perm/kate/NewCommentActivity;Z)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/perm/kate/NewCommentActivity;->attachVideo(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/perm/kate/NewCommentActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/perm/kate/NewCommentActivity;->editPhotoBeforeUpload(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/perm/kate/NewCommentActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/perm/kate/NewCommentActivity;->photoAttachmentsUploaded(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/perm/kate/NewCommentActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity;->UpdateAttachmentsCount()V

    return-void
.end method

.method static synthetic access$2400(Lcom/perm/kate/NewCommentActivity;)Landroid/widget/Button;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/perm/kate/NewCommentActivity;->btn_new_comment_save:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/perm/kate/NewCommentActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/perm/kate/NewCommentActivity;->btn_post_settings:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/perm/kate/NewCommentActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/perm/kate/NewCommentActivity;->btn_attachments:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/perm/kate/NewCommentActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/perm/kate/NewCommentActivity;->btn_add_attachment:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/perm/kate/NewCommentActivity;)Landroid/widget/ImageButton;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/perm/kate/NewCommentActivity;->add_smile:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/perm/kate/NewCommentActivity;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/perm/kate/NewCommentActivity;->addSmile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/Long;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/perm/kate/NewCommentActivity;->owner_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/perm/kate/NewCommentActivity;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity;->showMyStickersActivity()V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/Long;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/perm/kate/NewCommentActivity;->reply_to_cid:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$500(Lcom/perm/kate/NewCommentActivity;Ljava/lang/Integer;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/perm/kate/NewCommentActivity;->send(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$600(Lcom/perm/kate/NewCommentActivity;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    return p0
.end method

.method static synthetic access$700(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/Long;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/perm/kate/NewCommentActivity;->content_id:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/NewCommentActivity;)Ljava/lang/Long;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/perm/kate/NewCommentActivity;->from_group:Ljava/lang/Long;

    return-object p0
.end method

.method static synthetic access$802(Lcom/perm/kate/NewCommentActivity;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity;->from_group:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$900(Lcom/perm/kate/NewCommentActivity;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/perm/kate/NewCommentActivity;->callback_save2:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method private addCurrentGroup(JLjava/util/ArrayList;)V
    .locals 5

    .line 731
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/NewCommentActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    neg-long v1, v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/perm/kate/db/DataHelper;->isAdminOrEditorInGroup(Ljava/lang/Long;J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 732
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p2, p0, Lcom/perm/kate/NewCommentActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    neg-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchGroup(J)Lcom/perm/kate/api/Group;

    move-result-object p1

    const/4 p2, 0x0

    .line 734
    invoke-virtual {p3, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 737
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_1

    .line 738
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/api/Group;

    iget-wide v0, p2, Lcom/perm/kate/api/Group;->gid:J

    iget-object p2, p0, Lcom/perm/kate/NewCommentActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    neg-long v2, v2

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 739
    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private addSmile(Ljava/lang/String;)V
    .locals 2

    .line 809
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 811
    invoke-static {p0, p1, v0, v1}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 813
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    .line 814
    iget-object v1, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    .line 815
    invoke-interface {p1, v1, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method private attachVideo(Z)V
    .locals 4

    .line 513
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 514
    const-class v1, Lcom/perm/kate/VideoActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.user_id"

    if-eqz p1, :cond_0

    .line 516
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 518
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

    .line 519
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x3

    .line 520
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private createAddAttachmentDialog()V
    .locals 4

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 354
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0265

    const/16 v3, 0x64

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f04ea

    const/16 v3, 0x65

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f051d

    const/16 v3, 0x66

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f04a0

    const/16 v3, 0x6a

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0f0051

    .line 359
    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 360
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/NewCommentActivity$9;

    invoke-direct {v3, p0, v0}, Lcom/perm/kate/NewCommentActivity$9;-><init>(Lcom/perm/kate/NewCommentActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 385
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 386
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createAttachAudioDialog()V
    .locals 6

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 431
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f045d

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f045f

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    iget-object v1, p0, Lcom/perm/kate/NewCommentActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 434
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f02b1

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    :cond_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 436
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/perm/kate/NewCommentActivity$11;

    invoke-direct {v3, p0, v0}, Lcom/perm/kate/NewCommentActivity$11;-><init>(Lcom/perm/kate/NewCommentActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x1

    .line 453
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 454
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createAttachDocsDialog()V
    .locals 5

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 394
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f04a0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f02b1

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 397
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Lcom/perm/kate/NewCommentActivity$10;

    invoke-direct {v4, p0, v0}, Lcom/perm/kate/NewCommentActivity$10;-><init>(Lcom/perm/kate/NewCommentActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 410
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 411
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 412
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createAttachVideoDialog()V
    .locals 7

    .line 485
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 486
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0460

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f045f

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    iget-object v1, p0, Lcom/perm/kate/NewCommentActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-gez v6, :cond_0

    .line 489
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f02b1

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 491
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Lcom/perm/kate/NewCommentActivity$12;

    invoke-direct {v4, p0, v0}, Lcom/perm/kate/NewCommentActivity$12;-><init>(Lcom/perm/kate/NewCommentActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 507
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    .line 508
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 509
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static createComment(ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V
    .locals 14

    move v0, p0

    const/4 v1, 0x1

    if-eqz p5, :cond_0

    .line 774
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ne v0, v1, :cond_1

    .line 776
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    sget-object v7, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v2 .. v11}, Lcom/perm/kate/session/Session;->createWallComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;Ljava/lang/Long;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 778
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    sget-object v8, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v4, p2

    move-object v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move v9, v2

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-virtual/range {v3 .. v12}, Lcom/perm/kate/session/Session;->createPhotoComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;ZLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_1

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 780
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-object/from16 v4, p2

    move-object v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v3 .. v8}, Lcom/perm/kate/session/Session;->createNoteComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 782
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    sget-object v8, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v4, p2

    move-object v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move v9, v2

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-virtual/range {v3 .. v12}, Lcom/perm/kate/session/Session;->createVideoComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;ZLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 784
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    neg-long v4, v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sget-object v9, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-object/from16 v8, p3

    move v10, v2

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v13, p8

    invoke-virtual/range {v3 .. v13}, Lcom/perm/kate/session/Session;->createGroupTopicComment(JJLjava/lang/String;Ljava/util/ArrayList;ZLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    .line 786
    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    sget-object v8, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move v9, v2

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-virtual/range {v3 .. v12}, Lcom/perm/kate/session/Session;->createMarketComment(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/util/ArrayList;ZLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :cond_6
    :goto_1
    return-void
.end method

.method private createGroupsDialog()Landroid/app/Dialog;
    .locals 7

    .line 697
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 700
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v3, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v3}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x32

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->fetchManagedGroups(JLjava/lang/Long;)Ljava/util/ArrayList;

    move-result-object v2

    .line 703
    invoke-direct {p0, v0, v1, v2}, Lcom/perm/kate/NewCommentActivity;->addCurrentGroup(JLjava/util/ArrayList;)V

    .line 706
    new-instance v3, Lcom/perm/kate/api/Group;

    invoke-direct {v3}, Lcom/perm/kate/api/Group;-><init>()V

    .line 707
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v4, v0, v1}, Lcom/perm/kate/db/DataHelper;->fetchUser(J)Lcom/perm/kate/api/User;

    move-result-object v0

    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 709
    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 712
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    .line 713
    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 714
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Group;

    iget-object v3, v3, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 716
    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0f0209

    .line 717
    invoke-virtual {v0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 718
    invoke-direct {p0, v2}, Lcom/perm/kate/NewCommentActivity;->getSelectedIndex(Ljava/util/ArrayList;)I

    move-result v3

    new-instance v4, Lcom/perm/kate/NewCommentActivity$19;

    invoke-direct {v4, p0, v2}, Lcom/perm/kate/NewCommentActivity$19;-><init>(Lcom/perm/kate/NewCommentActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 726
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private createSettingsDialog()Landroid/app/Dialog;
    .locals 4

    .line 676
    iget v0, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 677
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity;->createGroupsDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_0
    new-array v0, v1, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const v2, 0x7f0f0209

    .line 680
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v0, v1

    .line 681
    new-instance v1, Lcom/perm/kate/NewCommentActivity$18;

    invoke-direct {v1, p0}, Lcom/perm/kate/NewCommentActivity$18;-><init>(Lcom/perm/kate/NewCommentActivity;)V

    .line 688
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    .line 689
    invoke-virtual {v2, v0, v3, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0f0512

    .line 690
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f0f0398

    .line 691
    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f01c5

    .line 692
    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 693
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method private disableFieldAndButtonsInUI(Z)V
    .locals 1

    .line 639
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->btn_new_comment_save:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 641
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 643
    :cond_1
    new-instance v0, Lcom/perm/kate/NewCommentActivity$16;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/NewCommentActivity$16;-><init>(Lcom/perm/kate/NewCommentActivity;Z)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static editComment(ILjava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;J)V
    .locals 18

    move/from16 v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 759
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    sget-object v7, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-wide/from16 v3, p8

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/perm/kate/session/Session;->editWallComment(JLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto/16 :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 761
    sget-object v8, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    sget-object v15, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-wide/from16 v9, p8

    move-object/from16 v13, p1

    move-object/from16 v14, p3

    move-object/from16 v16, p6

    move-object/from16 v17, p7

    invoke-virtual/range {v8 .. v17}, Lcom/perm/kate/session/Session;->editPhotoComment(JJLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 763
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    move-wide/from16 v3, p8

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/session/Session;->editNoteComment(JLjava/lang/Long;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 765
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    sget-object v7, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-wide/from16 v3, p8

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/perm/kate/session/Session;->editVideoComment(JLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    .line 767
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    neg-long v5, v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sget-object v10, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-wide/from16 v3, p8

    move-object/from16 v9, p3

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v2 .. v12}, Lcom/perm/kate/session/Session;->editGroupTopicComment(JJJLjava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 769
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    sget-object v7, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    move-wide/from16 v3, p8

    move-object/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/perm/kate/session/Session;->editMarketComment(JLjava/lang/Long;Ljava/lang/String;Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :cond_5
    :goto_0
    return-void
.end method

.method private editPhotoBeforeUpload(Ljava/util/ArrayList;)V
    .locals 2

    .line 609
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/PhotoUploadOptionsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "uris"

    .line 610
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const/4 p1, 0x7

    .line 611
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private fillForEdit()V
    .locals 14

    .line 149
    iget-boolean v0, p0, Lcom/perm/kate/NewCommentActivity;->edit:Z

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.perm.kate.comment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Comment;

    if-eqz v0, :cond_3

    .line 158
    iget v1, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    iget-wide v1, v0, Lcom/perm/kate/api/Comment;->reply_to_uid:J

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_2

    .line 159
    iget-object v1, v0, Lcom/perm/kate/api/Comment;->replyCids:Ljava/util/ArrayList;

    const-string v2, "],"

    const-string v4, "|"

    const-string v5, "[post"

    const-string v6, "\\],"

    const-string v7, "\\|"

    const-string v8, "\\[(id|club)\\d*:bp-\\d*_"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x0

    .line 160
    :goto_0
    iget-object v9, v0, Lcom/perm/kate/api/Comment;->replyUsers:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_1

    .line 161
    iget-object v9, v0, Lcom/perm/kate/api/Comment;->replyCids:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 162
    iget-object v10, v0, Lcom/perm/kate/api/Comment;->replyUsers:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 163
    iget-object v11, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v12, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_1
    iget-object v1, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v0, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/perm/kate/api/Comment;->reply_to_user_name:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v8, v0, Lcom/perm/kate/api/Comment;->reply_to_cid:J

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/perm/kate/api/Comment;->reply_to_user_name:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    .line 168
    :cond_2
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v2, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    invoke-static {p0, v2, v1, v3}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 172
    iget-object v2, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v1, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 174
    iget-object v1, v0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 175
    iget-object v0, v0, Lcom/perm/kate/api/Comment;->attachments:Ljava/util/ArrayList;

    sget-object v1, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    sget-object v2, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/perm/kate/WallPostActivity;->attachmentsToStrings(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 176
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity;->UpdateAttachmentsCount()V

    :cond_3
    return-void
.end method

.method private getSelectedIndex(Ljava/util/ArrayList;)I
    .locals 8

    .line 749
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->from_group:Ljava/lang/Long;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 750
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Group;

    .line 751
    iget-wide v3, v2, Lcom/perm/kate/api/Group;->gid:J

    iget-object v5, p0, Lcom/perm/kate/NewCommentActivity;->from_group:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_0

    .line 752
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static synthetic lambda$showAnswer$0(Lcom/perm/utils/SimpleListener;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 888
    invoke-interface {p0}, Lcom/perm/utils/SimpleListener;->call()V

    const-string p0, "answer_not_accepted"

    .line 889
    invoke-static {p0}, Lcom/perm/kate/NewCommentActivity;->reportEvent(Ljava/lang/String;)V

    return-void
.end method

.method private onConfirmCancel()Z
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 313
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 314
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f04de

    .line 315
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f05a7

    new-instance v3, Lcom/perm/kate/NewCommentActivity$6;

    invoke-direct {v3, p0}, Lcom/perm/kate/NewCommentActivity$6;-><init>(Lcom/perm/kate/NewCommentActivity;)V

    .line 316
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0f037a

    new-instance v3, Lcom/perm/kate/NewCommentActivity$5;

    invoke-direct {v3, p0}, Lcom/perm/kate/NewCommentActivity$5;-><init>(Lcom/perm/kate/NewCommentActivity;)V

    .line 321
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 324
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private photoAttachmentsUploaded(Ljava/util/ArrayList;)V
    .locals 3

    .line 622
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 624
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Photo;

    .line 625
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

    .line 626
    new-instance v1, Lcom/perm/kate/NewCommentActivity$15;

    invoke-direct {v1, p0, v0, p1}, Lcom/perm/kate/NewCommentActivity$15;-><init>(Lcom/perm/kate/NewCommentActivity;Ljava/lang/String;Lcom/perm/kate/api/Photo;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static reportEvent(Ljava/lang/String;)V
    .locals 2

    .line 898
    :try_start_0
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    const-string v1, "type"

    .line 899
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "ANSWER_PARSER_GROUP"

    .line 900
    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 902
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 903
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private send(Ljava/lang/Integer;)V
    .locals 10

    .line 211
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->text:Ljava/lang/String;

    .line 212
    iget v0, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->reply_to_cid:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->reply_to_user_name:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->replyCids:Ljava/util/ArrayList;

    const-string v1, "],"

    const-string v2, "|"

    const-string v3, "[post"

    const-string v4, ","

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->replyUsers:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 214
    :goto_0
    iget-object v5, p0, Lcom/perm/kate/NewCommentActivity;->replyUsers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 215
    iget-object v5, p0, Lcom/perm/kate/NewCommentActivity;->replyCids:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 216
    iget-object v6, p0, Lcom/perm/kate/NewCommentActivity;->replyUsers:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 217
    iget-object v7, p0, Lcom/perm/kate/NewCommentActivity;->text:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v8, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/perm/kate/NewCommentActivity;->text:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->text:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/perm/kate/NewCommentActivity;->reply_to_user_name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/perm/kate/NewCommentActivity;->reply_to_cid:Ljava/lang/Long;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/kate/NewCommentActivity;->reply_to_user_name:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/perm/kate/NewCommentActivity;->text:Ljava/lang/String;

    :cond_1
    const/4 v0, 0x1

    .line 222
    invoke-direct {p0, v0}, Lcom/perm/kate/NewCommentActivity;->disableFieldAndButtonsInUI(Z)V

    .line 223
    invoke-virtual {p0, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 224
    new-instance v0, Lcom/perm/kate/NewCommentActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/perm/kate/NewCommentActivity$2;-><init>(Lcom/perm/kate/NewCommentActivity;Ljava/lang/Integer;)V

    .line 232
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static showAnswer(Lcom/perm/utils/AnswerType;Lcom/perm/utils/SimpleListener;Landroid/content/Context;)V
    .locals 1

    .line 878
    invoke-static {p0}, Lcom/perm/utils/AnswerParser;->getAnswer(Lcom/perm/utils/AnswerType;)Ljava/lang/String;

    move-result-object p0

    .line 881
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    .line 882
    invoke-static {v0, p0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 883
    new-instance p0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-direct {p0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 884
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    const-string p2, "\u0414\u0430, \u043e\u0442\u0432\u0435\u0442 \u043f\u043e\u043d\u044f\u0442\u0435\u043d, \u0432\u043e\u043f\u0440\u043e\u0441 \u043c\u043e\u0436\u043d\u043e \u043d\u0435 \u043e\u0442\u043f\u0440\u0430\u0432\u043b\u044f\u0442\u044c."

    const/4 v0, 0x0

    .line 885
    invoke-virtual {p0, p2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p2, Lcom/perm/kate/NewCommentActivity$$ExternalSyntheticLambda0;

    invoke-direct {p2, p1}, Lcom/perm/kate/NewCommentActivity$$ExternalSyntheticLambda0;-><init>(Lcom/perm/utils/SimpleListener;)V

    const-string p1, "\u041d\u0435\u0442, \u043e\u0442\u0432\u0435\u0442 \u043d\u0435 \u043f\u043e\u043d\u044f\u0442\u0435\u043d, \u0445\u043e\u0447\u0443 \u043e\u0442\u043f\u0440\u0430\u0432\u0438\u0442\u044c \u0432\u043e\u043f\u0440\u043e\u0441 \u0432 \u0433\u0440\u0443\u043f\u043f\u0443."

    .line 886
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 891
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    const p1, 0x102000b

    .line 892
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 893
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private showAudioActivity(Z)V
    .locals 4

    .line 458
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 459
    const-class v1, Lcom/perm/kate/AudioActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.owner_id"

    if-eqz p1, :cond_0

    .line 461
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 463
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

    .line 464
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 465
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showDocsActivity(Z)V
    .locals 4

    .line 416
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/perm/kate/DocsActivity2;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "owner_id"

    if-eqz p1, :cond_0

    .line 418
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_0

    .line 420
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

    .line 421
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x9

    .line 422
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showMyStickersActivity()V
    .locals 2

    .line 819
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 820
    const-class v1, Lcom/perm/kate/MyStickersActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/16 v1, 0xa

    .line 821
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private showSearchActivity(Z)V
    .locals 2

    .line 469
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 470
    const-class v1, Lcom/perm/kate/SearchActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string p1, "com.perm.kate.select_video"

    .line 472
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x6

    .line 473
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const-string p1, "com.perm.kate.select_audio"

    .line 475
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x4

    .line 476
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 21

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v12, p3

    .line 534
    invoke-super/range {p0 .. p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 535
    iget-object v0, v9, Lcom/perm/kate/NewCommentActivity;->photoChooserCallback:Lcom/perm/kate/photoupload/PhotoChooser$Callback;

    invoke-static {v9, v10, v11, v12, v0}, Lcom/perm/kate/photoupload/PhotoChooser;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Lcom/perm/kate/photoupload/PhotoChooser$Callback;)Landroid/net/Uri;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v13, -0x1

    if-eqz v10, :cond_0

    const/4 v2, 0x4

    if-ne v10, v2, :cond_2

    :cond_0
    if-ne v11, v13, :cond_2

    const-string v2, "audios"

    .line 537
    invoke-virtual {v12, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 538
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, ","

    .line 539
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 540
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 541
    sget-object v6, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 542
    sget-object v5, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 545
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f0053

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_2
    const/4 v2, 0x6

    const-string v14, "_"

    const-string v15, "owner_id"

    const-wide/16 v7, 0x0

    if-eq v10, v2, :cond_3

    const/4 v2, 0x3

    if-ne v10, v2, :cond_4

    :cond_3
    if-ne v11, v13, :cond_4

    const-string v2, "video_id"

    .line 548
    invoke-virtual {v12, v2, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 549
    invoke-virtual {v12, v15, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 550
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attached_video_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " attached_video_owner_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Kate.NewCommentActivity"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "video"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 552
    sget-object v3, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    sget-object v2, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0f058b

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_4
    const/4 v2, 0x7

    if-ne v10, v2, :cond_6

    if-ne v11, v13, :cond_6

    const-string v2, "uris"

    .line 557
    invoke-virtual {v12, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    const-string v4, "resize_option"

    .line 558
    invoke-virtual {v12, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v3, "rotate"

    .line 559
    invoke-virtual {v12, v3, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const v4, 0x7f0f03e1

    .line 560
    invoke-virtual {v9, v4}, Lcom/perm/kate/BaseActivity;->displayToast(I)V

    .line 561
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v1, :cond_5

    .line 562
    new-instance v16, Lcom/perm/kate/photoupload/WallUploader;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/net/Uri;

    iget-object v0, v9, Lcom/perm/kate/NewCommentActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    iget-object v6, v9, Lcom/perm/kate/NewCommentActivity;->uploadCallback:Lcom/perm/kate/photoupload/UploadCallback;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-wide/from16 v3, v17

    move-object/from16 v7, v19

    move-object/from16 v8, v20

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/photoupload/WallUploader;-><init>(Landroid/app/Activity;Landroid/net/Uri;JILcom/perm/kate/photoupload/UploadCallback;Ljava/lang/Integer;Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Lcom/perm/kate/photoupload/WallUploader;->upload()V

    goto :goto_1

    .line 564
    :cond_5
    new-instance v0, Lcom/perm/kate/NewCommentActivity$MultiUploader;

    invoke-direct {v0, v9, v2, v5}, Lcom/perm/kate/NewCommentActivity$MultiUploader;-><init>(Lcom/perm/kate/NewCommentActivity;Ljava/util/ArrayList;I)V

    invoke-virtual {v0}, Lcom/perm/kate/NewCommentActivity$MultiUploader;->start()V

    :cond_6
    :goto_1
    const/16 v0, 0x9

    if-ne v10, v0, :cond_7

    if-ne v11, v13, :cond_7

    const-string v0, "doc_id"

    const-wide/16 v1, 0x0

    .line 568
    invoke-virtual {v12, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 569
    invoke-virtual {v12, v15, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 571
    sget-object v1, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 572
    sget-object v0, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const/16 v0, 0xa

    if-ne v10, v0, :cond_9

    .line 575
    sget v0, Lcom/perm/kate/smile/SmileKeyboard;->NO_PAGE:I

    if-eqz v12, :cond_8

    const-string v1, "index"

    .line 577
    invoke-virtual {v12, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 578
    :cond_8
    iget-object v1, v9, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    invoke-virtual {v1, v0}, Lcom/perm/kate/smile/SmileKeyboard;->updatePages(I)V

    .line 580
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/perm/kate/NewCommentActivity;->UpdateAttachmentsCount()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 78
    invoke-super {p0, p1}, Lcom/perm/kate/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c00c6

    .line 79
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setContentView(I)V

    const p1, 0x7f0f0505

    .line 80
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 81
    sget-object p1, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 82
    sget-object p1, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const p1, 0x7f090322

    .line 83
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    const p1, 0x7f090081

    .line 84
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity;->btn_new_comment_save:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->save_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090351

    .line 86
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity;->tv_attachments_count:Landroid/widget/TextView;

    const p1, 0x7f09012c

    .line 87
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity;->ff_attachments_count_placeholder:Landroid/view/View;

    const p1, 0x7f09005f

    .line 88
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity;->btn_add_attachment:Landroid/widget/ImageButton;

    .line 89
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->add_attachment_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f090065

    .line 90
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity;->btn_attachments:Landroid/widget/ImageButton;

    .line 91
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->attachments_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09008a

    .line 92
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity;->btn_post_settings:Landroid/widget/ImageButton;

    const p1, 0x7f090036

    .line 93
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity;->add_smile:Landroid/widget/ImageButton;

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.pid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity;->content_id:Ljava/lang/Long;

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.owner_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity;->owner_id:Ljava/lang/Long;

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.comment_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.reply_to_cid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity;->reply_to_cid:Ljava/lang/Long;

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.perm.kate.reply_to_user_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity;->reply_to_user_name:Ljava/lang/String;

    .line 101
    iget p1, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "com.perm.kate.replyCids"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity;->replyCids:Ljava/util/ArrayList;

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "com.perm.kate.replyUsers"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity;->replyUsers:Ljava/util/ArrayList;

    .line 106
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "text"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    if-nez p1, :cond_2

    move-object p1, v2

    .line 109
    :cond_2
    iget-object v3, p0, Lcom/perm/kate/NewCommentActivity;->reply_to_user_name:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 111
    iget-object v3, p0, Lcom/perm/kate/NewCommentActivity;->replyUsers:Ljava/util/ArrayList;

    const-string v4, ", "

    if-eqz v3, :cond_4

    .line 112
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 113
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_3

    .line 114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 117
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/kate/NewCommentActivity;->reply_to_user_name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 118
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 120
    :cond_5
    iget-object v2, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    invoke-virtual {v2, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v2, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 122
    iget-object v2, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {p0, p1, v2, v1}, Lcom/perm/utils/SmileHelper;->insertSmiles(Landroid/content/Context;Ljava/lang/String;Landroid/text/Editable;Z)V

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "com.perm.kate.edit"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/perm/kate/NewCommentActivity;->edit:Z

    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "com.perm.kate.cid"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/perm/kate/NewCommentActivity;->cid:J

    .line 126
    iget-boolean p1, p0, Lcom/perm/kate/NewCommentActivity;->edit:Z

    if-eqz p1, :cond_6

    const p1, 0x7f0f04f5

    .line 127
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity;->setHeaderTitle(I)V

    .line 128
    :cond_6
    iget p1, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    const/4 v2, 0x1

    if-eq p1, v0, :cond_7

    if-eq p1, v2, :cond_7

    if-eqz p1, :cond_7

    const/4 v5, 0x2

    if-eq p1, v5, :cond_7

    const/4 v5, 0x5

    if-ne p1, v5, :cond_8

    .line 130
    :cond_7
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity;->btn_add_attachment:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 132
    :cond_8
    iget p1, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    const/4 v5, 0x3

    if-eq p1, v5, :cond_9

    iget-boolean p1, p0, Lcom/perm/kate/NewCommentActivity;->edit:Z

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity;->owner_id:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long p1, v6, v3

    if-ltz p1, :cond_b

    :cond_9
    iget p1, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    if-ne p1, v0, :cond_a

    iget-boolean v0, p0, Lcom/perm/kate/NewCommentActivity;->edit:Z

    if-eqz v0, :cond_b

    :cond_a
    if-ne p1, v2, :cond_c

    iget-boolean p1, p0, Lcom/perm/kate/NewCommentActivity;->edit:Z

    if-nez p1, :cond_c

    .line 137
    :cond_b
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity;->btn_post_settings:Landroid/widget/ImageButton;

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 138
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity;->btn_post_settings:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->settings_OnClickListerer:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :cond_c
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity;->fillForEdit()V

    .line 142
    new-instance p1, Lcom/perm/kate/smile/SmileKeyboard;

    invoke-direct {p1}, Lcom/perm/kate/smile/SmileKeyboard;-><init>()V

    iput-object p1, p0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    .line 143
    iget v0, p0, Lcom/perm/kate/NewCommentActivity;->comment_type:I

    if-eq v0, v5, :cond_d

    const/4 v1, 0x1

    .line 144
    :cond_d
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->add_smile:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/perm/kate/NewCommentActivity;->listener:Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;

    invoke-virtual {p1, p0, v0, v2, v1}, Lcom/perm/kate/smile/SmileKeyboard;->init(Landroidx/fragment/app/FragmentActivity;Landroid/view/View;Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;Z)V

    .line 145
    iget-object p1, p0, Lcom/perm/kate/BaseActivity;->smileKeyboard:Lcom/perm/kate/smile/SmileKeyboard;

    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity;->tb_new_comment_text:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Lcom/perm/kate/smile/SmileKeyboard;->registerEditText(Landroid/widget/EditText;)V

    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 669
    :cond_0
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity;->createSettingsDialog()Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method protected onDestroy()V
    .locals 1

    .line 826
    invoke-super {p0}, Lcom/perm/kate/BaseActivity;->onDestroy()V

    .line 827
    sget-object v0, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 828
    sget-object v0, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 305
    invoke-direct {p0}, Lcom/perm/kate/NewCommentActivity;->onConfirmCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 308
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/perm/kate/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
