.class Lcom/perm/kate/PlaybackService$6;
.super Landroid/content/BroadcastReceiver;
.source "PlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PlaybackService;


# direct methods
.method constructor <init>(Lcom/perm/kate/PlaybackService;)V
    .locals 0

    .line 1256
    iput-object p1, p0, Lcom/perm/kate/PlaybackService$6;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "Kate.PlaybackService"

    const-string p2, "Start Audio Somewhere broadcast received"

    .line 1259
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    sget-object p1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-nez p1, :cond_0

    return-void

    .line 1262
    :cond_0
    sget-object p1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-nez p1, :cond_1

    return-void

    .line 1265
    :cond_1
    sget-object p1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    invoke-virtual {p1}, Lcom/perm/kate/api/Audio;->isPodcast()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    .line 1268
    :cond_2
    sget-object p1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget p1, p1, Lcom/perm/kate/Player;->state:I

    if-nez p1, :cond_3

    .line 1269
    iget-object p1, p0, Lcom/perm/kate/PlaybackService$6;->this$0:Lcom/perm/kate/PlaybackService;

    invoke-static {p1}, Lcom/perm/kate/PlaybackService;->access$1100(Lcom/perm/kate/PlaybackService;)V

    .line 1272
    sget-object p1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const p2, 0x7f0f03ea

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_3
    return-void
.end method
