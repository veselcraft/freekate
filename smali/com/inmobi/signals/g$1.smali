.class Lcom/inmobi/signals/g$1;
.super Ljava/lang/Object;
.source "CarbWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/signals/g;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/signals/g;


# direct methods
.method constructor <init>(Lcom/inmobi/signals/g;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/inmobi/signals/g$1;->a:Lcom/inmobi/signals/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/inmobi/signals/g$1;->a:Lcom/inmobi/signals/g;

    invoke-static {v0}, Lcom/inmobi/signals/g;->a(Lcom/inmobi/signals/g;)Lcom/inmobi/signals/c;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/inmobi/signals/c;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/inmobi/signals/g$1;->a:Lcom/inmobi/signals/g;

    invoke-static {v1}, Lcom/inmobi/signals/g;->b(Lcom/inmobi/signals/g;)Lcom/inmobi/signals/a;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/signals/a;->a(J)V

    .line 64
    invoke-virtual {v0}, Lcom/inmobi/signals/c;->e()Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/inmobi/signals/g$1;->a:Lcom/inmobi/signals/g;

    iget-object v2, p0, Lcom/inmobi/signals/g$1;->a:Lcom/inmobi/signals/g;

    invoke-virtual {v0}, Lcom/inmobi/signals/c;->b()Ljava/util/List;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/signals/g;->a(Lcom/inmobi/signals/g;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/inmobi/signals/g;->a(Lcom/inmobi/signals/g;Lcom/inmobi/signals/c;Ljava/util/List;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/inmobi/signals/g$1;->a:Lcom/inmobi/signals/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/signals/g;->a(Lcom/inmobi/signals/g;Z)Z

    .line 69
    return-void
.end method
