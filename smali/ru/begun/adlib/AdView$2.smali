.class final Lru/begun/adlib/AdView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/begun/adlib/AdView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lru/begun/adlib/AdView;


# direct methods
.method constructor <init>(Lru/begun/adlib/AdView;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lru/begun/adlib/AdView$2;->a:Lru/begun/adlib/AdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lru/begun/adlib/AdView$2;->a:Lru/begun/adlib/AdView;

    const-string v1, "Check dimensions"

    invoke-static {v0, v1}, Lru/begun/adlib/AdView;->a(Lru/begun/adlib/AdView;Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lru/begun/adlib/AdView$2;->a:Lru/begun/adlib/AdView;

    invoke-static {v0}, Lru/begun/adlib/AdView;->a(Lru/begun/adlib/AdView;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 180
    :try_start_0
    iget-object v0, p0, Lru/begun/adlib/AdView$2;->a:Lru/begun/adlib/AdView;

    invoke-static {v0}, Lru/begun/adlib/AdView;->a(Lru/begun/adlib/AdView;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :goto_0
    :try_start_1
    iget-object v0, p0, Lru/begun/adlib/AdView$2;->a:Lru/begun/adlib/AdView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "_advPosition_: l:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lru/begun/adlib/AdView$2;->a:Lru/begun/adlib/AdView;

    invoke-static {v3}, Lru/begun/adlib/AdView;->b(Lru/begun/adlib/AdView;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " t:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lru/begun/adlib/AdView$2;->a:Lru/begun/adlib/AdView;

    invoke-static {v3}, Lru/begun/adlib/AdView;->c(Lru/begun/adlib/AdView;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " r:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lru/begun/adlib/AdView$2;->a:Lru/begun/adlib/AdView;

    invoke-static {v3}, Lru/begun/adlib/AdView;->d(Lru/begun/adlib/AdView;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " b:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lru/begun/adlib/AdView$2;->a:Lru/begun/adlib/AdView;

    invoke-static {v3}, Lru/begun/adlib/AdView;->e(Lru/begun/adlib/AdView;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lru/begun/adlib/AdView;->a(Lru/begun/adlib/AdView;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lru/begun/adlib/AdView$2;->a:Lru/begun/adlib/AdView;

    iget-object v1, p0, Lru/begun/adlib/AdView$2;->a:Lru/begun/adlib/AdView;

    invoke-static {v1}, Lru/begun/adlib/AdView;->d(Lru/begun/adlib/AdView;)I

    move-result v1

    iget-object v3, p0, Lru/begun/adlib/AdView$2;->a:Lru/begun/adlib/AdView;

    invoke-static {v3}, Lru/begun/adlib/AdView;->b(Lru/begun/adlib/AdView;)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Lru/begun/adlib/AdView;->a(Lru/begun/adlib/AdView;I)I

    .line 188
    iget-object v0, p0, Lru/begun/adlib/AdView$2;->a:Lru/begun/adlib/AdView;

    iget-object v1, p0, Lru/begun/adlib/AdView$2;->a:Lru/begun/adlib/AdView;

    invoke-static {v1}, Lru/begun/adlib/AdView;->e(Lru/begun/adlib/AdView;)I

    move-result v1

    iget-object v3, p0, Lru/begun/adlib/AdView$2;->a:Lru/begun/adlib/AdView;

    invoke-static {v3}, Lru/begun/adlib/AdView;->c(Lru/begun/adlib/AdView;)I

    move-result v3

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Lru/begun/adlib/AdView;->b(Lru/begun/adlib/AdView;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    const/4 v1, 0x0

    .line 192
    :try_start_2
    iget-object v0, p0, Lru/begun/adlib/AdView$2;->a:Lru/begun/adlib/AdView;

    invoke-virtual {v0}, Lru/begun/adlib/AdView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    :goto_1
    if-eqz v0, :cond_0

    .line 197
    :try_start_3
    new-instance v1, Lru/begun/adlib/AdView$2$1;

    invoke-direct {v1, p0}, Lru/begun/adlib/AdView$2$1;-><init>(Lru/begun/adlib/AdView$2;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 203
    :cond_0
    monitor-exit v2

    return-void

    .line 181
    :catch_0
    move-exception v0

    .line 182
    iget-object v1, p0, Lru/begun/adlib/AdView$2;->a:Lru/begun/adlib/AdView;

    const-string v3, "synchronized InterruptedException"

    invoke-static {v1, v3}, Lru/begun/adlib/AdView;->a(Lru/begun/adlib/AdView;Ljava/lang/String;)V

    .line 183
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 194
    :catch_1
    move-exception v0

    :try_start_4
    iget-object v0, p0, Lru/begun/adlib/AdView$2;->a:Lru/begun/adlib/AdView;

    const-string v3, "Activity not found!"

    invoke-static {v0, v3}, Lru/begun/adlib/AdView;->a(Lru/begun/adlib/AdView;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v1

    goto :goto_1
.end method
