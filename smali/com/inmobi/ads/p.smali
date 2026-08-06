.class Lcom/inmobi/ads/p;
.super Lcom/inmobi/ads/AdUnit;
.source "NativeAdUnit.java"

# interfaces
.implements Lcom/inmobi/ads/n$a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/inmobi/ads/p;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/p;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Lcom/inmobi/ads/n;

.field private g:Ljava/net/URL;

.field private h:Ljava/lang/String;

.field private i:I

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/inmobi/ads/p;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/p;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLcom/inmobi/ads/AdUnit$a;)V
    .locals 3

    .prologue
    .line 47
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/inmobi/ads/AdUnit;-><init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$a;)V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/p;->b:Ljava/util/Map;

    .line 37
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/p;->c:Ljava/util/WeakHashMap;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/ads/p;->i:I

    .line 44
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/p;->j:J

    .line 48
    return-void
.end method

.method private b(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 234
    invoke-static {p1}, Lcom/inmobi/commons/core/utilities/c;->a(Ljava/util/Map;)V

    .line 236
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/inmobi/ads/p;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recordEvent(8)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_0
    return-object v0

    .line 239
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/inmobi/ads/p;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "recordEvent(8, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method A()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 190
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/p;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Impression record requested for Ad unit ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 190
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/p;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 193
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/p;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 194
    invoke-virtual {p0}, Lcom/inmobi/ads/p;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/inmobi/rendering/RenderView;->a(Z)V

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/inmobi/ads/p;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recordEvent(18)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Lcom/inmobi/ads/p;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/inmobi/ads/p;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p0}, Lcom/inmobi/ads/p;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/p;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/p;->g:Ljava/net/URL;

    if-eqz v0, :cond_1

    .line 203
    invoke-static {}, Lcom/inmobi/rendering/a/c;->a()Lcom/inmobi/rendering/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/p;->g:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Lcom/inmobi/rendering/a/c;->a(Ljava/lang/String;Z)V

    .line 206
    :cond_1
    return-void
.end method

.method B()V
    .locals 4

    .prologue
    .line 249
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/p;->a:Ljava/lang/String;

    const-string v2, "Open landing page requested"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/core/c/e;

    const-string v2, "ads"

    const-string v3, "OpenLandingPage"

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/core/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/a;->a(Lcom/inmobi/commons/core/c/e;)V

    .line 252
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/p;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/p;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 253
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/inmobi/ads/p;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "openLandingPage()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-virtual {p0}, Lcom/inmobi/ads/p;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 256
    :cond_1
    return-void
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    const-string v0, "native"

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 167
    if-nez p1, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/p;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 172
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/p;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 173
    sget-object v0, Lcom/inmobi/ads/InMobiNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/n;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/n;->a(Landroid/view/View;)V

    .line 175
    iget-object v0, p0, Lcom/inmobi/ads/p;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcom/inmobi/ads/p;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/p;

    .line 177
    if-eqz v0, :cond_0

    .line 178
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/p;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 179
    iget-object v1, p0, Lcom/inmobi/ads/p;->b:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/inmobi/ads/p;->A()V

    .line 187
    return-void
.end method

.method public a(Landroid/view/View;Ljava/net/URL;Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 132
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 133
    const-string v4, "customScript"

    if-eqz p3, :cond_2

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v0, "customUrl"

    if-eqz p2, :cond_3

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    const-string v1, "ads"

    const-string v2, "TrackImpression"

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 137
    iget-object v0, p0, Lcom/inmobi/ads/p;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 138
    const/4 v1, 0x0

    .line 139
    if-eqz v0, :cond_5

    .line 140
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 143
    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/p;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/p;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 145
    :cond_0
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/p;->a(Landroid/view/View;)V

    .line 146
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/p;->a(Landroid/view/View;)V

    .line 148
    iget-object v0, p0, Lcom/inmobi/ads/p;->b:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/inmobi/ads/p;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iput-object p2, p0, Lcom/inmobi/ads/p;->g:Ljava/net/URL;

    .line 151
    iput-object p3, p0, Lcom/inmobi/ads/p;->h:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/n;

    invoke-virtual {p0}, Lcom/inmobi/ads/p;->l()Lcom/inmobi/ads/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/b;->l()Lcom/inmobi/ads/b$f;

    move-result-object v1

    invoke-virtual {v0, p1, p0, v1}, Lcom/inmobi/ads/n;->a(Landroid/view/View;Ljava/lang/Object;Lcom/inmobi/ads/b$f;)V

    .line 153
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/p;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 164
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v2

    .line 133
    goto :goto_0

    :cond_3
    move v1, v2

    .line 134
    goto :goto_1

    .line 157
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/ads/p;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/inmobi/ads/p;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v0, v1, :cond_1

    .line 158
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/p;->a:Ljava/lang/String;

    const-string v2, "Please wait for the ad to finish loading before making a call to bind."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_2
.end method

.method public a(Lcom/inmobi/ads/a;)V
    .locals 2

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/a;)V

    .line 119
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/p;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/inmobi/ads/p;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/p;->b(Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method a(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 209
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/p;->a:Ljava/lang/String;

    const-string v4, "Click record requested"

    invoke-static {v0, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 211
    const-string v4, "customScript"

    if-eqz p3, :cond_4

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    const-string v0, "customUrl"

    if-eqz p2, :cond_0

    move v2, v1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    const-string v2, "ads"

    const-string v4, "ReportClick"

    invoke-virtual {v0, v2, v4, v3}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 215
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/p;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v2

    if-eq v0, v2, :cond_1

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/p;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v2

    if-ne v0, v2, :cond_5

    .line 216
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/p;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->d()V

    .line 218
    invoke-direct {p0, p1}, Lcom/inmobi/ads/p;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-virtual {p0}, Lcom/inmobi/ads/p;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 221
    if-eqz p3, :cond_2

    .line 222
    invoke-virtual {p0}, Lcom/inmobi/ads/p;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 224
    :cond_2
    if-eqz p2, :cond_3

    .line 225
    invoke-static {}, Lcom/inmobi/rendering/a/c;->a()Lcom/inmobi/rendering/a/c;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/rendering/a/c;->a(Ljava/lang/String;Z)V

    .line 231
    :cond_3
    :goto_1
    return-void

    :cond_4
    move v0, v2

    .line 211
    goto :goto_0

    .line 228
    :cond_5
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/core/c/e;

    const-string v2, "ads"

    const-string v3, "InvalidClickReport"

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/core/c/e;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/a;->a(Lcom/inmobi/commons/core/c/e;)V

    .line 229
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/p;->a:Ljava/lang/String;

    const-string v2, "reportAdClick call made in wrong state"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public b(Lcom/inmobi/ads/a;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->b(Lcom/inmobi/ads/a;)Z

    move-result v1

    .line 96
    if-nez v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    const-string v1, "contextCode"

    .line 101
    const-string v1, "namespace"

    .line 103
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/inmobi/ads/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    const-string v2, "contextCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inmobi/ads/p;->d:Ljava/lang/String;

    .line 106
    const-string v2, "namespace"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/ads/p;->e:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/inmobi/ads/p;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/p;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/p;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/p;->e:Ljava/lang/String;

    .line 108
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 109
    :catch_0
    move-exception v1

    .line 110
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/p;->a:Ljava/lang/String;

    const-string v4, "Exception while parsing ad."

    invoke-static {v2, v3, v4, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x0

    return-object v0
.end method

.method public c(Lcom/inmobi/rendering/RenderView;)V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->c(Lcom/inmobi/rendering/RenderView;)V

    .line 298
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/p;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/inmobi/ads/p;->u()V

    .line 300
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/p;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 301
    invoke-virtual {p0}, Lcom/inmobi/ads/p;->w()V

    .line 303
    invoke-virtual {p0}, Lcom/inmobi/ads/p;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$a;->a()V

    .line 304
    invoke-virtual {p0}, Lcom/inmobi/ads/p;->r()V

    .line 306
    :cond_0
    return-void
.end method

.method protected d()Lcom/inmobi/rendering/RenderingProperties$PlacementType;
    .locals 1

    .prologue
    .line 291
    sget-object v0, Lcom/inmobi/rendering/RenderingProperties$PlacementType;->INLINE:Lcom/inmobi/rendering/RenderingProperties$PlacementType;

    return-object v0
.end method

.method public e(Lcom/inmobi/rendering/RenderView;)V
    .locals 2

    .prologue
    .line 310
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->e(Lcom/inmobi/rendering/RenderView;)V

    .line 311
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/p;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/p;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 312
    :cond_0
    iget v0, p0, Lcom/inmobi/ads/p;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/p;->i:I

    .line 313
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/p;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 314
    invoke-virtual {p0}, Lcom/inmobi/ads/p;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$a;->b()V

    .line 318
    :cond_1
    :goto_0
    return-void

    .line 315
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/ads/p;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_1

    .line 316
    iget v0, p0, Lcom/inmobi/ads/p;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/p;->i:I

    goto :goto_0
.end method

.method public f(Lcom/inmobi/rendering/RenderView;)V
    .locals 4

    .prologue
    .line 322
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->f(Lcom/inmobi/rendering/RenderView;)V

    .line 323
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/p;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 324
    iget v0, p0, Lcom/inmobi/ads/p;->i:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/p;->i:I

    .line 326
    iget v0, p0, Lcom/inmobi/ads/p;->i:I

    if-nez v0, :cond_0

    .line 327
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/p;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 329
    const-string v1, "type"

    invoke-virtual {p0}, Lcom/inmobi/ads/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const-string v1, "impId"

    invoke-virtual {p0}, Lcom/inmobi/ads/p;->j()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-static {}, Lcom/inmobi/commons/core/c/a;->a()Lcom/inmobi/commons/core/c/a;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "AdRendered"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/c/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 332
    invoke-virtual {p0}, Lcom/inmobi/ads/p;->m()Lcom/inmobi/ads/AdUnit$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$a;->c()V

    .line 335
    :cond_0
    return-void
.end method

.method public o()V
    .locals 6

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/inmobi/ads/p;->j:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/inmobi/ads/p;->l()Lcom/inmobi/ads/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/b;->f()I

    move-result v0

    .line 54
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/p;->j:J

    sub-long/2addr v2, v4

    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 55
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->EARLY_REFRESH_REQUEST:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad cannot be refreshed before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->setCustomMessage(Ljava/lang/String;)Lcom/inmobi/ads/InMobiAdRequestStatus;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/inmobi/ads/p;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 56
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/p;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad cannot be refreshed before "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " seconds"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/p;->j:J

    .line 61
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->o()V

    .line 62
    new-instance v0, Lcom/inmobi/ads/n;

    invoke-virtual {p0}, Lcom/inmobi/ads/p;->l()Lcom/inmobi/ads/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/b;->l()Lcom/inmobi/ads/b$f;

    move-result-object v1

    new-instance v2, Lcom/inmobi/ads/am;

    .line 63
    invoke-virtual {p0}, Lcom/inmobi/ads/p;->l()Lcom/inmobi/ads/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/b;->l()Lcom/inmobi/ads/b$f;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/inmobi/ads/am;-><init>(Lcom/inmobi/ads/b$f;)V

    invoke-direct {v0, v1, v2, p0}, Lcom/inmobi/ads/n;-><init>(Lcom/inmobi/ads/b$f;Lcom/inmobi/ads/ap;Lcom/inmobi/ads/n$a;)V

    iput-object v0, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/n;

    goto :goto_0
.end method

.method protected t()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-virtual {p0}, Lcom/inmobi/ads/p;->k()V

    .line 261
    iget-object v0, p0, Lcom/inmobi/ads/p;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 262
    iget-object v0, p0, Lcom/inmobi/ads/p;->c:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 264
    iget-object v0, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/n;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/n;

    invoke-virtual {v0}, Lcom/inmobi/ads/n;->e()V

    .line 268
    :cond_0
    iput-object v1, p0, Lcom/inmobi/ads/p;->h:Ljava/lang/String;

    .line 269
    iput-object v1, p0, Lcom/inmobi/ads/p;->g:Ljava/net/URL;

    .line 270
    invoke-virtual {p0}, Lcom/inmobi/ads/p;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/inmobi/ads/p;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 272
    invoke-virtual {p0}, Lcom/inmobi/ads/p;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/inmobi/ads/p;->n()Lcom/inmobi/rendering/RenderView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 276
    :cond_1
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->t()V

    .line 277
    return-void
.end method

.method public x()V
    .locals 3

    .prologue
    .line 68
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/p;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/inmobi/ads/p;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 70
    if-eqz v0, :cond_0

    .line 71
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 73
    iget-object v1, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/n;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 74
    iget-object v1, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/n;

    invoke-virtual {p0}, Lcom/inmobi/ads/p;->l()Lcom/inmobi/ads/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/b;->l()Lcom/inmobi/ads/b$f;

    move-result-object v2

    invoke-virtual {v1, v0, p0, v2}, Lcom/inmobi/ads/n;->a(Landroid/view/View;Ljava/lang/Object;Lcom/inmobi/ads/b$f;)V

    .line 78
    :cond_0
    return-void
.end method

.method public y()V
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/p;->g()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/inmobi/ads/p;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 83
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 85
    iget-object v1, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/n;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/inmobi/ads/p;->f:Lcom/inmobi/ads/n;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/n;->a(Landroid/view/View;)V

    .line 90
    :cond_0
    return-void
.end method

.method public z()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/inmobi/ads/p;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
