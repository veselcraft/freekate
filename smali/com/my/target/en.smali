.class public Lcom/my/target/en;
.super Ljava/lang/Object;
.source "VastParser.java"


# static fields
.field private static final eD:[Ljava/lang/String;

.field private static final eE:[Ljava/lang/String;


# instance fields
.field private final adConfig:Lcom/my/target/a;

.field private final cK:Ljava/util/ArrayList;

.field private final context:Landroid/content/Context;

.field private ctaText:Ljava/lang/String;

.field private final eF:Ljava/util/ArrayList;

.field private final eG:Ljava/util/ArrayList;

.field private final eH:Ljava/util/ArrayList;

.field private final eI:Ljava/util/ArrayList;

.field private eJ:Z

.field private eK:Lcom/my/target/bz;

.field private final ex:Lcom/my/target/bz;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "video/mp4"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "application/vnd.apple.mpegurl"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v4, "application/x-mpegurl"

    aput-object v4, v0, v1

    .line 40
    sput-object v0, Lcom/my/target/en;->eD:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "linkTxt"

    aput-object v1, v0, v2

    .line 41
    sput-object v0, Lcom/my/target/en;->eE:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/my/target/a;Lcom/my/target/bz;Landroid/content/Context;)V
    .locals 1

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/en;->cK:Ljava/util/ArrayList;

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/en;->eF:Ljava/util/ArrayList;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/en;->eG:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/en;->eH:Ljava/util/ArrayList;

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/en;->eI:Ljava/util/ArrayList;

    .line 160
    iput-object p1, p0, Lcom/my/target/en;->adConfig:Lcom/my/target/a;

    .line 161
    iput-object p2, p0, Lcom/my/target/en;->ex:Lcom/my/target/bz;

    .line 162
    iput-object p3, p0, Lcom/my/target/en;->context:Landroid/content/Context;

    return-void
.end method

.method private static U(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "&amp;"

    const-string v1, "&"

    .line 112
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&lt;"

    const-string v1, "<"

    .line 113
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "&gt;"

    const-string v1, ">"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/my/target/a;Lcom/my/target/bz;Landroid/content/Context;)Lcom/my/target/en;
    .locals 1

    .line 47
    new-instance v0, Lcom/my/target/en;

    invoke-direct {v0, p0, p1, p2}, Lcom/my/target/en;-><init>(Lcom/my/target/a;Lcom/my/target/bz;Landroid/content/Context;)V

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-interface {p1, v0, p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(FLjava/lang/String;Lcom/my/target/ch;)V
    .locals 2

    .line 1000
    invoke-static {p2}, Lcom/my/target/dg;->M(Ljava/lang/String;)Lcom/my/target/dg;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 1001
    invoke-virtual {p3}, Lcom/my/target/ch;->getDuration()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1003
    invoke-virtual {p3}, Lcom/my/target/ch;->getDuration()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    mul-float v0, v0, p1

    invoke-virtual {p2, v0}, Lcom/my/target/dg;->h(F)V

    .line 1004
    invoke-virtual {p3}, Lcom/my/target/ch;->getStatHolder()Lcom/my/target/di;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/my/target/di;->b(Lcom/my/target/dh;)V

    goto :goto_0

    .line 1008
    :cond_0
    invoke-virtual {p2, p1}, Lcom/my/target/dg;->i(F)V

    .line 1009
    iget-object p1, p0, Lcom/my/target/en;->eF:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/my/target/ch;)V
    .locals 0

    if-eqz p3, :cond_0

    .line 958
    invoke-static {p1, p2}, Lcom/my/target/dh;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/my/target/dh;

    move-result-object p1

    .line 959
    invoke-virtual {p3}, Lcom/my/target/ch;->getStatHolder()Lcom/my/target/di;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/my/target/di;->b(Lcom/my/target/dh;)V

    goto :goto_0

    .line 963
    :cond_0
    iget-object p3, p0, Lcom/my/target/en;->eH:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lcom/my/target/dh;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/my/target/dh;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private static a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 52
    invoke-static {p0}, Lcom/my/target/en;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 59
    invoke-static {p0}, Lcom/my/target/en;->b(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    if-eq v2, v1, :cond_2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 3

    const/4 v0, 0x0

    .line 320
    :goto_0
    invoke-static {p1}, Lcom/my/target/en;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 322
    invoke-static {p1}, Lcom/my/target/en;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 326
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Impression"

    .line 327
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    invoke-direct {p0, p1}, Lcom/my/target/en;->j(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_1
    const-string v2, "Creatives"

    .line 331
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 333
    invoke-direct {p0, p1}, Lcom/my/target/en;->k(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    const-string v2, "Extensions"

    .line 335
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 337
    invoke-direct {p0, p1}, Lcom/my/target/en;->i(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_3
    const-string v2, "VASTAdTagURI"

    .line 339
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 341
    invoke-static {p1}, Lcom/my/target/en;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 345
    :cond_4
    invoke-static {p1}, Lcom/my/target/en;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_5
    if-eqz v0, :cond_7

    .line 351
    invoke-static {v0}, Lcom/my/target/bz;->q(Ljava/lang/String;)Lcom/my/target/bz;

    move-result-object p1

    iput-object p1, p0, Lcom/my/target/en;->eK:Lcom/my/target/bz;

    add-int/lit8 p2, p2, 0x1

    .line 352
    invoke-virtual {p1, p2}, Lcom/my/target/bz;->f(I)V

    .line 353
    iget-object p1, p0, Lcom/my/target/en;->eK:Lcom/my/target/bz;

    iget-object p2, p0, Lcom/my/target/en;->cK:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/my/target/bz;->c(Ljava/util/ArrayList;)V

    .line 354
    iget-object p1, p0, Lcom/my/target/en;->eK:Lcom/my/target/bz;

    iget-object p2, p0, Lcom/my/target/en;->ctaText:Ljava/lang/String;

    if-eqz p2, :cond_6

    goto :goto_1

    :cond_6
    iget-object p2, p0, Lcom/my/target/en;->ex:Lcom/my/target/bz;

    invoke-virtual {p2}, Lcom/my/target/bz;->getCtaText()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Lcom/my/target/bz;->setCtaText(Ljava/lang/String;)V

    .line 355
    iget-object p1, p0, Lcom/my/target/en;->eK:Lcom/my/target/bz;

    iget-object p2, p0, Lcom/my/target/en;->eG:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/my/target/bz;->b(Ljava/util/ArrayList;)V

    .line 356
    iget-object p1, p0, Lcom/my/target/en;->eK:Lcom/my/target/bz;

    iget-object p2, p0, Lcom/my/target/en;->ex:Lcom/my/target/bz;

    invoke-virtual {p2}, Lcom/my/target/bz;->bi()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/my/target/bz;->a(Ljava/lang/Boolean;)V

    .line 357
    iget-object p1, p0, Lcom/my/target/en;->eK:Lcom/my/target/bz;

    iget-object p2, p0, Lcom/my/target/en;->ex:Lcom/my/target/bz;

    invoke-virtual {p2}, Lcom/my/target/bz;->bj()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/my/target/bz;->b(Ljava/lang/Boolean;)V

    .line 358
    iget-object p1, p0, Lcom/my/target/en;->eK:Lcom/my/target/bz;

    iget-object p2, p0, Lcom/my/target/en;->ex:Lcom/my/target/bz;

    invoke-virtual {p2}, Lcom/my/target/bz;->bk()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/my/target/bz;->c(Ljava/lang/Boolean;)V

    .line 359
    iget-object p1, p0, Lcom/my/target/en;->eK:Lcom/my/target/bz;

    iget-object p2, p0, Lcom/my/target/en;->ex:Lcom/my/target/bz;

    invoke-virtual {p2}, Lcom/my/target/bz;->bl()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/my/target/bz;->d(Ljava/lang/Boolean;)V

    .line 360
    iget-object p1, p0, Lcom/my/target/en;->eK:Lcom/my/target/bz;

    iget-object p2, p0, Lcom/my/target/en;->ex:Lcom/my/target/bz;

    invoke-virtual {p2}, Lcom/my/target/bz;->bm()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/my/target/bz;->e(Ljava/lang/Boolean;)V

    .line 361
    iget-object p1, p0, Lcom/my/target/en;->eK:Lcom/my/target/bz;

    iget-object p2, p0, Lcom/my/target/en;->ex:Lcom/my/target/bz;

    invoke-virtual {p2}, Lcom/my/target/bz;->bo()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/my/target/bz;->f(Ljava/lang/Boolean;)V

    .line 362
    iget-object p1, p0, Lcom/my/target/en;->eK:Lcom/my/target/bz;

    iget-object p2, p0, Lcom/my/target/en;->ex:Lcom/my/target/bz;

    invoke-virtual {p2}, Lcom/my/target/bz;->bp()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/my/target/bz;->g(Ljava/lang/Boolean;)V

    .line 363
    iget-object p1, p0, Lcom/my/target/en;->eK:Lcom/my/target/bz;

    iget-object p2, p0, Lcom/my/target/en;->ex:Lcom/my/target/bz;

    invoke-virtual {p2}, Lcom/my/target/bz;->getAllowCloseDelay()F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/my/target/bz;->setAllowCloseDelay(F)V

    .line 365
    iget-object p1, p0, Lcom/my/target/en;->eK:Lcom/my/target/bz;

    invoke-virtual {p1}, Lcom/my/target/bz;->bn()Lcom/my/target/di;

    move-result-object p1

    .line 366
    iget-object p2, p0, Lcom/my/target/en;->eH:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/my/target/di;->e(Ljava/util/ArrayList;)V

    .line 367
    iget-object p2, p0, Lcom/my/target/en;->eF:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Lcom/my/target/di;->f(Ljava/util/ArrayList;)V

    .line 368
    iget-object p2, p0, Lcom/my/target/en;->ex:Lcom/my/target/bz;

    invoke-virtual {p2}, Lcom/my/target/bz;->bn()Lcom/my/target/di;

    move-result-object p2

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, v0}, Lcom/my/target/di;->a(Lcom/my/target/di;F)V

    .line 370
    iget-object p1, p0, Lcom/my/target/en;->ex:Lcom/my/target/bz;

    iget-object p2, p0, Lcom/my/target/en;->eK:Lcom/my/target/bz;

    invoke-virtual {p1, p2}, Lcom/my/target/bz;->b(Lcom/my/target/bz;)V

    goto :goto_2

    :cond_7
    const-string p1, "got VAST wrapper, but no vastAdTagUri"

    .line 374
    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Lcom/my/target/ch;)V
    .locals 4

    .line 905
    :goto_0
    invoke-static {p1}, Lcom/my/target/en;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 907
    invoke-static {p1}, Lcom/my/target/en;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 911
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Tracking"

    .line 912
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "event"

    .line 914
    invoke-static {v0, p1}, Lcom/my/target/en;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "offset"

    .line 915
    invoke-static {v1, p1}, Lcom/my/target/en;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_3

    const-string v2, "progress"

    .line 919
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "%"

    .line 921
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    :try_start_0
    const-string v3, ""

    .line 925
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    .line 926
    invoke-static {p1}, Lcom/my/target/en;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, p2}, Lcom/my/target/en;->a(FLjava/lang/String;Lcom/my/target/ch;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 930
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to parse progress stat with value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 935
    :cond_1
    invoke-static {p1}, Lcom/my/target/en;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, p2}, Lcom/my/target/en;->b(Ljava/lang/String;Ljava/lang/String;Lcom/my/target/ch;)V

    goto :goto_1

    .line 940
    :cond_2
    invoke-static {p1}, Lcom/my/target/en;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2}, Lcom/my/target/en;->c(Ljava/lang/String;Ljava/lang/String;Lcom/my/target/ch;)V

    .line 943
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Added VAST tracking \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 947
    :cond_4
    invoke-static {p1}, Lcom/my/target/en;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Lcom/my/target/co;Ljava/lang/String;)V
    .locals 3

    .line 1118
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/my/target/en;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 1120
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1121
    invoke-static {p1}, Lcom/my/target/en;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v2

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "Duration"

    .line 1125
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p2, :cond_0

    .line 1129
    invoke-direct {p0, p1, p2}, Lcom/my/target/en;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/my/target/co;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 1134
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/my/target/en;->b(Lcom/my/target/co;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "TrackingEvents"

    .line 1137
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1139
    invoke-direct {p0, p1, p2}, Lcom/my/target/en;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/my/target/ch;)V

    goto :goto_0

    :cond_4
    const-string v1, "MediaFiles"

    .line 1141
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez p2, :cond_5

    goto :goto_0

    .line 1148
    :cond_5
    invoke-direct {p0, p1, p2}, Lcom/my/target/en;->c(Lorg/xmlpull/v1/XmlPullParser;Lcom/my/target/co;)V

    .line 1150
    invoke-virtual {p2}, Lcom/my/target/co;->getMediaData()Lcom/my/target/cd;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Unable to find valid mediafile!"

    .line 1152
    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    return-void

    :cond_6
    const-string v1, "VideoClicks"

    .line 1156
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1158
    invoke-direct {p0, p1, p2}, Lcom/my/target/en;->b(Lorg/xmlpull/v1/XmlPullParser;Lcom/my/target/co;)V

    goto :goto_0

    .line 1162
    :cond_7
    invoke-static {p1}, Lcom/my/target/en;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_8
    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 1

    const-string v0, "linkTxt"

    .line 444
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 446
    invoke-static {p1}, Lcom/my/target/en;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    .line 447
    invoke-static {p1}, Lcom/my/target/iv;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/my/target/en;->ctaText:Ljava/lang/String;

    .line 448
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VAST linkTxt raw text: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 550
    :goto_0
    invoke-static {p1}, Lcom/my/target/en;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 552
    invoke-direct {p0, p1, p2, p3}, Lcom/my/target/en;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Lcom/my/target/co;)Z
    .locals 1

    .line 719
    invoke-static {p1}, Lcom/my/target/en;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 723
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/my/target/en;->W(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 732
    :cond_0
    invoke-virtual {p2, p1}, Lcom/my/target/ch;->setDuration(F)V

    const/4 p1, 0x1

    return p1
.end method

.method private static b(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 0

    .line 77
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 81
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    :goto_0
    const/high16 p0, -0x80000000

    return p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/my/target/ch;)V
    .locals 2

    .line 974
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/my/target/en;->W(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/high16 v0, -0x40800000    # -1.0f

    :goto_0
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_1

    .line 981
    invoke-static {p2}, Lcom/my/target/dg;->M(Ljava/lang/String;)Lcom/my/target/dg;

    move-result-object p1

    .line 982
    invoke-virtual {p1, v0}, Lcom/my/target/dg;->h(F)V

    if-eqz p3, :cond_0

    .line 985
    invoke-virtual {p3}, Lcom/my/target/ch;->getStatHolder()Lcom/my/target/di;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/my/target/di;->b(Lcom/my/target/dh;)V

    goto :goto_1

    .line 989
    :cond_0
    iget-object p2, p0, Lcom/my/target/en;->eH:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 994
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to parse progress stat with value "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 214
    invoke-static {p2}, Lcom/my/target/dq;->P(Ljava/lang/String;)Lcom/my/target/dq;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/my/target/dq;->Q(Ljava/lang/String;)Lcom/my/target/dq;

    move-result-object p2

    iget-object p3, p0, Lcom/my/target/en;->adConfig:Lcom/my/target/a;

    .line 215
    invoke-virtual {p3}, Lcom/my/target/a;->getSlotId()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/my/target/dq;->x(I)Lcom/my/target/dq;

    move-result-object p2

    .line 216
    invoke-virtual {p2, p1}, Lcom/my/target/dq;->S(Ljava/lang/String;)Lcom/my/target/dq;

    move-result-object p1

    iget-object p2, p0, Lcom/my/target/en;->ex:Lcom/my/target/bz;

    .line 217
    invoke-virtual {p2}, Lcom/my/target/bz;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/my/target/dq;->R(Ljava/lang/String;)Lcom/my/target/dq;

    move-result-object p1

    iget-object p2, p0, Lcom/my/target/en;->context:Landroid/content/Context;

    .line 218
    invoke-virtual {p1, p2}, Lcom/my/target/dq;->q(Landroid/content/Context;)V

    return-void
.end method

.method private b(Lorg/xmlpull/v1/XmlPullParser;Lcom/my/target/co;)V
    .locals 3

    .line 738
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/my/target/en;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 740
    invoke-static {p1}, Lcom/my/target/en;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 744
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClickThrough"

    .line 745
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez p2, :cond_2

    goto :goto_0

    .line 753
    :cond_2
    invoke-static {p1}, Lcom/my/target/en;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 754
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 756
    invoke-static {v0}, Lcom/my/target/en;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/my/target/ch;->setTrackingLink(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "ClickTracking"

    .line 759
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 761
    invoke-static {p1}, Lcom/my/target/en;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 762
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 764
    iget-object v1, p0, Lcom/my/target/en;->eH:Ljava/util/ArrayList;

    const-string v2, "click"

    invoke-static {v2, v0}, Lcom/my/target/dh;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/my/target/dh;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 769
    :cond_4
    invoke-static {p1}, Lcom/my/target/en;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4

    .line 486
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/my/target/en;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    .line 488
    invoke-static {p1}, Lcom/my/target/en;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 492
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Linear"

    .line 494
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    .line 497
    iget-boolean v0, p0, Lcom/my/target/en;->eJ:Z

    if-nez v0, :cond_3

    .line 499
    invoke-static {}, Lcom/my/target/co;->newBanner()Lcom/my/target/co;

    move-result-object v2

    if-eqz p2, :cond_2

    move-object v0, p2

    goto :goto_1

    :cond_2
    const-string v0, ""

    .line 500
    :goto_1
    invoke-virtual {v2, v0}, Lcom/my/target/ch;->setId(Ljava/lang/String;)V

    :cond_3
    const-string v0, "skipoffset"

    .line 502
    invoke-static {v0, p1}, Lcom/my/target/en;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-direct {p0, p1, v2, v0}, Lcom/my/target/en;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/my/target/co;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    .line 507
    invoke-virtual {v2}, Lcom/my/target/ch;->getDuration()F

    move-result v0

    const/4 v1, 0x0

    const-string v3, "Required field"

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 509
    invoke-virtual {v2}, Lcom/my/target/co;->getMediaData()Lcom/my/target/cd;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 511
    iget-object v0, p0, Lcom/my/target/en;->eI:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 515
    :cond_4
    invoke-virtual {v2}, Lcom/my/target/ch;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VAST has no valid mediaData"

    invoke-direct {p0, v0, v3, v1}, Lcom/my/target/en;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 520
    :cond_5
    invoke-virtual {v2}, Lcom/my/target/ch;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VAST has no valid Duration"

    invoke-direct {p0, v0, v3, v1}, Lcom/my/target/en;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_8

    const-string v1, "CompanionAds"

    .line 524
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "required"

    .line 526
    invoke-static {v0, p1}, Lcom/my/target/en;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v1, "all"

    .line 530
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "any"

    .line 531
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "none"

    .line 532
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong companion required attribute:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bad value"

    invoke-direct {p0, p2, v1, v0}, Lcom/my/target/en;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    move-object v2, v0

    .line 539
    :goto_2
    invoke-direct {p0, p1, p2, v2}, Lcom/my/target/en;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 543
    :cond_8
    invoke-static {p1}, Lcom/my/target/en;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 559
    invoke-static {p1}, Lcom/my/target/en;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 563
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    const-string v2, "Companion"

    .line 564
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "width"

    .line 566
    invoke-static {v0, p1}, Lcom/my/target/en;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "height"

    .line 567
    invoke-static {v2, p1}, Lcom/my/target/en;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    .line 568
    invoke-static {v3, p1}, Lcom/my/target/en;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 570
    invoke-static {}, Lcom/my/target/ci;->newBanner()Lcom/my/target/ci;

    move-result-object v4

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, ""

    .line 571
    :goto_0
    invoke-virtual {v4, v3}, Lcom/my/target/ch;->setId(Ljava/lang/String;)V

    .line 575
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/my/target/ch;->setWidth(I)V

    .line 576
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/my/target/ch;->setHeight(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 580
    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable  to convert required companion attributes, width = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " height = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Bad value"

    invoke-direct {p0, p2, v2, v0}, Lcom/my/target/en;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    :goto_1
    invoke-virtual {v4, p3}, Lcom/my/target/ci;->setRequired(Ljava/lang/String;)V

    const-string p2, "assetWidth"

    .line 586
    invoke-static {p2, p1}, Lcom/my/target/en;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "assetHeight"

    .line 587
    invoke-static {p3, p1}, Lcom/my/target/en;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p3

    .line 591
    :try_start_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 593
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v4, p2}, Lcom/my/target/ci;->setAssetWidth(I)V

    .line 595
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 597
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v4, p2}, Lcom/my/target/ci;->setAssetHeight(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    .line 602
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wrong VAST asset dimensions: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    :cond_3
    :goto_2
    const-string p2, "expandedWidth"

    .line 605
    invoke-static {p2, p1}, Lcom/my/target/en;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "expandedHeight"

    .line 606
    invoke-static {p3, p1}, Lcom/my/target/en;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p3

    .line 609
    :try_start_2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 611
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v4, p2}, Lcom/my/target/ci;->setExpandedWidth(I)V

    .line 613
    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 615
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v4, p2}, Lcom/my/target/ci;->setExpandedHeight(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception p2

    .line 620
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "wrong VAST expanded dimensions "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    :cond_5
    :goto_3
    const-string p2, "adSlotID"

    .line 623
    invoke-static {p2, p1}, Lcom/my/target/en;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/my/target/ci;->setAdSlotID(Ljava/lang/String;)V

    const-string p2, "apiFramework"

    .line 624
    invoke-static {p2, p1}, Lcom/my/target/en;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/my/target/ci;->setApiFramework(Ljava/lang/String;)V

    .line 626
    iget-object p2, p0, Lcom/my/target/en;->eG:Ljava/util/ArrayList;

    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 628
    :cond_6
    :goto_4
    invoke-static {p1}, Lcom/my/target/en;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result p2

    if-ne p2, v1, :cond_e

    .line 630
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "StaticResource"

    .line 631
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7

    .line 633
    invoke-static {p1}, Lcom/my/target/en;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/my/target/iv;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/my/target/ci;->setStaticResource(Ljava/lang/String;)V

    goto :goto_4

    :cond_7
    const-string p3, "HTMLResource"

    .line 635
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 637
    invoke-static {p1}, Lcom/my/target/en;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/my/target/iv;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/my/target/ci;->setHtmlResource(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    const-string p3, "IFrameResource"

    .line 639
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 641
    invoke-static {p1}, Lcom/my/target/en;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/my/target/iv;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/my/target/ci;->setIframeResource(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    const-string p3, "CompanionClickThrough"

    .line 643
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 645
    invoke-static {p1}, Lcom/my/target/en;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p2

    .line 646
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 648
    invoke-static {p2}, Lcom/my/target/en;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/my/target/ch;->setTrackingLink(Ljava/lang/String;)V

    goto :goto_4

    :cond_a
    const-string p3, "CompanionClickTracking"

    .line 651
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 653
    invoke-static {p1}, Lcom/my/target/en;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p2

    .line 654
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_6

    const-string p3, "click"

    .line 656
    invoke-static {p3, p2}, Lcom/my/target/dh;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/my/target/dh;

    move-result-object p2

    .line 657
    invoke-virtual {v4}, Lcom/my/target/ch;->getStatHolder()Lcom/my/target/di;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/my/target/di;->b(Lcom/my/target/dh;)V

    goto :goto_4

    :cond_b
    const-string p3, "TrackingEvents"

    .line 660
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 662
    invoke-direct {p0, p1, v4}, Lcom/my/target/en;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/my/target/ch;)V

    goto/16 :goto_4

    .line 666
    :cond_c
    invoke-static {p1}, Lcom/my/target/en;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 672
    :cond_d
    invoke-static {p1}, Lcom/my/target/en;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_e
    return-void
.end method

.method private static c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 2

    .line 93
    invoke-static {p0}, Lcom/my/target/en;->b(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 95
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 96
    invoke-static {p0}, Lcom/my/target/en;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    goto :goto_0

    .line 100
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    const-string v0, ""

    .line 102
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Lcom/my/target/ch;)V
    .locals 3

    const-string v0, "start"

    .line 1015
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "playbackStarted"

    if-eqz v0, :cond_0

    .line 1017
    invoke-direct {p0, v1, p2, p3}, Lcom/my/target/en;->a(Ljava/lang/String;Ljava/lang/String;Lcom/my/target/ch;)V

    goto/16 :goto_0

    :cond_0
    const-string v0, "firstQuartile"

    .line 1019
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 p1, 0x41c80000    # 25.0f

    .line 1021
    invoke-direct {p0, p1, p2, p3}, Lcom/my/target/en;->a(FLjava/lang/String;Lcom/my/target/ch;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "midpoint"

    .line 1023
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 p1, 0x42480000    # 50.0f

    .line 1025
    invoke-direct {p0, p1, p2, p3}, Lcom/my/target/en;->a(FLjava/lang/String;Lcom/my/target/ch;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "thirdQuartile"

    .line 1027
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 p1, 0x42960000    # 75.0f

    .line 1029
    invoke-direct {p0, p1, p2, p3}, Lcom/my/target/en;->a(FLjava/lang/String;Lcom/my/target/ch;)V

    goto/16 :goto_0

    :cond_3
    const-string v0, "complete"

    .line 1031
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/high16 p1, 0x42c80000    # 100.0f

    .line 1033
    invoke-direct {p0, p1, p2, p3}, Lcom/my/target/en;->a(FLjava/lang/String;Lcom/my/target/ch;)V

    goto/16 :goto_0

    :cond_4
    const-string v0, "creativeView"

    .line 1035
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1037
    invoke-direct {p0, v1, p2, p3}, Lcom/my/target/en;->a(Ljava/lang/String;Ljava/lang/String;Lcom/my/target/ch;)V

    goto/16 :goto_0

    :cond_5
    const-string v0, "mute"

    .line 1039
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "volumeOff"

    .line 1041
    invoke-direct {p0, p1, p2, p3}, Lcom/my/target/en;->a(Ljava/lang/String;Ljava/lang/String;Lcom/my/target/ch;)V

    goto/16 :goto_0

    :cond_6
    const-string v0, "unmute"

    .line 1043
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p1, "volumeOn"

    .line 1045
    invoke-direct {p0, p1, p2, p3}, Lcom/my/target/en;->a(Ljava/lang/String;Ljava/lang/String;Lcom/my/target/ch;)V

    goto/16 :goto_0

    :cond_7
    const-string v0, "pause"

    .line 1047
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "playbackPaused"

    .line 1049
    invoke-direct {p0, p1, p2, p3}, Lcom/my/target/en;->a(Ljava/lang/String;Ljava/lang/String;Lcom/my/target/ch;)V

    goto/16 :goto_0

    :cond_8
    const-string v0, "resume"

    .line 1051
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p1, "playbackResumed"

    .line 1053
    invoke-direct {p0, p1, p2, p3}, Lcom/my/target/en;->a(Ljava/lang/String;Ljava/lang/String;Lcom/my/target/ch;)V

    goto :goto_0

    :cond_9
    const-string v0, "fullscreen"

    .line 1055
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p1, "fullscreenOn"

    .line 1057
    invoke-direct {p0, p1, p2, p3}, Lcom/my/target/en;->a(Ljava/lang/String;Ljava/lang/String;Lcom/my/target/ch;)V

    goto :goto_0

    :cond_a
    const-string v0, "exitFullscreen"

    .line 1059
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p1, "fullscreenOff"

    .line 1061
    invoke-direct {p0, p1, p2, p3}, Lcom/my/target/en;->a(Ljava/lang/String;Ljava/lang/String;Lcom/my/target/ch;)V

    goto :goto_0

    :cond_b
    const-string v0, "skip"

    .line 1063
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "closedByUser"

    if-eqz v0, :cond_c

    .line 1065
    invoke-direct {p0, v1, p2, p3}, Lcom/my/target/en;->a(Ljava/lang/String;Ljava/lang/String;Lcom/my/target/ch;)V

    goto :goto_0

    :cond_c
    const-string v0, "error"

    .line 1067
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1069
    invoke-direct {p0, v0, p2, p3}, Lcom/my/target/en;->a(Ljava/lang/String;Ljava/lang/String;Lcom/my/target/ch;)V

    goto :goto_0

    :cond_d
    const-string v0, "ClickTracking"

    .line 1071
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p1, "click"

    .line 1073
    invoke-direct {p0, p1, p2, p3}, Lcom/my/target/en;->a(Ljava/lang/String;Ljava/lang/String;Lcom/my/target/ch;)V

    goto :goto_0

    :cond_e
    const-string v0, "close"

    .line 1075
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1077
    invoke-direct {p0, v1, p2, p3}, Lcom/my/target/en;->a(Ljava/lang/String;Ljava/lang/String;Lcom/my/target/ch;)V

    goto :goto_0

    :cond_f
    const-string v0, "closeLinear"

    .line 1079
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1081
    invoke-direct {p0, v1, p2, p3}, Lcom/my/target/en;->a(Ljava/lang/String;Ljava/lang/String;Lcom/my/target/ch;)V

    :cond_10
    :goto_0
    return-void
.end method

.method private c(Lorg/xmlpull/v1/XmlPullParser;Lcom/my/target/co;)V
    .locals 2

    .line 777
    iget-object v0, p0, Lcom/my/target/en;->adConfig:Lcom/my/target/a;

    invoke-virtual {v0}, Lcom/my/target/a;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "instreamads"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/my/target/en;->adConfig:Lcom/my/target/a;

    invoke-virtual {v0}, Lcom/my/target/a;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fullscreen"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/my/target/en;->adConfig:Lcom/my/target/a;

    invoke-virtual {v0}, Lcom/my/target/a;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "instreamaudioads"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 783
    invoke-direct {p0, p1, p2}, Lcom/my/target/en;->d(Lorg/xmlpull/v1/XmlPullParser;Lcom/my/target/co;)V

    goto :goto_1

    .line 779
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/my/target/en;->e(Lorg/xmlpull/v1/XmlPullParser;Lcom/my/target/co;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private cU()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/my/target/en;->ex:Lcom/my/target/bz;

    invoke-virtual {v0}, Lcom/my/target/bz;->bf()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/my/target/en;->cK:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/my/target/en;->ex:Lcom/my/target/bz;

    invoke-virtual {v0}, Lcom/my/target/bz;->getCompanionBanners()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 231
    iget-object v1, p0, Lcom/my/target/en;->eG:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method

.method private cV()V
    .locals 6

    .line 237
    iget-object v0, p0, Lcom/my/target/en;->eI:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/my/target/co;

    .line 239
    invoke-virtual {v1}, Lcom/my/target/ch;->getStatHolder()Lcom/my/target/di;

    move-result-object v2

    .line 240
    iget-object v3, p0, Lcom/my/target/en;->ex:Lcom/my/target/bz;

    invoke-virtual {v3}, Lcom/my/target/bz;->bn()Lcom/my/target/di;

    move-result-object v3

    invoke-virtual {v1}, Lcom/my/target/ch;->getDuration()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/my/target/di;->a(Lcom/my/target/di;F)V

    .line 241
    iget-object v3, p0, Lcom/my/target/en;->ctaText:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 243
    iget-object v3, p0, Lcom/my/target/en;->ctaText:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/my/target/ch;->setCtaText(Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :cond_1
    iget-object v3, p0, Lcom/my/target/en;->ex:Lcom/my/target/bz;

    invoke-virtual {v3}, Lcom/my/target/bz;->getCtaText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 247
    iget-object v3, p0, Lcom/my/target/en;->ex:Lcom/my/target/bz;

    invoke-virtual {v3}, Lcom/my/target/bz;->getCtaText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/my/target/ch;->setCtaText(Ljava/lang/String;)V

    .line 249
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/my/target/en;->eF:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/my/target/dg;

    .line 251
    invoke-virtual {v4}, Lcom/my/target/dg;->cv()F

    move-result v5

    invoke-virtual {v4}, Lcom/my/target/dh;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v5, v4, v1}, Lcom/my/target/en;->a(FLjava/lang/String;Lcom/my/target/ch;)V

    goto :goto_1

    .line 253
    :cond_3
    iget-object v3, p0, Lcom/my/target/en;->eH:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/my/target/dh;

    .line 255
    invoke-virtual {v2, v4}, Lcom/my/target/di;->b(Lcom/my/target/dh;)V

    goto :goto_2

    .line 257
    :cond_4
    iget-object v2, p0, Lcom/my/target/en;->eG:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/my/target/ci;

    .line 259
    invoke-virtual {v1, v3}, Lcom/my/target/co;->addCompanion(Lcom/my/target/ci;)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method private static d(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 0

    .line 120
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 128
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 124
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    :goto_0
    const/high16 p0, -0x80000000

    return p0
.end method

.method private d(Lorg/xmlpull/v1/XmlPullParser;Lcom/my/target/co;)V
    .locals 6

    .line 789
    :goto_0
    invoke-static {p1}, Lcom/my/target/en;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 791
    invoke-static {p1}, Lcom/my/target/en;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 795
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaFile"

    .line 796
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "type"

    .line 798
    invoke-static {v0, p1}, Lcom/my/target/en;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "bitrate"

    .line 799
    invoke-static {v1, p1}, Lcom/my/target/en;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    .line 800
    invoke-static {p1}, Lcom/my/target/en;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/my/target/en;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 803
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 805
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 812
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    :catch_0
    :cond_1
    invoke-static {v2}, Lcom/my/target/common/models/AudioData;->newAudioData(Ljava/lang/String;)Lcom/my/target/common/models/AudioData;

    move-result-object v1

    .line 820
    invoke-virtual {v1, v3}, Lcom/my/target/common/models/AudioData;->setBitrate(I)V

    move-object v3, v1

    :cond_2
    if-nez v3, :cond_3

    .line 826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping unsupported VAST file (mimetype="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",url="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 830
    :cond_3
    invoke-virtual {p2, v3}, Lcom/my/target/co;->setMediaData(Lcom/my/target/cd;)V

    goto :goto_0

    .line 834
    :cond_4
    invoke-static {p1}, Lcom/my/target/en;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method private static e(Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 0

    .line 137
    :try_start_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 141
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    const/high16 p0, -0x80000000

    return p0
.end method

.method private e(Lorg/xmlpull/v1/XmlPullParser;Lcom/my/target/co;)V
    .locals 12

    .line 841
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 843
    :goto_0
    invoke-static {p1}, Lcom/my/target/en;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    .line 845
    invoke-static {p1}, Lcom/my/target/en;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 849
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaFile"

    .line 850
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "type"

    .line 852
    invoke-static {v1, p1}, Lcom/my/target/en;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bitrate"

    .line 853
    invoke-static {v2, p1}, Lcom/my/target/en;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "width"

    .line 854
    invoke-static {v3, p1}, Lcom/my/target/en;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "height"

    .line 855
    invoke-static {v4, p1}, Lcom/my/target/en;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    .line 856
    invoke-static {p1}, Lcom/my/target/en;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/my/target/en;->U(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 859
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 861
    sget-object v7, Lcom/my/target/en;->eD:[Ljava/lang/String;

    array-length v8, v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v8, :cond_5

    aget-object v11, v7, v10

    .line 863
    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    if-eqz v3, :cond_1

    .line 870
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/4 v7, 0x0

    :catch_1
    const/4 v8, 0x0

    goto :goto_4

    :cond_1
    const/4 v7, 0x0

    :goto_2
    if-eqz v4, :cond_2

    .line 871
    :try_start_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    :goto_3
    if-eqz v2, :cond_3

    .line 872
    :try_start_2
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move v9, v2

    goto :goto_4

    :catch_2
    nop

    :cond_3
    :goto_4
    if-lez v7, :cond_5

    if-lez v8, :cond_5

    .line 879
    invoke-static {v5, v7, v8}, Lcom/my/target/common/models/VideoData;->newVideoData(Ljava/lang/String;II)Lcom/my/target/common/models/VideoData;

    move-result-object v6

    .line 880
    invoke-virtual {v6, v9}, Lcom/my/target/common/models/VideoData;->setBitrate(I)V

    goto :goto_5

    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_5
    :goto_5
    if-nez v6, :cond_6

    .line 889
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Skipping unsupported VAST file (mimeType="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",width="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",height="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",url="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 892
    :cond_6
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 896
    :cond_7
    invoke-static {p1}, Lcom/my/target/en;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 899
    :cond_8
    iget-object p1, p0, Lcom/my/target/en;->adConfig:Lcom/my/target/a;

    invoke-virtual {p1}, Lcom/my/target/a;->getVideoQuality()I

    move-result p1

    invoke-static {v0, p1}, Lcom/my/target/common/models/VideoData;->chooseBest(Ljava/util/List;I)Lcom/my/target/common/models/VideoData;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/my/target/co;->setMediaData(Lcom/my/target/cd;)V

    return-void
.end method

.method private f(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .line 266
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/my/target/en;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 268
    invoke-static {p1}, Lcom/my/target/en;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 272
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    invoke-direct {p0, p1}, Lcom/my/target/en;->g(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private g(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .line 281
    :goto_0
    invoke-static {p1}, Lcom/my/target/en;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 283
    invoke-static {p1}, Lcom/my/target/en;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 287
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wrapper"

    .line 289
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    .line 291
    iput-boolean v0, p0, Lcom/my/target/en;->eJ:Z

    const-string v0, "VAST file contains wrapped ad information."

    .line 292
    invoke-static {v0}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/my/target/en;->ex:Lcom/my/target/bz;

    invoke-virtual {v0}, Lcom/my/target/bz;->bg()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 296
    invoke-direct {p0, p1, v0}, Lcom/my/target/en;->a(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_0

    :cond_1
    const-string v0, "got VAST wrapper, but max redirects limit exceeded"

    .line 300
    invoke-static {v0}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 301
    invoke-static {p1}, Lcom/my/target/en;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    const-string v1, "InLine"

    .line 304
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 306
    iput-boolean v0, p0, Lcom/my/target/en;->eJ:Z

    const-string v0, "VAST file contains inline ad information."

    .line 307
    invoke-static {v0}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 308
    invoke-direct {p0, p1}, Lcom/my/target/en;->h(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 312
    :cond_3
    invoke-static {p1}, Lcom/my/target/en;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private h(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .line 380
    :goto_0
    invoke-static {p1}, Lcom/my/target/en;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 382
    invoke-static {p1}, Lcom/my/target/en;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 386
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Impression"

    .line 387
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 389
    invoke-direct {p0, p1}, Lcom/my/target/en;->j(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "Creatives"

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 393
    invoke-direct {p0, p1}, Lcom/my/target/en;->k(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "Extensions"

    .line 399
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 401
    invoke-direct {p0, p1}, Lcom/my/target/en;->i(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 405
    :cond_3
    invoke-static {p1}, Lcom/my/target/en;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 408
    :cond_4
    invoke-direct {p0}, Lcom/my/target/en;->cV()V

    return-void
.end method

.method private i(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    .line 413
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/my/target/en;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 415
    invoke-static {p1}, Lcom/my/target/en;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 419
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Extension"

    .line 420
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "type"

    .line 422
    invoke-static {v0, p1}, Lcom/my/target/en;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 423
    sget-object v1, Lcom/my/target/en;->eE:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 425
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 427
    invoke-direct {p0, p1, v0}, Lcom/my/target/en;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_2

    .line 431
    :cond_2
    invoke-static {p1}, Lcom/my/target/en;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 437
    :cond_3
    invoke-static {p1}, Lcom/my/target/en;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private j(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .line 454
    invoke-static {p1}, Lcom/my/target/en;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    .line 456
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/my/target/en;->cK:Ljava/util/ArrayList;

    const-string v1, "impression"

    invoke-static {v1, p1}, Lcom/my/target/dh;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/my/target/dh;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Impression tracker url for wrapper: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private k(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2

    .line 465
    :goto_0
    invoke-static {p1}, Lcom/my/target/en;->d(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 467
    invoke-static {p1}, Lcom/my/target/en;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 471
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Creative"

    .line 472
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "id"

    .line 474
    invoke-static {v0, p1}, Lcom/my/target/en;->a(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 475
    invoke-direct {p0, p1, v0}, Lcom/my/target/en;->b(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto :goto_0

    .line 479
    :cond_1
    invoke-static {p1}, Lcom/my/target/en;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public V(Ljava/lang/String;)V
    .locals 3

    .line 177
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    :try_start_0
    const-string v1, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v2, 0x0

    .line 180
    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 181
    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    invoke-direct {p0}, Lcom/my/target/en;->cU()V

    .line 189
    invoke-static {v0}, Lcom/my/target/en;->e(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result p1

    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/high16 v1, -0x80000000

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 198
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VAST"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 200
    invoke-direct {p0, v0}, Lcom/my/target/en;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 203
    :cond_1
    invoke-static {v0}, Lcom/my/target/en;->b(Lorg/xmlpull/v1/XmlPullParser;)I

    move-result p1

    goto :goto_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse VAST: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    return-void
.end method

.method W(Ljava/lang/String;)F
    .locals 14

    const-string v1, "."

    const-wide/16 v2, 0x0

    const/high16 v4, -0x40800000    # -1.0f

    .line 685
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    const-wide/16 v6, 0x3e8

    const/4 v8, 0x0

    if-eqz v5, :cond_1

    .line 687
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 688
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 689
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v5, v2, v6

    if-lez v5, :cond_0

    return v4

    .line 694
    :cond_0
    invoke-virtual {p1, v8, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p1

    :goto_0
    const-string v1, ":"

    const/4 v5, 0x3

    .line 697
    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 698
    aget-object v1, v0, v8

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v8, v1

    const/4 v1, 0x1

    .line 699
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v10, v1

    const/4 v1, 0x2

    .line 700
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    const-wide/16 v12, 0x18

    cmp-long v5, v8, v12

    if-gez v5, :cond_3

    const-wide/16 v12, 0x3c

    cmp-long v5, v10, v12

    if-gez v5, :cond_3

    cmp-long v5, v0, v12

    if-ltz v5, :cond_2

    goto :goto_1

    .line 706
    :cond_2
    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    mul-long v0, v0, v6

    add-long/2addr v2, v0

    const-wide/32 v0, 0xea60

    mul-long v10, v10, v0

    add-long/2addr v2, v10

    const-wide/32 v0, 0x36ee80

    mul-long v8, v8, v0

    add-long/2addr v2, v8

    long-to-float v0, v2

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float v4, v0, v1

    nop

    :catch_0
    :cond_3
    :goto_1
    return v4
.end method

.method b(Lcom/my/target/co;Ljava/lang/String;)V
    .locals 3

    if-eqz p2, :cond_1

    const-string v0, "%"

    .line 1092
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1094
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1095
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Linear skipoffset is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " [%]"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/my/target/ah;->a(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {p1}, Lcom/my/target/ch;->getDuration()F

    move-result p2

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p2, v1

    int-to-float v0, v0

    mul-float p2, p2, v0

    goto :goto_0

    :cond_0
    const-string v0, ":"

    .line 1098
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1102
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/my/target/en;->W(Ljava/lang/String;)F

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1106
    :catch_0
    invoke-virtual {p1}, Lcom/my/target/ch;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to convert ISO time skipoffset string "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "Bad value"

    invoke-direct {p0, v0, v1, p2}, Lcom/my/target/en;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/high16 p2, -0x40800000    # -1.0f

    :goto_0
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_2

    .line 1112
    invoke-virtual {p1, p2}, Lcom/my/target/co;->setAllowCloseDelay(F)V

    :cond_2
    return-void
.end method

.method public bf()Ljava/util/ArrayList;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/my/target/en;->cK:Ljava/util/ArrayList;

    return-object v0
.end method

.method public cS()Ljava/util/ArrayList;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/my/target/en;->eI:Ljava/util/ArrayList;

    return-object v0
.end method

.method public cT()Lcom/my/target/bz;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/my/target/en;->eK:Lcom/my/target/bz;

    return-object v0
.end method
