.class Lcom/inmobi/rendering/a$33;
.super Ljava/lang/Object;
.source "JavaScriptBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/a;->close(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/a;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/a;)V
    .locals 0

    .prologue
    .line 502
    iput-object p1, p0, Lcom/inmobi/rendering/a$33;->a:Lcom/inmobi/rendering/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/inmobi/rendering/a$33;->a:Lcom/inmobi/rendering/a;

    invoke-static {v0}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->k()V

    .line 506
    return-void
.end method
