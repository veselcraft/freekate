.class Lcom/perm/utils/DownloadManagerUpdateHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "DownloadManagerUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/utils/DownloadManagerUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/utils/DownloadManagerUpdateHelper;


# direct methods
.method constructor <init>(Lcom/perm/utils/DownloadManagerUpdateHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/utils/DownloadManagerUpdateHelper;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/perm/utils/DownloadManagerUpdateHelper$1;->this$0:Lcom/perm/utils/DownloadManagerUpdateHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 55
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 58
    new-instance v4, Landroid/app/DownloadManager$Query;

    invoke-direct {v4}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 59
    .local v4, "query":Landroid/app/DownloadManager$Query;
    const/4 v7, 0x1

    new-array v7, v7, [J

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/perm/utils/DownloadManagerUpdateHelper$1;->this$0:Lcom/perm/utils/DownloadManagerUpdateHelper;

    iget-wide v10, v9, Lcom/perm/utils/DownloadManagerUpdateHelper;->download_id:J

    aput-wide v10, v7, v8

    invoke-virtual {v4, v7}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 60
    sget-object v7, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    sget-object v8, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v8, "download"

    invoke-virtual {v7, v8}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/DownloadManager;

    .line 61
    .local v3, "dm":Landroid/app/DownloadManager;
    invoke-virtual {v3, v4}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v1

    .line 62
    .local v1, "c":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 63
    const-string v7, "status"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 64
    .local v2, "columnIndex":I
    const/16 v7, 0x8

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v7, v8, :cond_0

    .line 65
    const-string v7, "local_uri"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 66
    .local v6, "uri":Ljava/lang/String;
    iget-object v7, p0, Lcom/perm/utils/DownloadManagerUpdateHelper$1;->this$0:Lcom/perm/utils/DownloadManagerUpdateHelper;

    invoke-static {v7, v6}, Lcom/perm/utils/DownloadManagerUpdateHelper;->access$000(Lcom/perm/utils/DownloadManagerUpdateHelper;Ljava/lang/String;)V

    .line 67
    sget-object v7, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    iget-object v8, p0, Lcom/perm/utils/DownloadManagerUpdateHelper$1;->this$0:Lcom/perm/utils/DownloadManagerUpdateHelper;

    iget-object v8, v8, Lcom/perm/utils/DownloadManagerUpdateHelper;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v7, v8}, Landroid/app/Application;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "c":Landroid/database/Cursor;
    .end local v2    # "columnIndex":I
    .end local v3    # "dm":Landroid/app/DownloadManager;
    .end local v4    # "query":Landroid/app/DownloadManager$Query;
    .end local v6    # "uri":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v5

    .line 72
    .local v5, "th":Ljava/lang/Throwable;
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    invoke-static {v5}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
