.class Lcom/perm/kate/AudioClickHelper$2;
.super Ljava/lang/Object;
.source "AudioClickHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioClickHelper;->CreateContextMenu(Lcom/perm/kate/api/Audio;ZLjava/util/ArrayList;ZLcom/perm/kate/AudioFragment;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioClickHelper;

.field final synthetic val$a:Lcom/perm/kate/api/Audio;

.field final synthetic val$audios:Ljava/util/ArrayList;

.field final synthetic val$fragment:Lcom/perm/kate/AudioFragment;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$source:I


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper;Ljava/util/ArrayList;Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;ILcom/perm/kate/AudioFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioClickHelper;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$2;->this$0:Lcom/perm/kate/AudioClickHelper;

    iput-object p2, p0, Lcom/perm/kate/AudioClickHelper$2;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    iput-object p4, p0, Lcom/perm/kate/AudioClickHelper$2;->val$audios:Ljava/util/ArrayList;

    iput p5, p0, Lcom/perm/kate/AudioClickHelper$2;->val$source:I

    iput-object p6, p0, Lcom/perm/kate/AudioClickHelper$2;->val$fragment:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 116
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 118
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$2;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v1, v1, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    iget-object v2, p0, Lcom/perm/kate/AudioClickHelper$2;->val$audios:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iget v4, p0, Lcom/perm/kate/AudioClickHelper$2;->val$source:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/AudioClickHelper;->PlayAudio(Lcom/perm/kate/api/Audio;Landroid/content/Context;Ljava/util/ArrayList;ZI)V

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    invoke-static {v0}, Lcom/perm/kate/PlaybackService;->playNext(Lcom/perm/kate/api/Audio;)V

    goto :goto_0

    .line 124
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    invoke-static {v0}, Lcom/perm/kate/AudioClickHelper;->restricted(Lcom/perm/kate/api/Audio;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-static {}, Lcom/perm/kate/AudioClickHelper;->access$000()V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v2, v1, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v2, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/AudioClickHelper;->AddAudio(Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0

    .line 134
    :pswitch_3
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper;->audioCallback:Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper;->audioCallback:Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v2, v1, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;->audioSelectForDelete(J)V

    goto :goto_0

    .line 138
    :pswitch_4
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$2;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v1, v1, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/AudioClickHelper;->PlayAudioWith(Lcom/perm/kate/api/Audio;Landroid/app/Activity;)V

    goto :goto_0

    .line 141
    :pswitch_5
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    invoke-static {v0}, Lcom/perm/kate/AudioClickHelper;->restricted(Lcom/perm/kate/api/Audio;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    invoke-static {}, Lcom/perm/kate/AudioClickHelper;->access$000()V

    goto :goto_0

    .line 145
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->this$0:Lcom/perm/kate/AudioClickHelper;

    invoke-static {v0}, Lcom/perm/kate/AudioClickHelper;->access$100(Lcom/perm/kate/AudioClickHelper;)V

    goto :goto_0

    .line 148
    :pswitch_6
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    iget-object v1, v1, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/perm/kate/AudioClickHelper;->access$200(Lcom/perm/kate/AudioClickHelper;J)V

    goto :goto_0

    .line 151
    :pswitch_7
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    invoke-static {v0}, Lcom/perm/kate/AudioClickHelper;->restricted(Lcom/perm/kate/api/Audio;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    invoke-static {}, Lcom/perm/kate/AudioClickHelper;->access$000()V

    goto :goto_0

    .line 156
    :cond_3
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    invoke-virtual {v0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateAudio(Lcom/perm/kate/api/Audio;)V

    .line 157
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v2, v1, Lcom/perm/kate/api/Audio;->owner_id:J

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v4, v1, Lcom/perm/kate/api/Audio;->aid:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/perm/kate/AudioClickHelper;->access$300(Lcom/perm/kate/AudioClickHelper;JJ)V

    goto/16 :goto_0

    .line 160
    :pswitch_8
    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$2;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v2, v0, Lcom/perm/kate/api/Audio;->aid:J

    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v4, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    iget-object v6, p0, Lcom/perm/kate/AudioClickHelper$2;->val$fragment:Lcom/perm/kate/AudioFragment;

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/AudioClickHelper;->access$400(Lcom/perm/kate/AudioClickHelper;JJLandroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 163
    :pswitch_9
    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$2;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v2, v0, Lcom/perm/kate/api/Audio;->aid:J

    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v4, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    iget-object v6, p0, Lcom/perm/kate/AudioClickHelper$2;->val$fragment:Lcom/perm/kate/AudioFragment;

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/AudioClickHelper;->access$500(Lcom/perm/kate/AudioClickHelper;JJLandroid/support/v4/app/Fragment;)V

    goto/16 :goto_0

    .line 166
    :pswitch_a
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v2, v1, Lcom/perm/kate/api/Audio;->aid:J

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v4, v1, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v4, p0, Lcom/perm/kate/AudioClickHelper$2;->val$fragment:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/perm/kate/AudioClickHelper;->deleteFromAlbum(JLjava/lang/Long;Lcom/perm/kate/AudioFragment;)V

    goto/16 :goto_0

    .line 169
    :pswitch_b
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    invoke-static {v0}, Lcom/perm/kate/AudioClickHelper;->restricted(Lcom/perm/kate/api/Audio;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 170
    invoke-static {}, Lcom/perm/kate/AudioClickHelper;->access$000()V

    goto/16 :goto_0

    .line 174
    :cond_4
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    invoke-virtual {v0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateAudio(Lcom/perm/kate/api/Audio;)V

    .line 175
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v0, v0, Lcom/perm/kate/api/Audio;->aid:J

    iget-object v2, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v2, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/audio_cache/AudioCache;->add(JJ)V

    goto/16 :goto_0

    .line 178
    :pswitch_c
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v0, v0, Lcom/perm/kate/api/Audio;->aid:J

    iget-object v2, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v2, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    iget-object v4, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    iget-object v4, v4, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/audio_cache/AudioCache;->remove(JJLjava/lang/Long;)V

    .line 179
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper;->audioCallback:Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper;->audioCallback:Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v2, v1, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v0, v2, v3}, Lcom/perm/kate/AudioClickHelper$AudioClickHelperCallback;->audioDeletedFromCache(J)V

    goto/16 :goto_0

    .line 183
    :pswitch_d
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v0, v0, Lcom/perm/kate/api/Audio;->aid:J

    iget-object v2, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    iget-wide v2, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/audio_cache/AudioCache;->retry(JJ)V

    goto/16 :goto_0

    .line 186
    :pswitch_e
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    invoke-static {v0, v1}, Lcom/perm/kate/AudioClickHelper;->access$600(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;)V

    goto/16 :goto_0

    .line 189
    :pswitch_f
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$2;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$2;->val$a:Lcom/perm/kate/api/Audio;

    invoke-static {v0, v1}, Lcom/perm/kate/AudioClickHelper;->access$700(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;)V

    goto/16 :goto_0

    .line 116
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_7
        :pswitch_9
        :pswitch_e
        :pswitch_f
        :pswitch_1
    .end packed-switch
.end method
