.class public abstract Lcom/perm/utils/AdEvents;
.super Ljava/lang/Object;
.source "AdEvents.java"


# static fields
.field static sent_events:Ljava/util/HashSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/perm/utils/AdEvents;->sent_events:Ljava/util/HashSet;

    return-void
.end method

.method static synthetic access$000(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 0

    .line 15
    invoke-static {p0, p1}, Lcom/perm/utils/AdEvents;->getUrlsByType(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0

    .line 15
    invoke-static {p0}, Lcom/perm/utils/AdEvents;->downloadPixel(Ljava/lang/String;)V

    return-void
.end method

.method private static downloadPixel(Ljava/lang/String;)V
    .locals 1

    .line 300
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-static {v0}, Lcom/perm/utils/ProxyManager;->getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p0

    .line 302
    invoke-static {p0}, Lcom/perm/utils/UserAgent;->set(Ljava/net/HttpURLConnection;)V

    const/16 v0, 0x1388

    .line 303
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 304
    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 305
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 307
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 308
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 310
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static getUrlsByType(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3

    .line 288
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 291
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 292
    aget-object v2, v1, v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 293
    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method static jsonEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "\""

    const-string v1, "\\\""

    .line 318
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\\"

    const-string v1, "\\\\"

    .line 319
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static reportAttachedLinkClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 228
    new-instance v0, Lcom/perm/utils/AdEvents$10;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/perm/utils/AdEvents$10;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static reportAudioStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 133
    new-instance v0, Lcom/perm/utils/AdEvents$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/utils/AdEvents$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static reportExpand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 184
    new-instance v0, Lcom/perm/utils/AdEvents$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/utils/AdEvents$8;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static reportImpression(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 9

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "i"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 23
    sget-object v1, Lcom/perm/utils/AdEvents;->sent_events:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 25
    :cond_0
    sget-object v1, Lcom/perm/utils/AdEvents;->sent_events:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    new-instance v0, Lcom/perm/utils/AdEvents$1;

    move-object v2, v0

    move v3, p4

    move v4, p5

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/perm/utils/AdEvents$1;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 56
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static reportLoad(Ljava/util/ArrayList;)V
    .locals 1

    .line 61
    new-instance v0, Lcom/perm/utils/AdEvents$2;

    invoke-direct {v0, p0}, Lcom/perm/utils/AdEvents$2;-><init>(Ljava/util/ArrayList;)V

    .line 90
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static reportOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 167
    new-instance v0, Lcom/perm/utils/AdEvents$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/utils/AdEvents$7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static reportOwnerClick(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 95
    new-instance v0, Lcom/perm/utils/AdEvents$3;

    invoke-direct {v0, p1, p2, p3, p0}, Lcom/perm/utils/AdEvents$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 111
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static reportPhotoOpen(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 272
    new-instance v0, Lcom/perm/utils/AdEvents$12;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/utils/AdEvents$12;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static reportPostLinkClick(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 201
    new-instance v6, Lcom/perm/utils/AdEvents$9;

    move-object v0, v6

    move-object v1, p4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/perm/utils/AdEvents$9;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 223
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static reportSignerClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 116
    new-instance v0, Lcom/perm/utils/AdEvents$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/utils/AdEvents$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static reportSnippetClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 250
    new-instance v0, Lcom/perm/utils/AdEvents$11;

    invoke-direct {v0, p3, p0, p1, p2}, Lcom/perm/utils/AdEvents$11;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static reportVideoStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 150
    new-instance v0, Lcom/perm/utils/AdEvents$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/perm/utils/AdEvents$6;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
