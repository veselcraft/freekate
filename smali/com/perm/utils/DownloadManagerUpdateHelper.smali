.class public Lcom/perm/utils/DownloadManagerUpdateHelper;
.super Ljava/lang/Object;
.source "DownloadManagerUpdateHelper.java"


# instance fields
.field download_id:J

.field receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/perm/utils/DownloadManagerUpdateHelper$1;

    invoke-direct {v0, p0}, Lcom/perm/utils/DownloadManagerUpdateHelper$1;-><init>(Lcom/perm/utils/DownloadManagerUpdateHelper;)V

    iput-object v0, p0, Lcom/perm/utils/DownloadManagerUpdateHelper;->receiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/perm/utils/DownloadManagerUpdateHelper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/perm/utils/DownloadManagerUpdateHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/perm/utils/DownloadManagerUpdateHelper;->startInstallation(Ljava/lang/String;)V

    return-void
.end method

.method private startInstallation(Ljava/lang/String;)V
    .locals 3
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "intent1":Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 82
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 83
    sget-object v1, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 84
    return-void
.end method


# virtual methods
.method public downloadDoc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 25
    :try_start_0
    sget-object v5, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    sget-object v6, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    const-string v6, "download"

    invoke-virtual {v5, v6}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 26
    .local v0, "dm":Landroid/app/DownloadManager;
    new-instance v3, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 29
    .local v3, "request":Landroid/app/DownloadManager$Request;
    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 30
    .local v2, "path":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 31
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 34
    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v3, v5, p2}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 36
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    .line 37
    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/perm/utils/DownloadManagerHelper;->setNotificationVisibilityWithReflection(Landroid/app/DownloadManager$Request;I)V

    .line 39
    :cond_0
    const-string v5, "application/vnd.android.package-archive"

    invoke-virtual {v3, v5}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 40
    invoke-virtual {v0, v3}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/perm/utils/DownloadManagerUpdateHelper;->download_id:J

    .line 44
    sget-object v5, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    iget-object v6, p0, Lcom/perm/utils/DownloadManagerUpdateHelper;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v0    # "dm":Landroid/app/DownloadManager;
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "path":Ljava/io/File;
    .end local v3    # "request":Landroid/app/DownloadManager$Request;
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v4

    .line 46
    .local v4, "th":Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    invoke-static {v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
