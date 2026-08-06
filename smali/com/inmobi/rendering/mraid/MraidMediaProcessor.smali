.class public final Lcom/inmobi/rendering/mraid/MraidMediaProcessor;
.super Ljava/lang/Object;
.source "MraidMediaProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;,
        Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;,
        Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;,
        Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/rendering/RenderView;

.field private c:Lcom/inmobi/rendering/mraid/g;

.field private d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

.field private e:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

.field private f:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

.field private g:Lcom/inmobi/rendering/mraid/f;

.field private h:Lcom/inmobi/rendering/mraid/b;

.field private i:Z

.field private j:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/rendering/mraid/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/rendering/RenderView;)V
    .locals 1

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->j:Ljava/util/Hashtable;

    .line 134
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    .line 135
    new-instance v0, Lcom/inmobi/rendering/mraid/f;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/f;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/f;

    .line 136
    new-instance v0, Lcom/inmobi/rendering/mraid/b;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/b;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/b;

    .line 137
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->i:Z

    .line 138
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)Lcom/inmobi/rendering/mraid/g;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Lcom/inmobi/rendering/mraid/g;)Lcom/inmobi/rendering/mraid/g;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    return-object p1
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 702
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireDeviceVolumeChangeEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 696
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    .line 697
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireDeviceMuteChangeEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;Landroid/app/Activity;)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 638
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 639
    :cond_1
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid ID ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "); no playback URL for this ID"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;->MEDIA_CONTENT_TYPE_AUDIO_VIDEO:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

    if-ne v0, p4, :cond_2

    const-string v0, "playVideo"

    :goto_0
    invoke-virtual {v2, p1, v3, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 668
    :goto_1
    return v0

    .line 639
    :cond_2
    const-string v0, "playAudio"

    goto :goto_0

    .line 643
    :cond_3
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->j:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_5

    .line 644
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v3, "Cannot create media player - limit on number of media players reached"

    sget-object v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;->MEDIA_CONTENT_TYPE_AUDIO_VIDEO:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

    if-ne v0, p4, :cond_4

    const-string v0, "playVideo"

    :goto_2
    invoke-virtual {v2, p1, v3, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 645
    goto :goto_1

    .line 644
    :cond_4
    const-string v0, "playAudio"

    goto :goto_2

    .line 648
    :cond_5
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/mraid/g;

    .line 649
    if-nez v0, :cond_8

    .line 650
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/f;

    invoke-virtual {v2}, Lcom/inmobi/rendering/mraid/f;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 651
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    const-string v4, "Only a single instance of full-screen media playback is allowed. Releasing the current active player ..."

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->j:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v3, v3, Lcom/inmobi/rendering/mraid/g;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v2, v1}, Lcom/inmobi/rendering/mraid/g;->a(Z)V

    .line 656
    :cond_6
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    const-string v3, "Creating a new media player instance!"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    new-instance v1, Lcom/inmobi/rendering/mraid/g;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    invoke-direct {v1, p5, v2}, Lcom/inmobi/rendering/mraid/g;-><init>(Landroid/content/Context;Lcom/inmobi/rendering/RenderView;)V

    iput-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    .line 663
    :goto_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_7

    if-eqz v0, :cond_7

    .line 664
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->g:Ljava/lang/String;

    iget-object v3, v0, Lcom/inmobi/rendering/mraid/g;->e:Lcom/inmobi/rendering/mraid/f;

    iget-object v4, v0, Lcom/inmobi/rendering/mraid/g;->d:Lcom/inmobi/rendering/mraid/b;

    invoke-virtual {v1, p1, v2, v3, v4}, Lcom/inmobi/rendering/mraid/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/f;Lcom/inmobi/rendering/mraid/b;)V

    .line 665
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v0, v0, Lcom/inmobi/rendering/mraid/g;->d:Lcom/inmobi/rendering/mraid/b;

    iput-object v0, v1, Lcom/inmobi/rendering/mraid/g;->d:Lcom/inmobi/rendering/mraid/b;

    .line 668
    :cond_7
    const/4 v0, 0x1

    goto :goto_1

    .line 659
    :cond_8
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reusing media player ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") from the pool"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    goto :goto_3
.end method

.method static synthetic b(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)Lcom/inmobi/rendering/RenderView;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b(Ljava/lang/String;Z)V

    return-void
.end method

.method private b(Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 708
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireHeadphonePluggedEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;Landroid/app/Activity;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 561
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/g;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/f;

    iget-object v2, v2, Lcom/inmobi/rendering/mraid/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 562
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/f;

    iget-object v3, v0, Lcom/inmobi/rendering/mraid/f;->a:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;Landroid/app/Activity;)Z

    move-result v0

    .line 608
    :cond_1
    :goto_0
    return v0

    .line 564
    :cond_2
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reusing media player ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v4, v4, Lcom/inmobi/rendering/mraid/g;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") from the pool"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/g;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/f;

    iget-object v2, v2, Lcom/inmobi/rendering/mraid/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/g;->g:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 567
    :cond_3
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Player state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v4, v4, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    sget-object v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$4;->a:[I

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v2, v2, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v2}, Lcom/inmobi/rendering/mraid/g$d;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 570
    :pswitch_0
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v1}, Lcom/inmobi/rendering/mraid/g;->start()V

    .line 571
    invoke-direct {p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->j()V

    goto :goto_0

    .line 575
    :pswitch_1
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-boolean v1, v1, Lcom/inmobi/rendering/mraid/g;->h:Z

    if-eqz v1, :cond_4

    .line 576
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v1}, Lcom/inmobi/rendering/mraid/g;->start()V

    .line 581
    :goto_1
    invoke-direct {p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->j()V

    goto/16 :goto_0

    .line 578
    :cond_4
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/f;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/inmobi/rendering/mraid/f;->d:Z

    .line 579
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/f;

    iput-object v2, v1, Lcom/inmobi/rendering/mraid/g;->e:Lcom/inmobi/rendering/mraid/f;

    goto :goto_1

    .line 585
    :pswitch_2
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/f;

    iget-boolean v1, v1, Lcom/inmobi/rendering/mraid/f;->f:Z

    if-eqz v1, :cond_1

    .line 586
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v1}, Lcom/inmobi/rendering/mraid/g;->start()V

    .line 587
    invoke-direct {p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->j()V

    goto/16 :goto_0

    .line 592
    :pswitch_3
    invoke-direct {p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->j()V

    goto/16 :goto_0

    .line 601
    :cond_5
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/f;

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/b;

    invoke-virtual {v1, p1, p2, v2, v3}, Lcom/inmobi/rendering/mraid/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/f;Lcom/inmobi/rendering/mraid/b;)V

    .line 602
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v1}, Lcom/inmobi/rendering/mraid/g;->g()V

    goto/16 :goto_0

    .line 568
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic c(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)Ljava/util/Hashtable;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->j:Ljava/util/Hashtable;

    return-object v0
.end method

.method private d(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/g;
    .locals 5

    .prologue
    .line 672
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Checking for media player with ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    if-eqz v0, :cond_2

    .line 675
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 676
    :cond_0
    const-string v0, "anonymous"

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/f;

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 677
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Returning media render view with ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/f;

    iget-object v3, v3, Lcom/inmobi/rendering/mraid/f;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v3, v3, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    .line 692
    :goto_0
    return-object v0

    .line 680
    :cond_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    const-string v2, "Cannot find ID to look up the media render view"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    const/4 v0, 0x0

    goto :goto_0

    .line 686
    :cond_2
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/mraid/g;

    .line 687
    if-eqz v0, :cond_3

    .line 688
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Returning media render view with ID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 690
    :cond_3
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    const-string v3, "No media render view found!"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 5

    .prologue
    const v4, -0x1869f

    .line 612
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/f;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/f;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 613
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->f()Landroid/view/ViewGroup;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 614
    if-eqz v0, :cond_1

    .line 616
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 617
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 619
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/b;

    iget v1, v1, Lcom/inmobi/rendering/mraid/b;->c:I

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/b;

    iget v3, v3, Lcom/inmobi/rendering/mraid/b;->d:I

    invoke-direct {v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 620
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 622
    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/b;

    iget v3, v3, Lcom/inmobi/rendering/mraid/b;->a:I

    if-eq v4, v3, :cond_0

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/b;

    iget v3, v3, Lcom/inmobi/rendering/mraid/b;->b:I

    if-ne v4, v3, :cond_2

    .line 623
    :cond_0
    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 624
    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 630
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 635
    :cond_1
    return-void

    .line 626
    :cond_2
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/b;

    iget v1, v1, Lcom/inmobi/rendering/mraid/b;->a:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 627
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/b;

    iget v1, v1, Lcom/inmobi/rendering/mraid/b;->b:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/inmobi/rendering/mraid/b;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/b;

    .line 151
    return-void
.end method

.method public a(Lcom/inmobi/rendering/mraid/f;)V
    .locals 1

    .prologue
    .line 145
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/f;

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->i:Z

    .line 147
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 510
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    if-nez v0, :cond_0

    .line 511
    new-instance v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    invoke-direct {v0, p0, p1}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    .line 512
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 515
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 286
    invoke-direct {p0, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v0

    .line 287
    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid property ID"

    const-string v2, "pauseMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :goto_0
    return-void

    .line 292
    :cond_0
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Media player state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v1, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    sget-object v2, Lcom/inmobi/rendering/mraid/g$d;->b:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v1, v2, :cond_3

    .line 294
    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->a:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->d:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v1, v2, :cond_3

    .line 296
    :cond_1
    iget-boolean v1, v0, Lcom/inmobi/rendering/mraid/g;->h:Z

    if-nez v1, :cond_2

    .line 297
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/f;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/inmobi/rendering/mraid/f;->d:Z

    .line 298
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/f;

    iput-object v1, v0, Lcom/inmobi/rendering/mraid/g;->e:Lcom/inmobi/rendering/mraid/f;

    goto :goto_0

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid player state"

    const-string v2, "pauseMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 307
    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->pause()V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 311
    invoke-direct {p0, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v0

    .line 312
    if-nez v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid property ID"

    const-string v2, "seekMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :goto_0
    return-void

    .line 317
    :cond_0
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Media player state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->g:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->a:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->d:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v1, v2, :cond_2

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid player state"

    const-string v2, "seekMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 325
    :cond_2
    mul-int/lit16 v1, p3, 0x3e8

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/g;->a(I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;Landroid/app/Activity;)V
    .locals 9

    .prologue
    const v8, 0x1020002

    const/4 v7, 0x3

    const/4 v6, -0x1

    .line 155
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 282
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/f;

    .line 160
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->h:Lcom/inmobi/rendering/mraid/b;

    .line 162
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/inmobi/rendering/RenderView;->setAdActiveFlag(Z)V

    .line 163
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Media player state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v5, v5, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/inmobi/rendering/mraid/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/f;Lcom/inmobi/rendering/mraid/b;)V

    .line 177
    :goto_1
    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;->MEDIA_CONTENT_TYPE_AUDIO_VIDEO:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

    if-ne v2, p3, :cond_2

    const-string v2, "http"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "mp4"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "avi"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "m4v"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 178
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0, v7}, Lcom/inmobi/rendering/mraid/g;->c(I)V

    goto :goto_0

    .line 168
    :cond_1
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v3, v3, Lcom/inmobi/rendering/mraid/g;->g:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/inmobi/rendering/mraid/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/f;Lcom/inmobi/rendering/mraid/b;)V

    goto :goto_1

    .line 182
    :cond_2
    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;->MEDIA_CONTENT_TYPE_AUDIO:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

    if-ne v2, p3, :cond_3

    const-string v2, "http"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "mp3"

    invoke-virtual {p2, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 183
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0, v7}, Lcom/inmobi/rendering/mraid/g;->c(I)V

    goto/16 :goto_0

    .line 187
    :cond_3
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->j:Ljava/util/Hashtable;

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/f;

    iget-object v3, v3, Lcom/inmobi/rendering/mraid/f;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v2, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v2, Lcom/inmobi/rendering/mraid/g$d;->d:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v3, v3, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v2, v3, :cond_4

    .line 190
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->b()V

    goto/16 :goto_0

    .line 194
    :cond_4
    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/f;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 195
    invoke-virtual {p4, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 196
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 197
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 198
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v2, v1}, Lcom/inmobi/rendering/mraid/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 201
    new-instance v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$1;

    invoke-direct {v2, p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$1;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)V

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 207
    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 208
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 210
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v6, v6}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/g;->a(Landroid/view/ViewGroup;)V

    .line 213
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->requestFocus()Z

    .line 214
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    new-instance v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$2;

    invoke-direct {v1, p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$2;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/g;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 248
    :goto_2
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    new-instance v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$3;

    invoke-direct {v1, p0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$3;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/g;->a(Lcom/inmobi/rendering/mraid/g$c;)V

    .line 281
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->a()V

    goto/16 :goto_0

    .line 226
    :cond_5
    invoke-virtual {p4, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 228
    new-instance v2, Landroid/widget/RelativeLayout;

    invoke-direct {v2, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 229
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v1, Lcom/inmobi/rendering/mraid/b;->c:I

    iget v5, v1, Lcom/inmobi/rendering/mraid/b;->d:I

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 230
    iget v4, v1, Lcom/inmobi/rendering/mraid/b;->a:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 231
    iget v4, v1, Lcom/inmobi/rendering/mraid/b;->b:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 232
    iget v4, v1, Lcom/inmobi/rendering/mraid/b;->c:I

    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 233
    iget v1, v1, Lcom/inmobi/rendering/mraid/b;->d:I

    iput v1, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 235
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 236
    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 237
    const/16 v4, 0xc

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 238
    const/16 v4, 0x9

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 239
    const/16 v4, 0xb

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 240
    iget-object v4, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v4, v1}, Lcom/inmobi/rendering/mraid/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v1, v2}, Lcom/inmobi/rendering/mraid/g;->a(Landroid/view/ViewGroup;)V

    .line 243
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 244
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 245
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->clearFocus()V

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 416
    invoke-direct {p0, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v0

    .line 417
    if-nez v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid property ID"

    const-string v2, "closeMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :goto_0
    return-void

    .line 422
    :cond_0
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Media player state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->g:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->d:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v1, v2, :cond_2

    .line 425
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid player state"

    const-string v2, "closeMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 429
    :cond_2
    invoke-virtual {v0, p3}, Lcom/inmobi/rendering/mraid/g;->a(Z)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->i:Z

    return v0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 479
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->j:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/g;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->j:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 484
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->j:Ljava/util/Hashtable;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/mraid/g;

    .line 486
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 487
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/inmobi/rendering/mraid/g;->a(Z)V

    goto :goto_0

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->j:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    .line 492
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 525
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->e:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    if-nez v0, :cond_0

    .line 526
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 527
    new-instance v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, p1, v0, v2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->e:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    .line 528
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->e:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 530
    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 329
    invoke-direct {p0, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v0

    .line 330
    if-nez v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid property ID"

    const-string v2, "muteMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :goto_0
    return-void

    .line 335
    :cond_0
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Media player state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->g:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->a:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->d:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v1, v2, :cond_2

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid player state"

    const-string v2, "muteMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_2
    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->d()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .prologue
    .line 383
    invoke-direct {p0, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v0

    .line 384
    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid property ID"

    const-string v2, "setMediaVolume"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    :goto_0
    return-void

    .line 389
    :cond_0
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Media player state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->g:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->d:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v1, v2, :cond_2

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid player state"

    const-string v2, "setMediaVolume"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 396
    :cond_2
    invoke-virtual {v0, p3}, Lcom/inmobi/rendering/mraid/g;->b(I)V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    .line 495
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/rendering/mraid/g$d;->g:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v0, v1, :cond_0

    .line 496
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->j:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/g;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->c()V

    .line 499
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 546
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    if-nez v0, :cond_0

    .line 547
    new-instance v0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    invoke-direct {v0, p0, p1}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;-><init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    .line 548
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 551
    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 347
    invoke-direct {p0, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v0

    .line 348
    if-nez v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid property ID"

    const-string v2, "unMuteMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :goto_0
    return-void

    .line 353
    :cond_0
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Media player state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->g:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->a:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v1, v2, :cond_1

    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->d:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v1, v2, :cond_2

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid player state"

    const-string v2, "unMuteMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_2
    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->e()V

    goto :goto_0
.end method

.method public d()Z
    .locals 2

    .prologue
    .line 505
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 506
    const/4 v1, 0x2

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 365
    invoke-direct {p0, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v1

    .line 366
    if-nez v1, :cond_0

    .line 367
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Invalid property ID"

    const-string v3, "isMediaMuted"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    :goto_0
    return v0

    .line 371
    :cond_0
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Media player state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    sget-object v2, Lcom/inmobi/rendering/mraid/g$d;->g:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v3, v1, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/inmobi/rendering/mraid/g$d;->a:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v3, v1, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v2, v3, :cond_1

    sget-object v2, Lcom/inmobi/rendering/mraid/g$d;->d:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v3, v1, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v2, v3, :cond_2

    .line 375
    :cond_1
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Invalid player state"

    const-string v3, "isMediaMuted"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_2
    iget-boolean v0, v1, Lcom/inmobi/rendering/mraid/g;->b:Z

    goto :goto_0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 400
    invoke-direct {p0, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v1

    .line 401
    if-nez v1, :cond_1

    .line 402
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Invalid property ID"

    const-string v3, "getMediaVolume"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_0
    :goto_0
    return v0

    .line 406
    :cond_1
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Media player state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    sget-object v2, Lcom/inmobi/rendering/mraid/g$d;->g:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v3, v1, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v2, v3, :cond_2

    .line 408
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v2, "Invalid player state"

    const-string v3, "getMediaVolume"

    invoke-virtual {v1, p1, v2, v3}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 412
    :cond_2
    iget-boolean v2, v1, Lcom/inmobi/rendering/mraid/g;->b:Z

    if-nez v2, :cond_0

    iget v0, v1, Lcom/inmobi/rendering/mraid/g;->a:I

    goto :goto_0
.end method

.method public e()V
    .locals 2

    .prologue
    .line 518
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    if-eqz v0, :cond_0

    .line 519
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 520
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$RingerModeChangeReceiver;

    .line 522
    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 533
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->e:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    if-eqz v0, :cond_0

    .line 534
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->e:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 535
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->e:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;

    .line 537
    :cond_0
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 433
    invoke-direct {p0, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v0

    .line 434
    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid property ID"

    const-string v2, "hideMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    :goto_0
    return-void

    .line 439
    :cond_0
    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->g:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v1, v2, :cond_1

    .line 440
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid player state"

    const-string v2, "hideMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 444
    :cond_1
    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->d:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v1, v2, :cond_2

    .line 445
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    const-string v2, "Media player is already hidden"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 448
    :cond_2
    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->c()V

    goto :goto_0
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 452
    invoke-direct {p0, p2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->d(Ljava/lang/String;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v0

    .line 453
    if-nez v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid property ID"

    const-string v2, "showMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    :goto_0
    return-void

    .line 458
    :cond_0
    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->g:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v1, v2, :cond_1

    .line 459
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Invalid player state"

    const-string v2, "showMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 463
    :cond_1
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->g:Lcom/inmobi/rendering/mraid/f;

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/f;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 464
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b:Lcom/inmobi/rendering/RenderView;

    const-string v1, "Show failed. There is already a video playing"

    const-string v2, "showMedia"

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 468
    :cond_2
    sget-object v1, Lcom/inmobi/rendering/mraid/g$d;->e:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v2, v0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v1, v2, :cond_3

    .line 469
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a:Ljava/lang/String;

    const-string v2, "Media player is already showing"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 473
    :cond_3
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->j:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c:Lcom/inmobi/rendering/mraid/g;

    .line 475
    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->b()V

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 541
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 542
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    if-eqz v0, :cond_0

    .line 555
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 556
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->f:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$HeadphonesPluggedChangeReceiver;

    .line 558
    :cond_0
    return-void
.end method
