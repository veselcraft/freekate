.class Lcom/perm/kate/VideoMenu$1;
.super Ljava/lang/Object;
.source "VideoMenu.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoMenu;->display(Ljava/lang/Long;JJLjava/lang/String;ZLjava/lang/Boolean;Ljava/lang/Boolean;Lcom/perm/kate/api/Video;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoMenu;

.field final synthetic val$access_key:Ljava/lang/String;

.field final synthetic val$account_id:J

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$oid:J

.field final synthetic val$target_id:J

.field final synthetic val$vid:J

.field final synthetic val$video:Lcom/perm/kate/api/Video;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoMenu;Ljava/util/ArrayList;JJLjava/lang/String;JLcom/perm/kate/api/Video;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/VideoMenu;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iput-object p2, p0, Lcom/perm/kate/VideoMenu$1;->val$menuItems:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iput-wide p5, p0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    iput-object p7, p0, Lcom/perm/kate/VideoMenu$1;->val$access_key:Ljava/lang/String;

    iput-wide p8, p0, Lcom/perm/kate/VideoMenu$1;->val$target_id:J

    iput-object p10, p0, Lcom/perm/kate/VideoMenu$1;->val$video:Lcom/perm/kate/api/Video;

    iput-wide p11, p0, Lcom/perm/kate/VideoMenu$1;->val$account_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 100
    iget-object v0, p0, Lcom/perm/kate/VideoMenu$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 170
    :goto_0
    :pswitch_0
    return-void

    .line 102
    :pswitch_1
    iget-wide v0, p0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    iget-object v4, p0, Lcom/perm/kate/VideoMenu$1;->val$access_key:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v5, v5, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static/range {v0 .. v6}, Lcom/perm/kate/VideoLogic;->fetchAndPlay(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;Z)V

    goto :goto_0

    .line 105
    :pswitch_2
    iget-wide v0, p0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    iget-object v4, p0, Lcom/perm/kate/VideoMenu$1;->val$access_key:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v5, v5, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    move v6, v7

    invoke-static/range {v0 .. v6}, Lcom/perm/kate/VideoLogic;->fetchAndPlay(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;Z)V

    goto :goto_0

    .line 108
    :pswitch_3
    iget-object v0, p0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/VideoMenu;->AddVideo(Ljava/lang/Long;Ljava/lang/Long;)V

    goto :goto_0

    .line 111
    :pswitch_4
    iget-object v0, p0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, p0, Lcom/perm/kate/VideoMenu$1;->val$target_id:J

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/perm/kate/VideoMenu;->DeleteVideo(Ljava/lang/Long;Ljava/lang/Long;J)V

    goto :goto_0

    .line 114
    :pswitch_5
    iget-wide v0, p0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    iget-object v4, p0, Lcom/perm/kate/VideoMenu$1;->val$access_key:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v5, v5, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/VideoLogic;->fetchAndPlayWith(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V

    goto :goto_0

    .line 117
    :pswitch_6
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    iget-object v4, p0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v4, v4, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/Helper;->ShowComments(ILjava/lang/Long;JLandroid/content/Context;)V

    goto :goto_0

    .line 120
    :pswitch_7
    iget-wide v0, p0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-object v4, p0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v4, v4, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/perm/kate/Helper;->copyVideoLink(JJLandroid/content/Context;)V

    goto :goto_0

    .line 123
    :pswitch_8
    iget-object v0, p0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v3, v3, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/perm/kate/VideoMenu;->setLike(ZLjava/lang/Long;Ljava/lang/Long;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 126
    :pswitch_9
    iget-object v0, p0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v3, v3, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/perm/kate/VideoMenu;->setLike(ZLjava/lang/Long;Ljava/lang/Long;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 129
    :pswitch_a
    iget-object v0, p0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    iget-wide v4, p0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/perm/kate/VideoMenu;->showLikes(JJ)V

    goto/16 :goto_0

    .line 133
    :pswitch_b
    iget-object v0, p0, Lcom/perm/kate/VideoMenu$1;->val$video:Lcom/perm/kate/api/Video;

    if-eqz v0, :cond_0

    .line 134
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/VideoMenu$1;->val$video:Lcom/perm/kate/api/Video;

    invoke-virtual {v0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateVideo(Lcom/perm/kate/api/Video;)V

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    iget-wide v4, p0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-object v6, p0, Lcom/perm/kate/VideoMenu$1;->val$access_key:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/perm/kate/VideoMenu;->access$000(Lcom/perm/kate/VideoMenu;JJLjava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :pswitch_c
    iget-object v0, p0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    iget-wide v4, p0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/perm/kate/VideoMenu;->access$100(Lcom/perm/kate/VideoMenu;JJ)V

    goto/16 :goto_0

    .line 141
    :pswitch_d
    iget-wide v0, p0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    iget-object v4, p0, Lcom/perm/kate/VideoMenu$1;->val$access_key:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v5, v5, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/VideoLogic;->fetchAndShowInstructions(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V

    goto/16 :goto_0

    .line 144
    :pswitch_e
    iget-object v1, p0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$target_id:J

    iget-wide v4, p0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v6, p0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    invoke-static/range {v1 .. v7}, Lcom/perm/kate/VideoMenu;->access$200(Lcom/perm/kate/VideoMenu;JJJ)V

    goto/16 :goto_0

    .line 147
    :pswitch_f
    new-instance v0, Lcom/perm/kate/ReportHelper;

    iget-object v1, p0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v1, v1, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    invoke-direct {v0, v1}, Lcom/perm/kate/ReportHelper;-><init>(Landroid/app/Activity;)V

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v4, p0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/perm/kate/ReportHelper;->showReportVideoDialog(JJ)V

    goto/16 :goto_0

    .line 150
    :pswitch_10
    iget-object v0, p0, Lcom/perm/kate/VideoMenu$1;->val$video:Lcom/perm/kate/api/Video;

    if-eqz v0, :cond_1

    .line 151
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/VideoMenu$1;->val$video:Lcom/perm/kate/api/Video;

    invoke-virtual {v0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateVideo(Lcom/perm/kate/api/Video;)V

    .line 152
    :cond_1
    iget-wide v0, p0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/video_cache/VideoCache;->add(JJ)V

    goto/16 :goto_0

    .line 155
    :pswitch_11
    iget-wide v0, p0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/video_cache/VideoCache;->remove(JJ)V

    goto/16 :goto_0

    .line 158
    :pswitch_12
    iget-wide v0, p0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/video_cache/VideoCache;->retry(JJ)V

    goto/16 :goto_0

    .line 161
    :pswitch_13
    iget-object v0, p0, Lcom/perm/kate/VideoMenu$1;->val$video:Lcom/perm/kate/api/Video;

    if-eqz v0, :cond_2

    .line 162
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/VideoMenu$1;->val$video:Lcom/perm/kate/api/Video;

    invoke-virtual {v0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateVideo(Lcom/perm/kate/api/Video;)V

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v4, p0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/perm/kate/VideoMenu;->access$300(Lcom/perm/kate/VideoMenu;JJ)V

    goto/16 :goto_0

    .line 167
    :pswitch_14
    iget-object v0, p0, Lcom/perm/kate/VideoMenu$1;->this$0:Lcom/perm/kate/VideoMenu;

    iget-object v1, v0, Lcom/perm/kate/VideoMenu;->activity:Lcom/perm/kate/BaseActivity;

    iget-wide v2, p0, Lcom/perm/kate/VideoMenu$1;->val$account_id:J

    iget-wide v4, p0, Lcom/perm/kate/VideoMenu$1;->val$vid:J

    iget-wide v6, p0, Lcom/perm/kate/VideoMenu$1;->val$oid:J

    const/4 v8, 0x0

    invoke-static/range {v1 .. v8}, Lcom/perm/utils/VideoAlbumsHelper;->showAlbumsDialogWithCheck(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    goto/16 :goto_0

    .line 100
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_2
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method
