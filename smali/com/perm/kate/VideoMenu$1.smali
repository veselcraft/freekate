.class Lcom/perm/kate/VideoMenu$1;
.super Ljava/lang/Object;
.source "VideoMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoMenu;

.field final synthetic val$access_key:Ljava/lang/String;

.field final synthetic val$account_id:J

.field final synthetic val$ad_data:Ljava/lang/String;

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$oid:J

.field final synthetic val$post_ids:Ljava/lang/String;

.field final synthetic val$target_id:J

.field final synthetic val$track_code:Ljava/lang/String;

.field final synthetic val$vid:J

.field final synthetic val$video:Lcom/perm/kate/api/Video;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoMenu;Ljava/util/ArrayList;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/perm/kate/api/Video;J)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iput-object p2, p0, Lcom/perm/kate/VideoMenu$1;->val$menuItems:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iput-wide p5, p0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    iput-object p7, p0, Lcom/perm/kate/VideoMenu$1;->val$access_key:Ljava/lang/String;

    iput-object p8, p0, Lcom/perm/kate/VideoMenu$1;->val$ad_data:Ljava/lang/String;

    iput-object p9, p0, Lcom/perm/kate/VideoMenu$1;->val$post_ids:Ljava/lang/String;

    iput-object p10, p0, Lcom/perm/kate/VideoMenu$1;->val$track_code:Ljava/lang/String;

    iput-wide p11, p0, Lcom/perm/kate/VideoMenu$1;->val$target_id:J

    iput-object p13, p0, Lcom/perm/kate/VideoMenu$1;->val$video:Lcom/perm/kate/api/Video;

    iput-wide p14, p0, Lcom/perm/kate/VideoMenu$1;->val$account_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 18

    move-object/from16 v0, p0

    .line 114
    iget-object v1, v0, Lcom/perm/kate/VideoMenu$1;->val$menuItems:Ljava/util/ArrayList;

    move/from16 v2, p2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/MenuItemDetails;

    iget v1, v1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/16 v2, 0x17

    if-eq v1, v2, :cond_8

    const/16 v2, 0x1d

    if-eq v1, v2, :cond_6

    const/16 v2, 0x1e

    if-eq v1, v2, :cond_5

    const/16 v2, 0x21

    if-eq v1, v2, :cond_4

    const/16 v2, 0x22

    if-eq v1, v2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 178
    :pswitch_0
    iget-wide v1, v0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v3, v0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    invoke-static {v1, v2, v3, v4}, Lcom/perm/kate/video_cache/VideoCache;->retry(JJ)V

    goto/16 :goto_0

    .line 175
    :pswitch_1
    iget-wide v1, v0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v3, v0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    invoke-static {v1, v2, v3, v4}, Lcom/perm/kate/video_cache/VideoCache;->remove(JJ)V

    goto/16 :goto_0

    .line 166
    :pswitch_2
    iget-object v1, v0, Lcom/perm/kate/VideoMenu$1;->val$video:Lcom/perm/kate/api/Video;

    if-eqz v1, :cond_0

    .line 167
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v4, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateVideo(Lcom/perm/kate/api/Video;)V

    .line 168
    :cond_0
    invoke-static {}, Lcom/perm/kate/PhotoSaver;->isScopedStorage()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v1, v1, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const-string v4, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 169
    iget-object v1, v0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v1, v1, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    new-array v3, v3, [Ljava/lang/String;

    aput-object v4, v3, v2

    const/16 v2, 0x64

    invoke-static {v1, v3, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 172
    :cond_1
    iget-wide v1, v0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v3, v0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    invoke-static {v1, v2, v3, v4}, Lcom/perm/kate/video_cache/VideoCache;->add(JJ)V

    goto/16 :goto_0

    .line 160
    :pswitch_3
    iget-object v5, v0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-wide v6, v0, Lcom/perm/kate/VideoMenu$1;->val$target_id:J

    iget-wide v8, v0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v10, v0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    invoke-static/range {v5 .. v11}, Lcom/perm/kate/VideoMenu;->access$300(Lcom/perm/kate/VideoMenu;JJJ)V

    goto/16 :goto_0

    .line 157
    :pswitch_4
    iget-wide v12, v0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v14, v0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    iget-object v1, v0, Lcom/perm/kate/VideoMenu$1;->val$access_key:Ljava/lang/String;

    iget-object v2, v0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v2, v2, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-static/range {v12 .. v17}, Lcom/perm/kate/VideoLogic;->fetchAndShowInstructions(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V

    goto/16 :goto_0

    .line 154
    :pswitch_5
    iget-object v1, v0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-wide v2, v0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    iget-wide v4, v0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/perm/kate/VideoMenu;->access$200(Lcom/perm/kate/VideoMenu;JJ)V

    goto/16 :goto_0

    .line 149
    :pswitch_6
    iget-object v1, v0, Lcom/perm/kate/VideoMenu$1;->val$video:Lcom/perm/kate/api/Video;

    if-eqz v1, :cond_2

    .line 150
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateVideo(Lcom/perm/kate/api/Video;)V

    .line 151
    :cond_2
    iget-object v3, v0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-wide v4, v0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    iget-wide v6, v0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-object v8, v0, Lcom/perm/kate/VideoMenu$1;->val$access_key:Ljava/lang/String;

    invoke-static/range {v3 .. v8}, Lcom/perm/kate/VideoMenu;->access$100(Lcom/perm/kate/VideoMenu;JJLjava/lang/String;)V

    goto/16 :goto_0

    .line 121
    :pswitch_7
    iget-wide v9, v0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v11, v0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    iget-object v13, v0, Lcom/perm/kate/VideoMenu$1;->val$access_key:Ljava/lang/String;

    iget-object v1, v0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v14, v1, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v15, 0x1

    invoke-static/range {v9 .. v15}, Lcom/perm/kate/VideoLogic;->fetchAndPlay(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;Z)V

    goto/16 :goto_0

    .line 136
    :pswitch_8
    iget-wide v1, v0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    iget-wide v3, v0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-object v5, v0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v5, v5, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/perm/kate/Helper;->copyVideoLink(JJLandroid/content/Context;)V

    goto/16 :goto_0

    .line 116
    :pswitch_9
    iget-wide v6, v0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v8, v0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    iget-object v10, v0, Lcom/perm/kate/VideoMenu$1;->val$access_key:Ljava/lang/String;

    iget-object v1, v0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v11, v1, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v12, 0x0

    invoke-static/range {v6 .. v12}, Lcom/perm/kate/VideoLogic;->fetchAndPlay(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;Z)V

    .line 117
    iget-object v1, v0, Lcom/perm/kate/VideoMenu$1;->val$ad_data:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 118
    iget-object v1, v0, Lcom/perm/kate/VideoMenu$1;->val$post_ids:Ljava/lang/String;

    iget-object v2, v0, Lcom/perm/kate/VideoMenu$1;->val$ad_data:Ljava/lang/String;

    iget-object v3, v0, Lcom/perm/kate/VideoMenu$1;->val$track_code:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/perm/utils/AdEvents;->reportVideoStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    const/4 v1, 0x2

    .line 133
    iget-wide v2, v0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, v0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    iget-object v5, v0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v5, v5, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto/16 :goto_0

    .line 130
    :pswitch_b
    iget-wide v6, v0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v8, v0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    iget-object v10, v0, Lcom/perm/kate/VideoMenu$1;->val$access_key:Ljava/lang/String;

    iget-object v1, v0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v11, v1, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static/range {v6 .. v11}, Lcom/perm/kate/VideoLogic;->fetchAndPlayWith(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V

    goto/16 :goto_0

    .line 127
    :pswitch_c
    iget-object v1, v0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-wide v2, v0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, v0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lcom/perm/kate/VideoMenu$1;->val$target_id:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/perm/kate/VideoMenu;->access$000(Lcom/perm/kate/VideoMenu;Ljava/lang/Long;Ljava/lang/Long;J)V

    goto/16 :goto_0

    .line 124
    :pswitch_d
    iget-object v1, v0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-wide v2, v0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v3, v0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/VideoMenu;->AddVideo(Ljava/lang/Long;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 145
    :pswitch_e
    iget-object v1, v0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-wide v2, v0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    iget-wide v4, v0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/perm/kate/VideoMenu;->showLikes(JJ)V

    goto/16 :goto_0

    .line 142
    :pswitch_f
    iget-object v1, v0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-wide v3, v0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v5, v5, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/perm/kate/VideoMenu;->setLike(ZLjava/lang/Long;Ljava/lang/Long;Landroid/app/Activity;)V

    goto :goto_0

    .line 139
    :pswitch_10
    iget-object v1, v0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-wide v4, v0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, v0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, v0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v5, v5, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/perm/kate/VideoMenu;->setLike(ZLjava/lang/Long;Ljava/lang/Long;Landroid/app/Activity;)V

    goto :goto_0

    .line 198
    :cond_3
    iget-object v1, v0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-wide v2, v0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v4, v0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/perm/kate/VideoMenu;->access$600(Lcom/perm/kate/VideoMenu;JJ)V

    goto :goto_0

    .line 195
    :cond_4
    iget-object v6, v0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-wide v7, v0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v9, v0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    iget-object v11, v0, Lcom/perm/kate/VideoMenu$1;->val$access_key:Ljava/lang/String;

    invoke-static/range {v6 .. v11}, Lcom/perm/kate/VideoMenu;->access$500(Lcom/perm/kate/VideoMenu;JJLjava/lang/String;)V

    goto :goto_0

    .line 187
    :cond_5
    iget-object v1, v0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v2, v1, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    iget-wide v3, v0, Lcom/perm/kate/VideoMenu$1;->val$account_id:J

    iget-wide v5, v0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v7, v0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Lcom/perm/utils/VideoAlbumsHelper;->showAlbumsDialogWithCheck(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    goto :goto_0

    .line 181
    :cond_6
    iget-object v1, v0, Lcom/perm/kate/VideoMenu$1;->val$video:Lcom/perm/kate/api/Video;

    if-eqz v1, :cond_7

    .line 182
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateVideo(Lcom/perm/kate/api/Video;)V

    .line 183
    :cond_7
    iget-object v1, v0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-wide v2, v0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v4, v0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    invoke-static {v1, v2, v3, v4, v5}, Lcom/perm/kate/VideoMenu;->access$400(Lcom/perm/kate/VideoMenu;JJ)V

    goto :goto_0

    .line 163
    :cond_8
    new-instance v1, Lcom/perm/kate/ReportHelper;

    iget-object v2, v0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v2, v2, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {v1, v2}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-wide v2, v0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v4, v0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/perm/kate/ReportHelper;->showReportVideoDialog(JJ)V

    :cond_9
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
