.class public Lcom/perm/kate/ReportHelper;
.super Ljava/lang/Object;
.source "ReportHelper.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private copy_text:Ljava/lang/String;

.field private news_text:Ljava/lang/String;

.field private report_callback:Lcom/perm/kate/session/Callback;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/perm/kate/ReportHelper$3;

    iget-object v1, p0, Lcom/perm/kate/ReportHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ReportHelper$3;-><init>(Lcom/perm/kate/ReportHelper;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ReportHelper;->report_callback:Lcom/perm/kate/session/Callback;

    .line 18
    iput-object p1, p0, Lcom/perm/kate/ReportHelper;->activity:Landroid/app/Activity;

    .line 19
    iget-object v0, p0, Lcom/perm/kate/ReportHelper;->report_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "news_text"    # Ljava/lang/String;
    .param p3, "copy_text"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/perm/kate/ReportHelper$3;

    iget-object v1, p0, Lcom/perm/kate/ReportHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ReportHelper$3;-><init>(Lcom/perm/kate/ReportHelper;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ReportHelper;->report_callback:Lcom/perm/kate/session/Callback;

    .line 23
    iput-object p1, p0, Lcom/perm/kate/ReportHelper;->activity:Landroid/app/Activity;

    .line 24
    iput-object p2, p0, Lcom/perm/kate/ReportHelper;->news_text:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lcom/perm/kate/ReportHelper;->copy_text:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/perm/kate/ReportHelper;->report_callback:Lcom/perm/kate/session/Callback;

    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/ReportHelper;IJJILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ReportHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # J
    .param p6, "x4"    # I
    .param p7, "x5"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct/range {p0 .. p7}, Lcom/perm/kate/ReportHelper;->report(IJJILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/ReportHelper;)Lcom/perm/kate/session/Callback;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ReportHelper;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/perm/kate/ReportHelper;->report_callback:Lcom/perm/kate/session/Callback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/perm/kate/ReportHelper;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/perm/kate/ReportHelper;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/perm/kate/ReportHelper;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/perm/kate/ReportHelper;IJJ)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ReportHelper;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # J

    .prologue
    .line 11
    invoke-direct/range {p0 .. p5}, Lcom/perm/kate/ReportHelper;->reportSpamStats(IJJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/ReportHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/kate/ReportHelper;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/perm/kate/ReportHelper;->showToastInUIThread()V

    return-void
.end method

.method private report(IJJILjava/lang/String;)V
    .locals 10
    .param p1, "report_type"    # I
    .param p2, "id"    # J
    .param p4, "owner_id"    # J
    .param p6, "reason"    # I
    .param p7, "user_reason"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v0, Lcom/perm/kate/ReportHelper$2;

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object/from16 v5, p7

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/perm/kate/ReportHelper$2;-><init>(Lcom/perm/kate/ReportHelper;IJLjava/lang/String;JI)V

    .line 74
    invoke-virtual {v0}, Lcom/perm/kate/ReportHelper$2;->start()V

    .line 75
    return-void
.end method

.method private reportSpamStats(IJJ)V
    .locals 8
    .param p1, "reason"    # I
    .param p2, "owner_id"    # J
    .param p4, "id"    # J

    .prologue
    .line 152
    :try_start_0
    iget-object v4, p0, Lcom/perm/kate/ReportHelper;->news_text:Ljava/lang/String;

    invoke-static {v4}, Lcom/perm/utils/SpamHelper;->isSpam(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/perm/kate/ReportHelper;->copy_text:Ljava/lang/String;

    invoke-static {v4}, Lcom/perm/utils/SpamHelper;->isSpam(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    if-nez p1, :cond_2

    .line 155
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "spam report"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    .line 158
    :cond_2
    if-nez p1, :cond_0

    .line 162
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 163
    .local v1, "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "id"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v4, p0, Lcom/perm/kate/ReportHelper;->news_text:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 166
    const/16 v0, 0x7d

    .line 167
    .local v0, "limit":I
    iget-object v2, p0, Lcom/perm/kate/ReportHelper;->news_text:Ljava/lang/String;

    .line 168
    .local v2, "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v0, :cond_3

    .line 169
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 171
    :cond_3
    const/16 v4, 0xa

    const/16 v5, 0x20

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 172
    const-string v4, "text"

    invoke-virtual {v1, v4, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .end local v0    # "limit":I
    .end local v2    # "text":Ljava/lang/String;
    :cond_4
    const-string v4, "SPAM"

    invoke-static {v4, v1}, Lcom/flurry/android/FlurryAgent;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 177
    iget-object v4, p0, Lcom/perm/kate/ReportHelper;->news_text:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 178
    const/16 v0, 0x7d

    .line 179
    .restart local v0    # "limit":I
    iget-object v2, p0, Lcom/perm/kate/ReportHelper;->news_text:Ljava/lang/String;

    .line 180
    .restart local v2    # "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v0, :cond_5

    .line 181
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 183
    :cond_5
    const/16 v4, 0xa

    const/16 v5, 0x20

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 184
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "spam text"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {v4, v2, v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    .line 187
    .end local v0    # "limit":I
    .end local v2    # "text":Ljava/lang/String;
    :cond_6
    iget-object v4, p0, Lcom/perm/kate/ReportHelper;->copy_text:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 188
    const/16 v0, 0x7d

    .line 189
    .restart local v0    # "limit":I
    iget-object v2, p0, Lcom/perm/kate/ReportHelper;->copy_text:Ljava/lang/String;

    .line 190
    .restart local v2    # "text":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v0, :cond_7

    .line 191
    const/4 v4, 0x0

    invoke-virtual {v2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 193
    :cond_7
    const/16 v4, 0xa

    const/16 v5, 0x20

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    .line 194
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "spam text"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {v4, v2, v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 196
    .end local v0    # "limit":I
    .end local v1    # "map":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "text":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 197
    .local v3, "th":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private showReportDialog(IJJ)V
    .locals 10
    .param p1, "report_type"    # I
    .param p2, "post_id"    # J
    .param p4, "owner_id"    # J

    .prologue
    .line 31
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/perm/kate/ReportHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 32
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f07016f

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 33
    const v8, 0x7f0d000a

    new-instance v1, Lcom/perm/kate/ReportHelper$1;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/perm/kate/ReportHelper$1;-><init>(Lcom/perm/kate/ReportHelper;IJJ)V

    invoke-virtual {v0, v8, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 38
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 39
    return-void
.end method

.method private showToastInUIThread()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/perm/kate/ReportHelper;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/perm/kate/ReportHelper$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/ReportHelper$4;-><init>(Lcom/perm/kate/ReportHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 93
    return-void
.end method


# virtual methods
.method public showReportMarketCommentDialog(JJ)V
    .locals 7
    .param p1, "commnet_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    .line 146
    const/4 v1, 0x7

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/ReportHelper;->showReportDialog(IJJ)V

    .line 147
    return-void
.end method

.method public showReportPhotoCommentDialog(JJ)V
    .locals 7
    .param p1, "commnet_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    .line 142
    const/4 v1, 0x6

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/ReportHelper;->showReportDialog(IJJ)V

    .line 143
    return-void
.end method

.method public showReportPhotoDialog(JJ)V
    .locals 7
    .param p1, "photo_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    .line 138
    const/4 v1, 0x5

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/ReportHelper;->showReportDialog(IJJ)V

    .line 139
    return-void
.end method

.method public showReportPostCommentDialog(JJ)V
    .locals 7
    .param p1, "commnet_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    .line 126
    const/4 v1, 0x2

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/ReportHelper;->showReportDialog(IJJ)V

    .line 127
    return-void
.end method

.method public showReportPostDialog(JJ)V
    .locals 7
    .param p1, "post_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    .line 122
    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/ReportHelper;->showReportDialog(IJJ)V

    .line 123
    return-void
.end method

.method public showReportUserDialog(J)V
    .locals 3
    .param p1, "user_id"    # J

    .prologue
    .line 96
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/perm/kate/ReportHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, "builder":Landroid/support/v7/app/AlertDialog$Builder;
    const v1, 0x7f07016f

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 98
    const v1, 0x7f0d003e

    new-instance v2, Lcom/perm/kate/ReportHelper$5;

    invoke-direct {v2, p0, p1, p2}, Lcom/perm/kate/ReportHelper$5;-><init>(Lcom/perm/kate/ReportHelper;J)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 118
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 119
    return-void
.end method

.method public showReportVideoCommentDialog(JJ)V
    .locals 7
    .param p1, "commnet_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    .line 134
    const/4 v1, 0x4

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/ReportHelper;->showReportDialog(IJJ)V

    .line 135
    return-void
.end method

.method public showReportVideoDialog(JJ)V
    .locals 7
    .param p1, "video_id"    # J
    .param p3, "owner_id"    # J

    .prologue
    .line 130
    const/4 v1, 0x3

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/perm/kate/ReportHelper;->showReportDialog(IJJ)V

    .line 131
    return-void
.end method
