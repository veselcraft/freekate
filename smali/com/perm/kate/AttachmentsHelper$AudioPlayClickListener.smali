.class Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field ad_data:Ljava/lang/String;

.field audio:Lcom/perm/kate/api/Audio;

.field audios:Ljava/util/ArrayList;

.field post_ids:Ljava/lang/String;

.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;

.field track_code:Ljava/lang/String;

.field wall_owner_id:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Lcom/perm/kate/AttachmentsHelper;Ljava/util/ArrayList;Lcom/perm/kate/api/Audio;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1478
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1479
    iput-object p2, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->audios:Ljava/util/ArrayList;

    .line 1480
    iput-object p3, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->audio:Lcom/perm/kate/api/Audio;

    .line 1481
    iput-object p4, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->wall_owner_id:Ljava/lang/Long;

    .line 1482
    iput-object p5, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->post_ids:Ljava/lang/String;

    .line 1483
    iput-object p6, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->ad_data:Ljava/lang/String;

    .line 1484
    iput-object p7, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->track_code:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1490
    sget-object p1, Lcom/perm/kate/PlaybackService;->episode:Lcom/perm/kate/api/Audio;

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 1491
    iget-wide v0, p1, Lcom/perm/kate/api/Audio;->aid:J

    .line 1492
    iget-wide v2, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    goto :goto_0

    :cond_0
    move-wide v2, v0

    .line 1495
    :goto_0
    sget-object p1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz p1, :cond_1

    iget p1, p1, Lcom/perm/kate/Player;->state:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->audio:Lcom/perm/kate/api/Audio;

    iget-wide v4, p1, Lcom/perm/kate/api/Audio;->aid:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    iget-wide v0, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_1

    .line 1496
    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {p1}, Lcom/perm/kate/AttachmentsHelper;->access$200(Lcom/perm/kate/AttachmentsHelper;)V

    goto :goto_2

    .line 1500
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object p1, p1, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const v0, 0x7f090233

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MiniPlayer;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 1502
    invoke-virtual {p1, v0}, Lcom/perm/kate/MiniPlayer;->setActive(Z)V

    .line 1506
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->wall_owner_id:Ljava/lang/Long;

    if-eqz p1, :cond_3

    .line 1508
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/db/DataHelper;->fetchAudiosFromWall(J)Ljava/util/ArrayList;

    move-result-object p1

    .line 1509
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 1510
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->audios:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 1512
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1513
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 1518
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v0, p1, Lcom/perm/kate/AttachmentsHelper;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->audio:Lcom/perm/kate/api/Audio;

    iget-object v2, p1, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    iget-object v3, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->audios:Ljava/util/ArrayList;

    iget p1, p1, Lcom/perm/kate/AttachmentsHelper;->source:I

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/perm/kate/AudioClickHelper;->fetchAndPlayAudio(Lcom/perm/kate/api/Audio;Landroid/app/Activity;Ljava/util/ArrayList;I)V

    .line 1519
    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->ad_data:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 1520
    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->post_ids:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->ad_data:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper$AudioPlayClickListener;->track_code:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/perm/utils/AdEvents;->reportAudioStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method
