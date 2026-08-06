.class final Lcom/inmobi/rendering/mraid/g$e;
.super Landroid/content/BroadcastReceiver;
.source "MediaRenderView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/rendering/mraid/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/mraid/g;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/mraid/g;)V
    .locals 1

    .prologue
    .line 41
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/g$e;->a:Lcom/inmobi/rendering/mraid/g;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    const-class v0, Lcom/inmobi/rendering/mraid/g$e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/g$e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 46
    if-eqz p2, :cond_0

    .line 47
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g$e;->b:Ljava/lang/String;

    const-string v2, "Screen OFF"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/inmobi/rendering/mraid/g$d;->b:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g$e;->a:Lcom/inmobi/rendering/mraid/g;

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v0, v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g$e;->a:Lcom/inmobi/rendering/mraid/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inmobi/rendering/mraid/g;->a(Lcom/inmobi/rendering/mraid/g;Z)Z

    .line 51
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g$e;->a:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->pause()V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g$e;->b:Ljava/lang/String;

    const-string v2, "Screen ON"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g$e;->a:Lcom/inmobi/rendering/mraid/g;

    invoke-static {v0}, Lcom/inmobi/rendering/mraid/g;->a(Lcom/inmobi/rendering/mraid/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/rendering/mraid/g$d;->c:Lcom/inmobi/rendering/mraid/g$d;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g$e;->a:Lcom/inmobi/rendering/mraid/g;

    iget-object v1, v1, Lcom/inmobi/rendering/mraid/g;->c:Lcom/inmobi/rendering/mraid/g$d;

    if-ne v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g$e;->a:Lcom/inmobi/rendering/mraid/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/rendering/mraid/g;->a(Lcom/inmobi/rendering/mraid/g;Z)Z

    .line 57
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g$e;->a:Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/g;->a()V

    goto :goto_0
.end method
