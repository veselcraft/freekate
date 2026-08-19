.class Lcom/perm/utils/DownloadManagerUpdateHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "DownloadManagerUpdateHelper.java"


# instance fields
.field final synthetic this$0:Lcom/perm/utils/DownloadManagerUpdateHelper;


# direct methods
.method constructor <init>(Lcom/perm/utils/DownloadManagerUpdateHelper;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/perm/utils/DownloadManagerUpdateHelper$1;->this$0:Lcom/perm/utils/DownloadManagerUpdateHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 57
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.DOWNLOAD_COMPLETE"

    .line 58
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 60
    new-instance p1, Landroid/app/DownloadManager$Query;

    invoke-direct {p1}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 p2, 0x1

    new-array p2, p2, [J

    const/4 v0, 0x0

    .line 61
    iget-object v1, p0, Lcom/perm/utils/DownloadManagerUpdateHelper$1;->this$0:Lcom/perm/utils/DownloadManagerUpdateHelper;

    iget-wide v1, v1, Lcom/perm/utils/DownloadManagerUpdateHelper;->download_id:J

    aput-wide v1, p2, v0

    invoke-virtual {p1, p2}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 62
    sget-object p2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v0, "download"

    invoke-virtual {p2, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/DownloadManager;

    .line 63
    invoke-virtual {p2, p1}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object p1

    .line 64
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "status"

    .line 65
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    const/16 v0, 0x8

    .line 66
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-ne v0, p2, :cond_0

    const-string p2, "local_uri"

    .line 67
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 68
    iget-object v0, p0, Lcom/perm/utils/DownloadManagerUpdateHelper$1;->this$0:Lcom/perm/utils/DownloadManagerUpdateHelper;

    invoke-static {v0, p2}, Lcom/perm/utils/DownloadManagerUpdateHelper;->access$000(Lcom/perm/utils/DownloadManagerUpdateHelper;Ljava/lang/String;)V

    .line 69
    sget-object p2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    iget-object v0, p0, Lcom/perm/utils/DownloadManagerUpdateHelper$1;->this$0:Lcom/perm/utils/DownloadManagerUpdateHelper;

    iget-object v0, v0, Lcom/perm/utils/DownloadManagerUpdateHelper;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v0}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 72
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 75
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 76
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
