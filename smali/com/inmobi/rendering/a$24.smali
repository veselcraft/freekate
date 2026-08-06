.class Lcom/inmobi/rendering/a$24;
.super Ljava/lang/Object;
.source "JavaScriptBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/a;->setAudioVolume(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:Lcom/inmobi/rendering/a;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/a;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1183
    iput-object p1, p0, Lcom/inmobi/rendering/a$24;->d:Lcom/inmobi/rendering/a;

    iput-object p2, p0, Lcom/inmobi/rendering/a$24;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/inmobi/rendering/a$24;->b:Ljava/lang/String;

    iput p4, p0, Lcom/inmobi/rendering/a$24;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/inmobi/rendering/a$24;->d:Lcom/inmobi/rendering/a;

    invoke-static {v0}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/a$24;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/rendering/a$24;->b:Ljava/lang/String;

    iget v3, p0, Lcom/inmobi/rendering/a$24;->c:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1187
    return-void
.end method
