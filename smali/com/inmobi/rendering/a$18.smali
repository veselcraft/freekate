.class Lcom/inmobi/rendering/a$18;
.super Ljava/lang/Object;
.source "JavaScriptBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/a;->playAudio(Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Z

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Z

.field final synthetic i:Lcom/inmobi/rendering/a;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1065
    iput-object p1, p0, Lcom/inmobi/rendering/a$18;->i:Lcom/inmobi/rendering/a;

    iput-object p2, p0, Lcom/inmobi/rendering/a$18;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/inmobi/rendering/a$18;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/inmobi/rendering/a$18;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/inmobi/rendering/a$18;->d:Z

    iput-boolean p6, p0, Lcom/inmobi/rendering/a$18;->e:Z

    iput-object p7, p0, Lcom/inmobi/rendering/a$18;->f:Ljava/lang/String;

    iput-object p8, p0, Lcom/inmobi/rendering/a$18;->g:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/inmobi/rendering/a$18;->h:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/16 v5, 0x18

    const/4 v4, 0x0

    .line 1068
    iget-object v0, p0, Lcom/inmobi/rendering/a$18;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/a$18;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/a$18;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/rendering/a$18;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/rendering/a$18;->b:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/a$18;->i:Lcom/inmobi/rendering/a;

    invoke-static {v0}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/a$18;->c:Ljava/lang/String;

    const-string v2, "Null or empty or invalid media playback URL supplied"

    const-string v3, "playVideo"

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    :goto_0
    return-void

    .line 1073
    :cond_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Media player properties"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldAutoPlay: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/inmobi/rendering/a$18;->d:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; shouldLoopPlayback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/inmobi/rendering/a$18;->e:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; startStyle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/rendering/a$18;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "; stopStyle: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/rendering/a$18;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1076
    new-instance v0, Lcom/inmobi/rendering/mraid/b;

    invoke-direct {v0}, Lcom/inmobi/rendering/mraid/b;-><init>()V

    .line 1077
    iput v4, v0, Lcom/inmobi/rendering/mraid/b;->a:I

    .line 1078
    iput v4, v0, Lcom/inmobi/rendering/mraid/b;->b:I

    .line 1079
    iput v5, v0, Lcom/inmobi/rendering/mraid/b;->c:I

    .line 1080
    iput v5, v0, Lcom/inmobi/rendering/mraid/b;->d:I

    .line 1082
    new-instance v1, Lcom/inmobi/rendering/mraid/f;

    invoke-direct {v1}, Lcom/inmobi/rendering/mraid/f;-><init>()V

    .line 1083
    iget-object v2, p0, Lcom/inmobi/rendering/a$18;->a:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/inmobi/rendering/a$18;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    .line 1084
    :cond_3
    iget-object v2, p0, Lcom/inmobi/rendering/a$18;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/inmobi/rendering/mraid/f;->a:Ljava/lang/String;

    .line 1089
    :cond_4
    iget-object v2, p0, Lcom/inmobi/rendering/a$18;->i:Lcom/inmobi/rendering/a;

    invoke-static {v2}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;)Lcom/inmobi/rendering/RenderView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1090
    iget-boolean v2, p0, Lcom/inmobi/rendering/a$18;->d:Z

    iput-boolean v2, v1, Lcom/inmobi/rendering/mraid/f;->d:Z

    .line 1091
    iget-boolean v2, p0, Lcom/inmobi/rendering/a$18;->e:Z

    iput-boolean v2, v1, Lcom/inmobi/rendering/mraid/f;->f:Z

    .line 1092
    iget-object v2, p0, Lcom/inmobi/rendering/a$18;->f:Ljava/lang/String;

    iput-object v2, v1, Lcom/inmobi/rendering/mraid/f;->b:Ljava/lang/String;

    .line 1093
    iget-object v2, p0, Lcom/inmobi/rendering/a$18;->g:Ljava/lang/String;

    iput-object v2, v1, Lcom/inmobi/rendering/mraid/f;->c:Ljava/lang/String;

    .line 1094
    iget-boolean v2, p0, Lcom/inmobi/rendering/a$18;->h:Z

    iput-boolean v2, v1, Lcom/inmobi/rendering/mraid/f;->e:Z

    .line 1097
    :cond_5
    iget-object v2, p0, Lcom/inmobi/rendering/a$18;->i:Lcom/inmobi/rendering/a;

    invoke-static {v2}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;)Lcom/inmobi/rendering/RenderView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Lcom/inmobi/rendering/mraid/b;)V

    .line 1098
    iget-object v0, p0, Lcom/inmobi/rendering/a$18;->i:Lcom/inmobi/rendering/a;

    invoke-static {v0}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Lcom/inmobi/rendering/mraid/f;)V

    .line 1100
    iget-object v0, p0, Lcom/inmobi/rendering/a$18;->i:Lcom/inmobi/rendering/a;

    invoke-static {v0}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/a$18;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/rendering/a$18;->b:Ljava/lang/String;

    sget-object v3, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;->MEDIA_CONTENT_TYPE_AUDIO:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;)V

    goto/16 :goto_0
.end method
