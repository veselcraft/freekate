.class Lcom/perm/kate/LogCollector$CollectLogTask;
.super Landroid/os/AsyncTask;
.source "LogCollector.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LogCollector;


# direct methods
.method private constructor <init>(Lcom/perm/kate/LogCollector;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/perm/kate/LogCollector$CollectLogTask;->this$0:Lcom/perm/kate/LogCollector;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/perm/kate/LogCollector;Lcom/perm/kate/LogCollector$1;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/perm/kate/LogCollector$CollectLogTask;-><init>(Lcom/perm/kate/LogCollector;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/perm/kate/LogCollector$CollectLogTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/StringBuilder;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/StringBuilder;
    .locals 3

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "logcat"

    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "-d"

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x2000

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 66
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    sget-object v0, Lcom/perm/kate/LogCollector;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 72
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/perm/kate/LogCollector$CollectLogTask;->onPostExecute(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/perm/kate/LogCollector$CollectLogTask;->this$0:Lcom/perm/kate/LogCollector;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/perm/kate/LogCollector;->sendLogs(Ljava/lang/String;)V

    .line 80
    iget-object p1, p0, Lcom/perm/kate/LogCollector$CollectLogTask;->this$0:Lcom/perm/kate/LogCollector;

    invoke-static {p1}, Lcom/perm/kate/LogCollector;->access$100(Lcom/perm/kate/LogCollector;)V

    .line 81
    iget-object p1, p0, Lcom/perm/kate/LogCollector$CollectLogTask;->this$0:Lcom/perm/kate/LogCollector;

    iget-object p1, p1, Lcom/perm/kate/LogCollector;->context:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/perm/kate/LogCollector$CollectLogTask;->this$0:Lcom/perm/kate/LogCollector;

    iget-object v1, v0, Lcom/perm/kate/LogCollector;->context:Landroid/content/Context;

    const v2, 0x7f0f03f4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/LogCollector;->showProgressDialog(Ljava/lang/String;)V

    return-void
.end method
