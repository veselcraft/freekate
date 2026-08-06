.class abstract Lcom/inmobi/ads/ap;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/ap$b;,
        Lcom/inmobi/ads/ap$d;,
        Lcom/inmobi/ads/ap$a;,
        Lcom/inmobi/ads/ap$c;
    }
.end annotation


# static fields
.field static final a:Lcom/inmobi/ads/ap$a;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:Z

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/ap$d;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/inmobi/ads/ap$a;

.field private h:Lcom/inmobi/ads/ap$c;

.field private final i:Lcom/inmobi/ads/ap$b;

.field private final j:Landroid/os/Handler;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/inmobi/ads/ap;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/ap;->b:Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/inmobi/ads/ap$1;

    invoke-direct {v0}, Lcom/inmobi/ads/ap$1;-><init>()V

    sput-object v0, Lcom/inmobi/ads/ap;->a:Lcom/inmobi/ads/ap$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 112
    sget-object v0, Lcom/inmobi/ads/ap;->a:Lcom/inmobi/ads/ap$a;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/ap;-><init>(Lcom/inmobi/ads/ap$a;)V

    .line 113
    return-void
.end method

.method constructor <init>(Lcom/inmobi/ads/ap$a;)V
    .locals 3

    .prologue
    .line 116
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    new-instance v1, Landroid/os/Handler;

    .line 118
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 116
    invoke-direct {p0, v0, p1, v1}, Lcom/inmobi/ads/ap;-><init>(Ljava/util/Map;Lcom/inmobi/ads/ap$a;Landroid/os/Handler;)V

    .line 119
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Lcom/inmobi/ads/ap$a;Landroid/os/Handler;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/ap$d;",
            ">;",
            "Lcom/inmobi/ads/ap$a;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/ap;->d:J

    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ap;->e:Z

    .line 125
    iput-object p1, p0, Lcom/inmobi/ads/ap;->f:Ljava/util/Map;

    .line 126
    iput-object p2, p0, Lcom/inmobi/ads/ap;->g:Lcom/inmobi/ads/ap$a;

    .line 127
    iput-object p3, p0, Lcom/inmobi/ads/ap;->j:Landroid/os/Handler;

    .line 128
    new-instance v0, Lcom/inmobi/ads/ap$b;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/ap$b;-><init>(Lcom/inmobi/ads/ap;)V

    iput-object v0, p0, Lcom/inmobi/ads/ap;->i:Lcom/inmobi/ads/ap$b;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/inmobi/ads/ap;->c:Ljava/util/ArrayList;

    .line 130
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/ap;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/inmobi/ads/ap;->f:Ljava/util/Map;

    return-object v0
.end method

.method private a(J)V
    .locals 7

    .prologue
    .line 188
    iget-object v0, p0, Lcom/inmobi/ads/ap;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 189
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/ap$d;

    iget-wide v4, v1, Lcom/inmobi/ads/ap$d;->b:J

    cmp-long v1, v4, p1

    if-gez v1, :cond_0

    .line 190
    iget-object v1, p0, Lcom/inmobi/ads/ap;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/ap;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 195
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/ap;->a(Landroid/view/View;)V

    goto :goto_1

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/ap;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 198
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/ap;Z)Z
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcom/inmobi/ads/ap;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/inmobi/ads/ap;)Lcom/inmobi/ads/ap$a;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/inmobi/ads/ap;->g:Lcom/inmobi/ads/ap$a;

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/ads/ap;)Lcom/inmobi/ads/ap$c;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/inmobi/ads/ap;->h:Lcom/inmobi/ads/ap$c;

    return-object v0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 204
    iget-object v0, p0, Lcom/inmobi/ads/ap;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ap$d;

    .line 205
    if-eqz v0, :cond_0

    .line 206
    iget-wide v0, p0, Lcom/inmobi/ads/ap;->d:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/inmobi/ads/ap;->d:J

    .line 207
    iget-object v0, p0, Lcom/inmobi/ads/ap;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 208
    invoke-virtual {p0}, Lcom/inmobi/ads/ap;->c()V

    .line 211
    :cond_0
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x32

    .line 165
    iget-object v0, p0, Lcom/inmobi/ads/ap;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ap$d;

    .line 166
    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/inmobi/ads/ap$d;

    invoke-direct {v0}, Lcom/inmobi/ads/ap$d;-><init>()V

    .line 168
    iget-object v1, p0, Lcom/inmobi/ads/ap;->f:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-wide v2, p0, Lcom/inmobi/ads/ap;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/inmobi/ads/ap;->d:J

    .line 172
    :cond_0
    iput p4, v0, Lcom/inmobi/ads/ap$d;->a:I

    .line 173
    iget-wide v2, p0, Lcom/inmobi/ads/ap;->d:J

    iput-wide v2, v0, Lcom/inmobi/ads/ap$d;->b:J

    .line 174
    iput-object p1, v0, Lcom/inmobi/ads/ap$d;->c:Landroid/view/View;

    .line 175
    iput-object p3, v0, Lcom/inmobi/ads/ap$d;->d:Ljava/lang/Object;

    .line 177
    iget-wide v0, p0, Lcom/inmobi/ads/ap;->d:J

    rem-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 178
    iget-wide v0, p0, Lcom/inmobi/ads/ap;->d:J

    sub-long/2addr v0, v6

    invoke-direct {p0, v0, v1}, Lcom/inmobi/ads/ap;->a(J)V

    .line 181
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/inmobi/ads/ap;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 182
    invoke-virtual {p0}, Lcom/inmobi/ads/ap;->d()V

    .line 184
    :cond_2
    return-void
.end method

.method protected a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 157
    invoke-virtual {p0, p1, p1, p2, p3}, Lcom/inmobi/ads/ap;->a(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;I)V

    .line 158
    return-void
.end method

.method a(Lcom/inmobi/ads/ap$c;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/inmobi/ads/ap;->h:Lcom/inmobi/ads/ap$c;

    .line 135
    return-void
.end method

.method protected abstract b()V
.end method

.method public c()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/inmobi/ads/ap;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/ap;->k:Z

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ap;->e:Z

    .line 141
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/ap;->e:Z

    .line 145
    invoke-virtual {p0}, Lcom/inmobi/ads/ap;->h()V

    .line 146
    return-void
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/inmobi/ads/ap;->g()V

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/ap;->h:Lcom/inmobi/ads/ap$c;

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ap;->e:Z

    .line 254
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/inmobi/ads/ap;->e:Z

    return v0
.end method

.method protected g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 217
    iget-object v0, p0, Lcom/inmobi/ads/ap;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 218
    iget-object v0, p0, Lcom/inmobi/ads/ap;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 219
    iput-boolean v1, p0, Lcom/inmobi/ads/ap;->k:Z

    .line 220
    return-void
.end method

.method protected h()V
    .locals 4

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/inmobi/ads/ap;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/ads/ap;->e:Z

    if-eqz v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ap;->k:Z

    .line 264
    iget-object v0, p0, Lcom/inmobi/ads/ap;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/ads/ap;->i:Lcom/inmobi/ads/ap$b;

    .line 265
    invoke-virtual {p0}, Lcom/inmobi/ads/ap;->a()I

    move-result v2

    int-to-long v2, v2

    .line 264
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
