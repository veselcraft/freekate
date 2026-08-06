.class public final Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;
.super Landroid/database/ContentObserver;
.source "MraidMediaProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/rendering/mraid/MraidMediaProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .prologue
    .line 91
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->a:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    .line 92
    invoke-direct {p0, p4}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 93
    iput-object p2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->d:Ljava/lang/String;

    .line 94
    iput-object p3, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->b:Landroid/content/Context;

    .line 95
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->c:I

    .line 96
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .prologue
    .line 100
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 102
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->b:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 104
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 106
    iget v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->c:I

    if-eq v0, v1, :cond_0

    .line 107
    iput v0, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->c:I

    .line 108
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->a:Lcom/inmobi/rendering/mraid/MraidMediaProcessor;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/MraidMediaProcessor$a;->d:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/inmobi/rendering/mraid/MraidMediaProcessor;->a(Lcom/inmobi/rendering/mraid/MraidMediaProcessor;Ljava/lang/String;I)V

    .line 111
    :cond_0
    return-void
.end method
