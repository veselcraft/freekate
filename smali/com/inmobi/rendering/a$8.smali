.class Lcom/inmobi/rendering/a$8;
.super Ljava/lang/Object;
.source "JavaScriptBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/rendering/a;->playVideo(Ljava/lang/String;Ljava/lang/String;ZZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Z

.field final synthetic g:Z

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Ljava/lang/String;

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Z

.field final synthetic m:Z

.field final synthetic n:Lcom/inmobi/rendering/a;


# direct methods
.method constructor <init>(Lcom/inmobi/rendering/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0

    .prologue
    .line 853
    iput-object p1, p0, Lcom/inmobi/rendering/a$8;->n:Lcom/inmobi/rendering/a;

    iput-object p2, p0, Lcom/inmobi/rendering/a$8;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/inmobi/rendering/a$8;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/inmobi/rendering/a$8;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/inmobi/rendering/a$8;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/inmobi/rendering/a$8;->e:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/inmobi/rendering/a$8;->f:Z

    iput-boolean p8, p0, Lcom/inmobi/rendering/a$8;->g:Z

    iput-object p9, p0, Lcom/inmobi/rendering/a$8;->h:Ljava/lang/String;

    iput-object p10, p0, Lcom/inmobi/rendering/a$8;->i:Ljava/lang/String;

    iput-object p11, p0, Lcom/inmobi/rendering/a$8;->j:Ljava/lang/String;

    iput-object p12, p0, Lcom/inmobi/rendering/a$8;->k:Ljava/lang/String;

    iput-boolean p13, p0, Lcom/inmobi/rendering/a$8;->l:Z

    iput-boolean p14, p0, Lcom/inmobi/rendering/a$8;->m:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v0, 0x0

    const v9, -0x1869f

    const/high16 v8, 0x3f000000    # 0.5f

    .line 856
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JavaScript called: playVideo ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/rendering/a$8;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/rendering/a$8;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 857
    iget-object v1, p0, Lcom/inmobi/rendering/a$8;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/rendering/a$8;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/inmobi/rendering/a$8;->a:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/inmobi/rendering/a$8;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/inmobi/rendering/a$8;->a:Ljava/lang/String;

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 858
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/a$8;->n:Lcom/inmobi/rendering/a;

    invoke-static {v0}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/a$8;->c:Ljava/lang/String;

    const-string v2, "Null or empty or invalid media playback URL supplied"

    const-string v3, "playVideo"

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    :goto_0
    return-void

    .line 862
    :cond_2
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Video dimensions: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/rendering/a$8;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/rendering/a$8;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Media player properties"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "shouldAutoPlay: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/inmobi/rendering/a$8;->f:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; shouldLoopPlayback: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/inmobi/rendering/a$8;->g:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; startStyle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/rendering/a$8;->h:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; stopStyle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/rendering/a$8;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    new-instance v3, Lcom/inmobi/rendering/mraid/b;

    invoke-direct {v3}, Lcom/inmobi/rendering/mraid/b;-><init>()V

    .line 868
    new-instance v4, Lcom/inmobi/rendering/mraid/f;

    invoke-direct {v4}, Lcom/inmobi/rendering/mraid/f;-><init>()V

    .line 870
    iget-object v1, p0, Lcom/inmobi/rendering/a$8;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/inmobi/rendering/a$8;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    .line 871
    :cond_3
    iget-object v1, p0, Lcom/inmobi/rendering/a$8;->b:Ljava/lang/String;

    iput-object v1, v4, Lcom/inmobi/rendering/mraid/f;->a:Ljava/lang/String;

    .line 874
    :cond_4
    iget-object v1, p0, Lcom/inmobi/rendering/a$8;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/inmobi/rendering/a;->a(Ljava/lang/String;)I

    move-result v5

    .line 875
    iget-object v1, p0, Lcom/inmobi/rendering/a$8;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/inmobi/rendering/a;->a(Ljava/lang/String;)I

    move-result v6

    .line 876
    iget-object v1, p0, Lcom/inmobi/rendering/a$8;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/inmobi/rendering/a;->a(Ljava/lang/String;)I

    move-result v2

    .line 877
    iget-object v1, p0, Lcom/inmobi/rendering/a$8;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/inmobi/rendering/a;->a(Ljava/lang/String;)I

    move-result v1

    .line 879
    if-ne v9, v5, :cond_5

    if-eq v9, v6, :cond_6

    :cond_5
    if-lez v5, :cond_6

    if-gtz v6, :cond_8

    .line 882
    :cond_6
    const-string v0, "fullscreen"

    iput-object v0, v4, Lcom/inmobi/rendering/mraid/f;->b:Ljava/lang/String;

    .line 898
    :goto_1
    iget-object v0, p0, Lcom/inmobi/rendering/a$8;->n:Lcom/inmobi/rendering/a;

    invoke-static {v0}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a()Z

    move-result v0

    if-nez v0, :cond_7

    .line 899
    iget-boolean v0, p0, Lcom/inmobi/rendering/a$8;->l:Z

    iput-boolean v0, v4, Lcom/inmobi/rendering/mraid/f;->g:Z

    .line 900
    iget-boolean v0, p0, Lcom/inmobi/rendering/a$8;->f:Z

    iput-boolean v0, v4, Lcom/inmobi/rendering/mraid/f;->d:Z

    .line 901
    iget-boolean v0, p0, Lcom/inmobi/rendering/a$8;->g:Z

    iput-boolean v0, v4, Lcom/inmobi/rendering/mraid/f;->f:Z

    .line 902
    iget-object v0, p0, Lcom/inmobi/rendering/a$8;->i:Ljava/lang/String;

    iput-object v0, v4, Lcom/inmobi/rendering/mraid/f;->c:Ljava/lang/String;

    .line 903
    iget-boolean v0, p0, Lcom/inmobi/rendering/a$8;->m:Z

    iput-boolean v0, v4, Lcom/inmobi/rendering/mraid/f;->e:Z

    .line 906
    :cond_7
    iget-object v0, p0, Lcom/inmobi/rendering/a$8;->n:Lcom/inmobi/rendering/a;

    invoke-static {v0}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Lcom/inmobi/rendering/mraid/b;)V

    .line 907
    iget-object v0, p0, Lcom/inmobi/rendering/a$8;->n:Lcom/inmobi/rendering/a;

    invoke-static {v0}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getMediaProcessor()Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Lcom/inmobi/rendering/mraid/f;)V

    .line 908
    iget-object v0, p0, Lcom/inmobi/rendering/a$8;->n:Lcom/inmobi/rendering/a;

    invoke-static {v0}, Lcom/inmobi/rendering/a;->a(Lcom/inmobi/rendering/a;)Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/rendering/a$8;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/inmobi/rendering/a$8;->a:Ljava/lang/String;

    sget-object v3, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;->MEDIA_CONTENT_TYPE_AUDIO_VIDEO:Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/rendering/mraid/MraidMediaProcessor$MediaContentType;)V

    goto/16 :goto_0

    .line 884
    :cond_8
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a()Lcom/inmobi/commons/core/utilities/info/c;

    move-result-object v7

    invoke-virtual {v7}, Lcom/inmobi/commons/core/utilities/info/c;->c()F

    move-result v7

    .line 885
    if-ne v2, v9, :cond_9

    move v2, v0

    .line 886
    :cond_9
    if-ne v1, v9, :cond_a

    .line 888
    :goto_2
    int-to-float v1, v2

    mul-float/2addr v1, v7

    add-float/2addr v1, v8

    float-to-int v1, v1

    iput v1, v3, Lcom/inmobi/rendering/mraid/b;->a:I

    .line 889
    int-to-float v0, v0

    mul-float/2addr v0, v7

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, v3, Lcom/inmobi/rendering/mraid/b;->b:I

    .line 890
    int-to-float v0, v5

    mul-float/2addr v0, v7

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, v3, Lcom/inmobi/rendering/mraid/b;->c:I

    .line 891
    int-to-float v0, v6

    mul-float/2addr v0, v7

    add-float/2addr v0, v8

    float-to-int v0, v0

    iput v0, v3, Lcom/inmobi/rendering/mraid/b;->d:I

    .line 893
    iget-object v0, p0, Lcom/inmobi/rendering/a$8;->h:Ljava/lang/String;

    iput-object v0, v4, Lcom/inmobi/rendering/mraid/f;->b:Ljava/lang/String;

    goto :goto_1

    :cond_a
    move v0, v1

    .line 886
    goto :goto_2
.end method
