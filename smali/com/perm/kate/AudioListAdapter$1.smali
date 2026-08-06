.class Lcom/perm/kate/AudioListAdapter$1;
.super Ljava/lang/Object;
.source "AudioListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AudioListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioListAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioListAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioListAdapter;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/perm/kate/AudioListAdapter$1;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    aget-object v6, v6, v10

    check-cast v6, Ljava/lang/Long;

    move-object v0, v6

    check-cast v0, Ljava/lang/Long;

    .line 160
    .local v0, "audio_id":Ljava/lang/Long;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    const/4 v7, 0x3

    aget-object v6, v6, v7

    check-cast v6, Ljava/lang/Long;

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 161
    .local v2, "owner_id":J
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    check-cast v6, [Ljava/lang/Object;

    const/4 v7, 0x2

    aget-object v6, v6, v7

    check-cast v6, Ljava/lang/Integer;

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 162
    .local v5, "position":I
    sget-object v6, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v6, v6, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_0

    sget-object v6, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v6, v6, Lcom/perm/kate/api/Audio;->owner_id:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_0

    sget-object v6, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v6, v6, Lcom/perm/kate/Player;->state:I

    if-nez v6, :cond_0

    .line 163
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/perm/kate/AudioListAdapter$1;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-static {v6}, Lcom/perm/kate/AudioListAdapter;->access$000(Lcom/perm/kate/AudioListAdapter;)Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/perm/kate/PlaybackService;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    .local v1, "i":Landroid/content/Intent;
    const-string v6, "pause"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 165
    iget-object v6, p0, Lcom/perm/kate/AudioListAdapter$1;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-static {v6}, Lcom/perm/kate/AudioListAdapter;->access$000(Lcom/perm/kate/AudioListAdapter;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 180
    .end local v1    # "i":Landroid/content/Intent;
    :goto_0
    iget-object v6, p0, Lcom/perm/kate/AudioListAdapter$1;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-virtual {v6}, Lcom/perm/kate/AudioListAdapter;->notifyDataSetChanged()V

    .line 181
    return-void

    .line 166
    :cond_0
    sget-object v6, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v6, v6, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    sget-object v6, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v6, v6, Lcom/perm/kate/api/Audio;->owner_id:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_1

    sget-object v6, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v6, v6, Lcom/perm/kate/Player;->state:I

    if-ne v6, v10, :cond_1

    .line 168
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lcom/perm/kate/AudioListAdapter$1;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-static {v6}, Lcom/perm/kate/AudioListAdapter;->access$000(Lcom/perm/kate/AudioListAdapter;)Landroid/app/Activity;

    move-result-object v6

    const-class v7, Lcom/perm/kate/PlaybackService;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    .restart local v1    # "i":Landroid/content/Intent;
    const-string v6, "resume"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v6, p0, Lcom/perm/kate/AudioListAdapter$1;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-static {v6}, Lcom/perm/kate/AudioListAdapter;->access$000(Lcom/perm/kate/AudioListAdapter;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 174
    .end local v1    # "i":Landroid/content/Intent;
    :cond_1
    iget-object v6, p0, Lcom/perm/kate/AudioListAdapter$1;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-static {v6}, Lcom/perm/kate/AudioListAdapter;->access$000(Lcom/perm/kate/AudioListAdapter;)Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0e02be

    invoke-virtual {v6, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/MiniPlayer;

    .line 175
    .local v4, "player":Lcom/perm/kate/MiniPlayer;
    if-eqz v4, :cond_2

    .line 176
    invoke-virtual {v4, v10}, Lcom/perm/kate/MiniPlayer;->setActive(Z)V

    .line 178
    :cond_2
    iget-object v6, p0, Lcom/perm/kate/AudioListAdapter$1;->this$0:Lcom/perm/kate/AudioListAdapter;

    iget-object v6, v6, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/perm/kate/api/Audio;

    iget-object v7, p0, Lcom/perm/kate/AudioListAdapter$1;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-static {v7}, Lcom/perm/kate/AudioListAdapter;->access$000(Lcom/perm/kate/AudioListAdapter;)Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/perm/kate/AudioListAdapter$1;->this$0:Lcom/perm/kate/AudioListAdapter;

    iget-object v8, v8, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/perm/kate/AudioListAdapter$1;->this$0:Lcom/perm/kate/AudioListAdapter;

    iget-boolean v9, v9, Lcom/perm/kate/AudioListAdapter;->fromPlayer:Z

    iget-object v10, p0, Lcom/perm/kate/AudioListAdapter$1;->this$0:Lcom/perm/kate/AudioListAdapter;

    iget v10, v10, Lcom/perm/kate/AudioListAdapter;->source:I

    invoke-static {v6, v7, v8, v9, v10}, Lcom/perm/kate/AudioClickHelper;->PlayAudio(Lcom/perm/kate/api/Audio;Landroid/content/Context;Ljava/util/ArrayList;ZI)V

    goto :goto_0
.end method
