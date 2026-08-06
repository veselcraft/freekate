.class public Lcom/inmobi/rendering/mraid/f;
.super Ljava/lang/Object;
.source "MediaPlayerProperties.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-string v0, "anonymous"

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/f;->a:Ljava/lang/String;

    .line 23
    const-string v0, "fullscreen"

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/f;->b:Ljava/lang/String;

    .line 24
    const-string v0, "exit"

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/f;->c:Ljava/lang/String;

    .line 25
    iput-boolean v2, p0, Lcom/inmobi/rendering/mraid/f;->d:Z

    .line 26
    iput-boolean v2, p0, Lcom/inmobi/rendering/mraid/f;->e:Z

    .line 27
    iput-boolean v1, p0, Lcom/inmobi/rendering/mraid/f;->f:Z

    .line 28
    iput-boolean v1, p0, Lcom/inmobi/rendering/mraid/f;->g:Z

    .line 29
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 3

    .prologue
    .line 32
    const-string v0, "fullscreen"

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/f;->b:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 3

    .prologue
    .line 36
    const-string v0, "exit"

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/f;->c:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
