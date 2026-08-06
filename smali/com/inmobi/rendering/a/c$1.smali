.class Lcom/inmobi/rendering/a/c$1;
.super Ljava/lang/Object;
.source "ClickManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/a/c;->a(Lcom/inmobi/rendering/a/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/a/a;

.field final synthetic b:Lcom/inmobi/rendering/a/c;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/a/c;Lcom/inmobi/rendering/a/a;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/inmobi/rendering/a/c$1;->b:Lcom/inmobi/rendering/a/c;

    iput-object p2, p0, Lcom/inmobi/rendering/a/c$1;->a:Lcom/inmobi/rendering/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$1;->a:Lcom/inmobi/rendering/a/a;

    iget-boolean v0, v0, Lcom/inmobi/rendering/a/a;->h:Z

    if-eqz v0, :cond_0

    .line 188
    new-instance v0, Lcom/inmobi/rendering/a/c$b;

    iget-object v1, p0, Lcom/inmobi/rendering/a/c$1;->b:Lcom/inmobi/rendering/a/c;

    invoke-static {v1}, Lcom/inmobi/rendering/a/c;->a(Lcom/inmobi/rendering/a/c;)Lcom/inmobi/rendering/a/c$d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/rendering/a/c$b;-><init>(Lcom/inmobi/rendering/a/c$d;)V

    iget-object v1, p0, Lcom/inmobi/rendering/a/c$1;->a:Lcom/inmobi/rendering/a/a;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/a/c$b;->a(Lcom/inmobi/rendering/a/a;)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    new-instance v0, Lcom/inmobi/rendering/a/c$c;

    iget-object v1, p0, Lcom/inmobi/rendering/a/c$1;->b:Lcom/inmobi/rendering/a/c;

    invoke-static {v1}, Lcom/inmobi/rendering/a/c;->a(Lcom/inmobi/rendering/a/c;)Lcom/inmobi/rendering/a/c$d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/rendering/a/c$c;-><init>(Lcom/inmobi/rendering/a/c$d;)V

    iget-object v1, p0, Lcom/inmobi/rendering/a/c$1;->a:Lcom/inmobi/rendering/a/a;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/a/c$c;->a(Lcom/inmobi/rendering/a/a;)V

    goto :goto_0
.end method
