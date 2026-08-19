.class public Lcom/perm/kate/AttachmentsHelper;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;,
        Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;,
        Lcom/perm/kate/AttachmentsHelper$AudioClickListener;
    }
.end annotation


# static fields
.field public static big_photo_width_px:I

.field private static hor_margin:I

.field public static small_photo_width_px:I

.field private static vert_margin:I


# instance fields
.field activity:Lcom/perm/kate/BaseActivity;

.field albumClickListener:Landroid/view/View$OnClickListener;

.field private attached_photo_ClickListener:Landroid/view/View$OnClickListener;

.field audioHelper:Lcom/perm/kate/AudioClickHelper;

.field audioViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field public available_width:I

.field big_photos:Z

.field documentClickListener:Landroid/view/View$OnClickListener;

.field documentWithPreviewClickListener:Landroid/view/View$OnClickListener;

.field private documentWithPreviewLongClickListener:Landroid/view/View$OnLongClickListener;

.field forwardedMessageClickListener:Landroid/view/View$OnClickListener;

.field geoClickListener:Landroid/view/View$OnClickListener;

.field giftClickListener:Landroid/view/View$OnClickListener;

.field groupCache:Lcom/perm/utils/GroupCache;

.field left_pane_offset:I

.field linkClickListener:Landroid/view/View$OnClickListener;

.field public linkMargins:Z

.field private mosaic_enabled:Z

.field notesClickListener:Landroid/view/View$OnClickListener;

.field photoClickListener:Landroid/view/View$OnClickListener;

.field playerCallback:Lcom/perm/kate/Player$PlayerCallback;

.field pollClickListener:Landroid/view/View$OnClickListener;

.field source:I

.field userCache:Lcom/perm/utils/UserCache;

.field videoClickListener:Landroid/view/View$OnClickListener;

.field private videoPlayClick:Landroid/view/View$OnClickListener;

.field private voice:Lcom/perm/kate/api/Audio;

.field private voicePlayer:Lcom/perm/kate/Player;

.field wallCommentClickListener:Landroid/view/View$OnClickListener;

.field wallMessageClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 222
    const/16 v0, 0x82

    sput v0, Lcom/perm/kate/AttachmentsHelper;->small_photo_width_px:I

    .line 223
    const/16 v0, 0x25c

    sput v0, Lcom/perm/kate/AttachmentsHelper;->big_photo_width_px:I

    .line 224
    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    sput v0, Lcom/perm/kate/AttachmentsHelper;->hor_margin:I

    .line 225
    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    sput v0, Lcom/perm/kate/AttachmentsHelper;->vert_margin:I

    return-void
.end method

.method public constructor <init>(Lcom/perm/kate/BaseActivity;ZIZIII)V
    .locals 3
    .param p1, "a"    # Lcom/perm/kate/BaseActivity;
    .param p2, "big_photos"    # Z
    .param p3, "left_pane_offset"    # I
    .param p4, "avatar_offset"    # Z
    .param p5, "bubble_offset"    # I
    .param p6, "photo_offset"    # I
    .param p7, "source"    # I

    .prologue
    const/4 v1, 0x1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->audioViews:Ljava/util/ArrayList;

    .line 35
    new-instance v0, Lcom/perm/utils/UserCache;

    invoke-direct {v0}, Lcom/perm/utils/UserCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->userCache:Lcom/perm/utils/UserCache;

    .line 36
    new-instance v0, Lcom/perm/utils/GroupCache;

    invoke-direct {v0}, Lcom/perm/utils/GroupCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->groupCache:Lcom/perm/utils/GroupCache;

    .line 38
    iput-boolean v1, p0, Lcom/perm/kate/AttachmentsHelper;->mosaic_enabled:Z

    .line 39
    iput-boolean v1, p0, Lcom/perm/kate/AttachmentsHelper;->linkMargins:Z

    .line 382
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$1;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->videoPlayClick:Landroid/view/View$OnClickListener;

    .line 852
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$2;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$2;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->pollClickListener:Landroid/view/View$OnClickListener;

    .line 912
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$3;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->videoClickListener:Landroid/view/View$OnClickListener;

    .line 919
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$4;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->linkClickListener:Landroid/view/View$OnClickListener;

    .line 927
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$5;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->geoClickListener:Landroid/view/View$OnClickListener;

    .line 940
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$6;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->albumClickListener:Landroid/view/View$OnClickListener;

    .line 948
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$7;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->documentClickListener:Landroid/view/View$OnClickListener;

    .line 961
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$8;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->documentWithPreviewClickListener:Landroid/view/View$OnClickListener;

    .line 974
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$9;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->documentWithPreviewLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 988
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$10;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->giftClickListener:Landroid/view/View$OnClickListener;

    .line 1001
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$11;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->wallMessageClickListener:Landroid/view/View$OnClickListener;

    .line 1025
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$12;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->wallCommentClickListener:Landroid/view/View$OnClickListener;

    .line 1051
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$13;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->forwardedMessageClickListener:Landroid/view/View$OnClickListener;

    .line 1079
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$14;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->attached_photo_ClickListener:Landroid/view/View$OnClickListener;

    .line 1086
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$15;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->notesClickListener:Landroid/view/View$OnClickListener;

    .line 1093
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$16;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->photoClickListener:Landroid/view/View$OnClickListener;

    .line 1255
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$17;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$17;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    .line 43
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    .line 44
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 45
    new-instance v0, Lcom/perm/kate/AudioClickHelper;

    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/AudioClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    .line 46
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->addCallback(Lcom/perm/kate/Player$PlayerCallback;)V

    .line 47
    iput-boolean p2, p0, Lcom/perm/kate/AttachmentsHelper;->big_photos:Z

    .line 48
    iput p3, p0, Lcom/perm/kate/AttachmentsHelper;->left_pane_offset:I

    .line 49
    invoke-virtual {p0}, Lcom/perm/kate/AttachmentsHelper;->isMosaicEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/perm/kate/AttachmentsHelper;->mosaic_enabled:Z

    .line 50
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/perm/kate/AttachmentsHelper;->calculateBigPhotoSize(Lcom/perm/kate/BaseActivity;ZII)V

    .line 51
    iput p7, p0, Lcom/perm/kate/AttachmentsHelper;->source:I

    .line 52
    return-void
.end method

.method public static ShowNoteActivity(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2
    .param p0, "uid"    # Ljava/lang/String;
    .param p1, "nid"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 905
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 906
    .local v0, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/NoteActivity;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 907
    const-string v1, "com.perm.kate.uid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 908
    const-string v1, "com.perm.kate.nid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 909
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 910
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/AttachmentsHelper;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AttachmentsHelper;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/perm/kate/AttachmentsHelper;->fetchMessageAttachments(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/perm/kate/AttachmentsHelper;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AttachmentsHelper;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/perm/kate/AttachmentsHelper;->attachmenttsToMessages(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AttachmentsHelper;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/perm/kate/AttachmentsHelper;->pauseAudio()V

    return-void
.end method

.method static synthetic access$300(Lcom/perm/kate/AttachmentsHelper;)Lcom/perm/kate/api/Audio;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AttachmentsHelper;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->voice:Lcom/perm/kate/api/Audio;

    return-object v0
.end method

.method static synthetic access$302(Lcom/perm/kate/AttachmentsHelper;Lcom/perm/kate/api/Audio;)Lcom/perm/kate/api/Audio;
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AttachmentsHelper;
    .param p1, "x1"    # Lcom/perm/kate/api/Audio;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper;->voice:Lcom/perm/kate/api/Audio;

    return-object p1
.end method

.method static synthetic access$400(Lcom/perm/kate/AttachmentsHelper;)Lcom/perm/kate/Player;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AttachmentsHelper;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->voicePlayer:Lcom/perm/kate/Player;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/AttachmentsHelper;)Lcom/perm/kate/Player;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/AttachmentsHelper;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/perm/kate/AttachmentsHelper;->getVoicePlayer()Lcom/perm/kate/Player;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/AttachmentsHelper;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/perm/kate/AttachmentsHelper;->displayAudioPlayersStates()V

    return-void
.end method

.method public static attachedPhotoClick(Landroid/view/View;Landroid/app/Activity;)V
    .locals 9
    .param p0, "v"    # Landroid/view/View;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 876
    const v4, 0x7f070103

    invoke-virtual {p0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    move-object v3, v4

    check-cast v3, [Ljava/lang/String;

    .line 877
    .local v3, "tags":[Ljava/lang/String;
    if-eqz v3, :cond_1

    array-length v4, v3

    if-lt v4, v8, :cond_1

    .line 878
    new-instance v1, Lcom/perm/kate/api/Photo;

    invoke-direct {v1}, Lcom/perm/kate/api/Photo;-><init>()V

    .line 879
    .local v1, "ph":Lcom/perm/kate/api/Photo;
    aget-object v4, v3, v6

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v1, Lcom/perm/kate/api/Photo;->pid:J

    .line 880
    aget-object v4, v3, v7

    iput-object v4, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    .line 881
    const/4 v4, 0x2

    aget-object v4, v3, v4

    iput-object v4, v1, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 882
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 883
    .local v2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 885
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 886
    .local v0, "intent":Landroid/content/Intent;
    const-class v4, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 887
    const-string v4, "com.perm.kate.position"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 888
    const-string v4, "com.perm.kate.photos"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 889
    array-length v4, v3

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    aget-object v4, v3, v8

    const-string v5, "is_graffiti"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 890
    const-string v4, "com.perm.kate.is_graffiti"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 891
    :cond_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 893
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "ph":Lcom/perm/kate/api/Photo;
    .end local v2    # "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    :cond_1
    return-void
.end method

.method private attachmenttsToMessages(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Attachment;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1348
    .local p1, "attachment_messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1349
    .local v1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Attachment;

    .line 1350
    .local v0, "att":Lcom/perm/kate/api/Attachment;
    iget-object v3, v0, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1351
    iget-object v3, v0, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/perm/kate/api/Message;->read_state:Z

    goto :goto_0

    .line 1353
    .end local v0    # "att":Lcom/perm/kate/api/Attachment;
    :cond_0
    return-object v1
.end method

.method private calculateBigPhotoSize(Lcom/perm/kate/BaseActivity;ZII)V
    .locals 6
    .param p1, "a"    # Lcom/perm/kate/BaseActivity;
    .param p2, "avatar_offset"    # Z
    .param p3, "bubble_offset"    # I
    .param p4, "photo_offset"    # I

    .prologue
    .line 58
    invoke-virtual {p1}, Lcom/perm/kate/BaseActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 59
    .local v0, "display":Landroid/view/Display;
    const-string v2, "Kate.AttachmentsHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "width="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " height="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 61
    .local v1, "screen_width":I
    iput v1, p0, Lcom/perm/kate/AttachmentsHelper;->available_width:I

    .line 62
    iget v2, p0, Lcom/perm/kate/AttachmentsHelper;->available_width:I

    int-to-double v4, p4

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/perm/kate/AttachmentsHelper;->available_width:I

    .line 66
    if-eqz p2, :cond_0

    .line 67
    sget-boolean v2, Lcom/perm/kate/KApplication;->isTablet:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/perm/kate/KApplication;->isHoneycomb:Z

    if-eqz v2, :cond_1

    .line 68
    iget v2, p0, Lcom/perm/kate/AttachmentsHelper;->available_width:I

    const-wide v4, 0x4051800000000000L    # 70.0

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/perm/kate/AttachmentsHelper;->available_width:I

    .line 73
    :cond_0
    :goto_0
    iget v2, p0, Lcom/perm/kate/AttachmentsHelper;->available_width:I

    iget v3, p0, Lcom/perm/kate/AttachmentsHelper;->left_pane_offset:I

    int-to-double v4, v3

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/perm/kate/AttachmentsHelper;->available_width:I

    .line 75
    iget v2, p0, Lcom/perm/kate/AttachmentsHelper;->available_width:I

    int-to-double v4, p3

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/perm/kate/AttachmentsHelper;->available_width:I

    .line 77
    return-void

    .line 70
    :cond_1
    iget v2, p0, Lcom/perm/kate/AttachmentsHelper;->available_width:I

    const-wide v4, 0x4046800000000000L    # 45.0

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/perm/kate/AttachmentsHelper;->available_width:I

    goto :goto_0
.end method

.method public static calculateMosaic(Ljava/util/ArrayList;ZIZF)Ljava/util/ArrayList;
    .locals 26
    .param p1, "big_photos"    # Z
    .param p2, "available_width"    # I
    .param p3, "mosaic_enabled"    # Z
    .param p4, "screen_density"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/PhotoPlace;",
            ">;ZIZF)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/PhotoRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 450
    .local p0, "mosaic":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/PhotoPlace;>;"
    invoke-static/range {p4 .. p4}, Lcom/perm/kate/AttachmentsHelper;->getMaxPhotoScale(F)F

    move-result v7

    .line 453
    .local v7, "max_scale":F
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v19, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/PhotoRow;>;"
    new-instance v23, Lcom/perm/kate/PhotoRow;

    invoke-direct/range {v23 .. v23}, Lcom/perm/kate/PhotoRow;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v4, v0, :cond_a

    .line 456
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perm/kate/PhotoPlace;

    .line 457
    .local v11, "place":Lcom/perm/kate/PhotoPlace;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/perm/kate/PhotoRow;

    .line 459
    .local v17, "row":Lcom/perm/kate/PhotoRow;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    const/4 v6, 0x2

    .line 461
    .local v6, "max_photos":I
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x3

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 463
    iget v0, v11, Lcom/perm/kate/PhotoPlace;->type:I

    move/from16 v23, v0

    if-nez v23, :cond_0

    iget-object v0, v11, Lcom/perm/kate/PhotoPlace;->photo:Lcom/perm/kate/api/Photo;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/perm/kate/AttachmentsHelper;->isVertical(Lcom/perm/kate/api/Photo;)Z

    move-result v23

    if-nez v23, :cond_1

    .line 464
    :cond_0
    const/4 v6, 0x1

    .line 467
    :cond_1
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    const/16 v24, 0x2

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    iget v0, v11, Lcom/perm/kate/PhotoPlace;->type:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    .line 468
    const/4 v6, 0x2

    .line 472
    :cond_2
    iget v0, v11, Lcom/perm/kate/PhotoPlace;->type:I

    move/from16 v23, v0

    if-nez v23, :cond_7

    .line 473
    iget-object v0, v11, Lcom/perm/kate/PhotoPlace;->photo:Lcom/perm/kate/api/Photo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v10, v0, Lcom/perm/kate/api/Photo;->width:I

    .local v10, "photo_width":I
    iget-object v0, v11, Lcom/perm/kate/PhotoPlace;->photo:Lcom/perm/kate/api/Photo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v9, v0, Lcom/perm/kate/api/Photo;->height:I

    .line 474
    .local v9, "photo_height":I
    invoke-static {v10, v9}, Lcom/perm/kate/AttachmentsHelper;->getRatio(II)F

    move-result v23

    move/from16 v0, v23

    iput v0, v11, Lcom/perm/kate/PhotoPlace;->ratio:F

    .line 475
    iget v0, v11, Lcom/perm/kate/PhotoPlace;->ratio:F

    move/from16 v23, v0

    move/from16 v0, p1

    move/from16 v1, v23

    invoke-static {v0, v1, v10, v9}, Lcom/perm/kate/AttachmentsHelper;->getPreviewSize(ZFII)[I

    move-result-object v21

    .line 489
    .end local v9    # "photo_height":I
    .end local v10    # "photo_width":I
    .local v21, "size":[I
    :goto_2
    const/16 v23, 0x0

    aget v23, v21, v23

    move/from16 v0, v23

    iput v0, v11, Lcom/perm/kate/PhotoPlace;->width:I

    .line 490
    const/16 v23, 0x1

    aget v23, v21, v23

    move/from16 v0, v23

    iput v0, v11, Lcom/perm/kate/PhotoPlace;->height:I

    .line 492
    invoke-virtual/range {v17 .. v17}, Lcom/perm/kate/PhotoRow;->getWidth()I

    move-result v3

    .line 495
    .local v3, "estimated_width":I
    const/16 v22, 0x0

    .line 496
    .local v22, "start_new_row":Z
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-lt v0, v6, :cond_3

    int-to-float v0, v3

    move/from16 v23, v0

    mul-float v23, v23, v7

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v24, v0

    cmpl-float v23, v23, v24

    if-ltz v23, :cond_3

    .line 498
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v23

    if-eq v4, v0, :cond_3

    .line 499
    const/16 v22, 0x1

    .line 501
    :cond_3
    if-nez p3, :cond_4

    .line 502
    const/16 v22, 0x1

    .line 503
    :cond_4
    if-eqz v22, :cond_5

    .line 504
    new-instance v17, Lcom/perm/kate/PhotoRow;

    .end local v17    # "row":Lcom/perm/kate/PhotoRow;
    invoke-direct/range {v17 .. v17}, Lcom/perm/kate/PhotoRow;-><init>()V

    .line 505
    .restart local v17    # "row":Lcom/perm/kate/PhotoRow;
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_5
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 459
    .end local v3    # "estimated_width":I
    .end local v6    # "max_photos":I
    .end local v21    # "size":[I
    .end local v22    # "start_new_row":Z
    :cond_6
    const/4 v6, 0x3

    goto/16 :goto_1

    .line 477
    .restart local v6    # "max_photos":I
    :cond_7
    iget v0, v11, Lcom/perm/kate/PhotoPlace;->type:I

    move/from16 v23, v0

    const/16 v24, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_8

    .line 479
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v21, v0

    fill-array-data v21, :array_0

    .restart local v21    # "size":[I
    goto :goto_2

    .line 482
    .end local v21    # "size":[I
    :cond_8
    iget-object v0, v11, Lcom/perm/kate/PhotoPlace;->doc:Lcom/perm/kate/api/Document;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/perm/kate/PhotoViewerActrivity;->isGraffiti(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 485
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v21, v0

    fill-array-data v21, :array_1

    .restart local v21    # "size":[I
    goto/16 :goto_2

    .line 487
    .end local v21    # "size":[I
    :cond_9
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [I

    move-object/from16 v21, v0

    fill-array-data v21, :array_2

    .restart local v21    # "size":[I
    goto/16 :goto_2

    .line 512
    .end local v6    # "max_photos":I
    .end local v11    # "place":Lcom/perm/kate/PhotoPlace;
    .end local v17    # "row":Lcom/perm/kate/PhotoRow;
    .end local v21    # "size":[I
    :cond_a
    const/4 v15, 0x0

    .local v15, "prev_y":I
    const/4 v12, 0x0

    .line 513
    .local v12, "prev_height":I
    const/4 v4, 0x0

    :goto_3
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v4, v0, :cond_15

    .line 514
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/perm/kate/PhotoRow;

    .line 517
    .restart local v17    # "row":Lcom/perm/kate/PhotoRow;
    const/16 v8, 0x2bc

    .line 518
    .local v8, "min_preview_height":I
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_b
    :goto_4
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_c

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perm/kate/PhotoPlace;

    .line 519
    .restart local v11    # "place":Lcom/perm/kate/PhotoPlace;
    iget v0, v11, Lcom/perm/kate/PhotoPlace;->height:I

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v0, v8, :cond_b

    .line 520
    iget v8, v11, Lcom/perm/kate/PhotoPlace;->height:I

    goto :goto_4

    .line 523
    .end local v11    # "place":Lcom/perm/kate/PhotoPlace;
    :cond_c
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_5
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_d

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perm/kate/PhotoPlace;

    .line 524
    .restart local v11    # "place":Lcom/perm/kate/PhotoPlace;
    iget v0, v11, Lcom/perm/kate/PhotoPlace;->height:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    int-to-float v0, v8

    move/from16 v25, v0

    div-float v16, v24, v25

    .line 525
    .local v16, "ratio":F
    iput v8, v11, Lcom/perm/kate/PhotoPlace;->height:I

    .line 526
    iget v0, v11, Lcom/perm/kate/PhotoPlace;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v24, v24, v16

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->round(F)I

    move-result v24

    move/from16 v0, v24

    iput v0, v11, Lcom/perm/kate/PhotoPlace;->width:I

    goto :goto_5

    .line 530
    .end local v11    # "place":Lcom/perm/kate/PhotoPlace;
    .end local v16    # "ratio":F
    :cond_d
    const/16 v18, 0x0

    .line 531
    .local v18, "row_width":I
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_6
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_e

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perm/kate/PhotoPlace;

    .line 532
    .restart local v11    # "place":Lcom/perm/kate/PhotoPlace;
    iget v0, v11, Lcom/perm/kate/PhotoPlace;->width:I

    move/from16 v24, v0

    add-int v18, v18, v24

    .line 533
    goto :goto_6

    .line 536
    .end local v11    # "place":Lcom/perm/kate/PhotoPlace;
    :cond_e
    sget v23, Lcom/perm/kate/AttachmentsHelper;->hor_margin:I

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    mul-int v23, v23, v24

    sub-int v2, p2, v23

    .line 537
    .local v2, "available_width_without_margins":I
    int-to-float v0, v2

    move/from16 v23, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v20, v23, v24

    .line 539
    .local v20, "scale":F
    cmpl-float v23, v20, v7

    if-ltz v23, :cond_f

    .line 540
    move/from16 v20, v7

    .line 542
    :cond_f
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_7
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_10

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perm/kate/PhotoPlace;

    .line 546
    .restart local v11    # "place":Lcom/perm/kate/PhotoPlace;
    iget v0, v11, Lcom/perm/kate/PhotoPlace;->width:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v20

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v11, Lcom/perm/kate/PhotoPlace;->width:I

    .line 547
    iget v0, v11, Lcom/perm/kate/PhotoPlace;->height:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v20

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    iput v0, v11, Lcom/perm/kate/PhotoPlace;->height:I

    goto :goto_7

    .line 551
    .end local v11    # "place":Lcom/perm/kate/PhotoPlace;
    :cond_10
    const/4 v14, 0x0

    .local v14, "prev_x":I
    const/4 v13, 0x0

    .line 552
    .local v13, "prev_width":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_8
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v5, v0, :cond_13

    .line 553
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perm/kate/PhotoPlace;

    .line 554
    .restart local v11    # "place":Lcom/perm/kate/PhotoPlace;
    add-int v23, v14, v13

    move/from16 v0, v23

    iput v0, v11, Lcom/perm/kate/PhotoPlace;->x:I

    .line 555
    if-eqz v5, :cond_11

    .line 556
    iget v0, v11, Lcom/perm/kate/PhotoPlace;->x:I

    move/from16 v23, v0

    sget v24, Lcom/perm/kate/AttachmentsHelper;->hor_margin:I

    add-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v11, Lcom/perm/kate/PhotoPlace;->x:I

    .line 557
    :cond_11
    iget v14, v11, Lcom/perm/kate/PhotoPlace;->x:I

    .line 558
    iget v13, v11, Lcom/perm/kate/PhotoPlace;->width:I

    .line 560
    add-int v23, v15, v12

    move/from16 v0, v23

    iput v0, v11, Lcom/perm/kate/PhotoPlace;->y:I

    .line 563
    if-eqz v4, :cond_12

    .line 564
    iget v0, v11, Lcom/perm/kate/PhotoPlace;->y:I

    move/from16 v23, v0

    sget v24, Lcom/perm/kate/AttachmentsHelper;->vert_margin:I

    add-int v23, v23, v24

    move/from16 v0, v23

    iput v0, v11, Lcom/perm/kate/PhotoPlace;->y:I

    .line 552
    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 568
    .end local v11    # "place":Lcom/perm/kate/PhotoPlace;
    :cond_13
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v23

    if-lez v23, :cond_14

    .line 569
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/perm/kate/PhotoPlace;

    move-object/from16 v0, v23

    iget v15, v0, Lcom/perm/kate/PhotoPlace;->y:I

    .line 570
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/perm/kate/PhotoPlace;

    move-object/from16 v0, v23

    iget v12, v0, Lcom/perm/kate/PhotoPlace;->height:I

    .line 513
    :cond_14
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 573
    .end local v2    # "available_width_without_margins":I
    .end local v5    # "j":I
    .end local v8    # "min_preview_height":I
    .end local v13    # "prev_width":I
    .end local v14    # "prev_x":I
    .end local v17    # "row":Lcom/perm/kate/PhotoRow;
    .end local v18    # "row_width":I
    .end local v20    # "scale":F
    :cond_15
    return-object v19

    .line 479
    :array_0
    .array-data 4
        0x140
        0xf0
    .end array-data

    .line 485
    :array_1
    .array-data 4
        0x82
        0x82
    .end array-data

    .line 487
    :array_2
    .array-data 4
        0x82
        0x64
    .end array-data
.end method

.method private cantExpand(Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Attachment;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    const/4 v2, 0x1

    .line 203
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v2

    .line 206
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Attachment;

    .line 208
    .local v0, "att":Lcom/perm/kate/api/Attachment;
    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    if-eqz v4, :cond_0

    .line 211
    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    iget-object v4, v4, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    iget-object v4, v4, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-lez v4, :cond_2

    goto :goto_0

    .line 214
    .end local v0    # "att":Lcom/perm/kate/api/Attachment;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 215
    :catch_0
    move-exception v1

    .line 217
    .local v1, "th":Ljava/lang/Throwable;
    goto :goto_0
.end method

.method private displayAudioPlayersStates()V
    .locals 7

    .prologue
    .line 1293
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v0}, Lcom/perm/kate/BaseActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1304
    :cond_0
    return-void

    .line 1296
    :cond_1
    const-wide/16 v2, 0x0

    .local v2, "current_audio":J
    const-wide/16 v4, 0x0

    .line 1297
    .local v4, "current_audio_owner":J
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v0, :cond_2

    .line 1298
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v2, v0, Lcom/perm/kate/api/Audio;->aid:J

    .line 1299
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v4, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    .line 1302
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->audioViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .local v1, "audio_view":Landroid/view/ViewGroup;
    move-object v0, p0

    .line 1303
    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/AttachmentsHelper;->displayAudioStatus(Landroid/view/ViewGroup;JJ)V

    goto :goto_0
.end method

.method private fetchMessageAttachments(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Attachment;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1332
    .local p1, "attachment_messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1333
    .local v4, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1334
    .local v2, "ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Attachment;

    .line 1335
    .local v0, "att":Lcom/perm/kate/api/Attachment;
    iget-wide v8, v0, Lcom/perm/kate/api/Attachment;->id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1336
    .end local v0    # "att":Lcom/perm/kate/api/Attachment;
    :cond_0
    sget-object v6, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v6, v2}, Lcom/perm/kate/db/DataHelper;->fetchAttachmentsBinaries(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    .line 1337
    .local v5, "messages_serialized":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 1338
    .local v1, "bytes":[B
    invoke-static {v1}, Lcom/perm/kate/ForwardedMessagesActivity;->deserialize([B)Lcom/perm/kate/api/Message;

    move-result-object v3

    .line 1339
    .local v3, "message":Lcom/perm/kate/api/Message;
    if-eqz v3, :cond_1

    .line 1341
    const/4 v7, 0x1

    iput-boolean v7, v3, Lcom/perm/kate/api/Message;->read_state:Z

    .line 1342
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1344
    .end local v1    # "bytes":[B
    .end local v3    # "message":Lcom/perm/kate/api/Message;
    :cond_2
    return-object v4
.end method

.method public static getImageViewSizeGift(IF)[I
    .locals 10
    .param p0, "available_width"    # I
    .param p1, "screen_density"    # F

    .prologue
    .line 675
    const/16 v1, 0x100

    .line 676
    .local v1, "width":I
    const/16 v0, 0x100

    .line 678
    .local v0, "height":I
    invoke-static {p1}, Lcom/perm/kate/AttachmentsHelper;->getMaxPhotoScale(F)F

    move-result v6

    float-to-double v2, v6

    .line 681
    .local v2, "max_scale":D
    int-to-double v6, p0

    int-to-double v8, v1

    div-double v4, v6, v8

    .line 684
    .local v4, "scale":D
    cmpl-double v6, v4, v2

    if-ltz v6, :cond_0

    .line 685
    move-wide v4, v2

    .line 687
    :cond_0
    int-to-double v6, v1

    mul-double/2addr v6, v4

    double-to-int v1, v6

    .line 688
    int-to-double v6, v0

    mul-double/2addr v6, v4

    double-to-int v0, v6

    .line 690
    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput v1, v6, v7

    const/4 v7, 0x1

    aput v0, v6, v7

    return-object v6
.end method

.method private static getMaxPhotoScale(F)F
    .locals 6
    .param p0, "screen_density"    # F

    .prologue
    .line 695
    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_0

    .line 696
    const v1, 0x3f933333    # 1.15f

    mul-float v0, p0, v1

    .line 703
    .local v0, "max_scale":F
    :goto_0
    return v0

    .line 697
    .end local v0    # "max_scale":F
    :cond_0
    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v1, p0, v1

    if-ltz v1, :cond_1

    .line 698
    const v0, 0x40133333    # 2.3f

    .restart local v0    # "max_scale":F
    goto :goto_0

    .line 699
    .end local v0    # "max_scale":F
    :cond_1
    float-to-double v2, p0

    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    cmpl-double v1, v2, v4

    if-ltz v1, :cond_2

    .line 700
    const/high16 v0, 0x3fc00000    # 1.5f

    .restart local v0    # "max_scale":F
    goto :goto_0

    .line 702
    .end local v0    # "max_scale":F
    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .restart local v0    # "max_scale":F
    goto :goto_0
.end method

.method static getPreviewSize(ZFII)[I
    .locals 4
    .param p0, "big_photos"    # Z
    .param p1, "ratio"    # F
    .param p2, "photo_width"    # I
    .param p3, "photo_height"    # I

    .prologue
    .line 653
    if-eqz p0, :cond_2

    sget v1, Lcom/perm/kate/AttachmentsHelper;->big_photo_width_px:I

    .line 654
    .local v1, "width":I
    :goto_0
    if-eqz p0, :cond_3

    sget v2, Lcom/perm/kate/AttachmentsHelper;->big_photo_width_px:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    :goto_1
    float-to-int v0, v2

    .line 656
    .local v0, "height":I
    if-le p3, p2, :cond_0

    .line 657
    if-eqz p0, :cond_4

    sget v0, Lcom/perm/kate/AttachmentsHelper;->big_photo_width_px:I

    .line 658
    :goto_2
    if-eqz p0, :cond_5

    sget v2, Lcom/perm/kate/AttachmentsHelper;->big_photo_width_px:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    :goto_3
    float-to-int v1, v2

    .line 662
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 663
    if-ge p2, v1, :cond_1

    if-ge p3, v0, :cond_1

    .line 665
    move v1, p2

    .line 666
    move v0, p3

    .line 670
    :cond_1
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    return-object v2

    .line 653
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_2
    sget v1, Lcom/perm/kate/AttachmentsHelper;->small_photo_width_px:I

    goto :goto_0

    .line 654
    .restart local v1    # "width":I
    :cond_3
    sget v2, Lcom/perm/kate/AttachmentsHelper;->small_photo_width_px:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    goto :goto_1

    .line 657
    .restart local v0    # "height":I
    :cond_4
    sget v0, Lcom/perm/kate/AttachmentsHelper;->small_photo_width_px:I

    goto :goto_2

    .line 658
    :cond_5
    sget v2, Lcom/perm/kate/AttachmentsHelper;->small_photo_width_px:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    goto :goto_3
.end method

.method private static getRatio(II)F
    .locals 3
    .param p0, "photo_width"    # I
    .param p1, "photo_height"    # I

    .prologue
    .line 646
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 647
    .local v0, "ratio":F
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 648
    int-to-float v1, p0

    int-to-float v2, p1

    div-float v0, v1, v2

    .line 649
    :cond_0
    return v0
.end method

.method public static getResIdForNoPhoto4()I
    .locals 3

    .prologue
    const v1, 0x7f020232

    const v0, 0x7f020231

    .line 1357
    sget v2, Lcom/perm/kate/BaseActivity;->Theme:I

    packed-switch v2, :pswitch_data_0

    .line 1379
    :pswitch_0
    const v0, 0x7f02022e

    :goto_0
    :pswitch_1
    return v0

    .line 1359
    :pswitch_2
    const v0, 0x7f020230

    goto :goto_0

    .line 1365
    :pswitch_3
    const v0, 0x7f020235

    goto :goto_0

    .line 1367
    :pswitch_4
    const v0, 0x7f020234

    goto :goto_0

    .line 1369
    :pswitch_5
    const v0, 0x7f020233

    goto :goto_0

    .line 1371
    :pswitch_6
    const v0, 0x7f02022f

    goto :goto_0

    :pswitch_7
    move v0, v1

    .line 1373
    goto :goto_0

    :pswitch_8
    move v0, v1

    .line 1375
    goto :goto_0

    .line 1377
    :pswitch_9
    const v0, 0x7f02024e

    goto :goto_0

    .line 1357
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00bf
        :pswitch_6
        :pswitch_2
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_8
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method private getVoicePlayer()Lcom/perm/kate/Player;
    .locals 2

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->voicePlayer:Lcom/perm/kate/Player;

    if-nez v0, :cond_0

    .line 1459
    new-instance v0, Lcom/perm/kate/Player;

    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-direct {v0, v1}, Lcom/perm/kate/Player;-><init>(Lcom/perm/kate/Player$PlayerCallback;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->voicePlayer:Lcom/perm/kate/Player;

    .line 1460
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->voicePlayer:Lcom/perm/kate/Player;

    return-object v0
.end method

.method private static isVertical(Lcom/perm/kate/api/Photo;)Z
    .locals 2
    .param p0, "photo"    # Lcom/perm/kate/api/Photo;

    .prologue
    .line 577
    iget v0, p0, Lcom/perm/kate/api/Photo;->height:I

    iget v1, p0, Lcom/perm/kate/api/Photo;->width:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static noteClick(Landroid/view/View;Landroid/app/Activity;)V
    .locals 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 896
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 897
    .local v1, "source":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 898
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 899
    .local v0, "ids":[Ljava/lang/String;
    array-length v2, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 900
    const/4 v2, 0x1

    aget-object v2, v0, v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v2, v3, p1}, Lcom/perm/kate/AttachmentsHelper;->ShowNoteActivity(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 902
    .end local v0    # "ids":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private pauseAudio()V
    .locals 3

    .prologue
    .line 1249
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const-class v2, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1250
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "pause"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1251
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1252
    const-string v1, "Kate.AttachmentsHelper"

    const-string v2, "pauseAudio"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    return-void
.end method

.method public static photoClick(Landroid/view/View;Landroid/app/Activity;)V
    .locals 12
    .param p0, "v"    # Landroid/view/View;
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 830
    const v1, 0x7f0e0218

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 833
    .local v11, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 834
    .local v6, "account_id":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 835
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Photo;

    iget-wide v2, v1, Lcom/perm/kate/api/Photo;->pid:J

    .line 836
    .local v2, "id":J
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 837
    .local v4, "owner_id":J
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->fetchPhoto(JJJ)Lcom/perm/kate/api/Photo;

    move-result-object v9

    .line 838
    .local v9, "photo":Lcom/perm/kate/api/Photo;
    if-eqz v9, :cond_0

    .line 839
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Photo;

    iget-object v1, v1, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    iput-object v1, v9, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    .line 840
    invoke-virtual {v11, v0, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 834
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 844
    .end local v2    # "id":J
    .end local v4    # "owner_id":J
    .end local v9    # "photo":Lcom/perm/kate/api/Photo;
    :cond_1
    const v1, 0x7f0e01a7

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 845
    .local v10, "photo_position":I
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 846
    .local v8, "intent":Landroid/content/Intent;
    const-class v1, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {v8, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 847
    const-string v1, "com.perm.kate.position"

    invoke-virtual {v8, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 848
    const-string v1, "com.perm.kate.photos"

    invoke-virtual {v8, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 849
    invoke-virtual {p1, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 850
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1101
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->removeCallback(Lcom/perm/kate/Player$PlayerCallback;)V

    .line 1102
    iput-object v1, p0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    .line 1103
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    invoke-virtual {v0}, Lcom/perm/kate/AudioClickHelper;->destroy()V

    .line 1104
    iput-object v1, p0, Lcom/perm/kate/AttachmentsHelper;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    .line 1108
    iput-object v1, p0, Lcom/perm/kate/AttachmentsHelper;->voicePlayer:Lcom/perm/kate/Player;

    .line 1109
    return-void
.end method

.method public displayAlbum(Landroid/widget/TextView;Lcom/perm/kate/api/Album;Landroid/app/Activity;)V
    .locals 3
    .param p1, "h"    # Landroid/widget/TextView;
    .param p2, "album"    # Lcom/perm/kate/api/Album;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0701d8

    invoke-virtual {p3, v2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 746
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper;->albumClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 747
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 748
    return-void
.end method

.method public displayAttachments(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 14
    .param p2, "tag"    # Lcom/perm/kate/NewsItemTag;
    .param p3, "h"    # Lcom/perm/kate/ViewHolder;
    .param p4, "post_id"    # Ljava/lang/String;
    .param p5, "owner_id"    # Ljava/lang/String;
    .param p7, "activity"    # Landroid/app/Activity;
    .param p8, "photo_container"    # Landroid/view/ViewGroup;
    .param p9, "links_container"    # Landroid/view/ViewGroup;
    .param p10, "audio_container"    # Landroid/view/ViewGroup;
    .param p11, "gift_container"    # Landroid/view/ViewGroup;
    .param p12, "message_container"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;",
            "Lcom/perm/kate/NewsItemTag;",
            "Lcom/perm/kate/ViewHolder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Attachment;",
            ">;",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "photos1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    .local p6, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v13}, Lcom/perm/kate/AttachmentsHelper;->displayAttachments(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/lang/Long;)V

    .line 83
    return-void
.end method

.method public displayAttachments(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/lang/Long;)V
    .locals 32
    .param p2, "tag"    # Lcom/perm/kate/NewsItemTag;
    .param p3, "h"    # Lcom/perm/kate/ViewHolder;
    .param p4, "post_id"    # Ljava/lang/String;
    .param p5, "owner_id"    # Ljava/lang/String;
    .param p7, "activity"    # Landroid/app/Activity;
    .param p8, "photo_container"    # Landroid/view/ViewGroup;
    .param p9, "links_container"    # Landroid/view/ViewGroup;
    .param p10, "audio_container"    # Landroid/view/ViewGroup;
    .param p11, "gift_container"    # Landroid/view/ViewGroup;
    .param p12, "message_container"    # Landroid/view/ViewGroup;
    .param p13, "wall_owner_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;",
            "Lcom/perm/kate/NewsItemTag;",
            "Lcom/perm/kate/ViewHolder;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Attachment;",
            ">;",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/ViewGroup;",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "photos1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    .local p6, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v8, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    if-eqz p1, :cond_0

    .line 90
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 91
    :cond_0
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v24, "graffities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Graffiti;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v27, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    new-instance v28, Ljava/util/ArrayList;

    invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V

    .line 94
    .local v28, "others":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v21, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v9, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Video;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 97
    .local v10, "doc_with_previews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Document;>;"
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v22, "gifts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Gift;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v30, "stickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Sticker;>;"
    if-eqz p6, :cond_a

    .line 100
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/perm/kate/api/Attachment;

    .line 101
    .local v18, "att":Lcom/perm/kate/api/Attachment;
    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v11, "photo"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v11, "posted_photo"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 102
    :cond_1
    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 103
    :cond_2
    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v11, "graffiti"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 104
    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/perm/kate/api/Attachment;->graffiti:Lcom/perm/kate/api/Graffiti;

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :cond_3
    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v11, "message"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 106
    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 107
    :cond_4
    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v11, "audio"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    if-eqz v7, :cond_5

    .line 108
    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 109
    :cond_5
    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v11, "video"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    if-eqz v7, :cond_6

    .line 110
    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 111
    :cond_6
    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v11, "doc"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-object v7, v7, Lcom/perm/kate/api/Document;->thumb:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 112
    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 113
    :cond_7
    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v11, "gift"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 114
    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/perm/kate/api/Attachment;->gift:Lcom/perm/kate/api/Gift;

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 115
    :cond_8
    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v11, "sticker"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 116
    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 118
    :cond_9
    move-object/from16 v0, v28

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 122
    .end local v18    # "att":Lcom/perm/kate/api/Attachment;
    :cond_a
    if-eqz p12, :cond_b

    .line 123
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Lcom/perm/kate/AttachmentsHelper;->cantExpand(Ljava/util/ArrayList;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 124
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    const/16 v6, 0x8

    move-object/from16 v0, p12

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_b
    :goto_1
    move-object/from16 v6, p0

    move-object/from16 v7, p8

    move-object/from16 v11, p7

    .line 133
    invoke-virtual/range {v6 .. v11}, Lcom/perm/kate/AttachmentsHelper;->displayPhotos(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/Activity;)V

    .line 134
    move-object/from16 v0, p0

    move-object/from16 v1, p10

    move-object/from16 v2, v21

    move-object/from16 v3, p7

    move-object/from16 v4, p13

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/AttachmentsHelper;->displayAudios(Landroid/view/ViewGroup;Ljava/util/ArrayList;Landroid/app/Activity;Ljava/lang/Long;)V

    .line 135
    move-object/from16 v0, p0

    move-object/from16 v1, p11

    move-object/from16 v2, v22

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/AttachmentsHelper;->displayGifts(Landroid/view/ViewGroup;Ljava/util/ArrayList;Landroid/app/Activity;)V

    .line 138
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_c

    .line 139
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, v30

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/AttachmentsHelper;->displayStickers(Landroid/view/ViewGroup;Ljava/util/ArrayList;Landroid/app/Activity;)V

    .line 141
    :cond_c
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_d

    .line 142
    const/4 v6, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/perm/kate/api/Graffiti;

    .line 143
    .local v23, "graffiti":Lcom/perm/kate/api/Graffiti;
    move-object/from16 v0, v23

    iget-object v14, v0, Lcom/perm/kate/api/Graffiti;->src:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v15, v0, Lcom/perm/kate/api/Graffiti;->src_big:Ljava/lang/String;

    move-object/from16 v11, p0

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v16, p4

    move-object/from16 v17, p5

    invoke-virtual/range {v11 .. v17}, Lcom/perm/kate/AttachmentsHelper;->displayGraffiti(Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    .end local v23    # "graffiti":Lcom/perm/kate/api/Graffiti;
    :cond_d
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual/range {p9 .. p9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    sub-int v26, v6, v7

    .line 149
    .local v26, "links_required":I
    const/16 v25, 0x0

    .local v25, "i":I
    :goto_2
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_f

    .line 150
    invoke-static/range {p7 .. p7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030098

    const/4 v11, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v6, v7, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v31

    .line 154
    .local v31, "v":Landroid/view/View;
    move-object/from16 v0, p9

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 149
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 127
    .end local v25    # "i":I
    .end local v26    # "links_required":I
    .end local v31    # "v":Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p12

    move-object/from16 v2, v27

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/AttachmentsHelper;->displayMessagesExpanded(Landroid/view/ViewGroup;Ljava/util/ArrayList;Landroid/app/Activity;)V

    .line 128
    const/4 v6, 0x0

    move-object/from16 v0, p12

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 156
    .restart local v25    # "i":I
    .restart local v26    # "links_required":I
    :cond_f
    const/16 v25, 0x0

    :goto_3
    invoke-virtual/range {p9 .. p9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    move/from16 v0, v25

    if-ge v0, v6, :cond_1b

    .line 157
    move-object/from16 v0, p9

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 158
    .local v12, "textView":Landroid/widget/TextView;
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v25

    if-ge v0, v6, :cond_1a

    .line 159
    const/4 v6, 0x0

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 160
    move-object/from16 v0, v28

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    .line 161
    .local v19, "att1":Ljava/lang/Object;
    move-object/from16 v0, v19

    instance-of v6, v0, Lcom/perm/kate/api/Attachment;

    if-eqz v6, :cond_18

    move-object/from16 v18, v19

    .line 162
    check-cast v18, Lcom/perm/kate/api/Attachment;

    .line 163
    .restart local v18    # "att":Lcom/perm/kate/api/Attachment;
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "link"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 164
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v6, v6, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v7, v7, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v12, v6, v7, v1}, Lcom/perm/kate/AttachmentsHelper;->displayLink(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 165
    :cond_10
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "note"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 166
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->note:Lcom/perm/kate/api/Note;

    iget-wide v6, v6, Lcom/perm/kate/api/Note;->nid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->note:Lcom/perm/kate/api/Note;

    iget-wide v6, v6, Lcom/perm/kate/api/Note;->owner_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->note:Lcom/perm/kate/api/Note;

    iget-object v15, v6, Lcom/perm/kate/api/Note;->title:Ljava/lang/String;

    move-object/from16 v11, p0

    move-object/from16 v16, p7

    invoke-virtual/range {v11 .. v16}, Lcom/perm/kate/AttachmentsHelper;->displayNote(Landroid/widget/TextView;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 167
    :cond_11
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "poll"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 168
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v12, v6, v1}, Lcom/perm/kate/AttachmentsHelper;->displayPollAttachment(Landroid/widget/TextView;Lcom/perm/kate/api/VkPoll;Landroid/app/Activity;)V

    .line 169
    :cond_12
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "geo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 170
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v12, v6, v1}, Lcom/perm/kate/AttachmentsHelper;->displayGeo(Landroid/widget/TextView;Lcom/perm/kate/api/Geo;Landroid/app/Activity;)V

    .line 171
    :cond_13
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "doc"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 172
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v12, v6, v1}, Lcom/perm/kate/AttachmentsHelper;->displayDocument(Landroid/widget/TextView;Lcom/perm/kate/api/Document;Landroid/app/Activity;)V

    .line 173
    :cond_14
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "wall"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 174
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p7

    invoke-virtual {v0, v12, v1, v2}, Lcom/perm/kate/AttachmentsHelper;->displayWallMessage(Landroid/widget/TextView;Lcom/perm/kate/api/Attachment;Landroid/app/Activity;)V

    .line 175
    :cond_15
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "page"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 176
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->page:Lcom/perm/kate/api/Page;

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v12, v6, v1}, Lcom/perm/kate/AttachmentsHelper;->displayPage(Landroid/widget/TextView;Lcom/perm/kate/api/Page;Landroid/app/Activity;)V

    .line 177
    :cond_16
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "album"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 178
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->album:Lcom/perm/kate/api/Album;

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v12, v6, v1}, Lcom/perm/kate/AttachmentsHelper;->displayAlbum(Landroid/widget/TextView;Lcom/perm/kate/api/Album;Landroid/app/Activity;)V

    .line 179
    :cond_17
    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "wall_reply"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 180
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p7

    invoke-virtual {v0, v12, v1, v2}, Lcom/perm/kate/AttachmentsHelper;->displayWallComment(Landroid/widget/TextView;Lcom/perm/kate/api/Attachment;Landroid/app/Activity;)V

    .line 182
    .end local v18    # "att":Lcom/perm/kate/api/Attachment;
    :cond_18
    move-object/from16 v0, v19

    instance-of v6, v0, Ljava/util/ArrayList;

    if-eqz v6, :cond_19

    move-object/from16 v20, v19

    .line 184
    check-cast v20, Ljava/util/ArrayList;

    .line 185
    .local v20, "attachment_messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p7

    invoke-virtual {v0, v12, v1, v2}, Lcom/perm/kate/AttachmentsHelper;->displayForwardMessages(Landroid/widget/TextView;Ljava/util/ArrayList;Landroid/app/Activity;)V

    .line 156
    .end local v19    # "att1":Ljava/lang/Object;
    .end local v20    # "attachment_messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    :cond_19
    :goto_4
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_3

    .line 189
    :cond_1a
    const/16 v6, 0x8

    invoke-virtual {v12, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 193
    .end local v12    # "textView":Landroid/widget/TextView;
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/perm/kate/AttachmentsHelper;->linkMargins:Z

    if-nez v6, :cond_1c

    .line 194
    invoke-virtual/range {p9 .. p9}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v29

    check-cast v29, Landroid/widget/LinearLayout$LayoutParams;

    .line 195
    .local v29, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v6, v7, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 196
    invoke-virtual/range {p9 .. p9}, Landroid/view/ViewGroup;->requestLayout()V

    .line 198
    .end local v29    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1c
    return-void
.end method

.method displayAudioStatus(Landroid/view/ViewGroup;JJ)V
    .locals 10
    .param p1, "audio_view"    # Landroid/view/ViewGroup;
    .param p2, "current_audio"    # J
    .param p4, "current_audio_owner"    # J

    .prologue
    const/4 v8, 0x3

    .line 1307
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    .line 1308
    .local v0, "audio":Lcom/perm/kate/api/Audio;
    if-nez v0, :cond_0

    .line 1329
    :goto_0
    return-void

    .line 1310
    :cond_0
    const v6, 0x7f0e008e

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 1311
    .local v1, "image":Landroid/widget/ImageView;
    const-wide/16 v2, 0x0

    .local v2, "current_voice":J
    const-wide/16 v4, 0x0

    .line 1312
    .local v4, "current_voice_owner":J
    iget-object v6, p0, Lcom/perm/kate/AttachmentsHelper;->voice:Lcom/perm/kate/api/Audio;

    if-eqz v6, :cond_1

    .line 1313
    iget-object v6, p0, Lcom/perm/kate/AttachmentsHelper;->voice:Lcom/perm/kate/api/Audio;

    iget-wide v2, v6, Lcom/perm/kate/api/Audio;->aid:J

    .line 1314
    iget-object v6, p0, Lcom/perm/kate/AttachmentsHelper;->voice:Lcom/perm/kate/api/Audio;

    iget-wide v4, v6, Lcom/perm/kate/api/Audio;->owner_id:J

    .line 1316
    :cond_1
    iget-wide v6, v0, Lcom/perm/kate/api/Audio;->aid:J

    cmp-long v6, v6, p2

    if-nez v6, :cond_2

    iget-wide v6, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    cmp-long v6, v6, p4

    if-nez v6, :cond_2

    sget-object v6, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v6, :cond_2

    sget-object v6, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v6, v6, Lcom/perm/kate/Player;->state:I

    if-eqz v6, :cond_3

    sget-object v6, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v6, v6, Lcom/perm/kate/Player;->state:I

    if-eq v6, v8, :cond_3

    :cond_2
    iget-wide v6, v0, Lcom/perm/kate/api/Audio;->aid:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_4

    iget-wide v6, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    cmp-long v6, v6, v4

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/perm/kate/AttachmentsHelper;->voicePlayer:Lcom/perm/kate/Player;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/perm/kate/AttachmentsHelper;->voicePlayer:Lcom/perm/kate/Player;

    iget v6, v6, Lcom/perm/kate/Player;->state:I

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/perm/kate/AttachmentsHelper;->voicePlayer:Lcom/perm/kate/Player;

    iget v6, v6, Lcom/perm/kate/Player;->state:I

    if-ne v6, v8, :cond_4

    .line 1323
    :cond_3
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/perm/kate/AudioListAdapter;->getAudioIconByTheme(Z)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1324
    iget-object v6, p0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const v7, 0x7f070358

    invoke-virtual {v6, v7}, Lcom/perm/kate/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1326
    :cond_4
    const/4 v6, 0x1

    invoke-static {v6}, Lcom/perm/kate/AudioListAdapter;->getAudioIconByTheme(Z)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1327
    iget-object v6, p0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const v7, 0x7f07037e

    invoke-virtual {v6, v7}, Lcom/perm/kate/BaseActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public displayAudios(Landroid/view/ViewGroup;Ljava/util/ArrayList;Landroid/app/Activity;Ljava/lang/Long;)V
    .locals 24
    .param p1, "audio_container"    # Landroid/view/ViewGroup;
    .param p3, "activity"    # Landroid/app/Activity;
    .param p4, "wall_owner_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;",
            "Landroid/app/Activity;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1113
    .local p2, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v19

    sub-int v12, v4, v19

    .line 1114
    .local v12, "audios_required":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v12, :cond_0

    .line 1115
    invoke-static/range {p3 .. p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v19, 0x7f03002d

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 1116
    .local v18, "v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/perm/kate/AttachmentsHelper;->audioViews:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v4, v18

    check-cast v4, Landroid/view/ViewGroup;

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1117
    new-instance v16, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/16 v19, -0x2

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-direct {v0, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1118
    .local v16, "params":Landroid/widget/LinearLayout$LayoutParams;
    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    invoke-static/range {v20 .. v21}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v15

    .line 1119
    .local v15, "margin":I
    move-object/from16 v0, v16

    invoke-virtual {v0, v15, v15, v15, v15}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1120
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1114
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1124
    .end local v15    # "margin":I
    .end local v16    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v18    # "v":Landroid/view/View;
    :cond_0
    const-wide/16 v6, 0x0

    .line 1125
    .local v6, "current_audio":J
    const-wide/16 v8, 0x0

    .line 1126
    .local v8, "current_audio_owner":J
    sget-object v4, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v4, :cond_1

    .line 1127
    sget-object v4, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v6, v4, Lcom/perm/kate/api/Audio;->aid:J

    .line 1128
    sget-object v4, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v8, v4, Lcom/perm/kate/api/Audio;->owner_id:J

    .line 1132
    :cond_1
    const/4 v13, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v13, v4, :cond_6

    .line 1133
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 1134
    .local v5, "audioView":Landroid/view/ViewGroup;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_5

    .line 1135
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/perm/kate/api/Audio;

    .line 1136
    .local v11, "audio":Lcom/perm/kate/api/Audio;
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1137
    invoke-virtual {v5, v11}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1142
    iget-wide v0, v11, Lcom/perm/kate/api/Audio;->aid:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v4, v20, v22

    if-lez v4, :cond_3

    .line 1143
    new-instance v4, Lcom/perm/kate/AttachmentsHelper$AudioClickListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lcom/perm/kate/AttachmentsHelper$AudioClickListener;-><init>(Lcom/perm/kate/AttachmentsHelper;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1146
    :goto_2
    iget-wide v0, v11, Lcom/perm/kate/api/Audio;->aid:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v4, v20, v22

    if-gez v4, :cond_2

    .line 1147
    const v4, 0x7f0703a4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    .line 1148
    const v4, 0x7f0703a4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v11, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    .line 1150
    :cond_2
    const v4, 0x7f0e008f

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1151
    .local v10, "artistTextView":Landroid/widget/TextView;
    iget-object v4, v11, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1152
    const v4, 0x7f0e004b

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 1153
    .local v17, "titleTextView":Landroid/widget/TextView;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v11, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v19, " ("

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v0, v11, Lcom/perm/kate/api/Audio;->duration:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Lcom/perm/kate/Helper;->getDurationTextBySeconds(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v19, ")"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1154
    const v4, 0x7f0e008e

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    .line 1155
    .local v14, "image":Landroid/widget/ImageView;
    iget-wide v0, v11, Lcom/perm/kate/api/Audio;->aid:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v4, v20, v22

    if-lez v4, :cond_4

    .line 1156
    new-instance v4, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v4, v0, v1, v11, v2}, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;-><init>(Lcom/perm/kate/AttachmentsHelper;Ljava/util/ArrayList;Lcom/perm/kate/api/Audio;Ljava/lang/Long;)V

    invoke-virtual {v14, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    move-object/from16 v4, p0

    .line 1160
    invoke-virtual/range {v4 .. v9}, Lcom/perm/kate/AttachmentsHelper;->displayAudioStatus(Landroid/view/ViewGroup;JJ)V

    .line 1132
    .end local v10    # "artistTextView":Landroid/widget/TextView;
    .end local v11    # "audio":Lcom/perm/kate/api/Audio;
    .end local v14    # "image":Landroid/widget/ImageView;
    .end local v17    # "titleTextView":Landroid/widget/TextView;
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 1145
    .restart local v11    # "audio":Lcom/perm/kate/api/Audio;
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 1159
    .restart local v10    # "artistTextView":Landroid/widget/TextView;
    .restart local v14    # "image":Landroid/widget/ImageView;
    .restart local v17    # "titleTextView":Landroid/widget/TextView;
    :cond_4
    new-instance v4, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v11}, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;-><init>(Lcom/perm/kate/AttachmentsHelper;Lcom/perm/kate/api/Audio;)V

    invoke-virtual {v14, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 1163
    .end local v10    # "artistTextView":Landroid/widget/TextView;
    .end local v11    # "audio":Lcom/perm/kate/api/Audio;
    .end local v14    # "image":Landroid/widget/ImageView;
    .end local v17    # "titleTextView":Landroid/widget/TextView;
    :cond_5
    const/16 v4, 0x8

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1164
    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto :goto_4

    .line 1167
    .end local v5    # "audioView":Landroid/view/ViewGroup;
    :cond_6
    return-void
.end method

.method public displayDocument(Landroid/widget/TextView;Lcom/perm/kate/api/Document;Landroid/app/Activity;)V
    .locals 4
    .param p1, "h"    # Landroid/widget/TextView;
    .param p2, "document"    # Lcom/perm/kate/api/Document;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 759
    iget-wide v2, p2, Lcom/perm/kate/api/Document;->size:J

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDocumentDisplaySize(J)Ljava/lang/String;

    move-result-object v0

    .line 760
    .local v0, "size":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f07008f

    invoke-virtual {p3, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 761
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 763
    iget-object v2, p0, Lcom/perm/kate/AttachmentsHelper;->documentClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 764
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 765
    return-void
.end method

.method public displayForwardMessages(Landroid/widget/TextView;Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 2
    .param p1, "h"    # Landroid/widget/TextView;
    .param p3, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Attachment;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 804
    .local p2, "attachment_messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    const v1, 0x7f0700ad

    invoke-virtual {p3, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 805
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 807
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper;->forwardedMessageClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 808
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 809
    return-void
.end method

.method public displayGeo(Landroid/widget/TextView;Lcom/perm/kate/api/Geo;Landroid/app/Activity;)V
    .locals 2
    .param p1, "h"    # Landroid/widget/TextView;
    .param p2, "geo"    # Lcom/perm/kate/api/Geo;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 751
    const v1, 0x7f07037c

    invoke-virtual {p3, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 754
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper;->geoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 756
    return-void
.end method

.method public displayGifts(Landroid/view/ViewGroup;Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 18
    .param p1, "photo_container"    # Landroid/view/ViewGroup;
    .param p3, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Gift;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 583
    .local p2, "gifts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Gift;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int v13, v2, v3

    .line 584
    .local v13, "images_required":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v13, :cond_0

    .line 585
    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 586
    .local v4, "imageView":Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 587
    const-string v2, "\u041f\u043e\u0434\u0430\u0440\u043e\u043a"

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 588
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v15, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 589
    .local v15, "params":Landroid/widget/LinearLayout$LayoutParams;
    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v14

    .line 590
    .local v14, "margin":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v15, v2, v14, v3, v14}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 591
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 594
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v14    # "margin":I
    .end local v15    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/perm/kate/AttachmentsHelper;->available_width:I

    invoke-static {}, Lcom/perm/kate/Helper;->getScale()F

    move-result v3

    invoke-static {v2, v3}, Lcom/perm/kate/AttachmentsHelper;->getImageViewSizeGift(IF)[I

    move-result-object v17

    .line 597
    .local v17, "size":[I
    const/4 v12, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v12, v2, :cond_2

    .line 598
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 599
    .restart local v4    # "imageView":Landroid/widget/ImageView;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v12, v2, :cond_1

    .line 600
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/perm/kate/api/Gift;

    .line 602
    .local v16, "ph":Lcom/perm/kate/api/Gift;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 603
    .restart local v15    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v2, 0x0

    aget v2, v17, v2

    iput v2, v15, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 604
    const/4 v2, 0x1

    aget v2, v17, v2

    iput v2, v15, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 605
    invoke-virtual {v4}, Landroid/widget/ImageView;->requestLayout()V

    .line 607
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/perm/kate/AttachmentsHelper;->giftClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 609
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 610
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v8

    .line 612
    .local v8, "stub":I
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/perm/kate/api/Gift;->thumb_256:Ljava/lang/String;

    const/4 v5, 0x1

    const/4 v6, 0x0

    aget v6, v17, v6

    const/4 v7, 0x1

    aget v7, v17, v7

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZZ)V

    .line 597
    .end local v8    # "stub":I
    .end local v15    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v16    # "ph":Lcom/perm/kate/api/Gift;
    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 616
    :cond_1
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 617
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 620
    .end local v4    # "imageView":Landroid/widget/ImageView;
    :cond_2
    return-void
.end method

.method public displayGraffiti(Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "tag"    # Lcom/perm/kate/NewsItemTag;
    .param p2, "h"    # Lcom/perm/kate/ViewHolder;
    .param p3, "graffiti_src"    # Ljava/lang/String;
    .param p4, "graffiti_src_big"    # Ljava/lang/String;
    .param p5, "post_id"    # Ljava/lang/String;
    .param p6, "owner_id"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 708
    iget-object v0, p2, Lcom/perm/kate/ViewHolder;->img_photos_news_graffiti:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 709
    const/4 v0, 0x4

    new-array v7, v0, [Ljava/lang/String;

    .line 710
    .local v7, "graffiti_tags":[Ljava/lang/String;
    aput-object p5, v7, v6

    .line 711
    aput-object p6, v7, v3

    .line 712
    const/4 v0, 0x2

    aput-object p4, v7, v0

    .line 713
    const/4 v0, 0x3

    const-string v1, "is_graffiti"

    aput-object v1, v7, v0

    .line 714
    iput-boolean v3, p1, Lcom/perm/kate/NewsItemTag;->is_graffiti:Z

    .line 715
    iget-object v0, p2, Lcom/perm/kate/ViewHolder;->img_photos_news_graffiti:Landroid/widget/ImageView;

    const v1, 0x7f070103

    invoke-virtual {v0, v1, v7}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 716
    iget-object v0, p2, Lcom/perm/kate/ViewHolder;->img_photos_news_graffiti:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper;->attached_photo_ClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 717
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    iget-object v2, p2, Lcom/perm/kate/ViewHolder;->img_photos_news_graffiti:Landroid/widget/ImageView;

    const/16 v4, 0xb4

    const v5, 0x7f020143

    move-object v1, p3

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 719
    return-void
.end method

.method public displayLink(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3
    .param p1, "h"    # Landroid/widget/TextView;
    .param p2, "attached_link_url"    # Ljava/lang/String;
    .param p3, "attached_link_title"    # Ljava/lang/String;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 722
    const v1, 0x7f0702bb

    invoke-virtual {p4, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 723
    .local v0, "text":Ljava/lang/String;
    if-eqz p3, :cond_0

    const-string v1, ""

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 724
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 727
    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 729
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper;->linkClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 730
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 731
    return-void

    .line 726
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public displayMessagesExpanded(Landroid/view/ViewGroup;Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 34
    .param p1, "message_container"    # Landroid/view/ViewGroup;
    .param p3, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Attachment;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1389
    .local p2, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v22

    .line 1391
    .local v22, "t1":J
    invoke-virtual/range {p1 .. p2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/AttachmentsHelper;->forwardedMessageClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1395
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    sub-int v18, v4, v7

    .line 1396
    .local v18, "messages_required":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move/from16 v0, v18

    if-ge v13, v0, :cond_0

    .line 1397
    invoke-static/range {p3 .. p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f0300a8

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v7, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v30

    .line 1399
    .local v30, "v":Landroid/view/View;
    new-instance v20, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v7, -0x2

    move-object/from16 v0, v20

    invoke-direct {v0, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1400
    .local v20, "params":Landroid/widget/LinearLayout$LayoutParams;
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    invoke-static {v8, v9}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v15

    .line 1401
    .local v15, "margin":I
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15, v4, v15, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1402
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1396
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 1406
    .end local v15    # "margin":I
    .end local v20    # "params":Landroid/widget/LinearLayout$LayoutParams;
    .end local v30    # "v":Landroid/view/View;
    :cond_0
    const/4 v13, 0x0

    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v13, v4, :cond_6

    .line 1407
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    .line 1408
    .local v17, "messageView":Landroid/view/ViewGroup;
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v13, v4, :cond_5

    .line 1409
    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/Attachment;

    iget-object v0, v4, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    move-object/from16 v16, v0

    .line 1410
    .local v16, "message":Lcom/perm/kate/api/Message;
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1413
    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcom/perm/kate/api/Message;->is_out:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v4}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v28

    .line 1414
    .local v28, "user_id":J
    :goto_2
    const/16 v19, 0x0

    .local v19, "name":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1415
    .local v5, "photo":Ljava/lang/String;
    const v4, 0x7f0e022f

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 1416
    .local v6, "imageView":Landroid/widget/ImageView;
    invoke-static/range {v28 .. v29}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1417
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/AttachmentsHelper;->userCache:Lcom/perm/utils/UserCache;

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v27

    .line 1418
    .local v27, "user":Lcom/perm/kate/api/User;
    if-eqz v27, :cond_1

    .line 1419
    move-object/from16 v0, v27

    iget-object v5, v0, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 1420
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    iget-object v7, v0, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    iget-object v7, v0, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1430
    .end local v27    # "user":Lcom/perm/kate/api/User;
    :cond_1
    :goto_3
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    const/4 v7, 0x1

    const/16 v8, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v9

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 1431
    move-object/from16 v0, v16

    iget-wide v8, v0, Lcom/perm/kate/api/Message;->date:J

    move-object/from16 v0, p3

    invoke-static {v0, v8, v9}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 1432
    .local v11, "ago_text":Ljava/lang/String;
    const v4, 0x7f0e0230

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/TextView;

    .line 1433
    .local v26, "timeTextView":Landroid/widget/TextView;
    move-object v14, v11

    .line 1434
    .local v14, "line":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1435
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 1436
    :cond_2
    move-object/from16 v0, v26

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1438
    const v4, 0x7f0e0080

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1439
    .local v21, "textTextView":Landroid/widget/TextView;
    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    move-object/from16 v0, v16

    iget-object v7, v0, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1406
    .end local v5    # "photo":Ljava/lang/String;
    .end local v6    # "imageView":Landroid/widget/ImageView;
    .end local v11    # "ago_text":Ljava/lang/String;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "message":Lcom/perm/kate/api/Message;
    .end local v19    # "name":Ljava/lang/String;
    .end local v21    # "textTextView":Landroid/widget/TextView;
    .end local v26    # "timeTextView":Landroid/widget/TextView;
    .end local v28    # "user_id":J
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 1413
    .restart local v16    # "message":Lcom/perm/kate/api/Message;
    :cond_3
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/perm/kate/api/Message;->uid:J

    move-wide/from16 v28, v0

    goto/16 :goto_2

    .line 1423
    .restart local v5    # "photo":Ljava/lang/String;
    .restart local v6    # "imageView":Landroid/widget/ImageView;
    .restart local v19    # "name":Ljava/lang/String;
    .restart local v28    # "user_id":J
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/AttachmentsHelper;->groupCache:Lcom/perm/utils/GroupCache;

    move-wide/from16 v0, v28

    invoke-virtual {v4, v0, v1}, Lcom/perm/utils/GroupCache;->get(J)Lcom/perm/kate/api/Group;

    move-result-object v12

    .line 1424
    .local v12, "group":Lcom/perm/kate/api/Group;
    if-eqz v12, :cond_1

    .line 1425
    iget-object v5, v12, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    .line 1426
    iget-object v0, v12, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    goto/16 :goto_3

    .line 1442
    .end local v5    # "photo":Ljava/lang/String;
    .end local v6    # "imageView":Landroid/widget/ImageView;
    .end local v12    # "group":Lcom/perm/kate/api/Group;
    .end local v16    # "message":Lcom/perm/kate/api/Message;
    .end local v19    # "name":Ljava/lang/String;
    .end local v28    # "user_id":J
    :cond_5
    const/16 v4, 0x8

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    .line 1445
    .end local v17    # "messageView":Landroid/view/ViewGroup;
    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v24

    .line 1446
    .local v24, "t2":J
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 1447
    const-string v4, "Kate.AttachmentsHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "displayMessagesExpanded="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v8, v24, v22

    const-wide/32 v32, 0xf4240

    div-long v8, v8, v32

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    :cond_7
    return-void
.end method

.method public displayNote(Landroid/widget/TextView;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2
    .param p1, "h"    # Landroid/widget/TextView;
    .param p2, "attached_note_id"    # Ljava/lang/Long;
    .param p3, "owner_id"    # Ljava/lang/String;
    .param p4, "attached_note_title"    # Ljava/lang/String;
    .param p5, "activity"    # Landroid/app/Activity;

    .prologue
    .line 812
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f07031f

    invoke-virtual {p5, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 815
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->notesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 816
    return-void
.end method

.method public displayPage(Landroid/widget/TextView;Lcom/perm/kate/api/Page;Landroid/app/Activity;)V
    .locals 6
    .param p1, "h"    # Landroid/widget/TextView;
    .param p2, "page"    # Lcom/perm/kate/api/Page;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 734
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f070352

    invoke-virtual {p3, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/perm/kate/api/Page;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 735
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 736
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "page-"

    invoke-static {v3}, Lcom/perm/kate/KApplication;->instanceLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p2, Lcom/perm/kate/api/Page;->group_id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p2, Lcom/perm/kate/api/Page;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 737
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 738
    iget-object v2, p0, Lcom/perm/kate/AttachmentsHelper;->linkClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 739
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 740
    return-void
.end method

.method public displayPhotos(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 40
    .param p1, "photo_container"    # Landroid/view/ViewGroup;
    .param p5, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Video;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Document;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 230
    .local p2, "photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    .local p3, "videos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Video;>;"
    .local p4, "docs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Document;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gtz v4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 237
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_2

    .line 238
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    iget-object v4, v4, Lcom/perm/kate/ImageLoader;->photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/perm/kate/ImageLoader$PhotosQueue;->Clean(Landroid/view/View;)V

    .line 237
    add-int/lit8 v22, v22, 0x1

    goto :goto_1

    .line 230
    .end local v22    # "i":I
    :cond_1
    const/16 v4, 0x8

    goto :goto_0

    .line 241
    .restart local v22    # "i":I
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 243
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v23, "mosaic":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/PhotoPlace;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/perm/kate/api/Photo;

    .line 245
    .local v27, "photo":Lcom/perm/kate/api/Photo;
    new-instance v7, Lcom/perm/kate/PhotoPlace;

    move-object/from16 v0, v27

    invoke-direct {v7, v0}, Lcom/perm/kate/PhotoPlace;-><init>(Lcom/perm/kate/api/Photo;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 246
    .end local v27    # "photo":Lcom/perm/kate/api/Photo;
    :cond_3
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/perm/kate/api/Video;

    .line 247
    .local v35, "video":Lcom/perm/kate/api/Video;
    new-instance v7, Lcom/perm/kate/PhotoPlace;

    move-object/from16 v0, v35

    invoke-direct {v7, v0}, Lcom/perm/kate/PhotoPlace;-><init>(Lcom/perm/kate/api/Video;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 248
    .end local v35    # "video":Lcom/perm/kate/api/Video;
    :cond_4
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/perm/kate/api/Document;

    .line 249
    .local v21, "doc":Lcom/perm/kate/api/Document;
    new-instance v7, Lcom/perm/kate/PhotoPlace;

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Lcom/perm/kate/PhotoPlace;-><init>(Lcom/perm/kate/api/Document;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 251
    .end local v21    # "doc":Lcom/perm/kate/api/Document;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/perm/kate/AttachmentsHelper;->big_photos:Z

    move-object/from16 v0, p0

    iget v7, v0, Lcom/perm/kate/AttachmentsHelper;->available_width:I

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/perm/kate/AttachmentsHelper;->mosaic_enabled:Z

    invoke-static {}, Lcom/perm/kate/Helper;->getScale()F

    move-result v9

    move-object/from16 v0, v23

    invoke-static {v0, v4, v7, v8, v9}, Lcom/perm/kate/AttachmentsHelper;->calculateMosaic(Ljava/util/ArrayList;ZIZF)Ljava/util/ArrayList;

    move-result-object v31

    .line 254
    .local v31, "rows":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/PhotoRow;>;"
    const/16 v22, 0x0

    .line 255
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v38

    :cond_6
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/perm/kate/PhotoRow;

    .line 256
    .local v30, "row":Lcom/perm/kate/PhotoRow;
    move-object/from16 v0, v30

    iget-object v4, v0, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v39

    :cond_7
    :goto_5
    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v39 .. v39}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/perm/kate/PhotoPlace;

    .line 257
    .local v28, "place":Lcom/perm/kate/PhotoPlace;
    move-object/from16 v0, v28

    iget v4, v0, Lcom/perm/kate/PhotoPlace;->type:I

    if-nez v4, :cond_8

    .line 258
    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p5

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 263
    .local v6, "imageView":Landroid/widget/ImageView;
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 264
    sget-object v4, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v7, 0x7f07020b

    invoke-virtual {v4, v7}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 265
    new-instance v24, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v4, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v7, v8, v9}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 270
    .local v24, "params":Landroid/widget/AbsoluteLayout$LayoutParams;
    move-object/from16 v0, v28

    iget v4, v0, Lcom/perm/kate/PhotoPlace;->width:I

    move-object/from16 v0, v24

    iput v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 271
    move-object/from16 v0, v28

    iget v4, v0, Lcom/perm/kate/PhotoPlace;->height:I

    move-object/from16 v0, v24

    iput v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 272
    move-object/from16 v0, v28

    iget v4, v0, Lcom/perm/kate/PhotoPlace;->x:I

    move-object/from16 v0, v24

    iput v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 273
    move-object/from16 v0, v28

    iget v4, v0, Lcom/perm/kate/PhotoPlace;->y:I

    move-object/from16 v0, v24

    iput v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 274
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 277
    const v4, 0x7f0e01a7

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v4, v7}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 278
    const v4, 0x7f0e0218

    move-object/from16 v0, p2

    invoke-virtual {v6, v4, v0}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 279
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/AttachmentsHelper;->photoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/perm/kate/AttachmentsHelper;->big_photos:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/perm/kate/PhotoPlace;->photo:Lcom/perm/kate/api/Photo;

    iget-object v5, v4, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    .line 281
    .local v5, "src":Ljava/lang/String;
    :goto_6
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v10

    .line 282
    .local v10, "stub":I
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v4

    const/4 v7, 0x1

    move-object/from16 v0, v28

    iget v8, v0, Lcom/perm/kate/PhotoPlace;->width:I

    move-object/from16 v0, v28

    iget v9, v0, Lcom/perm/kate/PhotoPlace;->height:I

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v4 .. v13}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZZ)V

    .line 285
    add-int/lit8 v22, v22, 0x1

    .line 287
    .end local v5    # "src":Ljava/lang/String;
    .end local v6    # "imageView":Landroid/widget/ImageView;
    .end local v10    # "stub":I
    .end local v24    # "params":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_8
    move-object/from16 v0, v28

    iget v4, v0, Lcom/perm/kate/PhotoPlace;->type:I

    const/4 v7, 0x1

    if-ne v4, v7, :cond_9

    .line 288
    invoke-static/range {p5 .. p5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f030119

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v7, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v36

    .line 289
    .local v36, "videoView":Landroid/view/View;
    new-instance v24, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v4, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v7, v8, v9}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 292
    .restart local v24    # "params":Landroid/widget/AbsoluteLayout$LayoutParams;
    move-object/from16 v0, v28

    iget v4, v0, Lcom/perm/kate/PhotoPlace;->width:I

    move-object/from16 v0, v24

    iput v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 293
    move-object/from16 v0, v28

    iget v4, v0, Lcom/perm/kate/PhotoPlace;->height:I

    move-object/from16 v0, v24

    iput v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 294
    move-object/from16 v0, v28

    iget v4, v0, Lcom/perm/kate/PhotoPlace;->x:I

    move-object/from16 v0, v24

    iput v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 295
    move-object/from16 v0, v28

    iget v4, v0, Lcom/perm/kate/PhotoPlace;->y:I

    move-object/from16 v0, v24

    iput v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 296
    move-object/from16 v0, p1

    move-object/from16 v1, v36

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/perm/kate/PhotoPlace;->video:Lcom/perm/kate/api/Video;

    move-object/from16 v35, v0

    .line 300
    .restart local v35    # "video":Lcom/perm/kate/api/Video;
    const v4, 0x7f0e0127

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 301
    .restart local v6    # "imageView":Landroid/widget/ImageView;
    const v4, 0x7f0e004b

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 303
    .local v34, "textView2":Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/FrameLayout$LayoutParams;

    .line 304
    .local v25, "params1":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, v28

    iget v4, v0, Lcom/perm/kate/PhotoPlace;->width:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 305
    move-object/from16 v0, v28

    iget v4, v0, Lcom/perm/kate/PhotoPlace;->height:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 306
    invoke-virtual {v6}, Landroid/widget/ImageView;->requestLayout()V

    .line 307
    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/widget/FrameLayout$LayoutParams;

    .line 308
    .local v26, "params2":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, v28

    iget v4, v0, Lcom/perm/kate/PhotoPlace;->width:I

    move-object/from16 v0, v26

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 310
    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->requestLayout()V

    .line 312
    move-object/from16 v0, v35

    iget-wide v8, v0, Lcom/perm/kate/api/Video;->duration:J

    invoke-static {v8, v9}, Lcom/perm/kate/Helper;->getDurationTextBySeconds(J)Ljava/lang/String;

    move-result-object v32

    .line 313
    .local v32, "text":Ljava/lang/String;
    const v4, 0x7f0e02a5

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 314
    .local v33, "textView":Landroid/widget/TextView;
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    move-object/from16 v0, v35

    iget-object v4, v0, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 319
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v11

    move-object/from16 v0, v35

    iget-object v12, v0, Lcom/perm/kate/api/Video;->image_big:Ljava/lang/String;

    const/4 v14, 0x1

    move-object/from16 v0, v28

    iget v15, v0, Lcom/perm/kate/PhotoPlace;->width:I

    move-object/from16 v0, v28

    iget v0, v0, Lcom/perm/kate/PhotoPlace;->height:I

    move/from16 v16, v0

    const v17, 0x7f02023d

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v6

    invoke-virtual/range {v11 .. v20}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZZ)V

    .line 322
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/AttachmentsHelper;->videoClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 325
    const v4, 0x7f0e01ce

    move-object/from16 v0, v35

    iget-wide v8, v0, Lcom/perm/kate/api/Video;->vid:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 326
    const v4, 0x7f0e0067

    move-object/from16 v0, v35

    iget-wide v8, v0, Lcom/perm/kate/api/Video;->owner_id:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 327
    const v4, 0x7f0e01a7

    move-object/from16 v0, v35

    iget-object v7, v0, Lcom/perm/kate/api/Video;->access_key:Ljava/lang/String;

    move-object/from16 v0, v36

    invoke-virtual {v0, v4, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 329
    const v4, 0x7f0e035b

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    .line 330
    .local v29, "playButton":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/AttachmentsHelper;->videoPlayClick:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 333
    .end local v6    # "imageView":Landroid/widget/ImageView;
    .end local v24    # "params":Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v25    # "params1":Landroid/widget/FrameLayout$LayoutParams;
    .end local v26    # "params2":Landroid/widget/FrameLayout$LayoutParams;
    .end local v29    # "playButton":Landroid/view/View;
    .end local v32    # "text":Ljava/lang/String;
    .end local v33    # "textView":Landroid/widget/TextView;
    .end local v34    # "textView2":Landroid/widget/TextView;
    .end local v35    # "video":Lcom/perm/kate/api/Video;
    .end local v36    # "videoView":Landroid/view/View;
    :cond_9
    move-object/from16 v0, v28

    iget v4, v0, Lcom/perm/kate/PhotoPlace;->type:I

    const/4 v7, 0x2

    if-ne v4, v7, :cond_7

    .line 334
    invoke-static/range {p5 .. p5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v7, 0x7f03005d

    const/4 v8, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v4, v7, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v37

    .line 335
    .local v37, "view":Landroid/view/View;
    new-instance v24, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v4, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, v24

    invoke-direct {v0, v4, v7, v8, v9}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 336
    .restart local v24    # "params":Landroid/widget/AbsoluteLayout$LayoutParams;
    move-object/from16 v0, v28

    iget v4, v0, Lcom/perm/kate/PhotoPlace;->width:I

    move-object/from16 v0, v24

    iput v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 337
    move-object/from16 v0, v28

    iget v4, v0, Lcom/perm/kate/PhotoPlace;->height:I

    move-object/from16 v0, v24

    iput v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 338
    move-object/from16 v0, v28

    iget v4, v0, Lcom/perm/kate/PhotoPlace;->x:I

    move-object/from16 v0, v24

    iput v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 339
    move-object/from16 v0, v28

    iget v4, v0, Lcom/perm/kate/PhotoPlace;->y:I

    move-object/from16 v0, v24

    iput v4, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 340
    move-object/from16 v0, p1

    move-object/from16 v1, v37

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/perm/kate/PhotoPlace;->doc:Lcom/perm/kate/api/Document;

    move-object/from16 v21, v0

    .line 344
    .restart local v21    # "doc":Lcom/perm/kate/api/Document;
    const v4, 0x7f0e0127

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 345
    .restart local v6    # "imageView":Landroid/widget/ImageView;
    const v4, 0x7f0e004b

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 347
    .restart local v34    # "textView2":Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Landroid/widget/FrameLayout$LayoutParams;

    .line 348
    .restart local v25    # "params1":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, v28

    iget v4, v0, Lcom/perm/kate/PhotoPlace;->width:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 349
    move-object/from16 v0, v28

    iget v4, v0, Lcom/perm/kate/PhotoPlace;->height:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 350
    invoke-virtual {v6}, Landroid/widget/ImageView;->requestLayout()V

    .line 351
    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v26

    check-cast v26, Landroid/widget/FrameLayout$LayoutParams;

    .line 352
    .restart local v26    # "params2":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, v28

    iget v4, v0, Lcom/perm/kate/PhotoPlace;->width:I

    move-object/from16 v0, v26

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 354
    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->requestLayout()V

    .line 356
    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/perm/kate/api/Document;->size:J

    invoke-static {v8, v9}, Lcom/perm/kate/Helper;->getDocumentDisplaySize(J)Ljava/lang/String;

    move-result-object v32

    .line 358
    .restart local v32    # "text":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " ("

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ")"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    invoke-static {v4}, Lcom/perm/kate/PhotoViewerActrivity;->isGraffiti(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 362
    const/16 v4, 0x8

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 364
    :cond_a
    move-object/from16 v0, v21

    iget-object v12, v0, Lcom/perm/kate/api/Document;->thumb:Ljava/lang/String;

    .line 368
    .local v12, "preview":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    invoke-static {v4}, Lcom/perm/kate/PhotoViewerActrivity;->isGraffiti(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 369
    move-object/from16 v0, v21

    iget-object v12, v0, Lcom/perm/kate/api/Document;->url:Ljava/lang/String;

    .line 370
    :cond_b
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v11

    const/4 v14, 0x1

    const-wide v8, 0x4060400000000000L    # 130.0

    .line 371
    invoke-static {v8, v9}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v15

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    invoke-static {v8, v9}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v16

    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v17

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v13, v6

    .line 370
    invoke-virtual/range {v11 .. v20}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZZ)V

    .line 373
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/AttachmentsHelper;->documentWithPreviewClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/perm/kate/AttachmentsHelper;->documentWithPreviewLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v0, v37

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 375
    move-object/from16 v0, v37

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 280
    .end local v12    # "preview":Ljava/lang/String;
    .end local v21    # "doc":Lcom/perm/kate/api/Document;
    .end local v25    # "params1":Landroid/widget/FrameLayout$LayoutParams;
    .end local v26    # "params2":Landroid/widget/FrameLayout$LayoutParams;
    .end local v32    # "text":Ljava/lang/String;
    .end local v34    # "textView2":Landroid/widget/TextView;
    .end local v37    # "view":Landroid/view/View;
    :cond_c
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/perm/kate/PhotoPlace;->photo:Lcom/perm/kate/api/Photo;

    iget-object v5, v4, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    goto/16 :goto_6

    .line 380
    .end local v6    # "imageView":Landroid/widget/ImageView;
    .end local v24    # "params":Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v28    # "place":Lcom/perm/kate/PhotoPlace;
    .end local v30    # "row":Lcom/perm/kate/PhotoRow;
    :cond_d
    return-void
.end method

.method public displayPollAttachment(Landroid/widget/TextView;Lcom/perm/kate/api/VkPoll;Landroid/app/Activity;)V
    .locals 4
    .param p1, "video_view"    # Landroid/widget/TextView;
    .param p2, "poll"    # Lcom/perm/kate/api/VkPoll;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    .line 819
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f070387

    invoke-virtual {p3, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/perm/kate/api/VkPoll;->question:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 821
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->pollClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 822
    const v0, 0x7f0e01ce

    iget-wide v2, p2, Lcom/perm/kate/api/VkPoll;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 823
    const v0, 0x7f0e0067

    iget-wide v2, p2, Lcom/perm/kate/api/VkPoll;->owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 824
    const v0, 0x7f0e01a7

    iget-object v1, p2, Lcom/perm/kate/api/VkPoll;->topic_id:Ljava/lang/Long;

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 825
    return-void
.end method

.method public displayStickers(Landroid/view/ViewGroup;Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 18
    .param p1, "photo_container"    # Landroid/view/ViewGroup;
    .param p3, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Sticker;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 394
    .local p2, "stickers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Sticker;>;"
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 396
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int v13, v2, v5

    .line 397
    .local v13, "images_required":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v13, :cond_0

    .line 398
    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 403
    .local v4, "imageView":Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 404
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v5, 0x7f0703fb

    invoke-virtual {v2, v5}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 405
    new-instance v15, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v2, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    const/4 v9, 0x1

    invoke-direct {v15, v2, v5, v7, v9}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 406
    .local v15, "params":Landroid/widget/AbsoluteLayout$LayoutParams;
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 397
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 410
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v15    # "params":Landroid/widget/AbsoluteLayout$LayoutParams;
    :cond_0
    const-wide/high16 v10, 0x4060000000000000L    # 128.0

    invoke-static {v10, v11}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v6

    .line 413
    .local v6, "imageview_size":I
    const/4 v12, 0x0

    .line 414
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/perm/kate/api/Sticker;

    .line 415
    .local v16, "row":Lcom/perm/kate/api/Sticker;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 417
    .restart local v4    # "imageView":Landroid/widget/ImageView;
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 418
    .restart local v15    # "params":Landroid/widget/AbsoluteLayout$LayoutParams;
    iput v6, v15, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 419
    iput v6, v15, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 420
    const/4 v2, 0x0

    iput v2, v15, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 421
    const/4 v2, 0x0

    iput v2, v15, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 422
    invoke-virtual {v4}, Landroid/widget/ImageView;->requestLayout()V

    .line 424
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 425
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 427
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/perm/kate/api/Sticker;->photo_64:Ljava/lang/String;

    .line 429
    .local v3, "src":Ljava/lang/String;
    const/16 v2, 0x40

    if-le v6, v2, :cond_1

    .line 430
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/perm/kate/api/Sticker;->photo_128:Ljava/lang/String;

    .line 431
    :cond_1
    const/16 v2, 0x80

    if-le v6, v2, :cond_2

    .line 432
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/perm/kate/api/Sticker;->photo_256:Ljava/lang/String;

    .line 434
    :cond_2
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v8

    .line 435
    .local v8, "stub":I
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move v7, v6

    invoke-virtual/range {v2 .. v11}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZZ)V

    .line 438
    add-int/lit8 v12, v12, 0x1

    .line 439
    goto :goto_1

    .line 442
    .end local v3    # "src":Ljava/lang/String;
    .end local v4    # "imageView":Landroid/widget/ImageView;
    .end local v8    # "stub":I
    .end local v15    # "params":Landroid/widget/AbsoluteLayout$LayoutParams;
    .end local v16    # "row":Lcom/perm/kate/api/Sticker;
    :cond_3
    move v14, v12

    .local v14, "j":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v14, v2, :cond_4

    .line 443
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 444
    .restart local v4    # "imageView":Landroid/widget/ImageView;
    const/16 v2, 0x8

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 445
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 442
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 447
    .end local v4    # "imageView":Landroid/widget/ImageView;
    :cond_4
    return-void
.end method

.method public displayWallComment(Landroid/widget/TextView;Lcom/perm/kate/api/Attachment;Landroid/app/Activity;)V
    .locals 6
    .param p1, "h"    # Landroid/widget/TextView;
    .param p2, "attachment"    # Lcom/perm/kate/api/Attachment;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    .line 789
    const/16 v0, 0x46

    .line 790
    .local v0, "crop_length":I
    iget-object v3, p2, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    iget-object v1, v3, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    .line 792
    .local v1, "preview":Ljava/lang/String;
    const/16 v3, 0xa

    const/16 v4, 0x20

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 794
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v0, :cond_0

    .line 795
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 796
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f07044b

    invoke-virtual {p3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 797
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 799
    iget-object v3, p0, Lcom/perm/kate/AttachmentsHelper;->wallCommentClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 800
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 801
    return-void
.end method

.method public displayWallMessage(Landroid/widget/TextView;Lcom/perm/kate/api/Attachment;Landroid/app/Activity;)V
    .locals 6
    .param p1, "h"    # Landroid/widget/TextView;
    .param p2, "attachment"    # Lcom/perm/kate/api/Attachment;
    .param p3, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    .line 768
    const/16 v0, 0x46

    .line 769
    .local v0, "crop_length":I
    const-string v1, ""

    .line 771
    .local v1, "preview":Ljava/lang/String;
    iget-object v3, p2, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    if-eqz v3, :cond_0

    .line 772
    iget-object v3, p2, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    iget-object v1, v3, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    .line 774
    const/16 v3, 0xa

    const/16 v4, 0x20

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 775
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v0, :cond_0

    .line 776
    iget-object v3, p2, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    iget-object v3, v3, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    iget-object v3, v3, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 777
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    iget-object v4, v4, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-static {p3, v4}, Lcom/perm/kate/DialogsAdapter;->getAttachmnetsText(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 779
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v0, :cond_1

    .line 780
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 781
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f070513

    invoke-virtual {p3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 782
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 783
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 784
    iget-object v3, p0, Lcom/perm/kate/AttachmentsHelper;->wallMessageClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 785
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 786
    return-void
.end method

.method isMosaicEnabled()Z
    .locals 3

    .prologue
    .line 1384
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_mosaic"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method videoClick(Landroid/view/View;)V
    .locals 13
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 868
    const v0, 0x7f0e01ce

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Long;

    .line 869
    .local v11, "video_id":Ljava/lang/Long;
    const v0, 0x7f0e0067

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    .line 870
    .local v12, "video_owner_id":Ljava/lang/Long;
    const v0, 0x7f0e01a7

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 871
    .local v6, "access_key":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/perm/kate/api/Video;

    .line 872
    .local v10, "video":Lcom/perm/kate/api/Video;
    new-instance v0, Lcom/perm/kate/VideoMenu;

    iget-object v2, p0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {v0, v2, v1, v1}, Lcom/perm/kate/VideoMenu;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/BaseFragment;Lcom/perm/kate/VideoMenuCallback;)V

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual/range {v0 .. v10}, Lcom/perm/kate/VideoMenu;->display(Ljava/lang/Long;JJLjava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Lcom/perm/kate/api/Video;)V

    .line 873
    return-void
.end method
