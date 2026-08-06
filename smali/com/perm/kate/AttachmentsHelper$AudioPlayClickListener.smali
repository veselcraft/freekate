.class Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AttachmentsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AudioPlayClickListener"
.end annotation


# instance fields
.field audio:Lcom/perm/kate/api/Audio;

.field audios:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;

.field wall_owner_id:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/perm/kate/AttachmentsHelper;Ljava/util/ArrayList;Lcom/perm/kate/api/Audio;Ljava/lang/Long;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AttachmentsHelper;
    .param p3, "audio"    # Lcom/perm/kate/api/Audio;
    .param p4, "wall_owner_id"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Audio;",
            ">;",
            "Lcom/perm/kate/api/Audio;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1185
    .local p2, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1186
    iput-object p2, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->audios:Ljava/util/ArrayList;

    .line 1187
    iput-object p3, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->audio:Lcom/perm/kate/api/Audio;

    .line 1188
    iput-object p4, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->wall_owner_id:Ljava/lang/Long;

    .line 1189
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1192
    const-wide/16 v0, 0x0

    .line 1193
    .local v0, "current_audio":J
    const-wide/16 v2, 0x0

    .line 1194
    .local v2, "current_audio_owner":J
    sget-object v7, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    if-eqz v7, :cond_0

    .line 1195
    sget-object v7, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v0, v7, Lcom/perm/kate/api/Audio;->aid:J

    .line 1196
    sget-object v7, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    iget-wide v2, v7, Lcom/perm/kate/api/Audio;->owner_id:J

    .line 1199
    :cond_0
    sget-object v7, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v7, :cond_1

    sget-object v7, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v7, v7, Lcom/perm/kate/Player;->state:I

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->audio:Lcom/perm/kate/api/Audio;

    iget-wide v8, v7, Lcom/perm/kate/api/Audio;->aid:J

    cmp-long v7, v0, v8

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->audio:Lcom/perm/kate/api/Audio;

    iget-wide v8, v7, Lcom/perm/kate/api/Audio;->owner_id:J

    cmp-long v7, v2, v8

    if-nez v7, :cond_1

    .line 1200
    iget-object v7, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v7}, Lcom/perm/kate/AttachmentsHelper;->access$200(Lcom/perm/kate/AttachmentsHelper;)V

    .line 1222
    :goto_0
    return-void

    .line 1204
    :cond_1
    iget-object v7, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v7, v7, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const v8, 0x7f0e02be

    invoke-virtual {v7, v8}, Lcom/perm/kate/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/MiniPlayer;

    .line 1205
    .local v4, "player":Lcom/perm/kate/MiniPlayer;
    if-eqz v4, :cond_2

    .line 1206
    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Lcom/perm/kate/MiniPlayer;->setActive(Z)V

    .line 1210
    :cond_2
    iget-object v7, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->wall_owner_id:Ljava/lang/Long;

    if-eqz v7, :cond_3

    .line 1212
    :try_start_0
    sget-object v7, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v8, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->wall_owner_id:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/perm/kate/db/DataHelper;->fetchAudiosFromWall(J)Ljava/util/ArrayList;

    move-result-object v6

    .line 1213
    .local v6, "wall_audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_3

    .line 1214
    iput-object v6, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->audios:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1220
    .end local v6    # "wall_audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    :cond_3
    :goto_1
    iget-object v7, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v7, v7, Lcom/perm/kate/AttachmentsHelper;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    iget-object v8, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->audio:Lcom/perm/kate/api/Audio;

    iget-object v9, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v9, v9, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    iget-object v10, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->audios:Ljava/util/ArrayList;

    iget-object v11, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget v11, v11, Lcom/perm/kate/AttachmentsHelper;->source:I

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/perm/kate/AudioClickHelper;->fetchAndPlayAudio(Lcom/perm/kate/api/Audio;Landroid/app/Activity;Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 1215
    :catch_0
    move-exception v5

    .line 1216
    .local v5, "th":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1217
    invoke-static {v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
