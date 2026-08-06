.class Lcom/yandex/mobile/ads/as$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 237
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 238
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 242
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 300
    :cond_0
    :goto_0
    return-void

    .line 244
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    .line 245
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/as;

    .line 246
    if-eqz v1, :cond_0

    .line 247
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/yandex/mobile/ads/as$a;

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleMessage, clazz = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/yandex/mobile/ads/as;->a(Lcom/yandex/mobile/ads/as;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-static {v1}, Lcom/yandex/mobile/ads/as;->b(Lcom/yandex/mobile/ads/as;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 251
    invoke-static {v1, v0}, Lcom/yandex/mobile/ads/as;->a(Lcom/yandex/mobile/ads/as;Lcom/yandex/mobile/ads/as$a;)Lcom/yandex/mobile/ads/ax;

    move-result-object v2

    .line 252
    invoke-static {v1, v0, v2}, Lcom/yandex/mobile/ads/as;->a(Lcom/yandex/mobile/ads/as;Lcom/yandex/mobile/ads/as$a;Lcom/yandex/mobile/ads/ax;)V

    .line 254
    invoke-static {v2}, Lcom/yandex/mobile/ads/as;->b(Lcom/yandex/mobile/ads/ax;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 255
    invoke-static {v1}, Lcom/yandex/mobile/ads/as;->c(Lcom/yandex/mobile/ads/as;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 256
    invoke-static {v1}, Lcom/yandex/mobile/ads/as;->c(Lcom/yandex/mobile/ads/as;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {v2}, Lcom/yandex/mobile/ads/ax;->c()Lcom/yandex/mobile/ads/report/b$b;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/yandex/mobile/ads/as;->a(Lcom/yandex/mobile/ads/as;Lcom/yandex/mobile/ads/report/b$b;)V

    goto :goto_0

    .line 260
    :cond_1
    invoke-virtual {v1}, Lcom/yandex/mobile/ads/as;->a()V

    goto :goto_0

    .line 266
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/as;

    .line 267
    if-eqz v0, :cond_0

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mNoticeTrackingChecker mNotTrackedNotices.size = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-static {v0}, Lcom/yandex/mobile/ads/as;->c(Lcom/yandex/mobile/ads/as;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", clazz = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/yandex/mobile/ads/as;->a(Lcom/yandex/mobile/ads/as;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-static {v0}, Lcom/yandex/mobile/ads/as;->c(Lcom/yandex/mobile/ads/as;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 271
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_4

    .line 272
    invoke-static {v0}, Lcom/yandex/mobile/ads/as;->c(Lcom/yandex/mobile/ads/as;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yandex/mobile/ads/as$a;

    .line 274
    invoke-static {v0}, Lcom/yandex/mobile/ads/as;->b(Lcom/yandex/mobile/ads/as;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 275
    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/as;->a(Lcom/yandex/mobile/ads/as;Lcom/yandex/mobile/ads/as$a;)Lcom/yandex/mobile/ads/ax;

    move-result-object v4

    .line 276
    invoke-static {v4}, Lcom/yandex/mobile/ads/as;->b(Lcom/yandex/mobile/ads/ax;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 277
    invoke-static {v0}, Lcom/yandex/mobile/ads/as;->d(Lcom/yandex/mobile/ads/as;)Lcom/yandex/mobile/ads/as$b;

    move-result-object v4

    .line 278
    invoke-static {v0}, Lcom/yandex/mobile/ads/as;->d(Lcom/yandex/mobile/ads/as;)Lcom/yandex/mobile/ads/as$b;

    move-result-object v5

    const/4 v6, 0x1

    new-instance v7, Landroid/util/Pair;

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v7, v8, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    iget-wide v6, v1, Lcom/yandex/mobile/ads/as$a;->b:J

    .line 277
    invoke-virtual {v4, v5, v6, v7}, Lcom/yandex/mobile/ads/as$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 282
    invoke-static {v0}, Lcom/yandex/mobile/ads/as;->b(Lcom/yandex/mobile/ads/as;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_2
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 284
    :cond_3
    invoke-static {v0, v4}, Lcom/yandex/mobile/ads/as;->a(Lcom/yandex/mobile/ads/as;Lcom/yandex/mobile/ads/ax;)V

    goto :goto_2

    .line 289
    :cond_4
    invoke-static {v0}, Lcom/yandex/mobile/ads/as;->e(Lcom/yandex/mobile/ads/as;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    invoke-static {v0}, Lcom/yandex/mobile/ads/as;->d(Lcom/yandex/mobile/ads/as;)Lcom/yandex/mobile/ads/as$b;

    move-result-object v1

    invoke-static {v0}, Lcom/yandex/mobile/ads/as;->d(Lcom/yandex/mobile/ads/as;)Lcom/yandex/mobile/ads/as$b;

    move-result-object v2

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v0, v2, v3}, Lcom/yandex/mobile/ads/as$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 242
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
