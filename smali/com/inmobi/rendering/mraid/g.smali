.class final Lcom/inmobi/rendering/mraid/g;
.super Landroid/widget/VideoView;
.source "MediaRenderView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/rendering/mraid/g$b;,
        Lcom/inmobi/rendering/mraid/g$a;,
        Lcom/inmobi/rendering/mraid/g$d;,
        Lcom/inmobi/rendering/mraid/g$c;,
        Lcom/inmobi/rendering/mraid/g$e;
    }
.end annotation


# static fields
.field private static final k:Ljava/lang/String;


# instance fields
.field a:I

.field b:Z

.field c:Lcom/inmobi/rendering/mraid/g$d;

.field d:Lcom/inmobi/rendering/mraid/b;

.field e:Lcom/inmobi/rendering/mraid/f;

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Z

.field i:I

.field j:I

.field private l:Landroid/media/MediaPlayer;

.field private m:Lcom/inmobi/rendering/mraid/g$a;

.field private n:Lcom/inmobi/rendering/RenderView;

.field private o:Landroid/graphics/Bitmap;

.field private p:Landroid/view/ViewGroup;

.field private q:Lcom/inmobi/rendering/mraid/g$c;

.field private r:Lcom/inmobi/rendering/mraid/g$b;

.field private s:Lcom/inmobi/rendering/mraid/g$e;

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-class v0, Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/mraid/g;->k:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/rendering/RenderView;)V
    .locals 2

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 123
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 124
    iput-object p2, p0, Lcom/inmobi/rendering/mraid/g;->n:Lcom/inmobi/rendering/RenderView;

    .line 126
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/g;->setZOrderOnTop(Z)V

    .line 127
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/g;->setFocusable(Z)V

    .line 128
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/g;->setFocusableInTouchMode(Z)V

    .line 129
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/g;->setDrawingCacheEnabled(Z)V

    .line 130
    const/16 v0, 0x64

    iput v0, p0, Lcom/inmobi/rendering/mraid/g;->a:I

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/rendering/mraid/g;->i:I

    .line 132
    iput v1, p0, Lcom/inmobi/rendering/mraid/g;->j:I

    .line 133
    sget-object v0, Lcom/inmobi/rendering/mraid/g$d;->a:Lcom/inmobi/rendering/mraid/g$d;

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    .line 134
    iput-boolean v1, p0, Lcom/inmobi/rendering/mraid/g;->u:Z

    .line 135
    iput-boolean v1, p0, Lcom/inmobi/rendering/mraid/g;->b:Z

    .line 136
    iput-boolean v1, p0, Lcom/inmobi/rendering/mraid/g;->v:Z

    .line 137
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/g;Lcom/inmobi/rendering/mraid/g$a;)Lcom/inmobi/rendering/mraid/g$a;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/g;->m:Lcom/inmobi/rendering/mraid/g$a;

    return-object p1
.end method

.method private a(B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 555
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 557
    const/4 v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    shr-int/lit8 v3, p1, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v0, v3

    aput-char v3, v1, v2

    const/4 v2, 0x1

    and-int/lit8 v3, p1, 0xf

    aget-char v0, v0, v3

    aput-char v0, v1, v2

    .line 558
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 555
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/g;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/inmobi/rendering/mraid/g;->v:Z

    return v0
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/g;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/inmobi/rendering/mraid/g;->v:Z

    return p1
.end method

.method static synthetic b(Lcom/inmobi/rendering/mraid/g;)Lcom/inmobi/rendering/mraid/g$a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->m:Lcom/inmobi/rendering/mraid/g$a;

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 513
    const-string v1, ""

    .line 514
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 516
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    array-length v4, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-byte v5, v2, v0

    .line 518
    and-int/lit16 v6, v5, 0x80

    if-lez v6, :cond_0

    .line 519
    const-string v6, "%"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v5}, Lcom/inmobi/rendering/mraid/g;->a(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 517
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 521
    :cond_0
    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 526
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "ISO-8859-1"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    :goto_2
    return-object v0

    .line 527
    :catch_0
    move-exception v0

    .line 528
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v1

    .line 529
    goto :goto_2
.end method

.method private c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 536
    :try_start_0
    const-string v0, "android.media.ThumbnailUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 537
    const-string v2, "createVideoThumbnail"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 538
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 550
    :goto_0
    return-object v0

    .line 539
    :catch_0
    move-exception v0

    .line 540
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    move-object v0, v1

    .line 541
    goto :goto_0

    .line 542
    :catch_1
    move-exception v0

    .line 543
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    move-object v0, v1

    .line 544
    goto :goto_0

    .line 545
    :catch_2
    move-exception v0

    .line 546
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    move-object v0, v1

    .line 547
    goto :goto_0

    .line 548
    :catch_3
    move-exception v0

    .line 549
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    move-object v0, v1

    .line 550
    goto :goto_0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/inmobi/rendering/mraid/g;->k:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 451
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->p:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 452
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 453
    if-eqz v0, :cond_0

    .line 454
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/g;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 458
    if-eqz v0, :cond_1

    .line 459
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 462
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/g;->setBackgroundColor(I)V

    .line 463
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/g;->p:Landroid/view/ViewGroup;

    .line 465
    :cond_2
    return-void
.end method

.method private k()Z
    .locals 2

    .prologue
    .line 468
    sget-object v0, Lcom/inmobi/rendering/mraid/g$d;->c:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/rendering/mraid/g$d;->d:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 276
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/g;->setVideoPath(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0, p0}, Lcom/inmobi/rendering/mraid/g;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 278
    invoke-virtual {p0, p0}, Lcom/inmobi/rendering/mraid/g;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 279
    invoke-virtual {p0, p0}, Lcom/inmobi/rendering/mraid/g;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 287
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->m:Lcom/inmobi/rendering/mraid/g$a;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->e:Lcom/inmobi/rendering/mraid/f;

    iget-boolean v0, v0, Lcom/inmobi/rendering/mraid/f;->e:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 288
    new-instance v0, Lcom/inmobi/rendering/mraid/g$a;

    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/rendering/mraid/g$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/g;->m:Lcom/inmobi/rendering/mraid/g$a;

    .line 289
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->m:Lcom/inmobi/rendering/mraid/g$a;

    invoke-virtual {v0, p0}, Lcom/inmobi/rendering/mraid/g$a;->setAnchorView(Landroid/view/View;)V

    .line 290
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->m:Lcom/inmobi/rendering/mraid/g$a;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/g;->setMediaController(Landroid/widget/MediaController;)V

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->s:Lcom/inmobi/rendering/mraid/g$e;

    if-nez v0, :cond_1

    .line 294
    new-instance v0, Lcom/inmobi/rendering/mraid/g$e;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/mraid/g$e;-><init>(Lcom/inmobi/rendering/mraid/g;)V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/g;->s:Lcom/inmobi/rendering/mraid/g$e;

    .line 295
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 296
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 297
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 298
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/g;->s:Lcom/inmobi/rendering/mraid/g$e;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    :cond_1
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/g;->getDuration()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 304
    iput p1, p0, Lcom/inmobi/rendering/mraid/g;->j:I

    .line 305
    invoke-virtual {p0, p1}, Lcom/inmobi/rendering/mraid/g;->seekTo(I)V

    .line 307
    :cond_0
    return-void
.end method

.method a(II)V
    .locals 3

    .prologue
    .line 505
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->n:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    .line 506
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fireMediaTimeUpdateEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->e:Lcom/inmobi/rendering/mraid/f;

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 508
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->n:Lcom/inmobi/rendering/RenderView;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/g;->t:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/g;->p:Landroid/view/ViewGroup;

    .line 383
    return-void
.end method

.method public a(Lcom/inmobi/rendering/mraid/g$c;)V
    .locals 0

    .prologue
    .line 394
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/g;->q:Lcom/inmobi/rendering/mraid/g$c;

    .line 395
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 480
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->n:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fireMediaTrackingEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->e:Lcom/inmobi/rendering/mraid/f;

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->n:Lcom/inmobi/rendering/RenderView;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/g;->t:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/f;Lcom/inmobi/rendering/mraid/b;)V
    .locals 2

    .prologue
    const/16 v1, 0x18

    .line 229
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/g;->t:Ljava/lang/String;

    .line 230
    new-instance v0, Lcom/inmobi/rendering/mraid/g$b;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/mraid/g$b;-><init>(Lcom/inmobi/rendering/mraid/g;)V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/g;->r:Lcom/inmobi/rendering/mraid/g$b;

    .line 231
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/rendering/mraid/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/g;->g:Ljava/lang/String;

    .line 232
    iput-object p3, p0, Lcom/inmobi/rendering/mraid/g;->e:Lcom/inmobi/rendering/mraid/f;

    .line 233
    iget-object v0, p3, Lcom/inmobi/rendering/mraid/f;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/g;->f:Ljava/lang/String;

    .line 234
    iput-object p4, p0, Lcom/inmobi/rendering/mraid/g;->d:Lcom/inmobi/rendering/mraid/b;

    .line 236
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->o:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 237
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/g;->o:Landroid/graphics/Bitmap;

    .line 238
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/inmobi/rendering/mraid/g;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/g;->o:Landroid/graphics/Bitmap;

    .line 240
    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 357
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/g;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media render view state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/g;->k:Ljava/lang/String;

    const-string v2, "Release the media render view"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->s:Lcom/inmobi/rendering/mraid/g$e;

    if-eqz v0, :cond_0

    .line 361
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->s:Lcom/inmobi/rendering/mraid/g$e;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 362
    iput-object v4, p0, Lcom/inmobi/rendering/mraid/g;->s:Lcom/inmobi/rendering/mraid/g$e;

    .line 365
    :cond_0
    sget-object v0, Lcom/inmobi/rendering/mraid/g$d;->g:Lcom/inmobi/rendering/mraid/g$d;

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    .line 366
    iget v0, p0, Lcom/inmobi/rendering/mraid/g;->i:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/inmobi/rendering/mraid/g;->i:I

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/inmobi/rendering/mraid/g;->a(ZI)V

    .line 367
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/g;->stopPlayback()V

    .line 368
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->r:Lcom/inmobi/rendering/mraid/g$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/g$b;->removeMessages(I)V

    .line 369
    invoke-direct {p0}, Lcom/inmobi/rendering/mraid/g;->j()V

    .line 370
    invoke-super {p0, v4}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 371
    iput-object v4, p0, Lcom/inmobi/rendering/mraid/g;->m:Lcom/inmobi/rendering/mraid/g$a;

    .line 372
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->q:Lcom/inmobi/rendering/mraid/g$c;

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->q:Lcom/inmobi/rendering/mraid/g$c;

    invoke-interface {v0, p0}, Lcom/inmobi/rendering/mraid/g$c;->a(Lcom/inmobi/rendering/mraid/g;)V

    .line 375
    :cond_1
    return-void

    .line 366
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/g;->getCurrentPosition()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0
.end method

.method a(ZI)V
    .locals 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->n:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fireMediaCloseEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->e:Lcom/inmobi/rendering/mraid/f;

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 475
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->n:Lcom/inmobi/rendering/RenderView;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/g;->t:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    :cond_0
    return-void
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 310
    sget-object v0, Lcom/inmobi/rendering/mraid/g$d;->e:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v0, v1, :cond_0

    .line 311
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 312
    invoke-virtual {p0, v2}, Lcom/inmobi/rendering/mraid/g;->setVisibility(I)V

    .line 313
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/g;->requestFocus()Z

    .line 314
    sget-object v0, Lcom/inmobi/rendering/mraid/g$d;->e:Lcom/inmobi/rendering/mraid/g$d;

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    .line 315
    const-string v0, "showing"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/g;->a(Ljava/lang/String;)V

    .line 317
    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 343
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->l:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/inmobi/rendering/mraid/g;->b:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/inmobi/rendering/mraid/g;->a:I

    if-eq p1, v1, :cond_1

    .line 344
    :cond_0
    iget-boolean v1, p0, Lcom/inmobi/rendering/mraid/g;->b:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 345
    iput v0, p0, Lcom/inmobi/rendering/mraid/g;->a:I

    .line 354
    :cond_1
    :goto_0
    return-void

    .line 348
    :cond_2
    if-nez p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iput-boolean v0, p0, Lcom/inmobi/rendering/mraid/g;->b:Z

    .line 349
    iput p1, p0, Lcom/inmobi/rendering/mraid/g;->a:I

    .line 350
    const/high16 v0, 0x3f800000    # 1.0f

    rsub-int/lit8 v1, p1, 0x65

    int-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v4, 0x4059400000000000L    # 101.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v2, v4

    double-to-float v1, v2

    sub-float/2addr v0, v1

    .line 351
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 352
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/g;->h()V

    goto :goto_0
.end method

.method public c()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 320
    sget-object v0, Lcom/inmobi/rendering/mraid/g$d;->d:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-eq v0, v1, :cond_0

    .line 321
    invoke-virtual {p0, v2}, Lcom/inmobi/rendering/mraid/g;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->p:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 323
    sget-object v0, Lcom/inmobi/rendering/mraid/g$d;->d:Lcom/inmobi/rendering/mraid/g$d;

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    .line 324
    const-string v0, "hidden"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/g;->a(Ljava/lang/String;)V

    .line 326
    :cond_0
    return-void
.end method

.method c(I)V
    .locals 3

    .prologue
    .line 497
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->n:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fireMediaErrorEvent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->e:Lcom/inmobi/rendering/mraid/f;

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\',"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 500
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->n:Lcom/inmobi/rendering/RenderView;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/g;->t:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 329
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/rendering/mraid/g;->b:Z

    if-nez v0, :cond_0

    .line 330
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/mraid/g;->b:Z

    .line 331
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->l:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 332
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/g;->h()V

    .line 334
    :cond_0
    return-void
.end method

.method public e()V
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->l:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/rendering/mraid/g;->b:Z

    if-eqz v0, :cond_0

    .line 338
    iget v0, p0, Lcom/inmobi/rendering/mraid/g;->a:I

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/g;->b(I)V

    .line 340
    :cond_0
    return-void
.end method

.method public f()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->p:Landroid/view/ViewGroup;

    return-object v0
.end method

.method g()V
    .locals 3

    .prologue
    const/16 v2, 0x15

    .line 402
    sget-object v0, Lcom/inmobi/rendering/mraid/g$d;->e:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v0, v1, :cond_3

    .line 403
    iget-boolean v0, p0, Lcom/inmobi/rendering/mraid/g;->u:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/rendering/mraid/g$d;->f:Lcom/inmobi/rendering/mraid/g$d;

    :goto_0
    iput-object v0, p0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    .line 404
    iget-boolean v0, p0, Lcom/inmobi/rendering/mraid/g;->h:Z

    if-eqz v0, :cond_0

    .line 405
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_2

    .line 409
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 411
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :goto_1
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    .line 448
    :cond_0
    :goto_2
    return-void

    .line 403
    :cond_1
    sget-object v0, Lcom/inmobi/rendering/mraid/g$d;->c:Lcom/inmobi/rendering/mraid/g$d;

    goto :goto_0

    .line 417
    :cond_2
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 418
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    goto :goto_2

    .line 421
    :cond_3
    sget-object v0, Lcom/inmobi/rendering/mraid/g$d;->a:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v0, v1, :cond_0

    .line 422
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->e:Lcom/inmobi/rendering/mraid/f;

    iget-boolean v0, v0, Lcom/inmobi/rendering/mraid/f;->g:Z

    if-eqz v0, :cond_4

    .line 423
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/g;->d()V

    .line 426
    :cond_4
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->e:Lcom/inmobi/rendering/mraid/f;

    iget-boolean v0, v0, Lcom/inmobi/rendering/mraid/f;->d:Z

    if-eqz v0, :cond_5

    .line 427
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/g;->start()V

    goto :goto_2

    .line 429
    :cond_5
    iget-boolean v0, p0, Lcom/inmobi/rendering/mraid/g;->h:Z

    if-eqz v0, :cond_0

    .line 430
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_6

    .line 434
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 436
    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 440
    :goto_3
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    goto :goto_2

    .line 442
    :cond_6
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 443
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    goto :goto_2

    .line 412
    :catch_0
    move-exception v0

    goto :goto_1

    .line 437
    :catch_1
    move-exception v0

    goto :goto_3
.end method

.method h()V
    .locals 3

    .prologue
    .line 488
    iget-boolean v0, p0, Lcom/inmobi/rendering/mraid/g;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 489
    :goto_0
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->n:Lcom/inmobi/rendering/RenderView;

    if-eqz v1, :cond_0

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fireMediaVolumeChangeEvent(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/g;->e:Lcom/inmobi/rendering/mraid/f;

    iget-object v2, v2, Lcom/inmobi/rendering/mraid/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/inmobi/rendering/mraid/g;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->n:Lcom/inmobi/rendering/RenderView;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/g;->t:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    :cond_0
    return-void

    .line 488
    :cond_1
    iget v0, p0, Lcom/inmobi/rendering/mraid/g;->a:I

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 169
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/g;->k:Ljava/lang/String;

    const-string v2, ">>> onCompletion"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    sget-object v0, Lcom/inmobi/rendering/mraid/g$d;->f:Lcom/inmobi/rendering/mraid/g$d;

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    .line 171
    iput-boolean v4, p0, Lcom/inmobi/rendering/mraid/g;->u:Z

    .line 172
    const-string v0, "ended"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/g;->a(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->r:Lcom/inmobi/rendering/mraid/g$b;

    invoke-virtual {v0, v4}, Lcom/inmobi/rendering/mraid/g$b;->removeMessages(I)V

    .line 175
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->e:Lcom/inmobi/rendering/mraid/f;

    iget-boolean v0, v0, Lcom/inmobi/rendering/mraid/f;->f:Z

    if-eqz v0, :cond_2

    .line 176
    monitor-enter p0

    .line 177
    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/rendering/mraid/g;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/rendering/mraid/g;->j:I

    .line 179
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/g;->start()V

    .line 181
    :cond_0
    monitor-exit p0

    .line 185
    :cond_1
    :goto_0
    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->e:Lcom/inmobi/rendering/mraid/f;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {p0, v3}, Lcom/inmobi/rendering/mraid/g;->a(Z)V

    goto :goto_0
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 189
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/g;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> onError ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0, v4}, Lcom/inmobi/rendering/mraid/g;->a(Z)V

    .line 191
    const/4 v0, -0x1

    .line 192
    const/16 v1, 0x64

    if-ne v1, p2, :cond_0

    .line 193
    const/4 v0, 0x2

    .line 195
    :cond_0
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/g;->c(I)V

    .line 196
    return v4
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 148
    invoke-super/range {p0 .. p5}, Landroid/widget/VideoView;->onLayout(ZIIII)V

    .line 149
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/g;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 150
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 201
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/g;->k:Ljava/lang/String;

    const-string v2, ">>> onPrepared"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    new-instance v0, Lcom/inmobi/rendering/mraid/g$1;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/mraid/g$1;-><init>(Lcom/inmobi/rendering/mraid/g;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 221
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/g;->l:Landroid/media/MediaPlayer;

    .line 222
    iget v0, p0, Lcom/inmobi/rendering/mraid/g;->j:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/g;->a(I)V

    .line 223
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/mraid/g;->h:Z

    .line 224
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->q:Lcom/inmobi/rendering/mraid/g$c;

    invoke-interface {v0, p0}, Lcom/inmobi/rendering/mraid/g$c;->b(Lcom/inmobi/rendering/mraid/g;)V

    .line 225
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/g;->g()V

    .line 226
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 4

    .prologue
    .line 156
    invoke-super {p0, p1, p2}, Landroid/widget/VideoView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 157
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/g;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> onVisibilityChanged ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    if-nez p2, :cond_0

    .line 159
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 160
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/g;->o:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/g;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->o:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/g;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4

    .prologue
    .line 142
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onWindowVisibilityChanged(I)V

    .line 143
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/g;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> onWindowVisibilityChanged ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    .line 263
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/g;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media render view state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    sget-object v0, Lcom/inmobi/rendering/mraid/g$d;->c:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v0, v1, :cond_0

    .line 273
    :goto_0
    return-void

    .line 268
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/g;->k:Ljava/lang/String;

    const-string v2, "Pause media playback"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->r:Lcom/inmobi/rendering/mraid/g$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/g$b;->removeMessages(I)V

    .line 270
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    .line 271
    sget-object v0, Lcom/inmobi/rendering/mraid/g$d;->c:Lcom/inmobi/rendering/mraid/g$d;

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    .line 272
    const-string v0, "pause"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/g;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 244
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/g;->k:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media render view state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    sget-object v0, Lcom/inmobi/rendering/mraid/g$d;->b:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v0, v1, :cond_0

    .line 259
    :goto_0
    return-void

    .line 249
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/g;->k:Ljava/lang/String;

    const-string v2, "Start media playback"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iget v0, p0, Lcom/inmobi/rendering/mraid/g;->j:I

    mul-int/lit16 v0, v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/g;->a(I)V

    .line 251
    sget-object v0, Lcom/inmobi/rendering/mraid/g$d;->b:Lcom/inmobi/rendering/mraid/g$d;

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    .line 252
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    .line 254
    iget-boolean v0, p0, Lcom/inmobi/rendering/mraid/g;->h:Z

    if-eqz v0, :cond_1

    .line 255
    const-string v0, "play"

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/g;->a(Ljava/lang/String;)V

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->r:Lcom/inmobi/rendering/mraid/g$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/g$b;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
