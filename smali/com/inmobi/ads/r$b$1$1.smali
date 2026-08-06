.class Lcom/inmobi/ads/r$b$1$1;
.super Ljava/lang/Object;
.source "NativeStrandAdCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/r$b$1;->a(Lcom/inmobi/ads/r;JZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/r;

.field final synthetic b:Lcom/inmobi/ads/r$b$1;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/r$b$1;Lcom/inmobi/ads/r;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/inmobi/ads/r$b$1$1;->b:Lcom/inmobi/ads/r$b$1;

    iput-object p2, p0, Lcom/inmobi/ads/r$b$1$1;->a:Lcom/inmobi/ads/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/inmobi/ads/r$b$1$1;->a:Lcom/inmobi/ads/r;

    invoke-static {v0}, Lcom/inmobi/ads/r;->h(Lcom/inmobi/ads/r;)Lcom/inmobi/ads/r$b;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/r$b$1$1;->a:Lcom/inmobi/ads/r;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/r$b;->e(Lcom/inmobi/ads/r;)V

    .line 131
    return-void
.end method
