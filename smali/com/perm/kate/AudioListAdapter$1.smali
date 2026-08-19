.class Lcom/perm/kate/AudioListAdapter$1;
.super Ljava/lang/Object;
.source "AudioListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioListAdapter;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioListAdapter;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/perm/kate/AudioListAdapter$1;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Long;

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    const/4 v4, 0x2

    aget-object p1, p1, v4

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 168
    sget-object v4, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v4, :cond_0

    iget-wide v4, v4, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-nez v8, :cond_0

    sget-object v4, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v4, v4, Lcom/perm/kate/api/Audio;->owner_id:J

    cmp-long v6, v4, v2

    if-nez v6, :cond_0

    sget-object v4, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v4, :cond_0

    iget v4, v4, Lcom/perm/kate/Player;->state:I

    if-nez v4, :cond_0

    .line 169
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter$1;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-static {v0}, Lcom/perm/kate/AudioListAdapter;->access$000(Lcom/perm/kate/AudioListAdapter;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/perm/kate/PlaybackService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "pause"

    .line 170
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter$1;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-static {v0}, Lcom/perm/kate/AudioListAdapter;->access$000(Lcom/perm/kate/AudioListAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 172
    :cond_0
    sget-object v4, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v4, :cond_1

    iget-wide v4, v4, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    sget-object v0, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v4, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    sget-object v0, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/perm/kate/Player;->state:I

    if-ne v0, v1, :cond_1

    .line 174
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter$1;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-static {v0}, Lcom/perm/kate/AudioListAdapter;->access$000(Lcom/perm/kate/AudioListAdapter;)Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/perm/kate/PlaybackService;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "resume"

    .line 175
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter$1;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-static {v0}, Lcom/perm/kate/AudioListAdapter;->access$000(Lcom/perm/kate/AudioListAdapter;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 178
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter$1;->this$0:Lcom/perm/kate/AudioListAdapter;

    iget-object v0, v0, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    iget-object v0, v0, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 181
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter$1;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-static {v0}, Lcom/perm/kate/AudioListAdapter;->access$000(Lcom/perm/kate/AudioListAdapter;)Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f090233

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MiniPlayer;

    if-eqz v0, :cond_3

    .line 183
    invoke-virtual {v0, v1}, Lcom/perm/kate/MiniPlayer;->setActive(Z)V

    .line 185
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter$1;->this$0:Lcom/perm/kate/AudioListAdapter;

    iget-object v0, v0, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Audio;

    iget-object v0, p0, Lcom/perm/kate/AudioListAdapter$1;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-static {v0}, Lcom/perm/kate/AudioListAdapter;->access$000(Lcom/perm/kate/AudioListAdapter;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/AudioListAdapter$1;->this$0:Lcom/perm/kate/AudioListAdapter;

    iget-object v2, v1, Lcom/perm/kate/AudioListAdapter;->audios:Ljava/util/ArrayList;

    iget-boolean v3, v1, Lcom/perm/kate/AudioListAdapter;->fromPlayer:Z

    iget v1, v1, Lcom/perm/kate/AudioListAdapter;->source:I

    invoke-static {p1, v0, v2, v3, v1}, Lcom/perm/kate/AudioClickHelper;->PlayAudio(Lcom/perm/kate/api/Audio;Landroid/content/Context;Ljava/util/ArrayList;ZI)V

    .line 187
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/AudioListAdapter$1;->this$0:Lcom/perm/kate/AudioListAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
