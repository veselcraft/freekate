.class Lcom/inmobi/rendering/a$22;
.super Ljava/lang/Object;
.source "JavaScriptBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/a;->unMuteAudio(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/inmobi/rendering/a;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/inmobi/rendering/a$22;->c:Lcom/inmobi/rendering/a;

    iput-object p2, p0, Lcom/inmobi/rendering/a$22;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/inmobi/rendering/a$22;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1160
    iget-object v0, p0, Lcom/inmobi/rendering/a$22;->c:Lcom/inmobi/rendering/a;

    invoke-static {v0}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/a$22;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/rendering/a$22;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/rendering/RenderView;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1161
    return-void
.end method
