.class Lcom/inmobi/rendering/mraid/MraidMediaProcessor$3;
.super Ljava/lang/Object;
.source "MraidMediaProcessor.java"

# interfaces
.implements Lcom/inmobi/rendering/mraid/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)V
    .locals 0

    .prologue
    .line 248
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$3;->a:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/rendering/mraid/g;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 251
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, ">>> onPlayerCompleted"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$3;->a:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-static {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->b(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->setAdActiveFlag(Z)V

    .line 253
    invoke-virtual {p1}, Lcom/inmobi/rendering/mraid/g;->f()Landroid/view/ViewGroup;

    move-result-object v1

    .line 254
    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 256
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 258
    :cond_0
    invoke-virtual {p1, v3}, Lcom/inmobi/rendering/mraid/g;->a(Landroid/view/ViewGroup;)V

    .line 260
    monitor-enter p0

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$3;->a:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-static {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/inmobi/rendering/mraid/g;->f:Ljava/lang/String;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$3;->a:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-static {v1}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v1

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$3;->a:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-static {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->c(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)Ljava/util/Hashtable;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$3;->a:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    invoke-static {v1}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;)Lcom/inmobi/rendering/mraid/g;

    move-result-object v1

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/g;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$3;->a:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Lcom/inmobi/rendering/mraid/g;)Lcom/inmobi/rendering/mraid/g;

    .line 266
    :cond_1
    monitor-exit p0

    .line 267
    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Lcom/inmobi/rendering/mraid/g;)V
    .locals 3

    .prologue
    .line 271
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, ">>> onPlayerPrepared"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    return-void
.end method
