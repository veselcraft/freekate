.class public Lcom/my/target/core/parsers/vast/VASTParser;
.super Ljava/lang/Object;
.source "VASTParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/core/parsers/vast/VASTParser$VASTExeption;
    }
.end annotation


# static fields
.field private static final e:[Ljava/lang/String;


# instance fields
.field final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/parsers/vast/b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/models/banners/e;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/lang/String;

.field private final f:Landroid/content/Context;

.field private final g:Ljava/lang/String;

.field private h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "linkTxt"

    aput-object v2, v0, v1

    sput-object v0, Lcom/my/target/core/parsers/vast/VASTParser;->e:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/parsers/vast/VASTParser;->a:Ljava/util/ArrayList;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/parsers/vast/VASTParser;->b:Ljava/util/ArrayList;

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/my/target/core/parsers/vast/VASTParser;->c:Ljava/util/ArrayList;

    .line 129
    iput-object p1, p0, Lcom/my/target/core/parsers/vast/VASTParser;->f:Landroid/content/Context;

    .line 130
    iput-object p2, p0, Lcom/my/target/core/parsers/vast/VASTParser;->g:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/my/target/core/models/c;Lcom/my/target/core/a;Lcom/my/target/core/models/d;Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/my/target/core/parsers/vast/VASTParser$VASTExeption;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 46
    new-instance v1, Lcom/my/target/core/parsers/vast/VASTParser;

    invoke-virtual {p2}, Lcom/my/target/core/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p4, v0}, Lcom/my/target/core/parsers/vast/VASTParser;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1158
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 1159
    const-string v2, "http://xmlpull.org/v1/doc/features.html#process-namespaces"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setFeature(Ljava/lang/String;Z)V

    .line 1160
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1161
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 1163
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v4, v2, :cond_0

    const-string v2, "VAST"

    .line 1164
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1166
    :cond_0
    const-string v0, "Server responded with non-VAST XML"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 49
    :goto_0
    iget-object v0, v1, Lcom/my/target/core/parsers/vast/VASTParser;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 51
    invoke-virtual {p3}, Lcom/my/target/core/models/d;->i()Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v4, "preroll"

    .line 54
    :cond_1
    iget-object v0, v1, Lcom/my/target/core/parsers/vast/VASTParser;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    .line 56
    invoke-static/range {v0 .. v5}, Lcom/my/target/core/parsers/vast/a;->a(Lcom/my/target/core/models/c;Lcom/my/target/core/parsers/vast/VASTParser;Lcom/my/target/core/a;Lcom/my/target/core/models/d;Ljava/lang/String;Landroid/content/Context;)Lcom/my/target/core/models/sections/i;

    .line 110
    :cond_2
    :goto_1
    return-void

    .line 1170
    :cond_3
    const-string v2, "VAST"

    invoke-interface {v0, v4, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1171
    :cond_4
    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v2

    if-ne v2, v4, :cond_5

    .line 1173
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    if-ne v2, v4, :cond_4

    .line 1177
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Ad"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1179
    invoke-direct {v1, v0}, Lcom/my/target/core/parsers/vast/VASTParser;->a(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_2

    .line 1182
    :cond_5
    const/4 v2, 0x3

    const-string v3, "VAST"

    invoke-interface {v0, v2, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_6
    invoke-virtual {p3}, Lcom/my/target/core/models/d;->h()I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_7

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Max redirect limit reached, redirect was dropped: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p3}, Lcom/my/target/core/models/d;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_7
    new-instance v3, Lcom/my/target/core/models/d;

    iget-object v0, v1, Lcom/my/target/core/parsers/vast/VASTParser;->h:Ljava/lang/String;

    invoke-direct {v3, v0}, Lcom/my/target/core/models/d;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Additional section name vast = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/my/target/core/models/d;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p3}, Lcom/my/target/core/models/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/my/target/core/models/d;->b(Ljava/lang/String;)V

    .line 75
    iget-object v0, v1, Lcom/my/target/core/parsers/vast/VASTParser;->d:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/my/target/core/models/d;->a(Ljava/lang/String;)V

    .line 76
    iget-object v0, v1, Lcom/my/target/core/parsers/vast/VASTParser;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    .line 77
    iget-object v0, v1, Lcom/my/target/core/parsers/vast/VASTParser;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Lcom/my/target/core/models/d;->a(Ljava/util/ArrayList;)V

    .line 79
    :cond_8
    iget-object v0, v1, Lcom/my/target/core/parsers/vast/VASTParser;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/parsers/vast/b;

    .line 81
    iget-object v0, v0, Lcom/my/target/core/parsers/vast/b;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_a
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/util/Pair;

    .line 83
    iget-object v0, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v0, v2, v6}, Lcom/my/target/core/parsers/vast/a;->a(Ljava/lang/String;Ljava/lang/String;F)Lcom/my/target/core/models/k;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_a

    .line 87
    invoke-virtual {v3, v0}, Lcom/my/target/core/models/d;->a(Lcom/my/target/core/models/k;)V

    goto :goto_3

    .line 90
    :cond_b
    invoke-virtual {p3}, Lcom/my/target/core/models/d;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/k;

    .line 92
    invoke-virtual {v3, v0}, Lcom/my/target/core/models/d;->a(Lcom/my/target/core/models/k;)V

    goto :goto_4

    .line 94
    :cond_c
    invoke-virtual {p3}, Lcom/my/target/core/models/d;->j()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/my/target/core/models/k;

    .line 96
    invoke-virtual {v3, v0}, Lcom/my/target/core/models/d;->b(Lcom/my/target/core/models/k;)V

    goto :goto_5

    .line 98
    :cond_d
    iget-object v0, v1, Lcom/my/target/core/parsers/vast/VASTParser;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 100
    new-instance v2, Lcom/my/target/core/models/k;

    const-string v4, "impression"

    invoke-direct {v2, v4, v0}, Lcom/my/target/core/models/k;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/my/target/core/models/d;->b(Lcom/my/target/core/models/k;)V

    goto :goto_6

    .line 102
    :cond_e
    invoke-virtual {p3}, Lcom/my/target/core/models/d;->f()F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/my/target/core/models/d;->a(F)V

    .line 103
    invoke-virtual {p3}, Lcom/my/target/core/models/d;->g()F

    move-result v0

    invoke-virtual {v3, v0}, Lcom/my/target/core/models/d;->b(F)V

    .line 104
    invoke-virtual {p3}, Lcom/my/target/core/models/d;->p()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/my/target/core/models/d;->a(Ljava/util/concurrent/atomic/AtomicInteger;)V

    .line 105
    invoke-virtual {p3}, Lcom/my/target/core/models/d;->b()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 106
    invoke-virtual {p3}, Lcom/my/target/core/models/d;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/my/target/core/models/d;->a(Ljava/util/ArrayList;)V

    .line 107
    :cond_f
    invoke-virtual {p3, v3}, Lcom/my/target/core/models/d;->b(Lcom/my/target/core/models/d;)V

    goto/16 :goto_1
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/my/target/core/parsers/vast/VASTParser$VASTExeption;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 188
    const-string v0, "Ad"

    invoke-interface {p1, v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v3, :cond_a

    .line 191
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 196
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_9

    .line 200
    const-string v1, "Wrapper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 202
    const-string v0, "VAST file contains wrapped ad information. []"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 1261
    const-string v0, "Wrapper"

    invoke-interface {p1, v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1262
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 1264
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 1268
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1269
    if-eqz v0, :cond_3

    const-string v1, "Impression"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1271
    const-string v0, "Impression"

    invoke-interface {p1, v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 1272
    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 1274
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1276
    iget-object v1, p0, Lcom/my/target/core/parsers/vast/VASTParser;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1277
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Impression tracker url for wrapper: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 1280
    :cond_2
    const-string v0, "Impression"

    invoke-interface {p1, v5, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1281
    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "Creatives"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1283
    invoke-direct {p0, p1}, Lcom/my/target/core/parsers/vast/VASTParser;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 1284
    :cond_4
    if-eqz v0, :cond_5

    const-string v1, "Extensions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1286
    invoke-direct {p0, p1}, Lcom/my/target/core/parsers/vast/VASTParser;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 1287
    :cond_5
    if-eqz v0, :cond_6

    const-string v1, "VASTAdTagURI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2123
    const-string v0, "VASTAdTagURI"

    invoke-interface {p1, v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 2124
    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/parsers/vast/VASTParser;->h:Ljava/lang/String;

    goto :goto_1

    .line 1292
    :cond_6
    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 1295
    :cond_7
    const-string v0, "Wrapper"

    invoke-interface {p1, v5, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 205
    :cond_8
    const-string v1, "InLine"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 207
    const-string v0, "VAST file contains inline ad information."

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 208
    invoke-direct {p0, p1}, Lcom/my/target/core/parsers/vast/VASTParser;->b(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 211
    :cond_9
    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 214
    :cond_a
    const-string v0, "Ad"

    invoke-interface {p1, v5, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Lcom/my/target/core/parsers/vast/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/my/target/core/parsers/vast/VASTParser$VASTExeption;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 554
    const-string v0, "Linear"

    invoke-interface {p1, v6, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 555
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v6, :cond_a

    .line 557
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 558
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    if-ne v1, v6, :cond_0

    .line 562
    if-eqz v0, :cond_1

    const-string v1, "Duration"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 564
    const-string v0, "Duration"

    invoke-interface {p1, v6, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/my/target/core/parsers/vast/b;->c:Ljava/lang/String;

    .line 566
    const-string v0, "Duration"

    invoke-interface {p1, v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 567
    :cond_1
    if-eqz v0, :cond_6

    const-string v1, "TrackingEvents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4598
    const-string v0, "TrackingEvents"

    invoke-interface {p1, v6, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 4599
    :cond_2
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v6, :cond_5

    .line 4601
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v6, :cond_2

    .line 4605
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4606
    if-eqz v0, :cond_4

    const-string v1, "Tracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4608
    const-string v0, "event"

    invoke-interface {p1, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4609
    const-string v1, "offset"

    invoke-interface {p1, v5, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4610
    const-string v2, "Tracking"

    invoke-interface {p1, v6, v5, v2}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 4611
    const-string v2, "progress"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 4613
    iget-object v2, p2, Lcom/my/target/core/parsers/vast/b;->e:Ljava/util/ArrayList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4618
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Added VAST tracking \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 4619
    const-string v0, "Tracking"

    invoke-interface {p1, v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4616
    :cond_3
    iget-object v1, p2, Lcom/my/target/core/parsers/vast/b;->f:Ljava/util/ArrayList;

    new-instance v2, Landroid/util/Pair;

    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4622
    :cond_4
    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    .line 4625
    :cond_5
    const-string v0, "TrackingEvents"

    invoke-interface {p1, v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 570
    :cond_6
    if-eqz v0, :cond_8

    const-string v1, "MediaFiles"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 572
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 573
    invoke-direct {p0, p1, v0}, Lcom/my/target/core/parsers/vast/VASTParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V

    .line 574
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 576
    iput-object v0, p2, Lcom/my/target/core/parsers/vast/b;->d:Ljava/util/ArrayList;

    goto/16 :goto_0

    .line 579
    :cond_7
    const-string v0, "Mediafiles array is empty!"

    const-string v1, "Empty mediafiles"

    iget-object v2, p0, Lcom/my/target/core/parsers/vast/VASTParser;->f:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/my/target/core/parsers/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_0

    .line 582
    :cond_8
    if-eqz v0, :cond_9

    const-string v1, "VideoClicks"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 584
    invoke-static {p1, p2}, Lcom/my/target/core/parsers/vast/VASTParser;->b(Lorg/xmlpull/v1/XmlPullParser;Lcom/my/target/core/parsers/vast/b;)V

    goto/16 :goto_0

    .line 587
    :cond_9
    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 590
    :cond_a
    const-string v0, "Linear"

    invoke-interface {p1, v7, v5, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 591
    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 430
    const-string v0, "CompanionAds"

    invoke-interface {p1, v5, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v5, :cond_9

    .line 4441
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 4445
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4446
    if-eqz v0, :cond_8

    const-string v1, "Companion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4448
    const-string v0, "width"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4449
    const-string v1, "height"

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4450
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4451
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4453
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No required companion attributes, width = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " height = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wrong attribute: "

    iget-object v2, p0, Lcom/my/target/core/parsers/vast/VASTParser;->f:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/my/target/core/parsers/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 4457
    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 4460
    :cond_2
    const-string v2, "id"

    invoke-interface {p1, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4462
    invoke-static {v2}, Lcom/my/target/core/factories/a;->c(Ljava/lang/String;)Lcom/my/target/core/models/banners/e;

    move-result-object v2

    .line 4466
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/my/target/core/models/banners/e;->setWidth(I)V

    .line 4467
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/my/target/core/models/banners/e;->setHeight(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4478
    invoke-virtual {v2, p2}, Lcom/my/target/core/models/banners/e;->setRequired(Ljava/lang/String;)V

    .line 4480
    const-string v0, "assetWidth"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4482
    const-string v1, "assetHeight"

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4484
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 4489
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4488
    invoke-virtual {v2, v1}, Lcom/my/target/core/models/banners/e;->setAssetHeight(I)V

    .line 4491
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4490
    invoke-virtual {v2, v0}, Lcom/my/target/core/models/banners/e;->setAssetWidth(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 4498
    :cond_3
    :goto_1
    const-string v0, "expandedWidth"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4500
    const-string v1, "expandedHeight"

    invoke-interface {p1, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4502
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 4507
    :try_start_2
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 4506
    invoke-virtual {v2, v1}, Lcom/my/target/core/models/banners/e;->setExpandedHeight(I)V

    .line 4509
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 4508
    invoke-virtual {v2, v0}, Lcom/my/target/core/models/banners/e;->setExpandedWidth(I)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 4516
    :cond_4
    :goto_2
    const-string v0, "adSlotID"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/my/target/core/models/banners/e;->setAdSlotID(Ljava/lang/String;)V

    .line 4518
    const-string v0, "apiFramework"

    invoke-interface {p1, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/my/target/core/models/banners/e;->setApiFramework(Ljava/lang/String;)V

    .line 4521
    iget-object v0, p0, Lcom/my/target/core/parsers/vast/VASTParser;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4523
    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 4525
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4526
    if-eqz v0, :cond_7

    .line 4529
    const-string v1, "StaticResource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4531
    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/my/target/core/models/banners/e;->setStaticResource(Ljava/lang/String;)V

    goto :goto_3

    .line 4470
    :catch_0
    move-exception v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable  to convert required companion attributes, width = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " height = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Wrong attribute: "

    iget-object v2, p0, Lcom/my/target/core/parsers/vast/VASTParser;->f:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/my/target/core/parsers/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 4474
    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 4492
    :catch_1
    move-exception v0

    .line 4494
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "wrong VAST asset dimensions: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4510
    :catch_2
    move-exception v0

    .line 4512
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "wrong VAST expanded dimensions "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 4532
    :cond_5
    const-string v1, "HTMLResource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4534
    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/my/target/core/models/banners/e;->setHtmlResource(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4535
    :cond_6
    const-string v1, "IFrameResource"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4537
    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/my/target/core/models/banners/e;->setIframeResource(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 4540
    :cond_7
    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    .line 4545
    :cond_8
    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 435
    :cond_9
    const/4 v0, 0x3

    const-string v1, "CompanionAds"

    invoke-interface {p1, v0, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method private a(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/my/target/core/parsers/vast/b$a;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/my/target/core/parsers/vast/VASTParser$VASTExeption;,
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v2, 0x1

    const/4 v10, 0x2

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 632
    const-string v0, "MediaFiles"

    invoke-interface {p1, v10, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 633
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v10, :cond_8

    .line 635
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v10, :cond_0

    .line 639
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 640
    if-eqz v0, :cond_7

    const-string v3, "MediaFile"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 642
    const-string v0, "MediaFile"

    invoke-interface {p1, v10, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v0, "type"

    invoke-interface {p1, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 644
    const-string v0, "bitrate"

    invoke-interface {p1, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 645
    const-string v0, "width"

    invoke-interface {p1, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 646
    const-string v0, "height"

    invoke-interface {p1, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 647
    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/parsers/vast/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 649
    iget-object v0, p0, Lcom/my/target/core/parsers/vast/VASTParser;->g:Ljava/lang/String;

    .line 5037
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 5039
    const-string v8, "video/mp4"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "instreamads"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v0, v2

    .line 651
    :goto_1
    if-eqz v0, :cond_1

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 653
    new-instance v8, Lcom/my/target/core/parsers/vast/b$a;

    invoke-direct {v8, v7, v3}, Lcom/my/target/core/parsers/vast/b$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    if-eqz v5, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_2
    iput v0, v8, Lcom/my/target/core/parsers/vast/b$a;->c:I

    .line 656
    if-eqz v6, :cond_5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3
    iput v0, v8, Lcom/my/target/core/parsers/vast/b$a;->d:I

    .line 658
    if-eqz v4, :cond_6

    invoke-static {v4}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 660
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v8, Lcom/my/target/core/parsers/vast/b$a;->e:I

    .line 665
    :goto_4
    invoke-virtual {p2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    :cond_1
    const-string v0, "MediaFile"

    invoke-interface {p1, v11, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 5042
    :cond_2
    const-string v8, "audio"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "instreamaudioads"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    .line 5044
    goto :goto_1

    :cond_3
    move v0, v1

    .line 5047
    goto :goto_1

    :cond_4
    move v0, v1

    .line 655
    goto :goto_2

    :cond_5
    move v0, v1

    .line 656
    goto :goto_3

    .line 663
    :cond_6
    iput v1, v8, Lcom/my/target/core/parsers/vast/b$a;->e:I

    goto :goto_4

    .line 670
    :cond_7
    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 673
    :cond_8
    const-string v0, "MediaFiles"

    invoke-interface {p1, v11, v9, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 674
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 37
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 38
    const-string v1, "<VAST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "<?xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/my/target/core/parsers/vast/VASTParser$VASTExeption;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 220
    const-string v0, "InLine"

    invoke-interface {p1, v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 223
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 227
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_2

    const-string v1, "Impression"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    const-string v0, "Impression"

    invoke-interface {p1, v3, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 231
    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/my/target/core/parsers/vast/VASTParser;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Impression tracker url for inline: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 238
    :cond_1
    const-string v0, "Impression"

    invoke-interface {p1, v5, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "Creatives"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 241
    invoke-direct {p0, p1}, Lcom/my/target/core/parsers/vast/VASTParser;->d(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 247
    :cond_3
    if-eqz v0, :cond_4

    const-string v1, "Extensions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 249
    invoke-direct {p0, p1}, Lcom/my/target/core/parsers/vast/VASTParser;->e(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 252
    :cond_4
    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 255
    :cond_5
    const-string v0, "InLine"

    invoke-interface {p1, v5, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method private static b(Lorg/xmlpull/v1/XmlPullParser;Lcom/my/target/core/parsers/vast/b;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 681
    const-string v0, "VideoClicks"

    invoke-interface {p0, v5, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 682
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 684
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 688
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 689
    if-eqz v0, :cond_1

    const-string v1, "ClickThrough"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 692
    const-string v0, "ClickThrough"

    invoke-interface {p0, v5, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 693
    invoke-static {p0}, Lcom/my/target/core/parsers/vast/VASTParser;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/my/target/core/parsers/vast/b;->g:Ljava/lang/String;

    .line 695
    const-string v0, "ClickThrough"

    invoke-interface {p0, v6, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 696
    :cond_1
    if-eqz v0, :cond_2

    const-string v1, "ClickTracking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 698
    const-string v0, "ClickTracking"

    invoke-interface {p0, v5, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 700
    iget-object v0, p1, Lcom/my/target/core/parsers/vast/b;->f:Ljava/util/ArrayList;

    new-instance v1, Landroid/util/Pair;

    const-string v2, "ClickTracking"

    .line 701
    invoke-static {p0}, Lcom/my/target/core/parsers/vast/VASTParser;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 700
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 702
    const-string v0, "ClickTracking"

    invoke-interface {p0, v6, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 705
    :cond_2
    invoke-static {p0}, Lcom/my/target/core/parsers/vast/VASTParser;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 708
    :cond_3
    const-string v0, "VideoClicks"

    invoke-interface {p0, v6, v4, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method private static c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .prologue
    .line 301
    const-string v0, ""

    .line 302
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 304
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 311
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 309
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No text: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/my/target/core/parsers/vast/VASTParser$VASTExeption;
        }
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v1, 0x0

    .line 317
    const-string v0, "Creatives"

    invoke-interface {p1, v5, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v5, :cond_7

    .line 320
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 324
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 325
    if-eqz v0, :cond_6

    const-string v2, "Creative"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 327
    const-string v0, "id"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2381
    const-string v0, "Creative"

    invoke-interface {p1, v5, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 2382
    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v5, :cond_5

    .line 2384
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v5, :cond_1

    .line 2388
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2390
    if-eqz v0, :cond_2

    const-string v3, "Linear"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2392
    new-instance v0, Lcom/my/target/core/parsers/vast/b;

    invoke-direct {v0}, Lcom/my/target/core/parsers/vast/b;-><init>()V

    .line 2393
    iput-object v2, v0, Lcom/my/target/core/parsers/vast/b;->a:Ljava/lang/String;

    .line 2394
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Creative id = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 2395
    const-string v3, "skipoffset"

    .line 2396
    invoke-interface {p1, v1, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/my/target/core/parsers/vast/b;->b:Ljava/lang/String;

    .line 2397
    invoke-direct {p0, p1, v0}, Lcom/my/target/core/parsers/vast/VASTParser;->a(Lorg/xmlpull/v1/XmlPullParser;Lcom/my/target/core/parsers/vast/b;)V

    .line 2398
    iget-object v3, p0, Lcom/my/target/core/parsers/vast/VASTParser;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2399
    :cond_2
    if-eqz v0, :cond_4

    const-string v3, "CompanionAds"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2401
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Creative id = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/my/target/core/parsers/a$a;->d:Ljava/lang/String;

    .line 2402
    const-string v0, "required"

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2403
    if-eqz v0, :cond_3

    .line 2405
    const-string v3, "all"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "any"

    .line 2406
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "none"

    .line 2407
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2409
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Wrong companion required attribute: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Wrong attribute: "

    iget-object v4, p0, Lcom/my/target/core/parsers/vast/VASTParser;->f:Landroid/content/Context;

    invoke-static {v0, v3, v4}, Lcom/my/target/core/parsers/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    move-object v0, v1

    .line 2417
    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/my/target/core/parsers/vast/VASTParser;->a(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2420
    :cond_4
    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_1

    .line 2423
    :cond_5
    const-string v0, "Creative"

    invoke-interface {p1, v6, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 331
    :cond_6
    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 334
    :cond_7
    const-string v0, "Creatives"

    invoke-interface {p1, v6, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method private e(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;,
            Lcom/my/target/core/parsers/vast/VASTParser$VASTExeption;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 340
    const-string v0, "Extensions"

    invoke-interface {p1, v9, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    move-result v0

    if-ne v0, v9, :cond_4

    .line 343
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    if-ne v0, v9, :cond_0

    .line 347
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 348
    if-eqz v0, :cond_3

    const-string v1, "Extension"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    const-string v0, "type"

    invoke-interface {p1, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 351
    sget-object v2, Lcom/my/target/core/parsers/vast/VASTParser;->e:[Ljava/lang/String;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 352
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3367
    const-string v4, "Extension"

    invoke-interface {p1, v9, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 3368
    const-string v4, "linkTxt"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3370
    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->c(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v4

    .line 4137
    :try_start_0
    const-string v5, "utf-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/my/target/core/parsers/vast/VASTParser;->d:Ljava/lang/String;

    .line 4138
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "VAST linkTxt decoded text = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/my/target/core/parsers/vast/VASTParser;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3372
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "VAST linkTxt raw text: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 3375
    :cond_1
    const-string v4, "Extension"

    invoke-interface {p1, v10, v8, v4}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 351
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 4141
    :catch_0
    move-exception v5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unable to decode linkTxt extention: \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Decoding exception"

    iget-object v7, p0, Lcom/my/target/core/parsers/vast/VASTParser;->f:Landroid/content/Context;

    invoke-static {v5, v6, v7}, Lcom/my/target/core/parsers/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2

    .line 355
    :cond_2
    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    .line 358
    :cond_3
    invoke-static {p1}, Lcom/my/target/core/parsers/vast/VASTParser;->f(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    .line 361
    :cond_4
    const-string v0, "Extensions"

    invoke-interface {p1, v10, v8, v0}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method private static f(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 714
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 716
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 718
    :cond_0
    const/4 v0, 0x1

    .line 719
    :goto_0
    if-eqz v0, :cond_1

    .line 721
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 727
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 724
    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    .line 725
    goto :goto_0

    .line 731
    :cond_1
    return-void

    .line 721
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
