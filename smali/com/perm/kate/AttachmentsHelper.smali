.class public Lcom/perm/kate/AttachmentsHelper;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"


# static fields
.field public static big_photo_width_px:I = 0x25c

.field private static hor_margin:I = 0x0

.field public static small_photo_width_px:I = 0x82

.field private static vert_margin:I

.field private static voice:Lcom/perm/kate/api/Audio;

.field private static voicePlayer:Lcom/perm/kate/Player;


# instance fields
.field activity:Lcom/perm/kate/BaseActivity;

.field albumClickListener:Landroid/view/View$OnClickListener;

.field audioHelper:Lcom/perm/kate/AudioClickHelper;

.field audioPool:Ljava/util/LinkedList;

.field audioViews:Ljava/util/ArrayList;

.field public available_width:I

.field big_photos:Z

.field docPool:Ljava/util/LinkedList;

.field documentClickListener:Landroid/view/View$OnClickListener;

.field documentWithPreviewClickListener:Landroid/view/View$OnClickListener;

.field private documentWithPreviewLongClickListener:Landroid/view/View$OnLongClickListener;

.field forwardedMessageClickListener:Landroid/view/View$OnClickListener;

.field geoClickListener:Landroid/view/View$OnClickListener;

.field giftClickListener:Landroid/view/View$OnClickListener;

.field groupCache:Lcom/perm/utils/GroupCache;

.field handler:Landroid/os/Handler;

.field left_pane_offset:I

.field linkClickListener:Landroid/view/View$OnClickListener;

.field public linkMargins:Z

.field private linkPreviews:Ljava/util/HashMap;

.field messages_all:Ljava/util/ArrayList;

.field private mosaic_enabled:Z

.field notesClickListener:Landroid/view/View$OnClickListener;

.field photoClickListener:Landroid/view/View$OnClickListener;

.field photoPool:Ljava/util/LinkedList;

.field playerCallback:Lcom/perm/kate/Player$PlayerCallback;

.field playerCallbackVoice:Lcom/perm/kate/Player$PlayerCallback;

.field pollClickListener:Landroid/view/View$OnClickListener;

.field private seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private show_transcript:Z

.field source:I

.field task:Ljava/lang/Runnable;

.field userCache:Lcom/perm/utils/UserCache;

.field private videoPlayClick:Landroid/view/View$OnClickListener;

.field videoPool:Ljava/util/LinkedList;

.field wallCommentClickListener:Landroid/view/View$OnClickListener;

.field wallMessageClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 271
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v2

    sput v2, Lcom/perm/kate/AttachmentsHelper;->hor_margin:I

    .line 272
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    sput v0, Lcom/perm/kate/AttachmentsHelper;->vert_margin:I

    return-void
.end method

.method public constructor <init>(Lcom/perm/kate/BaseActivity;ZIZIII)V
    .locals 3

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->audioViews:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->handler:Landroid/os/Handler;

    .line 66
    new-instance v0, Lcom/perm/utils/UserCache;

    invoke-direct {v0}, Lcom/perm/utils/UserCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->userCache:Lcom/perm/utils/UserCache;

    .line 67
    new-instance v0, Lcom/perm/utils/GroupCache;

    invoke-direct {v0}, Lcom/perm/utils/GroupCache;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->groupCache:Lcom/perm/utils/GroupCache;

    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/perm/kate/AttachmentsHelper;->mosaic_enabled:Z

    .line 70
    iput-boolean v0, p0, Lcom/perm/kate/AttachmentsHelper;->show_transcript:Z

    .line 71
    iput-boolean v0, p0, Lcom/perm/kate/AttachmentsHelper;->linkMargins:Z

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->linkPreviews:Ljava/util/HashMap;

    .line 275
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->videoPool:Ljava/util/LinkedList;

    .line 276
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->docPool:Ljava/util/LinkedList;

    .line 277
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->photoPool:Ljava/util/LinkedList;

    .line 475
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$1;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->videoPlayClick:Landroid/view/View$OnClickListener;

    .line 1068
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$3;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$3;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->pollClickListener:Landroid/view/View$OnClickListener;

    .line 1133
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$4;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$4;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->linkClickListener:Landroid/view/View$OnClickListener;

    .line 1162
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$5;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$5;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->geoClickListener:Landroid/view/View$OnClickListener;

    .line 1175
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$6;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$6;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->albumClickListener:Landroid/view/View$OnClickListener;

    .line 1183
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$7;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$7;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->documentClickListener:Landroid/view/View$OnClickListener;

    .line 1196
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$8;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$8;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->documentWithPreviewClickListener:Landroid/view/View$OnClickListener;

    .line 1209
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$9;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$9;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->documentWithPreviewLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1223
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$10;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$10;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->giftClickListener:Landroid/view/View$OnClickListener;

    .line 1236
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$11;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$11;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->wallMessageClickListener:Landroid/view/View$OnClickListener;

    .line 1257
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$12;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$12;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->wallCommentClickListener:Landroid/view/View$OnClickListener;

    .line 1284
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$13;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$13;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->forwardedMessageClickListener:Landroid/view/View$OnClickListener;

    .line 1321
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$14;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$14;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->notesClickListener:Landroid/view/View$OnClickListener;

    .line 1328
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$15;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$15;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->photoClickListener:Landroid/view/View$OnClickListener;

    .line 1352
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->audioPool:Ljava/util/LinkedList;

    .line 1600
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$16;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$16;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->task:Ljava/lang/Runnable;

    .line 1618
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$17;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$17;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    .line 1654
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$18;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$18;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->playerCallbackVoice:Lcom/perm/kate/Player$PlayerCallback;

    .line 1946
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$19;

    invoke-direct {v0, p0}, Lcom/perm/kate/AttachmentsHelper$19;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 75
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    .line 76
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 77
    new-instance v0, Lcom/perm/kate/AudioClickHelper;

    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/AudioClickHelper;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;)V

    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    .line 78
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->addCallback(Lcom/perm/kate/Player$PlayerCallback;)V

    .line 79
    iput-boolean p2, p0, Lcom/perm/kate/AttachmentsHelper;->big_photos:Z

    .line 80
    iput p3, p0, Lcom/perm/kate/AttachmentsHelper;->left_pane_offset:I

    .line 81
    invoke-virtual {p0}, Lcom/perm/kate/AttachmentsHelper;->isMosaicEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/perm/kate/AttachmentsHelper;->mosaic_enabled:Z

    .line 82
    invoke-virtual {p0}, Lcom/perm/kate/AttachmentsHelper;->isTranscriptEnabled()Z

    move-result p2

    iput-boolean p2, p0, Lcom/perm/kate/AttachmentsHelper;->show_transcript:Z

    .line 83
    invoke-direct {p0, p1, p4, p5, p6}, Lcom/perm/kate/AttachmentsHelper;->calculateBigPhotoSize(Lcom/perm/kate/BaseActivity;ZII)V

    .line 84
    iput p7, p0, Lcom/perm/kate/AttachmentsHelper;->source:I

    .line 85
    sget-object p1, Lcom/perm/kate/AttachmentsHelper;->voicePlayer:Lcom/perm/kate/Player;

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p1, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    iget-object p2, p0, Lcom/perm/kate/AttachmentsHelper;->playerCallbackVoice:Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object p1, Lcom/perm/kate/AttachmentsHelper;->voicePlayer:Lcom/perm/kate/Player;

    iget p1, p1, Lcom/perm/kate/Player;->state:I

    if-nez p1, :cond_0

    .line 88
    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/perm/kate/AttachmentsHelper;->task:Ljava/lang/Runnable;

    const-wide/16 p3, 0x3e8

    invoke-virtual {p1, p2, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public static ShowNoteActivity(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2

    .line 1126
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1127
    const-class v1, Lcom/perm/kate/NoteActivity;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.uid"

    .line 1128
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "com.perm.kate.nid"

    .line 1129
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1130
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/AttachmentsHelper;Ljava/lang/String;)Z
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/perm/kate/AttachmentsHelper;->isSnippet(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/perm/kate/AttachmentsHelper;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/perm/kate/AttachmentsHelper;->attachmenttsToMessages(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/perm/kate/AttachmentsHelper;->pauseAudio()V

    return-void
.end method

.method static synthetic access$300()Lcom/perm/kate/api/Audio;
    .locals 1

    .line 57
    sget-object v0, Lcom/perm/kate/AttachmentsHelper;->voice:Lcom/perm/kate/api/Audio;

    return-object v0
.end method

.method static synthetic access$302(Lcom/perm/kate/api/Audio;)Lcom/perm/kate/api/Audio;
    .locals 0

    .line 57
    sput-object p0, Lcom/perm/kate/AttachmentsHelper;->voice:Lcom/perm/kate/api/Audio;

    return-object p0
.end method

.method static synthetic access$400()Lcom/perm/kate/Player;
    .locals 1

    .line 57
    sget-object v0, Lcom/perm/kate/AttachmentsHelper;->voicePlayer:Lcom/perm/kate/Player;

    return-object v0
.end method

.method static synthetic access$500(Lcom/perm/kate/AttachmentsHelper;)Lcom/perm/kate/Player;
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/perm/kate/AttachmentsHelper;->getVoicePlayer()Lcom/perm/kate/Player;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/perm/kate/AttachmentsHelper;->displayAudioPlayersStates()V

    return-void
.end method

.method static synthetic access$700(Lcom/perm/kate/AttachmentsHelper;)Lcom/perm/kate/api/Audio;
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/perm/kate/AttachmentsHelper;->getNextVoice()Lcom/perm/kate/api/Audio;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/perm/kate/AttachmentsHelper;Lcom/perm/kate/api/Audio;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/perm/kate/AttachmentsHelper;->playVoice(Lcom/perm/kate/api/Audio;)V

    return-void
.end method

.method private attachmenttsToMessages(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6

    .line 1798
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1799
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Attachment;

    .line 1800
    iget-object v3, v2, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    if-nez v3, :cond_0

    .line 1801
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 1804
    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1805
    iget-object v2, v2, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/perm/kate/api/Message;->read_state:Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private calculateBigPhotoSize(Lcom/perm/kate/BaseActivity;ZII)V
    .locals 2

    .line 96
    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.AttachmentsHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 99
    iput p1, p0, Lcom/perm/kate/AttachmentsHelper;->available_width:I

    int-to-double v0, p4

    .line 100
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result p4

    sub-int/2addr p1, p4

    iput p1, p0, Lcom/perm/kate/AttachmentsHelper;->available_width:I

    if-eqz p2, :cond_1

    .line 105
    sget-boolean p2, Lcom/perm/kate/KApplication;->isTablet:Z

    if-eqz p2, :cond_0

    const-wide v0, 0x4051800000000000L    # 70.0

    .line 106
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/perm/kate/AttachmentsHelper;->available_width:I

    goto :goto_0

    :cond_0
    const-wide v0, 0x4046800000000000L    # 45.0

    .line 108
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/perm/kate/AttachmentsHelper;->available_width:I

    .line 111
    :cond_1
    :goto_0
    iget p1, p0, Lcom/perm/kate/AttachmentsHelper;->available_width:I

    iget p2, p0, Lcom/perm/kate/AttachmentsHelper;->left_pane_offset:I

    int-to-double v0, p2

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/perm/kate/AttachmentsHelper;->available_width:I

    int-to-double p2, p3

    .line 113
    invoke-static {p2, p3}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result p2

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/perm/kate/AttachmentsHelper;->available_width:I

    return-void
.end method

.method public static calculateMosaic(Ljava/util/ArrayList;ZIZF)Ljava/util/ArrayList;
    .locals 10

    .line 644
    invoke-static {p4}, Lcom/perm/kate/AttachmentsHelper;->getMaxPhotoScale(F)F

    move-result p4

    .line 647
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 648
    new-instance v1, Lcom/perm/kate/PhotoRow;

    invoke-direct {v1}, Lcom/perm/kate/PhotoRow;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 649
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_a

    .line 650
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/PhotoPlace;

    .line 651
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/PhotoRow;

    .line 653
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-ne v6, v4, :cond_0

    const/4 v6, 0x2

    goto :goto_1

    :cond_0
    const/4 v6, 0x3

    .line 655
    :goto_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ne v9, v7, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v4, :cond_2

    .line 657
    iget v7, v3, Lcom/perm/kate/PhotoPlace;->type:I

    if-nez v7, :cond_1

    iget-object v7, v3, Lcom/perm/kate/PhotoPlace;->photo:Lcom/perm/kate/api/Photo;

    invoke-static {v7}, Lcom/perm/kate/AttachmentsHelper;->isVertical(Lcom/perm/kate/api/Photo;)Z

    move-result v7

    if-nez v7, :cond_2

    :cond_1
    const/4 v6, 0x1

    .line 661
    :cond_2
    iget-object v7, v5, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v8, :cond_3

    iget v7, v3, Lcom/perm/kate/PhotoPlace;->type:I

    if-ne v7, v4, :cond_3

    const/4 v6, 0x2

    .line 666
    :cond_3
    iget v7, v3, Lcom/perm/kate/PhotoPlace;->type:I

    if-nez v7, :cond_4

    .line 667
    iget-object v7, v3, Lcom/perm/kate/PhotoPlace;->photo:Lcom/perm/kate/api/Photo;

    iget v8, v7, Lcom/perm/kate/api/Photo;->width:I

    iget v7, v7, Lcom/perm/kate/api/Photo;->height:I

    .line 668
    invoke-static {v8, v7}, Lcom/perm/kate/AttachmentsHelper;->getRatio(II)F

    move-result v9

    iput v9, v3, Lcom/perm/kate/PhotoPlace;->ratio:F

    .line 669
    invoke-static {p1, v9, v8, v7}, Lcom/perm/kate/AttachmentsHelper;->getPreviewSize(ZFII)[I

    move-result-object v7

    goto :goto_2

    :cond_4
    if-ne v7, v4, :cond_5

    new-array v7, v8, [I

    .line 673
    fill-array-data v7, :array_0

    goto :goto_2

    .line 676
    :cond_5
    iget-object v7, v3, Lcom/perm/kate/PhotoPlace;->doc:Lcom/perm/kate/api/Document;

    iget-object v7, v7, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    invoke-static {v7}, Lcom/perm/kate/PhotoViewerActrivity;->isGraffiti(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-array v7, v8, [I

    .line 679
    fill-array-data v7, :array_1

    goto :goto_2

    :cond_6
    new-array v7, v8, [I

    .line 681
    fill-array-data v7, :array_2

    .line 683
    :goto_2
    aget v8, v7, v1

    iput v8, v3, Lcom/perm/kate/PhotoPlace;->width:I

    .line 684
    aget v7, v7, v4

    iput v7, v3, Lcom/perm/kate/PhotoPlace;->height:I

    .line 686
    invoke-virtual {v5}, Lcom/perm/kate/PhotoRow;->getWidth()I

    move-result v7

    .line 690
    iget-object v8, v5, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v8, v6, :cond_7

    int-to-float v6, v7

    mul-float v6, v6, p4

    int-to-float v7, p2

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_7

    .line 692
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    if-eq v2, v6, :cond_7

    const/4 v6, 0x1

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    :goto_3
    if-nez p3, :cond_8

    goto :goto_4

    :cond_8
    move v4, v6

    :goto_4
    if-eqz v4, :cond_9

    .line 698
    new-instance v5, Lcom/perm/kate/PhotoRow;

    invoke-direct {v5}, Lcom/perm/kate/PhotoRow;-><init>()V

    .line 699
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    :cond_9
    iget-object v4, v5, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 p0, 0x0

    const/4 p1, 0x0

    const/4 p3, 0x0

    .line 707
    :goto_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p0, v2, :cond_15

    .line 708
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/PhotoRow;

    const/16 v3, 0x2bc

    .line 712
    iget-object v5, v2, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_b
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/PhotoPlace;

    .line 713
    iget v6, v6, Lcom/perm/kate/PhotoPlace;->height:I

    if-ge v6, v3, :cond_b

    move v3, v6

    goto :goto_6

    .line 717
    :cond_c
    iget-object v5, v2, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/PhotoPlace;

    .line 718
    iget v7, v6, Lcom/perm/kate/PhotoPlace;->height:I

    int-to-float v7, v7

    int-to-float v8, v3

    div-float/2addr v7, v8

    .line 719
    iput v3, v6, Lcom/perm/kate/PhotoPlace;->height:I

    .line 720
    iget v8, v6, Lcom/perm/kate/PhotoPlace;->width:I

    int-to-float v8, v8

    div-float/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v6, Lcom/perm/kate/PhotoPlace;->width:I

    goto :goto_7

    .line 725
    :cond_d
    iget-object v3, v2, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v5, 0x0

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/PhotoPlace;

    .line 726
    iget v6, v6, Lcom/perm/kate/PhotoPlace;->width:I

    add-int/2addr v5, v6

    goto :goto_8

    .line 730
    :cond_e
    sget v3, Lcom/perm/kate/AttachmentsHelper;->hor_margin:I

    iget-object v6, v2, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    mul-int v3, v3, v6

    sub-int v3, p2, v3

    int-to-float v3, v3

    int-to-float v5, v5

    div-float/2addr v3, v5

    cmpl-float v5, v3, p4

    if-ltz v5, :cond_f

    move v3, p4

    .line 736
    :cond_f
    iget-object v5, v2, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/PhotoPlace;

    .line 740
    iget v7, v6, Lcom/perm/kate/PhotoPlace;->width:I

    int-to-float v7, v7

    mul-float v7, v7, v3

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    iput v7, v6, Lcom/perm/kate/PhotoPlace;->width:I

    .line 741
    iget v7, v6, Lcom/perm/kate/PhotoPlace;->height:I

    int-to-float v7, v7

    mul-float v7, v7, v3

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    iput v7, v6, Lcom/perm/kate/PhotoPlace;->height:I

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 746
    :goto_a
    iget-object v7, v2, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_13

    .line 747
    iget-object v7, v2, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/PhotoPlace;

    add-int/2addr v5, v6

    .line 748
    iput v5, v7, Lcom/perm/kate/PhotoPlace;->x:I

    if-eqz v3, :cond_11

    .line 750
    sget v6, Lcom/perm/kate/AttachmentsHelper;->hor_margin:I

    add-int/2addr v5, v6

    iput v5, v7, Lcom/perm/kate/PhotoPlace;->x:I

    .line 751
    :cond_11
    iget v5, v7, Lcom/perm/kate/PhotoPlace;->x:I

    .line 752
    iget v6, v7, Lcom/perm/kate/PhotoPlace;->width:I

    add-int v8, p1, p3

    .line 754
    iput v8, v7, Lcom/perm/kate/PhotoPlace;->y:I

    if-eqz p0, :cond_12

    .line 758
    sget v9, Lcom/perm/kate/AttachmentsHelper;->vert_margin:I

    add-int/2addr v8, v9

    iput v8, v7, Lcom/perm/kate/PhotoPlace;->y:I

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 762
    :cond_13
    iget-object v3, v2, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_14

    .line 763
    iget-object p1, v2, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/PhotoPlace;

    iget p1, p1, Lcom/perm/kate/PhotoPlace;->y:I

    .line 764
    iget-object p3, v2, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/perm/kate/PhotoPlace;

    iget p3, p3, Lcom/perm/kate/PhotoPlace;->height:I

    :cond_14
    add-int/lit8 p0, p0, 0x1

    goto/16 :goto_5

    :cond_15
    return-object v0

    nop

    :array_0
    .array-data 4
        0x140
        0xf0
    .end array-data

    :array_1
    .array-data 4
        0x82
        0x82
    .end array-data

    :array_2
    .array-data 4
        0x190
        0x12c
    .end array-data
.end method

.method private cantExpand(Ljava/util/ArrayList;)Z
    .locals 3

    const/4 v0, 0x1

    .line 252
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_0

    return v0

    .line 255
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Attachment;

    .line 258
    iget-object v1, v1, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1

    :catchall_0
    return v0
.end method

.method private displayAudioPlayersStates()V
    .locals 11

    .line 1732
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 1736
    :cond_0
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    .line 1737
    iget-wide v1, v0, Lcom/perm/kate/api/Audio;->aid:J

    .line 1738
    iget-wide v3, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    goto :goto_0

    :cond_1
    move-wide v3, v1

    .line 1741
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->audioViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Landroid/view/ViewGroup;

    move-object v5, p0

    move-wide v7, v1

    move-wide v9, v3

    .line 1742
    invoke-virtual/range {v5 .. v10}, Lcom/perm/kate/AttachmentsHelper;->displayAudioStatus(Landroid/view/ViewGroup;JJ)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public static downloadVoiceEnabled()Z
    .locals 3

    .line 1939
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "download_voice"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getImageViewSizeGift(IF)[I
    .locals 5

    .line 872
    invoke-static {p1}, Lcom/perm/kate/AttachmentsHelper;->getMaxPhotoScale(F)F

    move-result p1

    float-to-double v0, p1

    int-to-double p0, p0

    const/16 v2, 0x100

    int-to-double v2, v2

    .line 875
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v2

    cmpl-double v4, p0, v0

    if-ltz v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide v0, p0

    .line 881
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    double-to-int p0, v2

    const/4 p1, 0x2

    new-array p1, p1, [I

    const/4 v0, 0x0

    aput p0, p1, v0

    const/4 v0, 0x1

    aput p0, p1, v0

    return-object p1
.end method

.method private static getMaxPhotoScale(F)F
    .locals 4

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_0

    const v0, 0x3f933333    # 1.15f

    mul-float p0, p0, v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40000000    # 2.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_1

    const p0, 0x40133333    # 2.3f

    goto :goto_0

    :cond_1
    float-to-double v0, p0

    const-wide v2, 0x3ff4cccccccccccdL    # 1.3

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_2

    const/high16 p0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_2
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method private getNextVoice()Lcom/perm/kate/api/Audio;
    .locals 9

    .line 1711
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->messages_all:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    .line 1714
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Message;

    if-nez v2, :cond_3

    .line 1717
    iget-object v3, v3, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/Attachment;

    .line 1718
    iget-object v4, v4, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    if-eqz v4, :cond_2

    iget-wide v4, v4, Lcom/perm/kate/api/Audio;->aid:J

    sget-object v6, Lcom/perm/kate/AttachmentsHelper;->voice:Lcom/perm/kate/api/Audio;

    iget-wide v6, v6, Lcom/perm/kate/api/Audio;->aid:J

    cmp-long v8, v4, v6

    if-nez v8, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    .line 1722
    :cond_3
    iget-object v0, v3, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Attachment;

    .line 1723
    iget-object v3, v2, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v2, v2, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    iget-wide v3, v2, Lcom/perm/kate/api/Audio;->aid:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_4

    return-object v2

    :cond_5
    return-object v1
.end method

.method static getPreviewSize(ZFII)[I
    .locals 2

    if-eqz p0, :cond_0

    .line 847
    sget v0, Lcom/perm/kate/AttachmentsHelper;->big_photo_width_px:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/perm/kate/AttachmentsHelper;->small_photo_width_px:I

    :goto_0
    if-eqz p0, :cond_1

    .line 848
    sget v1, Lcom/perm/kate/AttachmentsHelper;->big_photo_width_px:I

    goto :goto_1

    :cond_1
    sget v1, Lcom/perm/kate/AttachmentsHelper;->small_photo_width_px:I

    :goto_1
    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int v1, v1

    if-le p3, p2, :cond_4

    if-eqz p0, :cond_2

    .line 851
    sget v0, Lcom/perm/kate/AttachmentsHelper;->big_photo_width_px:I

    goto :goto_2

    :cond_2
    sget v0, Lcom/perm/kate/AttachmentsHelper;->small_photo_width_px:I

    :goto_2
    move v1, v0

    if-eqz p0, :cond_3

    .line 852
    sget p0, Lcom/perm/kate/AttachmentsHelper;->big_photo_width_px:I

    goto :goto_3

    :cond_3
    sget p0, Lcom/perm/kate/AttachmentsHelper;->small_photo_width_px:I

    :goto_3
    int-to-float p0, p0

    mul-float p0, p0, p1

    float-to-int v0, p0

    :cond_4
    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    if-ge p2, v0, :cond_5

    if-ge p3, v1, :cond_5

    goto :goto_4

    :cond_5
    move p2, v0

    move p3, v1

    :goto_4
    const/4 p0, 0x2

    new-array p0, p0, [I

    const/4 p1, 0x0

    aput p2, p0, p1

    const/4 p1, 0x1

    aput p3, p0, p1

    return-object p0
.end method

.method private static getRatio(II)F
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3fc00000    # 1.5f

    :goto_0
    return p0
.end method

.method public static getResIdForNoPhoto4()I
    .locals 3

    .line 1811
    sget v0, Lcom/perm/kate/BaseActivity;->Theme:I

    const v1, 0x7f08013f

    const v2, 0x7f08013e

    sparse-switch v0, :sswitch_data_0

    const v0, 0x7f08013b

    return v0

    :sswitch_0
    const v0, 0x7f0801f9

    return v0

    :sswitch_1
    const v0, 0x7f080142

    return v0

    :sswitch_2
    const v0, 0x7f080141

    return v0

    :sswitch_3
    const v0, 0x7f080140

    return v0

    :sswitch_4
    return v1

    :sswitch_5
    return v2

    :sswitch_6
    return v1

    :sswitch_7
    return v2

    :sswitch_8
    const v0, 0x7f08013d

    return v0

    :sswitch_9
    const v0, 0x7f08013c

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1000c5 -> :sswitch_9
        0x7f1000c7 -> :sswitch_8
        0x7f1000c9 -> :sswitch_7
        0x7f1000cb -> :sswitch_6
        0x7f1000d1 -> :sswitch_5
        0x7f1000d3 -> :sswitch_4
        0x7f1000d5 -> :sswitch_3
        0x7f1000d9 -> :sswitch_2
        0x7f1000db -> :sswitch_1
        0x7f1000df -> :sswitch_0
    .end sparse-switch
.end method

.method public static getServerResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "gzip"

    const/4 v1, 0x0

    .line 620
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/perm/utils/ProxyManager;->getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x1388

    .line 621
    :try_start_1
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 622
    invoke-virtual {p0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const-string v2, "Accept-Encoding"

    .line 624
    invoke-virtual {p0, v2, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    invoke-static {p0}, Lcom/perm/utils/UserAgent;->set(Ljava/net/HttpURLConnection;)V

    .line 626
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 638
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    .line 629
    :cond_0
    :try_start_2
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const-string v3, "Content-Encoding"

    .line 630
    invoke-virtual {p0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 631
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v0

    .line 633
    :cond_1
    invoke-static {v2}, Lcom/perm/utils/Utils;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 638
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object p0, v1

    .line 635
    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz p0, :cond_2

    .line 638
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    return-object v1

    :catchall_2
    move-exception v0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 639
    :cond_3
    throw v0
.end method

.method private getVoicePlayer()Lcom/perm/kate/Player;
    .locals 2

    .line 1923
    sget-object v0, Lcom/perm/kate/AttachmentsHelper;->voicePlayer:Lcom/perm/kate/Player;

    if-nez v0, :cond_0

    .line 1924
    new-instance v0, Lcom/perm/kate/Player;

    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper;->playerCallbackVoice:Lcom/perm/kate/Player$PlayerCallback;

    invoke-direct {v0, v1}, Lcom/perm/kate/Player;-><init>(Lcom/perm/kate/Player$PlayerCallback;)V

    sput-object v0, Lcom/perm/kate/AttachmentsHelper;->voicePlayer:Lcom/perm/kate/Player;

    .line 1925
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getVoiceSpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/Player;->setVoiceSpeed(F)V

    .line 1926
    sget-object v0, Lcom/perm/kate/AttachmentsHelper;->voicePlayer:Lcom/perm/kate/Player;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/perm/kate/Player;->isVoice:Z

    .line 1929
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->voiceOverSpeakerphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1930
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1931
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1932
    sget-object v0, Lcom/perm/kate/AttachmentsHelper;->voicePlayer:Lcom/perm/kate/Player;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/Player;->setAudioStreamType(I)V

    .line 1935
    :cond_0
    sget-object v0, Lcom/perm/kate/AttachmentsHelper;->voicePlayer:Lcom/perm/kate/Player;

    return-object v0
.end method

.method public static getVoiceSpeed()F
    .locals 3

    .line 1980
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "voice_speed"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method private isSnippet(Ljava/lang/String;)Z
    .locals 2

    .line 1154
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->linkPreviews:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1155
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Link;

    iget-object v1, v1, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static isVertical(Lcom/perm/kate/api/Photo;)Z
    .locals 1

    .line 771
    iget v0, p0, Lcom/perm/kate/api/Photo;->height:I

    iget p0, p0, Lcom/perm/kate/api/Photo;->width:I

    if-le v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static noteClick(Landroid/view/View;Landroid/app/Activity;)V
    .locals 2

    .line 1117
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, ","

    .line 1119
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 1120
    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 1121
    aget-object v0, p0, v0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-static {v0, p0, p1}, Lcom/perm/kate/AttachmentsHelper;->ShowNoteActivity(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private pauseAudio()V
    .locals 3

    .line 1612
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const-class v2, Lcom/perm/kate/PlaybackService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "pause"

    .line 1613
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1614
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v0, "Kate.AttachmentsHelper"

    const-string v1, "pauseAudio"

    .line 1615
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static photoClick(Landroid/view/View;Landroid/app/Activity;)V
    .locals 11

    const v0, 0x7f090011

    .line 1040
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1043
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    const/4 v1, 0x0

    .line 1044
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1045
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Photo;

    iget-wide v3, v2, Lcom/perm/kate/api/Photo;->pid:J

    .line 1046
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Photo;

    iget-object v2, v2, Lcom/perm/kate/api/Photo;->owner_id:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 1047
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    move-wide v7, v9

    invoke-virtual/range {v2 .. v8}, Lcom/perm/kate/db/DataHelper;->fetchPhoto(JJJ)Lcom/perm/kate/api/Photo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1049
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/api/Photo;

    iget-object v3, v3, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    iput-object v3, v2, Lcom/perm/kate/api/Photo;->access_key:Ljava/lang/String;

    .line 1050
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const v1, 0x7f09000a

    .line 1054
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1055
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1056
    const-class v3, Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {v2, p1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "com.perm.kate.position"

    .line 1057
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.perm.kate.photos"

    .line 1058
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1059
    invoke-virtual {p1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const p1, 0x7f090008

    .line 1061
    invoke-virtual {p0, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const v0, 0x7f09000b

    .line 1062
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const v1, 0x7f090016

    .line 1063
    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 1064
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1065
    invoke-static {p1, v0, p0}, Lcom/perm/utils/AdEvents;->reportPhotoOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private playVoice(Lcom/perm/kate/api/Audio;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1703
    :cond_0
    sput-object p1, Lcom/perm/kate/AttachmentsHelper;->voice:Lcom/perm/kate/api/Audio;

    .line 1704
    invoke-direct {p0}, Lcom/perm/kate/AttachmentsHelper;->getVoicePlayer()Lcom/perm/kate/Player;

    move-result-object v0

    iget-object p1, p1, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/perm/kate/Player;->play(Ljava/lang/String;)V

    return-void
.end method

.method private static saveVoiceSpeed(F)V
    .locals 2

    .line 1976
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "voice_speed"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static voiceOverSpeakerphoneEnabled()Z
    .locals 3

    .line 1943
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "voice_speakerphone"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 1336
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->playerCallback:Lcom/perm/kate/Player$PlayerCallback;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->removeCallback(Lcom/perm/kate/Player$PlayerCallback;)V

    const/4 v0, 0x0

    .line 1337
    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    .line 1338
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    invoke-virtual {v1}, Lcom/perm/kate/AudioClickHelper;->destroy()V

    .line 1339
    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    .line 1342
    sget-object v1, Lcom/perm/kate/AttachmentsHelper;->voicePlayer:Lcom/perm/kate/Player;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/perm/kate/Player;->callbacks:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/perm/kate/AttachmentsHelper;->playerCallbackVoice:Lcom/perm/kate/Player$PlayerCallback;

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 1344
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/perm/kate/AttachmentsHelper;->task:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1345
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper;->videoPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 1346
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper;->docPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 1347
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper;->photoPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 1348
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper;->audioPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 1349
    iput-object v0, p0, Lcom/perm/kate/AttachmentsHelper;->seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public displayAlbum(Landroid/widget/TextView;Lcom/perm/kate/api/Album;Landroid/app/Activity;)V
    .locals 2

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0f0234

    invoke-virtual {p3, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p2, Lcom/perm/kate/api/Album;->title:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 951
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 952
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 953
    iget-object p2, p0, Lcom/perm/kate/AttachmentsHelper;->albumClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x0

    .line 954
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public displayAttachments(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

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

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 120
    invoke-virtual/range {v0 .. v17}, Lcom/perm/kate/AttachmentsHelper;->displayAttachments(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public displayAttachments(Ljava/util/ArrayList;Lcom/perm/kate/NewsItemTag;Lcom/perm/kate/ViewHolder;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Landroid/app/Activity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v10, p7

    move-object/from16 v11, p9

    move-object/from16 v1, p12

    move-object/from16 v2, p17

    .line 130
    iput-object v2, v9, Lcom/perm/kate/AttachmentsHelper;->messages_all:Ljava/util/ArrayList;

    .line 131
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 135
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 137
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 138
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 139
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 140
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 141
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const-string v8, "doc"

    const-string v7, "link"

    if-eqz p6, :cond_a

    .line 143
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/api/Attachment;

    move-object/from16 p1, v5

    .line 144
    iget-object v5, v6, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v11, "photo"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, v6, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v11, "posted_photo"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto/16 :goto_1

    .line 146
    :cond_1
    iget-object v5, v6, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v6, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v5, v5, Lcom/perm/kate/api/Link;->photo:Lcom/perm/kate/api/Photo;

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 147
    iget-object v5, v6, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v5, v5, Lcom/perm/kate/api/Link;->photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    iget-object v5, v9, Lcom/perm/kate/AttachmentsHelper;->linkPreviews:Ljava/util/HashMap;

    iget-object v11, v6, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    move-object/from16 p2, v7

    iget-object v7, v11, Lcom/perm/kate/api/Link;->photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {v5, v7, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_2
    move-object/from16 p2, v7

    .line 153
    iget-object v5, v6, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "message"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 154
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 155
    :cond_3
    iget-object v5, v6, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "audio"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, v6, Lcom/perm/kate/api/Attachment;->audio:Lcom/perm/kate/api/Audio;

    if-eqz v5, :cond_4

    .line 156
    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 157
    :cond_4
    iget-object v5, v6, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "video"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, v6, Lcom/perm/kate/api/Attachment;->video:Lcom/perm/kate/api/Video;

    if-eqz v5, :cond_5

    .line 158
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 159
    :cond_5
    iget-object v5, v6, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v6, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    iget-object v5, v5, Lcom/perm/kate/api/Document;->thumb:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 160
    iget-object v5, v6, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 161
    :cond_6
    iget-object v5, v6, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "gift"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 162
    iget-object v5, v6, Lcom/perm/kate/api/Attachment;->gift:Lcom/perm/kate/api/Gift;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 163
    :cond_7
    iget-object v5, v6, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v7, "sticker"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 164
    iget-object v5, v6, Lcom/perm/kate/api/Attachment;->sticker:Lcom/perm/kate/api/Sticker;

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 166
    :cond_8
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_9
    :goto_1
    move-object/from16 p2, v7

    .line 145
    iget-object v5, v6, Lcom/perm/kate/api/Attachment;->photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v11, p9

    goto/16 :goto_0

    :cond_a
    move-object/from16 p2, v7

    const/16 v11, 0x8

    const/4 v7, 0x0

    if-eqz v1, :cond_c

    .line 171
    invoke-direct {v9, v0}, Lcom/perm/kate/AttachmentsHelper;->cantExpand(Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 172
    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    invoke-virtual {v1, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_3

    .line 175
    :cond_b
    invoke-virtual {v9, v1, v0, v10}, Lcom/perm/kate/AttachmentsHelper;->displayMessagesExpanded(Landroid/view/ViewGroup;Ljava/util/ArrayList;Landroid/app/Activity;)V

    .line 176
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_c
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v5, p7

    move-object/from16 v6, p14

    move-object/from16 v16, p2

    const/4 v11, 0x0

    move-object/from16 v7, p15

    move-object/from16 v17, v8

    move-object/from16 v8, p16

    .line 181
    invoke-virtual/range {v0 .. v8}, Lcom/perm/kate/AttachmentsHelper;->displayPhotos(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, p10

    move-object v2, v13

    move-object/from16 v3, p7

    move-object/from16 v4, p13

    move-object/from16 v5, p14

    move-object/from16 v6, p15

    move-object/from16 v7, p16

    .line 182
    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/AttachmentsHelper;->displayAudios(Landroid/view/ViewGroup;Ljava/util/ArrayList;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p11

    .line 183
    invoke-virtual {v9, v0, v14, v10}, Lcom/perm/kate/AttachmentsHelper;->displayGifts(Landroid/view/ViewGroup;Ljava/util/ArrayList;Landroid/app/Activity;)V

    .line 186
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_d

    move-object/from16 v0, p8

    .line 187
    invoke-virtual {v9, v0, v15, v10}, Lcom/perm/kate/AttachmentsHelper;->displayStickers(Landroid/view/ViewGroup;Ljava/util/ArrayList;Landroid/app/Activity;)V

    .line 197
    :cond_d
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual/range {p9 .. p9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v0, :cond_e

    .line 199
    invoke-static/range {p7 .. p7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c00a5

    move-object/from16 v8, p9

    invoke-virtual {v1, v2, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 203
    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_e
    move-object/from16 v8, p9

    const/4 v13, 0x0

    .line 205
    :goto_5
    invoke-virtual/range {p9 .. p9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v13, v0, :cond_1b

    .line 206
    invoke-virtual {v8, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/TextView;

    .line 207
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v13, v0, :cond_1a

    .line 208
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .line 210
    instance-of v0, v15, Lcom/perm/kate/api/Attachment;

    if-eqz v0, :cond_17

    .line 211
    move-object v7, v15

    check-cast v7, Lcom/perm/kate/api/Attachment;

    .line 212
    iget-object v0, v7, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    move-object/from16 v6, v16

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 213
    iget-object v0, v7, Lcom/perm/kate/api/Attachment;->link:Lcom/perm/kate/api/Link;

    iget-object v2, v0, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    iget-object v3, v0, Lcom/perm/kate/api/Link;->title:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v4, p7

    move-object/from16 v5, p14

    move-object/from16 v16, v6

    move-object/from16 v6, p15

    move-object v11, v7

    move-object/from16 v7, p16

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/AttachmentsHelper;->displayLink(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_f
    move-object/from16 v16, v6

    move-object v11, v7

    .line 214
    :goto_6
    iget-object v0, v11, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v1, "note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 215
    iget-object v0, v11, Lcom/perm/kate/api/Attachment;->note:Lcom/perm/kate/api/Note;

    iget-wide v0, v0, Lcom/perm/kate/api/Note;->nid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, v11, Lcom/perm/kate/api/Attachment;->note:Lcom/perm/kate/api/Note;

    iget-wide v1, v1, Lcom/perm/kate/api/Note;->owner_id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v11, Lcom/perm/kate/api/Attachment;->note:Lcom/perm/kate/api/Note;

    iget-object v2, v2, Lcom/perm/kate/api/Note;->title:Ljava/lang/String;

    move-object/from16 p1, p0

    move-object/from16 p2, v14

    move-object/from16 p3, v0

    move-object/from16 p4, v1

    move-object/from16 p5, v2

    move-object/from16 p6, p7

    invoke-virtual/range {p1 .. p6}, Lcom/perm/kate/AttachmentsHelper;->displayNote(Landroid/widget/TextView;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V

    .line 216
    :cond_10
    iget-object v0, v11, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v1, "poll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 217
    iget-object v0, v11, Lcom/perm/kate/api/Attachment;->poll:Lcom/perm/kate/api/VkPoll;

    invoke-virtual {v9, v14, v0, v10}, Lcom/perm/kate/AttachmentsHelper;->displayPollAttachment(Landroid/widget/TextView;Lcom/perm/kate/api/VkPoll;Landroid/app/Activity;)V

    .line 218
    :cond_11
    iget-object v0, v11, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v1, "geo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 219
    iget-object v0, v11, Lcom/perm/kate/api/Attachment;->geo:Lcom/perm/kate/api/Geo;

    invoke-virtual {v9, v14, v0, v10}, Lcom/perm/kate/AttachmentsHelper;->displayGeo(Landroid/widget/TextView;Lcom/perm/kate/api/Geo;Landroid/app/Activity;)V

    .line 220
    :cond_12
    iget-object v0, v11, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    move-object/from16 v7, v17

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 221
    iget-object v0, v11, Lcom/perm/kate/api/Attachment;->document:Lcom/perm/kate/api/Document;

    invoke-virtual {v9, v14, v0, v10}, Lcom/perm/kate/AttachmentsHelper;->displayDocument(Landroid/widget/TextView;Lcom/perm/kate/api/Document;Landroid/app/Activity;)V

    .line 222
    :cond_13
    iget-object v0, v11, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v1, "wall"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 223
    invoke-virtual {v9, v14, v11, v10}, Lcom/perm/kate/AttachmentsHelper;->displayWallMessage(Landroid/widget/TextView;Lcom/perm/kate/api/Attachment;Landroid/app/Activity;)V

    .line 224
    :cond_14
    iget-object v0, v11, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v1, "page"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 225
    iget-object v2, v11, Lcom/perm/kate/api/Attachment;->page:Lcom/perm/kate/api/Page;

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v3, p7

    move-object/from16 v4, p14

    move-object/from16 v5, p15

    move-object/from16 v6, p16

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/AttachmentsHelper;->displayPage(Landroid/widget/TextView;Lcom/perm/kate/api/Page;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :cond_15
    iget-object v0, v11, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v1, "album"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 227
    iget-object v0, v11, Lcom/perm/kate/api/Attachment;->album:Lcom/perm/kate/api/Album;

    invoke-virtual {v9, v14, v0, v10}, Lcom/perm/kate/AttachmentsHelper;->displayAlbum(Landroid/widget/TextView;Lcom/perm/kate/api/Album;Landroid/app/Activity;)V

    .line 228
    :cond_16
    iget-object v0, v11, Lcom/perm/kate/api/Attachment;->type:Ljava/lang/String;

    const-string v1, "wall_reply"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 229
    invoke-virtual {v9, v14, v11, v10}, Lcom/perm/kate/AttachmentsHelper;->displayWallComment(Landroid/widget/TextView;Lcom/perm/kate/api/Attachment;Landroid/app/Activity;)V

    goto :goto_7

    :cond_17
    move-object/from16 v7, v17

    .line 231
    :cond_18
    :goto_7
    instance-of v0, v15, Ljava/util/ArrayList;

    if-eqz v0, :cond_19

    .line 233
    check-cast v15, Ljava/util/ArrayList;

    .line 234
    invoke-virtual {v9, v14, v15, v10}, Lcom/perm/kate/AttachmentsHelper;->displayForwardMessages(Landroid/widget/TextView;Ljava/util/ArrayList;Landroid/app/Activity;)V

    :cond_19
    const/16 v0, 0x8

    goto :goto_8

    :cond_1a
    move-object/from16 v7, v17

    const/16 v0, 0x8

    .line 238
    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_8
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v17, v7

    const/4 v11, 0x0

    goto/16 :goto_5

    .line 242
    :cond_1b
    iget-boolean v0, v9, Lcom/perm/kate/AttachmentsHelper;->linkMargins:Z

    if-nez v0, :cond_1c

    .line 243
    invoke-virtual/range {p9 .. p9}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    .line 244
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 245
    invoke-virtual/range {p9 .. p9}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1c
    return-void
.end method

.method displayAudioStatus(Landroid/view/ViewGroup;JJ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1746
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const v3, 0x7f09009b

    .line 1749
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 1751
    sget-object v4, Lcom/perm/kate/AttachmentsHelper;->voice:Lcom/perm/kate/api/Audio;

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_1

    .line 1752
    iget-wide v5, v4, Lcom/perm/kate/api/Audio;->aid:J

    .line 1753
    iget-wide v7, v4, Lcom/perm/kate/api/Audio;->owner_id:J

    goto :goto_0

    :cond_1
    move-wide v7, v5

    .line 1755
    :goto_0
    iget-wide v9, v2, Lcom/perm/kate/api/Audio;->aid:J

    const/4 v4, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x3

    cmp-long v13, v9, p2

    if-nez v13, :cond_2

    iget-wide v13, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    cmp-long v15, v13, p4

    if-nez v15, :cond_2

    sget-object v13, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v13, :cond_2

    iget v13, v13, Lcom/perm/kate/Player;->state:I

    if-eqz v13, :cond_3

    if-eq v13, v12, :cond_3

    :cond_2
    cmp-long v13, v9, v5

    if-nez v13, :cond_4

    iget-wide v9, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    cmp-long v13, v9, v7

    if-nez v13, :cond_4

    sget-object v9, Lcom/perm/kate/AttachmentsHelper;->voicePlayer:Lcom/perm/kate/Player;

    if-eqz v9, :cond_4

    iget v9, v9, Lcom/perm/kate/Player;->state:I

    if-eqz v9, :cond_3

    if-ne v9, v12, :cond_4

    .line 1762
    :cond_3
    invoke-static {v4}, Lcom/perm/kate/AudioListAdapter;->getAudioIconByTheme(Z)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1763
    iget-object v9, v0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const v10, 0x7f0f03c1

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1765
    :cond_4
    invoke-static {v11}, Lcom/perm/kate/AudioListAdapter;->getAudioIconByTheme(Z)I

    move-result v9

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1766
    iget-object v9, v0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const v10, 0x7f0f03e8

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    const v3, 0x7f090007

    .line 1769
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 1770
    iget-wide v9, v2, Lcom/perm/kate/api/Audio;->aid:J

    cmp-long v3, v9, v5

    if-nez v3, :cond_6

    iget-wide v2, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    cmp-long v5, v2, v7

    if-nez v5, :cond_6

    sget-object v2, Lcom/perm/kate/AttachmentsHelper;->voicePlayer:Lcom/perm/kate/Player;

    if-eqz v2, :cond_6

    iget v2, v2, Lcom/perm/kate/Player;->state:I

    if-eqz v2, :cond_5

    if-eq v2, v12, :cond_5

    if-ne v2, v11, :cond_6

    .line 1773
    :cond_5
    sget-object v2, Lcom/perm/kate/AttachmentsHelper;->voice:Lcom/perm/kate/api/Audio;

    iget-wide v2, v2, Lcom/perm/kate/api/Audio;->duration:J

    long-to-int v3, v2

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 1774
    sget-object v2, Lcom/perm/kate/AttachmentsHelper;->voicePlayer:Lcom/perm/kate/Player;

    invoke-virtual {v2}, Lcom/perm/kate/Player;->getCurrentPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_2

    .line 1776
    :cond_6
    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    :goto_2
    return-void
.end method

.method public displayAudios(Landroid/view/ViewGroup;Ljava/util/ArrayList;Landroid/app/Activity;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 22
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p3

    const/4 v11, 0x0

    const/4 v0, 0x0

    .line 1358
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    const/4 v12, 0x0

    if-ge v0, v1, :cond_0

    .line 1359
    invoke-virtual {v9, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1360
    iget-object v2, v8, Lcom/perm/kate/AttachmentsHelper;->audioPool:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1362
    invoke-virtual {v1, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1365
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1367
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 1369
    iget-object v2, v8, Lcom/perm/kate/AttachmentsHelper;->audioPool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez v2, :cond_1

    .line 1371
    invoke-static/range {p3 .. p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c002f

    invoke-virtual {v2, v3, v9, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1372
    iget-object v3, v8, Lcom/perm/kate/AttachmentsHelper;->audioViews:Ljava/util/ArrayList;

    move-object v4, v2

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1374
    :cond_1
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    .line 1375
    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    .line 1376
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1377
    invoke-virtual {v9, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1383
    :cond_2
    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    const-wide/16 v13, 0x0

    if-eqz v0, :cond_3

    .line 1384
    iget-wide v1, v0, Lcom/perm/kate/api/Audio;->aid:J

    .line 1385
    iget-wide v3, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    move-wide v15, v1

    move-wide/from16 v17, v3

    goto :goto_2

    :cond_3
    move-wide v15, v13

    move-wide/from16 v17, v15

    :goto_2
    const/4 v7, 0x0

    .line 1389
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v7, v0, :cond_d

    .line 1390
    invoke-virtual {v9, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/view/ViewGroup;

    .line 1392
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v5, 0x8

    if-ge v7, v0, :cond_c

    move-object/from16 v4, p2

    .line 1393
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/perm/kate/api/Audio;

    .line 1394
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1396
    iget-object v0, v3, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_4

    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 1397
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1402
    iget-wide v0, v3, Lcom/perm/kate/api/Audio;->aid:J

    cmp-long v2, v0, v13

    if-lez v2, :cond_5

    .line 1403
    new-instance v2, Lcom/perm/kate/AttachmentsHelper$AudioClickListener;

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v11, v2

    move-object/from16 v2, p2

    move-object v13, v3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    const/16 v14, 0x8

    move-object/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/AttachmentsHelper$AudioClickListener;-><init>(Lcom/perm/kate/AttachmentsHelper;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_5

    :cond_5
    move-object v13, v3

    const/16 v14, 0x8

    .line 1405
    invoke-virtual {v6, v12}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1406
    :goto_5
    iget-wide v0, v13, Lcom/perm/kate/api/Audio;->aid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_6

    const v0, 0x7f0f0421

    .line 1407
    invoke-virtual {v10, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v13, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    .line 1408
    invoke-virtual {v10, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v13, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    :cond_6
    const v0, 0x7f090045

    .line 1410
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1411
    invoke-virtual {v13}, Lcom/perm/kate/api/Audio;->isPodcast()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0f03f5

    invoke-virtual {v10, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_7
    iget-object v1, v13, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    .line 1412
    :goto_6
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1413
    iget-wide v1, v13, Lcom/perm/kate/api/Audio;->aid:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_8

    const/4 v5, 0x0

    goto :goto_7

    :cond_8
    const/16 v5, 0x8

    :goto_7
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f09033a

    .line 1414
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1415
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v13, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v13, Lcom/perm/kate/api/Audio;->duration:J

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->getDurationTextBySeconds(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f090329

    .line 1417
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1418
    iget-object v1, v13, Lcom/perm/kate/api/Audio;->transcript:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-boolean v1, v8, Lcom/perm/kate/AttachmentsHelper;->show_transcript:Z

    if-eqz v1, :cond_9

    .line 1419
    iget-object v1, v13, Lcom/perm/kate/api/Audio;->transcript:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 1420
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_8

    .line 1422
    :cond_9
    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_8
    const v0, 0x7f09009b

    .line 1424
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/ImageView;

    .line 1425
    iget-wide v0, v13, Lcom/perm/kate/api/Audio;->aid:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_a

    .line 1426
    new-instance v5, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v13

    move-object/from16 v4, p4

    move-object v12, v5

    move-object/from16 v5, p5

    move-object v14, v6

    move-object/from16 v6, p6

    move/from16 v19, v7

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;-><init>(Lcom/perm/kate/AttachmentsHelper;Ljava/util/ArrayList;Lcom/perm/kate/api/Audio;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9

    :cond_a
    move-object v14, v6

    move/from16 v19, v7

    .line 1429
    new-instance v0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;

    invoke-direct {v0, v8, v13}, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;-><init>(Lcom/perm/kate/AttachmentsHelper;Lcom/perm/kate/api/Audio;)V

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_9
    const v0, 0x7f090007

    .line 1430
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 1431
    iget-wide v1, v13, Lcom/perm/kate/api/Audio;->aid:J

    const-wide/16 v6, 0x0

    cmp-long v3, v1, v6

    if-gez v3, :cond_b

    const/4 v11, 0x0

    .line 1432
    invoke-virtual {v0, v11}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 1435
    iget-object v1, v8, Lcom/perm/kate/AttachmentsHelper;->seekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 1436
    invoke-virtual {v0, v13}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    .line 1438
    sget v1, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-static {v0, v1}, Lcom/perm/utils/SeekBarHelper;->setSeekBarColor(Landroid/widget/SeekBar;I)V

    goto :goto_a

    :cond_b
    const/16 v1, 0x8

    const/4 v11, 0x0

    .line 1440
    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    :goto_a
    move-object/from16 v0, p0

    move-object v1, v14

    move-wide v2, v15

    move-wide/from16 v4, v17

    .line 1442
    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/AttachmentsHelper;->displayAudioStatus(Landroid/view/ViewGroup;JJ)V

    const/4 v0, 0x0

    goto :goto_b

    :cond_c
    move/from16 v19, v7

    const/16 v1, 0x8

    move-wide/from16 v20, v13

    move-object v14, v6

    move-wide/from16 v6, v20

    .line 1445
    invoke-virtual {v14, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    .line 1446
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    :goto_b
    add-int/lit8 v1, v19, 0x1

    move-object v12, v0

    move-wide v13, v6

    move v7, v1

    goto/16 :goto_3

    :cond_d
    return-void
.end method

.method public displayDocument(Landroid/widget/TextView;Lcom/perm/kate/api/Document;Landroid/app/Activity;)V
    .locals 3

    .line 966
    iget-wide v0, p2, Lcom/perm/kate/api/Document;->size:J

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDocumentDisplaySize(J)Ljava/lang/String;

    move-result-object v0

    .line 967
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0f00c7

    invoke-virtual {p3, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p2, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ("

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 968
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 969
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 970
    iget-object p2, p0, Lcom/perm/kate/AttachmentsHelper;->documentClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x0

    .line 971
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public displayForwardMessages(Landroid/widget/TextView;Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 1

    const v0, 0x7f0f00f0

    .line 1012
    invoke-virtual {p3, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 1013
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1014
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1015
    iget-object p2, p0, Lcom/perm/kate/AttachmentsHelper;->forwardedMessageClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x0

    .line 1016
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public displayGeo(Landroid/widget/TextView;Lcom/perm/kate/api/Geo;Landroid/app/Activity;)V
    .locals 1

    const v0, 0x7f0f03e6

    .line 958
    invoke-virtual {p3, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    .line 959
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 960
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 961
    iget-object p2, p0, Lcom/perm/kate/AttachmentsHelper;->geoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x0

    .line 962
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public displayGifts(Landroid/view/ViewGroup;Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 777
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_0

    .line 779
    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v7, p3

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 780
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const-string v8, "\u041f\u043e\u0434\u0430\u0440\u043e\u043a"

    .line 781
    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 782
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    .line 783
    invoke-static {v9, v10}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v5

    .line 784
    invoke-virtual {v8, v3, v5, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 785
    invoke-virtual {v1, v6, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 788
    :cond_0
    iget v2, v0, Lcom/perm/kate/AttachmentsHelper;->available_width:I

    invoke-static {}, Lcom/perm/kate/Helper;->getScale()F

    move-result v4

    invoke-static {v2, v4}, Lcom/perm/kate/AttachmentsHelper;->getImageViewSizeGift(IF)[I

    move-result-object v2

    const/4 v4, 0x0

    .line 791
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 792
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v9, v6

    check-cast v9, Landroid/widget/ImageView;

    .line 793
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    move-object/from16 v6, p2

    .line 794
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/perm/kate/api/Gift;

    .line 796
    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 797
    aget v10, v2, v3

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 798
    aget v10, v2, v5

    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 799
    invoke-virtual {v9}, Landroid/widget/ImageView;->requestLayout()V

    .line 801
    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 802
    iget-object v8, v0, Lcom/perm/kate/AttachmentsHelper;->giftClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 803
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 804
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v13

    .line 806
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v8

    iget-object v10, v7, Lcom/perm/kate/api/Gift;->thumb_256:Ljava/lang/String;

    const/4 v11, 0x1

    aget v12, v2, v3

    aget v14, v2, v5

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v7, v8

    move-object v8, v10

    move v10, v11

    move v11, v12

    move v12, v14

    move v14, v15

    move/from16 v15, v16

    move/from16 v16, v17

    invoke-virtual/range {v7 .. v16}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZZ)V

    goto :goto_2

    :cond_1
    move-object/from16 v6, p2

    const/16 v7, 0x8

    .line 810
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v7, 0x0

    .line 811
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public displayLink(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "/poll"

    .line 919
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0f03f7

    goto :goto_0

    :cond_0
    const v0, 0x7f0f0317

    .line 920
    :goto_0
    invoke-virtual {p4, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/story"

    .line 922
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v0, 0x7f0f0495

    .line 923
    invoke-virtual {p4, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string p4, ": "

    if-eqz p3, :cond_2

    const-string v1, ""

    .line 924
    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 925
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    .line 927
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 928
    :goto_1
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 929
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const p2, 0x7f090008

    .line 930
    invoke-virtual {p1, p2, p5}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const p2, 0x7f09000b

    .line 931
    invoke-virtual {p1, p2, p6}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const p2, 0x7f090016

    .line 932
    invoke-virtual {p1, p2, p7}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 933
    iget-object p2, p0, Lcom/perm/kate/AttachmentsHelper;->linkClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x0

    .line 934
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public displayMessagesExpanded(Landroid/view/ViewGroup;Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1847
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 1849
    invoke-virtual/range {p1 .. p2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 1850
    iget-object v5, v0, Lcom/perm/kate/AttachmentsHelper;->forwardedMessageClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1853
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v5, :cond_0

    .line 1855
    invoke-static/range {p3 .. p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f0c00b7

    invoke-virtual {v8, v9, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 1857
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v9, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    .line 1858
    invoke-static {v10, v11}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v10

    .line 1859
    invoke-virtual {v9, v10, v6, v10, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 1860
    invoke-virtual {v1, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 1864
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-ge v5, v7, :cond_9

    .line 1865
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 1866
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v5, v8, :cond_8

    move-object/from16 v8, p2

    .line 1867
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/perm/kate/api/Attachment;

    iget-object v9, v9, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    .line 1868
    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1871
    iget-boolean v10, v9, Lcom/perm/kate/api/Message;->is_out:Z

    if-eqz v10, :cond_1

    sget-object v10, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v10}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    goto :goto_2

    :cond_1
    iget-wide v10, v9, Lcom/perm/kate/api/Message;->uid:J

    :goto_2
    const v12, 0x7f090270

    .line 1873
    invoke-virtual {v7, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    move-object v15, v12

    check-cast v15, Landroid/widget/ImageView;

    .line 1874
    invoke-static {v10, v11}, Lcom/perm/kate/api/User;->isVirtualUser(J)Z

    move-result v12

    const-string v14, " "

    const/4 v13, 0x0

    if-nez v12, :cond_3

    .line 1875
    iget-object v12, v0, Lcom/perm/kate/AttachmentsHelper;->userCache:Lcom/perm/utils/UserCache;

    invoke-virtual {v12, v10, v11}, Lcom/perm/utils/UserCache;->get(J)Lcom/perm/kate/api/User;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 1877
    iget-object v13, v10, Lcom/perm/kate/api/User;->photo_medium_rec:Ljava/lang/String;

    .line 1878
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v10, Lcom/perm/kate/api/User;->first_name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v10, Lcom/perm/kate/api/User;->last_name:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v20, v13

    move-object v13, v10

    move-object/from16 v10, v20

    goto :goto_3

    :cond_2
    move-object v10, v13

    :goto_3
    move-object v11, v10

    goto :goto_4

    .line 1881
    :cond_3
    iget-object v12, v0, Lcom/perm/kate/AttachmentsHelper;->groupCache:Lcom/perm/utils/GroupCache;

    invoke-virtual {v12, v10, v11}, Lcom/perm/utils/GroupCache;->get(J)Lcom/perm/kate/api/Group;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 1883
    iget-object v11, v10, Lcom/perm/kate/api/Group;->photo_medium:Ljava/lang/String;

    .line 1884
    iget-object v13, v10, Lcom/perm/kate/api/Group;->name:Ljava/lang/String;

    :goto_4
    move-object v10, v13

    goto :goto_5

    :cond_4
    move-object v10, v13

    move-object v11, v10

    .line 1888
    :goto_5
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v13

    const/16 v16, 0x1

    const/16 v17, 0x5a

    invoke-static {}, Lcom/perm/kate/Helper;->getAvaStubId()I

    move-result v18

    const/16 v19, 0x1

    move-object v12, v14

    move-object v14, v11

    invoke-virtual/range {v13 .. v19}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 1889
    iget-wide v13, v9, Lcom/perm/kate/api/Message;->date:J

    invoke-static {v2, v13, v14}, Lcom/perm/kate/Helper;->getAgo(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    const v13, 0x7f090339

    .line 1890
    invoke-virtual {v7, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1892
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 1893
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", "

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1894
    :cond_5
    invoke-virtual {v13, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v10, 0x7f090329

    .line 1896
    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1897
    new-instance v10, Landroid/text/SpannableStringBuilder;

    iget-object v11, v9, Lcom/perm/kate/api/Message;->body:Ljava/lang/String;

    invoke-direct {v10, v11}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1898
    sget-object v11, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v11, v10}, Lcom/perm/utils/SmileHelper;->getSmiledText(Landroid/content/Context;Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    .line 1899
    iget-object v9, v9, Lcom/perm/kate/api/Message;->attachments:Ljava/util/ArrayList;

    invoke-static {v2, v9}, Lcom/perm/kate/DialogsAdapter;->getAttachmnetsText(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v9

    .line 1900
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_7

    .line 1901
    invoke-virtual {v10}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_6

    invoke-virtual {v10, v12}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1902
    :cond_6
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1904
    :cond_7
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_8
    move-object/from16 v8, p2

    const/16 v9, 0x8

    .line 1907
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_9
    move-object/from16 v8, p2

    .line 1910
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 1911
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_a

    .line 1912
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "displayMessagesExpanded="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v1, v3

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Kate.AttachmentsHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void
.end method

.method public displayNote(Landroid/widget/TextView;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1021
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0f0380

    invoke-virtual {p5, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p5, ": "

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1024
    iget-object p2, p0, Lcom/perm/kate/AttachmentsHelper;->notesClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public displayPage(Landroid/widget/TextView;Lcom/perm/kate/api/Page;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0f03b7

    invoke-virtual {p3, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p2, Lcom/perm/kate/api/Page;->title:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 939
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 940
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http://vk.com/page-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcom/perm/kate/api/Page;->group_id:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcom/perm/kate/api/Page;->id:J

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 941
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    const p2, 0x7f090008

    .line 942
    invoke-virtual {p1, p2, p4}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const p2, 0x7f09000b

    .line 943
    invoke-virtual {p1, p2, p5}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    const p2, 0x7f090016

    .line 944
    invoke-virtual {p1, p2, p6}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 945
    iget-object p2, p0, Lcom/perm/kate/AttachmentsHelper;->linkClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p2, 0x0

    .line 946
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public displayPhotos(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 37
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    .line 283
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-gtz v5, :cond_1

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    const/16 v5, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v5, 0x0

    .line 290
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    const-string v9, "p"

    const-string v10, "d"

    const-string v11, "v"

    const v12, 0x7f09019e

    if-ge v5, v8, :cond_5

    .line 291
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 292
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v13

    iget-object v13, v13, Lcom/perm/kate/ImageLoader;->photosQueue:Lcom/perm/kate/ImageLoader$PhotosQueue;

    invoke-virtual {v13, v8}, Lcom/perm/kate/ImageLoader$PhotosQueue;->Clean(Landroid/view/View;)V

    .line 294
    invoke-virtual {v8, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 295
    iget-object v11, v0, Lcom/perm/kate/AttachmentsHelper;->videoPool:Ljava/util/LinkedList;

    invoke-virtual {v11, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_2
    invoke-virtual {v8, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 297
    iget-object v10, v0, Lcom/perm/kate/AttachmentsHelper;->docPool:Ljava/util/LinkedList;

    invoke-virtual {v10, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_3
    invoke-virtual {v8, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 299
    iget-object v9, v0, Lcom/perm/kate/AttachmentsHelper;->photoPool:Ljava/util/LinkedList;

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v9, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 303
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 305
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 306
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perm/kate/api/Photo;

    .line 307
    new-instance v14, Lcom/perm/kate/PhotoPlace;

    invoke-direct {v14, v13}, Lcom/perm/kate/PhotoPlace;-><init>(Lcom/perm/kate/api/Photo;)V

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 308
    :cond_6
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perm/kate/api/Video;

    .line 309
    new-instance v14, Lcom/perm/kate/PhotoPlace;

    invoke-direct {v14, v13}, Lcom/perm/kate/PhotoPlace;-><init>(Lcom/perm/kate/api/Video;)V

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 310
    :cond_7
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perm/kate/api/Document;

    .line 311
    new-instance v14, Lcom/perm/kate/PhotoPlace;

    invoke-direct {v14, v13}, Lcom/perm/kate/PhotoPlace;-><init>(Lcom/perm/kate/api/Document;)V

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 313
    :cond_8
    iget-boolean v8, v0, Lcom/perm/kate/AttachmentsHelper;->big_photos:Z

    iget v13, v0, Lcom/perm/kate/AttachmentsHelper;->available_width:I

    iget-boolean v14, v0, Lcom/perm/kate/AttachmentsHelper;->mosaic_enabled:Z

    invoke-static {}, Lcom/perm/kate/Helper;->getScale()F

    move-result v15

    invoke-static {v5, v8, v13, v14, v15}, Lcom/perm/kate/AttachmentsHelper;->calculateMosaic(Ljava/util/ArrayList;ZIZF)Ljava/util/ArrayList;

    move-result-object v5

    .line 317
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v8, 0x0

    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/perm/kate/PhotoRow;

    .line 318
    iget-object v13, v13, Lcom/perm/kate/PhotoRow;->photos:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_15

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/perm/kate/PhotoPlace;

    .line 319
    iget v15, v14, Lcom/perm/kate/PhotoPlace;->type:I

    if-nez v15, :cond_c

    .line 320
    iget-object v15, v0, Lcom/perm/kate/AttachmentsHelper;->photoPool:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    if-nez v15, :cond_9

    .line 322
    new-instance v15, Landroid/widget/ImageView;

    move-object/from16 v7, p5

    invoke-direct {v15, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 324
    invoke-virtual {v15, v12, v9}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_8

    :cond_9
    move-object/from16 v7, p5

    .line 330
    :goto_8
    sget-object v12, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v15, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 331
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    move-object/from16 v26, v5

    const v5, 0x7f0f0265

    invoke-virtual {v6, v5}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v8, 0x1

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 332
    new-instance v6, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v12, 0x1

    invoke-direct {v6, v12, v12, v12, v12}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 337
    iget v12, v14, Lcom/perm/kate/PhotoPlace;->width:I

    iput v12, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 338
    iget v12, v14, Lcom/perm/kate/PhotoPlace;->height:I

    iput v12, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 339
    iget v12, v14, Lcom/perm/kate/PhotoPlace;->x:I

    iput v12, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 340
    iget v12, v14, Lcom/perm/kate/PhotoPlace;->y:I

    iput v12, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 341
    invoke-virtual {v1, v15, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v6, 0x0

    .line 343
    invoke-virtual {v15, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const v6, 0x7f090008

    .line 344
    invoke-virtual {v15, v6, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    const v6, 0x7f09000b

    .line 345
    invoke-virtual {v15, v6, v3}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    const v6, 0x7f090016

    .line 346
    invoke-virtual {v15, v6, v4}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 347
    iget-object v6, v0, Lcom/perm/kate/AttachmentsHelper;->linkPreviews:Ljava/util/HashMap;

    iget-object v12, v14, Lcom/perm/kate/PhotoPlace;->photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {v6, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 348
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const v8, 0x7f09000a

    invoke-virtual {v15, v8, v6}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    move-object/from16 v6, p2

    const v8, 0x7f090011

    .line 349
    invoke-virtual {v15, v8, v6}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 350
    iget-object v8, v0, Lcom/perm/kate/AttachmentsHelper;->photoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v15, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9

    :cond_a
    move-object/from16 v6, p2

    .line 352
    iget-object v8, v0, Lcom/perm/kate/AttachmentsHelper;->linkPreviews:Ljava/util/HashMap;

    iget-object v12, v14, Lcom/perm/kate/PhotoPlace;->photo:Lcom/perm/kate/api/Photo;

    invoke-virtual {v8, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/perm/kate/api/Link;

    iget-object v8, v8, Lcom/perm/kate/api/Link;->url:Ljava/lang/String;

    invoke-virtual {v15, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 353
    iget-object v8, v0, Lcom/perm/kate/AttachmentsHelper;->linkClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v15, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 355
    :goto_9
    iget-boolean v8, v0, Lcom/perm/kate/AttachmentsHelper;->big_photos:Z

    if-eqz v8, :cond_b

    iget-object v8, v14, Lcom/perm/kate/PhotoPlace;->photo:Lcom/perm/kate/api/Photo;

    iget-object v8, v8, Lcom/perm/kate/api/Photo;->src_big:Ljava/lang/String;

    goto :goto_a

    :cond_b
    iget-object v8, v14, Lcom/perm/kate/PhotoPlace;->photo:Lcom/perm/kate/api/Photo;

    iget-object v8, v8, Lcom/perm/kate/api/Photo;->src:Ljava/lang/String;

    :goto_a
    move-object/from16 v17, v8

    .line 356
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v22

    .line 357
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v16

    const/16 v19, 0x1

    iget v8, v14, Lcom/perm/kate/PhotoPlace;->width:I

    iget v12, v14, Lcom/perm/kate/PhotoPlace;->height:I

    const/16 v23, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v18, v15

    move/from16 v20, v8

    move/from16 v21, v12

    invoke-virtual/range {v16 .. v25}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZZ)V

    move v8, v5

    goto :goto_b

    :cond_c
    move-object/from16 v6, p2

    move-object/from16 v7, p5

    move-object/from16 v26, v5

    .line 362
    :goto_b
    iget v5, v14, Lcom/perm/kate/PhotoPlace;->type:I

    const/4 v12, 0x1

    if-ne v5, v12, :cond_f

    .line 363
    iget-object v5, v0, Lcom/perm/kate/AttachmentsHelper;->videoPool:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-nez v5, :cond_d

    .line 365
    invoke-static/range {p5 .. p5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v12, 0x7f0c0139

    const/4 v15, 0x0

    invoke-virtual {v5, v12, v1, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v12, 0x7f09019e

    .line 367
    invoke-virtual {v5, v12, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 369
    :cond_d
    new-instance v12, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v15, 0x1

    invoke-direct {v12, v15, v15, v15, v15}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 372
    iget v15, v14, Lcom/perm/kate/PhotoPlace;->width:I

    iput v15, v12, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 373
    iget v15, v14, Lcom/perm/kate/PhotoPlace;->height:I

    iput v15, v12, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 374
    iget v15, v14, Lcom/perm/kate/PhotoPlace;->x:I

    iput v15, v12, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 375
    iget v15, v14, Lcom/perm/kate/PhotoPlace;->y:I

    iput v15, v12, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 376
    invoke-virtual {v1, v5, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 378
    iget-object v12, v14, Lcom/perm/kate/PhotoPlace;->video:Lcom/perm/kate/api/Video;

    const v15, 0x7f090177

    .line 380
    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v29, v18

    check-cast v29, Landroid/widget/ImageView;

    const v15, 0x7f09033a

    .line 381
    invoke-virtual {v5, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v15, v18

    check-cast v15, Landroid/widget/TextView;

    .line 383
    invoke-virtual/range {v29 .. v29}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v6, v18

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 384
    iget v7, v14, Lcom/perm/kate/PhotoPlace;->width:I

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 385
    iget v7, v14, Lcom/perm/kate/PhotoPlace;->height:I

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 386
    invoke-virtual/range {v29 .. v29}, Landroid/widget/ImageView;->requestLayout()V

    .line 387
    invoke-virtual {v15}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 388
    iget v7, v14, Lcom/perm/kate/PhotoPlace;->width:I

    iput v7, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 390
    invoke-virtual {v15}, Landroid/widget/TextView;->requestLayout()V

    .line 392
    iget-wide v6, v12, Lcom/perm/kate/api/Video;->duration:J

    invoke-static {v6, v7}, Lcom/perm/kate/Helper;->getDurationTextBySeconds(J)Ljava/lang/String;

    move-result-object v6

    .line 393
    iget-object v7, v12, Lcom/perm/kate/api/Video;->platform:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_e

    .line 394
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v8

    iget-object v8, v12, Lcom/perm/kate/api/Video;->platform:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " \u00b7 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_c

    :cond_e
    move/from16 v18, v8

    :goto_c
    const v7, 0x7f0900fa

    .line 395
    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 396
    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object v6, v12, Lcom/perm/kate/api/Video;->title:Ljava/lang/String;

    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v27

    iget-object v6, v12, Lcom/perm/kate/api/Video;->image_big:Ljava/lang/String;

    const/16 v30, 0x1

    iget v7, v14, Lcom/perm/kate/PhotoPlace;->width:I

    iget v8, v14, Lcom/perm/kate/PhotoPlace;->height:I

    const v33, 0x7f080152

    const/16 v34, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v28, v6

    move/from16 v31, v7

    move/from16 v32, v8

    invoke-virtual/range {v27 .. v36}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZZ)V

    const v6, 0x7f090011

    .line 404
    invoke-virtual {v5, v6, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v6, 0x7f09000b

    .line 405
    invoke-virtual {v5, v6, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v6, 0x7f090016

    .line 406
    invoke-virtual {v5, v6, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 407
    new-instance v6, Lcom/perm/kate/AttachmentsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v6, v0}, Lcom/perm/kate/AttachmentsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/perm/kate/AttachmentsHelper;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    invoke-virtual {v5, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const v6, 0x7f09003c

    .line 410
    iget-wide v7, v12, Lcom/perm/kate/api/Video;->vid:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 411
    iget-wide v6, v12, Lcom/perm/kate/api/Video;->owner_id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const v7, 0x7f090008

    invoke-virtual {v5, v7, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 412
    iget-object v6, v12, Lcom/perm/kate/api/Video;->access_key:Ljava/lang/String;

    const v8, 0x7f09000a

    invoke-virtual {v5, v8, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v6, 0x7f090278

    .line 414
    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 415
    iget-object v6, v0, Lcom/perm/kate/AttachmentsHelper;->videoPlayClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    invoke-virtual {v5, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 417
    invoke-virtual {v5, v7, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v6, 0x7f09000b

    .line 418
    invoke-virtual {v5, v6, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const v6, 0x7f090016

    .line 419
    invoke-virtual {v5, v6, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_d

    :cond_f
    move/from16 v18, v8

    .line 421
    :goto_d
    iget v5, v14, Lcom/perm/kate/PhotoPlace;->type:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_14

    .line 422
    iget-object v5, v0, Lcom/perm/kate/AttachmentsHelper;->docPool:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-nez v5, :cond_10

    .line 424
    invoke-static/range {p5 .. p5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0c0067

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    const v6, 0x7f09019e

    .line 426
    invoke-virtual {v5, v6, v10}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    goto :goto_e

    :cond_10
    const v6, 0x7f09019e

    const/4 v7, 0x0

    .line 428
    :goto_e
    new-instance v8, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v12, 0x1

    invoke-direct {v8, v12, v12, v12, v12}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 429
    iget v12, v14, Lcom/perm/kate/PhotoPlace;->width:I

    iput v12, v8, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 430
    iget v12, v14, Lcom/perm/kate/PhotoPlace;->height:I

    iput v12, v8, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 431
    iget v12, v14, Lcom/perm/kate/PhotoPlace;->x:I

    iput v12, v8, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 432
    iget v12, v14, Lcom/perm/kate/PhotoPlace;->y:I

    iput v12, v8, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 433
    invoke-virtual {v1, v5, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 435
    iget-object v8, v14, Lcom/perm/kate/PhotoPlace;->doc:Lcom/perm/kate/api/Document;

    const v12, 0x7f090177

    .line 437
    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v29, v12

    check-cast v29, Landroid/widget/ImageView;

    const v12, 0x7f09033a

    .line 438
    invoke-virtual {v5, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 440
    invoke-virtual/range {v29 .. v29}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/FrameLayout$LayoutParams;

    .line 441
    iget v6, v14, Lcom/perm/kate/PhotoPlace;->width:I

    iput v6, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 442
    iget v6, v14, Lcom/perm/kate/PhotoPlace;->height:I

    iput v6, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 443
    invoke-virtual/range {v29 .. v29}, Landroid/widget/ImageView;->requestLayout()V

    .line 444
    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 445
    iget v15, v14, Lcom/perm/kate/PhotoPlace;->width:I

    iput v15, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 447
    invoke-virtual {v12}, Landroid/widget/TextView;->requestLayout()V

    .line 449
    iget-wide v1, v8, Lcom/perm/kate/api/Document;->size:J

    invoke-static {v1, v2}, Lcom/perm/kate/Helper;->getDocumentDisplaySize(J)Ljava/lang/String;

    move-result-object v1

    .line 451
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v8, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v1, v8, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->isGraffiti(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/16 v1, 0x8

    .line 455
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f

    :cond_11
    const/16 v1, 0x8

    .line 457
    :goto_f
    iget-object v2, v8, Lcom/perm/kate/api/Document;->thumb_o:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v8, Lcom/perm/kate/api/Document;->thumb:Ljava/lang/String;

    goto :goto_10

    :cond_12
    iget-object v2, v8, Lcom/perm/kate/api/Document;->thumb_o:Ljava/lang/String;

    .line 461
    :goto_10
    iget-object v6, v8, Lcom/perm/kate/api/Document;->title:Ljava/lang/String;

    invoke-static {v6}, Lcom/perm/kate/PhotoViewerActrivity;->isGraffiti(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 462
    iget-object v2, v8, Lcom/perm/kate/api/Document;->url:Ljava/lang/String;

    :cond_13
    move-object/from16 v28, v2

    .line 463
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v27

    const/16 v30, 0x1

    iget v2, v14, Lcom/perm/kate/PhotoPlace;->width:I

    iget v6, v14, Lcom/perm/kate/PhotoPlace;->height:I

    .line 464
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v33

    const/16 v34, 0x1

    const/16 v35, 0x0

    const/16 v36, 0x0

    move/from16 v31, v2

    move/from16 v32, v6

    .line 463
    invoke-virtual/range {v27 .. v36}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZZ)V

    .line 466
    iget-object v2, v0, Lcom/perm/kate/AttachmentsHelper;->documentWithPreviewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 467
    iget-object v2, v0, Lcom/perm/kate/AttachmentsHelper;->documentWithPreviewLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v5, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 468
    invoke-virtual {v5, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_11

    :cond_14
    const/16 v1, 0x8

    const/4 v7, 0x0

    :goto_11
    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move/from16 v8, v18

    move-object/from16 v5, v26

    const v12, 0x7f09019e

    goto/16 :goto_7

    :cond_15
    const/4 v7, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    goto/16 :goto_6

    :cond_16
    return-void
.end method

.method public displayPollAttachment(Landroid/widget/TextView;Lcom/perm/kate/api/VkPoll;Landroid/app/Activity;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1029
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0f03f7

    invoke-virtual {p3, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p2, Lcom/perm/kate/api/VkPoll;->question:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1031
    iget-object p3, p0, Lcom/perm/kate/AttachmentsHelper;->pollClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1032
    iget-wide v0, p2, Lcom/perm/kate/api/VkPoll;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const v0, 0x7f09003c

    invoke-virtual {p1, v0, p3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 1033
    iget-wide v0, p2, Lcom/perm/kate/api/VkPoll;->owner_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const v0, 0x7f090008

    invoke-virtual {p1, v0, p3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 1034
    iget-boolean p2, p2, Lcom/perm/kate/api/VkPoll;->is_board:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const p3, 0x7f09000a

    invoke-virtual {p1, p3, p2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public displayStickers(Landroid/view/ViewGroup;Ljava/util/ArrayList;Landroid/app/Activity;)V
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const/4 v2, 0x0

    .line 492
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 494
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 496
    new-instance v5, Landroid/widget/ImageView;

    invoke-direct {v5, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 501
    sget-object v6, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 502
    sget-object v6, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const v7, 0x7f0f0490

    invoke-virtual {v6, v7}, Landroid/app/Application;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 503
    new-instance v6, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v7, 0x1

    invoke-direct {v6, v7, v7, v7, v7}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 504
    invoke-virtual {v0, v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v3, 0x4060000000000000L    # 128.0

    .line 508
    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    .line 512
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v15, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/perm/kate/api/Sticker;

    .line 513
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroid/widget/ImageView;

    .line 515
    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 516
    iput v3, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->width:I

    .line 517
    iput v3, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->height:I

    .line 518
    iput v2, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 519
    iput v2, v6, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 520
    invoke-virtual {v7}, Landroid/widget/ImageView;->requestLayout()V

    .line 522
    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 527
    new-instance v6, Lcom/perm/kate/AttachmentsHelper$2;

    move-object/from16 v14, p0

    invoke-direct {v6, v14, v5, v1, v7}, Lcom/perm/kate/AttachmentsHelper$2;-><init>(Lcom/perm/kate/AttachmentsHelper;Lcom/perm/kate/api/Sticker;Landroid/app/Activity;Landroid/widget/ImageView;)V

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 590
    iget-object v6, v5, Lcom/perm/kate/api/Sticker;->photo_64:Ljava/lang/String;

    const/16 v8, 0x40

    if-le v3, v8, :cond_1

    .line 593
    iget-object v6, v5, Lcom/perm/kate/api/Sticker;->photo_128:Ljava/lang/String;

    :cond_1
    const/16 v8, 0x80

    if-le v3, v8, :cond_2

    .line 595
    iget-object v6, v5, Lcom/perm/kate/api/Sticker;->photo_256:Ljava/lang/String;

    .line 599
    :cond_2
    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->isLightTheme()Z

    move-result v5

    if-nez v5, :cond_3

    .line 600
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "b"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v6, v5

    .line 602
    :cond_3
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v11

    .line 603
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v5

    const/4 v8, 0x1

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v16, 0x0

    move v9, v3

    move v10, v3

    move/from16 v14, v16

    invoke-virtual/range {v5 .. v14}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIIZZZ)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 610
    :cond_4
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v15, v1, :cond_5

    .line 611
    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/16 v2, 0x8

    .line 612
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v2, 0x0

    .line 613
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public displayWallComment(Landroid/widget/TextView;Lcom/perm/kate/api/Attachment;Landroid/app/Activity;)V
    .locals 4

    .line 998
    iget-object v0, p2, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    iget-object v0, v0, Lcom/perm/kate/api/Comment;->message:Ljava/lang/String;

    const/16 v1, 0xa

    const/16 v2, 0x20

    .line 1000
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 1002
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x46

    if-le v1, v3, :cond_0

    .line 1003
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1004
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0f04dd

    invoke-virtual {p3, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1005
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1006
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 1007
    iget-object p2, p0, Lcom/perm/kate/AttachmentsHelper;->wallCommentClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1008
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public displayWallMessage(Landroid/widget/TextView;Lcom/perm/kate/api/Attachment;Landroid/app/Activity;)V
    .locals 4

    .line 978
    iget-object v0, p2, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    const/16 v1, 0x46

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, v0, Lcom/perm/kate/api/WallMessage;->text:Ljava/lang/String;

    .line 980
    invoke-static {v0}, Lcom/perm/kate/Helper;->removeBrokenChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xa

    const/16 v3, 0x20

    .line 982
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 983
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 984
    iget-object v2, p2, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    iget-object v2, v2, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 985
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p2, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    iget-object v0, v0, Lcom/perm/kate/api/WallMessage;->attachments:Ljava/util/ArrayList;

    invoke-static {p3, v0}, Lcom/perm/kate/DialogsAdapter;->getAttachmnetsText(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 987
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    if-le v2, v1, :cond_2

    .line 988
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "..."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 989
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0f059e

    invoke-virtual {p3, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 990
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 991
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 992
    iget-object p2, p0, Lcom/perm/kate/AttachmentsHelper;->wallMessageClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 993
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method isMosaicEnabled()Z
    .locals 3

    .line 1838
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "key_mosaic"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method isTranscriptEnabled()Z
    .locals 3

    .line 1842
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "transcript"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setVoiceSpeed(F)V
    .locals 1

    .line 1452
    invoke-static {p1}, Lcom/perm/kate/AttachmentsHelper;->saveVoiceSpeed(F)V

    .line 1453
    sget-object v0, Lcom/perm/kate/AttachmentsHelper;->voicePlayer:Lcom/perm/kate/Player;

    if-eqz v0, :cond_0

    .line 1454
    invoke-virtual {v0, p1}, Lcom/perm/kate/Player;->setVoiceSpeed(F)V

    :cond_0
    return-void
.end method

.method videoClick(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p1

    const v1, 0x7f09003c

    .line 1084
    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const v2, 0x7f090008

    .line 1085
    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    const v3, 0x7f09000a

    .line 1086
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    .line 1087
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lcom/perm/kate/api/Video;

    const v3, 0x7f090011

    .line 1088
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Ljava/lang/String;

    const v3, 0x7f09000b

    .line 1089
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Ljava/lang/String;

    const v3, 0x7f090016

    .line 1090
    invoke-virtual {v0, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Ljava/lang/String;

    .line 1091
    new-instance v4, Lcom/perm/kate/VideoMenu;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v5}, Lcom/perm/kate/VideoMenu;-><init>(Lcom/perm/kate/BaseActivity;Lcom/perm/kate/BaseFragment;Lcom/perm/kate/VideoMenuCallback;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sget-object v14, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v12, v14

    invoke-virtual/range {v4 .. v18}, Lcom/perm/kate/VideoMenu;->display(Ljava/lang/Long;JJLjava/lang/String;ZLjava/lang/Boolean;ZLjava/lang/Boolean;Lcom/perm/kate/api/Video;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
