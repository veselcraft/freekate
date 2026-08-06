.class final Lcom/inmobi/signals/b/c$1;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/signals/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/inmobi/signals/b/c;->b()Lcom/inmobi/signals/b/c$a;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/inmobi/signals/b/c;->c()V

    .line 62
    if-eqz v0, :cond_0

    .line 63
    invoke-interface {v0}, Lcom/inmobi/signals/b/c$a;->a()V

    .line 65
    :cond_0
    return-void
.end method
