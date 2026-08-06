.class Lcom/inmobi/rendering/a$25;
.super Ljava/lang/Object;
.source "JavaScriptBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/a;->disableCloseRegion(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/inmobi/rendering/a;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/a;Z)V
    .locals 0

    .prologue
    .line 1215
    iput-object p1, p0, Lcom/inmobi/rendering/a$25;->b:Lcom/inmobi/rendering/a;

    iput-boolean p2, p0, Lcom/inmobi/rendering/a$25;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/inmobi/rendering/a$25;->b:Lcom/inmobi/rendering/a;

    invoke-static {v0}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    iget-boolean v1, p0, Lcom/inmobi/rendering/a$25;->a:Z

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->b(Z)V

    .line 1219
    return-void
.end method
