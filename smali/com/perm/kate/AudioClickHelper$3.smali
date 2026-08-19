.class Lcom/perm/kate/AudioClickHelper$3;
.super Ljava/lang/Object;
.source "AudioClickHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioClickHelper;

.field final synthetic val$a:Lcom/perm/kate/api/Audio;

.field final synthetic val$ad_data:Ljava/lang/String;

.field final synthetic val$album_id:J

.field final synthetic val$audios:Ljava/util/ArrayList;

.field final synthetic val$delete_multiple:Z

.field final synthetic val$fragment:Lcom/perm/kate/AudioFragment;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$post_ids:Ljava/lang/String;

.field final synthetic val$source:I

.field final synthetic val$track_code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper;Ljava/util/ArrayList;Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/perm/kate/AudioFragment;J)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->this$0:Lcom/perm/kate/AudioClickHelper;

    iput-object p2, p0, Lcom/perm/kate/AudioClickHelper$3;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    iput-object p4, p0, Lcom/perm/kate/AudioClickHelper$3;->val$audios:Ljava/util/ArrayList;

    iput p5, p0, Lcom/perm/kate/AudioClickHelper$3;->val$source:I

    iput-object p6, p0, Lcom/perm/kate/AudioClickHelper$3;->val$ad_data:Ljava/lang/String;

    iput-object p7, p0, Lcom/perm/kate/AudioClickHelper$3;->val$post_ids:Ljava/lang/String;

    iput-object p8, p0, Lcom/perm/kate/AudioClickHelper$3;->val$track_code:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/perm/kate/AudioClickHelper$3;->val$delete_multiple:Z

    iput-object p10, p0, Lcom/perm/kate/AudioClickHelper$3;->val$fragment:Lcom/perm/kate/AudioFragment;

    iput-wide p11, p0, Lcom/perm/kate/AudioClickHelper$3;->val$album_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13

    .line 142
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    if-eqz p1, :cond_8

    const/4 p2, 0x1

    if-eq p1, p2, :cond_6

    const/4 p2, 0x2

    if-eq p1, p2, :cond_4

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x6

    if-eq p1, p2, :cond_2

    const/4 p2, 0x7

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 188
    :pswitch_0
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, p1, Lcom/perm/kate/AudioClickHelper;->audioCallback:Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;

    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v1, p1, Lcom/perm/kate/api/Audio;->aid:J

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;->audioSelectForMove(JZJ)V

    goto/16 :goto_0

    .line 226
    :pswitch_1
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    invoke-static {p1}, Lcom/perm/kate/PlaybackService;->deleteFromQueue(Lcom/perm/kate/api/Audio;)V

    goto/16 :goto_0

    .line 223
    :pswitch_2
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p1, p1, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    iget-object p2, p2, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/perm/kate/AudioClickHelper;->searchSongArtist(Lcom/perm/kate/BaseActivity;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 149
    :pswitch_3
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    invoke-static {p1}, Lcom/perm/kate/PlaybackService;->playNext(Lcom/perm/kate/api/Audio;)V

    goto/16 :goto_0

    .line 220
    :pswitch_4
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    invoke-static {p1, p2}, Lcom/perm/kate/AudioClickHelper;->access$500(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;)V

    goto/16 :goto_0

    .line 217
    :pswitch_5
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    invoke-static {p1, p2}, Lcom/perm/kate/AudioClickHelper;->access$400(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;)V

    goto/16 :goto_0

    .line 194
    :pswitch_6
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$3;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v1, p1, Lcom/perm/kate/api/Audio;->aid:J

    iget-wide v3, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    iget-object v5, p0, Lcom/perm/kate/AudioClickHelper$3;->val$fragment:Lcom/perm/kate/AudioFragment;

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/AudioClickHelper;->access$300(Lcom/perm/kate/AudioClickHelper;JJLandroidx/fragment/app/Fragment;)V

    goto/16 :goto_0

    .line 179
    :pswitch_7
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    invoke-static {p1}, Lcom/perm/kate/AudioClickHelper;->restricted(Lcom/perm/kate/api/Audio;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 180
    invoke-static {}, Lcom/perm/kate/AudioClickHelper;->access$000()V

    goto/16 :goto_0

    .line 184
    :cond_0
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    invoke-virtual {p1, p2}, Lcom/perm/kate/db/DataHelper;->createOrUpdateAudio(Lcom/perm/kate/api/Audio;)V

    .line 185
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$3;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v1, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    iget-wide v3, p1, Lcom/perm/kate/api/Audio;->aid:J

    iget-object v5, p1, Lcom/perm/kate/api/Audio;->access_key:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/AudioClickHelper;->access$200(Lcom/perm/kate/AudioClickHelper;JJLjava/lang/String;)V

    goto/16 :goto_0

    .line 197
    :cond_1
    iget-object v6, p0, Lcom/perm/kate/AudioClickHelper$3;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v7, p1, Lcom/perm/kate/api/Audio;->aid:J

    iget-wide p1, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    iget-object v10, p0, Lcom/perm/kate/AudioClickHelper$3;->val$fragment:Lcom/perm/kate/AudioFragment;

    iget-wide v11, p0, Lcom/perm/kate/AudioClickHelper$3;->val$album_id:J

    invoke-virtual/range {v6 .. v12}, Lcom/perm/kate/AudioClickHelper;->deleteFromAlbum(JLjava/lang/Long;Lcom/perm/kate/AudioFragment;J)V

    goto/16 :goto_0

    .line 191
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, p1, Lcom/perm/kate/AudioClickHelper;->audioCallback:Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;

    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v1, p1, Lcom/perm/kate/api/Audio;->aid:J

    const/4 v3, 0x1

    iget-wide v4, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;->audioSelectForMove(JZJ)V

    goto/16 :goto_0

    .line 176
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    iget-object p2, p2, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v2, p2, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {p1, v0, v1, v2, v3}, Lcom/perm/kate/AudioClickHelper;->access$100(Lcom/perm/kate/AudioClickHelper;JJ)V

    goto :goto_0

    .line 160
    :cond_4
    iget-boolean p1, p0, Lcom/perm/kate/AudioClickHelper$3;->val$delete_multiple:Z

    if-eqz p1, :cond_5

    .line 161
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p1, p1, Lcom/perm/kate/AudioClickHelper;->audioCallback:Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;

    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v0, p2, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {p1, v0, v1}, Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;->audioSelectForDelete(J)V

    goto :goto_0

    .line 163
    :cond_5
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v0, p2, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v0, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/perm/kate/AudioClickHelper;->confirmDeleteAudio(Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0

    .line 152
    :cond_6
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    invoke-static {p1}, Lcom/perm/kate/AudioClickHelper;->restricted(Lcom/perm/kate/api/Audio;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 153
    invoke-static {}, Lcom/perm/kate/AudioClickHelper;->access$000()V

    goto :goto_0

    .line 156
    :cond_7
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v0, p2, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v0, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    iget-object v1, v1, Lcom/perm/kate/api/Audio;->access_key:Ljava/lang/String;

    invoke-virtual {p1, p2, v0, v1}, Lcom/perm/kate/AudioClickHelper;->AddAudio(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    :cond_8
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->val$a:Lcom/perm/kate/api/Audio;

    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper$3;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object p2, p2, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$3;->val$audios:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iget v2, p0, Lcom/perm/kate/AudioClickHelper$3;->val$source:I

    invoke-static {p1, p2, v0, v1, v2}, Lcom/perm/kate/AudioClickHelper;->PlayAudio(Lcom/perm/kate/api/Audio;Landroid/content/Context;Ljava/util/ArrayList;ZI)V

    .line 145
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->val$ad_data:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 146
    iget-object p1, p0, Lcom/perm/kate/AudioClickHelper$3;->val$post_ids:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/AudioClickHelper$3;->val$ad_data:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$3;->val$track_code:Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcom/perm/utils/AdEvents;->reportAudioStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
