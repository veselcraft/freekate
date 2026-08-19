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

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/perm/kate/ReportHelper$3;

    iget-object v1, p0, Lcom/perm/kate/ReportHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ReportHelper$3;-><init>(Lcom/perm/kate/ReportHelper;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ReportHelper;->report_callback:Lcom/perm/kate/session/Callback;

    .line 19
    iput-object p1, p0, Lcom/perm/kate/ReportHelper;->activity:Landroid/app/Activity;

    .line 20
    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Lcom/perm/kate/ReportHelper$3;

    iget-object v1, p0, Lcom/perm/kate/ReportHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/ReportHelper$3;-><init>(Lcom/perm/kate/ReportHelper;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/perm/kate/ReportHelper;->report_callback:Lcom/perm/kate/session/Callback;

    .line 24
    iput-object p1, p0, Lcom/perm/kate/ReportHelper;->activity:Landroid/app/Activity;

    .line 25
    iput-object p2, p0, Lcom/perm/kate/ReportHelper;->news_text:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lcom/perm/kate/ReportHelper;->copy_text:Ljava/lang/String;

    .line 27
    invoke-virtual {v0, p1}, Lcom/perm/kate/session/Callback;->setActivity(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$000(Lcom/perm/kate/ReportHelper;IJJILjava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p9}, Lcom/perm/kate/ReportHelper;->report(IJJILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/perm/kate/ReportHelper;)Lcom/perm/kate/session/Callback;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/perm/kate/ReportHelper;->report_callback:Lcom/perm/kate/session/Callback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/perm/kate/ReportHelper;)Landroid/app/Activity;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/perm/kate/ReportHelper;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$300(Lcom/perm/kate/ReportHelper;IJJZ)V
    .locals 0

    .line 12
    invoke-direct/range {p0 .. p6}, Lcom/perm/kate/ReportHelper;->reportSpamStats(IJJZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/perm/kate/ReportHelper;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/perm/kate/ReportHelper;->showToastInUIThread()V

    return-void
.end method

.method private report(IJJILjava/lang/String;Ljava/lang/String;Z)V
    .locals 12

    .line 43
    new-instance v11, Lcom/perm/kate/ReportHelper$2;

    move-object v0, v11

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object/from16 v5, p7

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p9

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/perm/kate/ReportHelper$2;-><init>(Lcom/perm/kate/ReportHelper;IJLjava/lang/String;JIZLjava/lang/String;)V

    .line 78
    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private reportSpamStats(IJJZ)V
    .locals 1

    .line 185
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/ReportHelper;->news_text:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/utils/SpamHelper;->isSpam(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/perm/kate/ReportHelper;->copy_text:Ljava/lang/String;

    invoke-static {v0}, Lcom/perm/utils/SpamHelper;->isSpam(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    return-void

    .line 191
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/ReportHelper;->news_text:Ljava/lang/String;

    invoke-direct {p0, p1, p6}, Lcom/perm/kate/ReportHelper;->reportSpamText(Ljava/lang/String;Z)V

    .line 193
    iget-object p1, p0, Lcom/perm/kate/ReportHelper;->copy_text:Ljava/lang/String;

    invoke-direct {p0, p1, p6}, Lcom/perm/kate/ReportHelper;->reportSpamText(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    .line 195
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p6, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private reportSpamText(Ljava/lang/String;Z)V
    .locals 7

    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x7d

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-le v1, v0, :cond_1

    .line 206
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/16 v0, 0xa

    const/16 v1, 0x20

    .line 208
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 209
    new-instance v0, Ljava/lang/Exception;

    if-eqz p2, :cond_2

    const-string p2, "spam text news"

    goto :goto_0

    :cond_2
    const-string p2, "spam text wall"

    :goto_0
    invoke-direct {v0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    new-array v1, p2, [Ljava/lang/StackTraceElement;

    .line 211
    new-instance v3, Ljava/lang/StackTraceElement;

    const-string v4, "FakeClass"

    const-string v5, "spamReport"

    const-string v6, "FakeClass.java"

    invoke-direct {v3, v4, v5, v6, p2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Exception;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 212
    invoke-static {v0, p1, p2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    return-void
.end method

.method private showReportDialog(IJJZ)V
    .locals 11

    .line 32
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    move-object v9, p0

    iget-object v1, v9, Lcom/perm/kate/ReportHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f01d7

    .line 33
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 34
    new-instance v10, Lcom/perm/kate/ReportHelper$1;

    move-object v1, v10

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/perm/kate/ReportHelper$1;-><init>(Lcom/perm/kate/ReportHelper;IJJZ)V

    const v1, 0x7f03000b

    invoke-virtual {v0, v1, v10}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 39
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showToastInUIThread()V
    .locals 2

    .line 91
    iget-object v0, p0, Lcom/perm/kate/ReportHelper;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/perm/kate/ReportHelper$4;

    invoke-direct {v1, p0}, Lcom/perm/kate/ReportHelper$4;-><init>(Lcom/perm/kate/ReportHelper;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public showReportAdDialog(Ljava/lang/String;)V
    .locals 2

    .line 126
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/perm/kate/ReportHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f01d7

    .line 127
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 128
    new-instance v1, Lcom/perm/kate/ReportHelper$6;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/ReportHelper$6;-><init>(Lcom/perm/kate/ReportHelper;Ljava/lang/String;)V

    const/high16 p1, 0x7f030000

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 151
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showReportMarketCommentDialog(JJ)V
    .locals 7

    const/4 v1, 0x7

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 179
    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/ReportHelper;->showReportDialog(IJJZ)V

    return-void
.end method

.method public showReportPhotoCommentDialog(JJ)V
    .locals 7

    const/4 v1, 0x6

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 175
    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/ReportHelper;->showReportDialog(IJJZ)V

    return-void
.end method

.method public showReportPhotoDialog(JJ)V
    .locals 7

    const/4 v1, 0x5

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 171
    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/ReportHelper;->showReportDialog(IJJZ)V

    return-void
.end method

.method public showReportPostCommentDialog(JJ)V
    .locals 7

    const/4 v1, 0x2

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 159
    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/ReportHelper;->showReportDialog(IJJZ)V

    return-void
.end method

.method public showReportPostDialog(JJZ)V
    .locals 7

    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 155
    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/ReportHelper;->showReportDialog(IJJZ)V

    return-void
.end method

.method public showReportUserDialog(J)V
    .locals 2

    .line 100
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/perm/kate/ReportHelper;->activity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f01d7

    .line 101
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 102
    new-instance v1, Lcom/perm/kate/ReportHelper$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/perm/kate/ReportHelper$5;-><init>(Lcom/perm/kate/ReportHelper;J)V

    const p1, 0x7f030040

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 122
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public showReportVideoCommentDialog(JJ)V
    .locals 7

    const/4 v1, 0x4

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 167
    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/ReportHelper;->showReportDialog(IJJZ)V

    return-void
.end method

.method public showReportVideoDialog(JJ)V
    .locals 7

    const/4 v1, 0x3

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .line 163
    invoke-direct/range {v0 .. v6}, Lcom/perm/kate/ReportHelper;->showReportDialog(IJJZ)V

    return-void
.end method
