.class Lcom/inmobi/ads/n;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/n$c;,
        Lcom/inmobi/ads/n$b;,
        Lcom/inmobi/ads/n$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/inmobi/ads/ap;

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/n$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/n$b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Handler;

.field private final f:Lcom/inmobi/ads/n$c;

.field private final g:J

.field private h:Lcom/inmobi/ads/ap$c;

.field private i:Lcom/inmobi/ads/n$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/inmobi/ads/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/n;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/inmobi/ads/b$f;Lcom/inmobi/ads/ap;Lcom/inmobi/ads/n$a;)V
    .locals 7

    .prologue
    .line 74
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v3, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/inmobi/ads/n;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/inmobi/ads/ap;Landroid/os/Handler;Lcom/inmobi/ads/b$f;Lcom/inmobi/ads/n$a;)V

    .line 80
    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/inmobi/ads/ap;Landroid/os/Handler;Lcom/inmobi/ads/b$f;Lcom/inmobi/ads/n$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/n$b;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/n$b;",
            ">;",
            "Lcom/inmobi/ads/ap;",
            "Landroid/os/Handler;",
            "Lcom/inmobi/ads/b$f;",
            "Lcom/inmobi/ads/n$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/inmobi/ads/n;->c:Ljava/util/Map;

    .line 89
    iput-object p2, p0, Lcom/inmobi/ads/n;->d:Ljava/util/Map;

    .line 90
    iput-object p3, p0, Lcom/inmobi/ads/n;->b:Lcom/inmobi/ads/ap;

    .line 91
    invoke-virtual {p5}, Lcom/inmobi/ads/b$f;->d()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/inmobi/ads/n;->g:J

    .line 92
    new-instance v0, Lcom/inmobi/ads/n$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/n$1;-><init>(Lcom/inmobi/ads/n;)V

    iput-object v0, p0, Lcom/inmobi/ads/n;->h:Lcom/inmobi/ads/ap$c;

    .line 122
    iget-object v0, p0, Lcom/inmobi/ads/n;->b:Lcom/inmobi/ads/ap;

    iget-object v1, p0, Lcom/inmobi/ads/n;->h:Lcom/inmobi/ads/ap$c;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ap;->a(Lcom/inmobi/ads/ap$c;)V

    .line 123
    iput-object p4, p0, Lcom/inmobi/ads/n;->e:Landroid/os/Handler;

    .line 124
    new-instance v0, Lcom/inmobi/ads/n$c;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/n$c;-><init>(Lcom/inmobi/ads/n;)V

    iput-object v0, p0, Lcom/inmobi/ads/n;->f:Lcom/inmobi/ads/n$c;

    .line 125
    iput-object p6, p0, Lcom/inmobi/ads/n;->i:Lcom/inmobi/ads/n$a;

    .line 126
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/n;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/inmobi/ads/n;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(JI)Z
    .locals 2

    .prologue
    .line 22
    invoke-static {p0, p1, p2}, Lcom/inmobi/ads/n;->b(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/inmobi/ads/n;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/inmobi/ads/n;->d:Ljava/util/Map;

    return-object v0
.end method

.method private static b(JI)Z
    .locals 4

    .prologue
    .line 245
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    int-to-long v2, p2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/inmobi/ads/n;)Lcom/inmobi/ads/n$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/inmobi/ads/n;->i:Lcom/inmobi/ads/n$a;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/Object;)Landroid/view/View;
    .locals 4

    .prologue
    .line 153
    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/inmobi/ads/n;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 156
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/n$b;

    iget-object v1, v1, Lcom/inmobi/ads/n$b;->a:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 163
    :goto_0
    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/n;->a(Landroid/view/View;)V

    .line 166
    :cond_1
    return-object v0

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method a()V
    .locals 3

    .prologue
    .line 170
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/n;->a:Ljava/lang/String;

    const-string v2, "Impression Tracker paused"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/inmobi/ads/n;->b:Lcom/inmobi/ads/ap;

    invoke-virtual {v0}, Lcom/inmobi/ads/ap;->g()V

    .line 172
    iget-object v0, p0, Lcom/inmobi/ads/n;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/inmobi/ads/n;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 174
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/inmobi/ads/n;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v0, p0, Lcom/inmobi/ads/n;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/inmobi/ads/n;->b:Lcom/inmobi/ads/ap;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ap;->a(Landroid/view/View;)V

    .line 150
    return-void
.end method

.method a(Landroid/view/View;Ljava/lang/Object;Lcom/inmobi/ads/b$f;)V
    .locals 3

    .prologue
    .line 133
    iget-object v0, p0, Lcom/inmobi/ads/n;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/n$b;

    .line 134
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/inmobi/ads/n$b;->a:Ljava/lang/Object;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/n;->a(Landroid/view/View;)V

    .line 139
    new-instance v0, Lcom/inmobi/ads/n$b;

    .line 140
    invoke-virtual {p3}, Lcom/inmobi/ads/b$f;->a()I

    move-result v1

    .line 141
    invoke-virtual {p3}, Lcom/inmobi/ads/b$f;->b()I

    move-result v2

    invoke-direct {v0, p2, v1, v2}, Lcom/inmobi/ads/n$b;-><init>(Ljava/lang/Object;II)V

    .line 142
    iget-object v1, p0, Lcom/inmobi/ads/n;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v1, p0, Lcom/inmobi/ads/n;->b:Lcom/inmobi/ads/ap;

    iget v0, v0, Lcom/inmobi/ads/n$b;->b:I

    invoke-virtual {v1, p1, p2, v0}, Lcom/inmobi/ads/ap;->a(Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method b()V
    .locals 5

    .prologue
    .line 177
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/n;->a:Ljava/lang/String;

    const-string v2, "Impression Tracker resumed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/inmobi/ads/n;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 179
    iget-object v4, p0, Lcom/inmobi/ads/n;->b:Lcom/inmobi/ads/ap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/n$b;

    iget-object v2, v2, Lcom/inmobi/ads/n$b;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/n$b;

    iget v0, v0, Lcom/inmobi/ads/n$b;->b:I

    invoke-virtual {v4, v1, v2, v0}, Lcom/inmobi/ads/ap;->a(Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->f()V

    .line 182
    iget-object v0, p0, Lcom/inmobi/ads/n;->b:Lcom/inmobi/ads/ap;

    invoke-virtual {v0}, Lcom/inmobi/ads/ap;->d()V

    .line 183
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/inmobi/ads/n;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 187
    iget-object v0, p0, Lcom/inmobi/ads/n;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 188
    iget-object v0, p0, Lcom/inmobi/ads/n;->b:Lcom/inmobi/ads/ap;

    invoke-virtual {v0}, Lcom/inmobi/ads/ap;->g()V

    .line 189
    iget-object v0, p0, Lcom/inmobi/ads/n;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 190
    return-void
.end method

.method d()Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/inmobi/ads/n;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method e()V
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/inmobi/ads/n;->c()V

    .line 199
    iget-object v0, p0, Lcom/inmobi/ads/n;->b:Lcom/inmobi/ads/ap;

    invoke-virtual {v0}, Lcom/inmobi/ads/ap;->e()V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/n;->h:Lcom/inmobi/ads/ap$c;

    .line 201
    return-void
.end method

.method f()V
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/inmobi/ads/n;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/n;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/ads/n;->f:Lcom/inmobi/ads/n$c;

    iget-wide v2, p0, Lcom/inmobi/ads/n;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
