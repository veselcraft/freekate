.class Lcom/perm/kate/LogCollector$CollectLogTask;
.super Landroid/os/AsyncTask;
.source "LogCollector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/LogCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollectLogTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/StringBuilder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LogCollector;


# direct methods
.method private constructor <init>(Lcom/perm/kate/LogCollector;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/perm/kate/LogCollector$CollectLogTask;->this$0:Lcom/perm/kate/LogCollector;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/perm/kate/LogCollector;Lcom/perm/kate/LogCollector$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/perm/kate/LogCollector;
    .param p2, "x1"    # Lcom/perm/kate/LogCollector$1;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/perm/kate/LogCollector$CollectLogTask;-><init>(Lcom/perm/kate/LogCollector;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/perm/kate/LogCollector$CollectLogTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/StringBuilder;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .local v4, "log":Ljava/lang/StringBuilder;
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v1, "commandLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v6, "logcat"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v6, "-d"

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 61
    .local v5, "process":Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v7, 0x2000

    invoke-direct {v0, v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 63
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 64
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    sget-object v6, Lcom/perm/kate/LogCollector;->LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v1    # "commandLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "line":Ljava/lang/String;
    .end local v5    # "process":Ljava/lang/Process;
    :catch_0
    move-exception v2

    .line 69
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 71
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 46
    check-cast p1, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/perm/kate/LogCollector$CollectLogTask;->onPostExecute(Ljava/lang/StringBuilder;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "log"    # Ljava/lang/StringBuilder;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/perm/kate/LogCollector$CollectLogTask;->this$0:Lcom/perm/kate/LogCollector;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/LogCollector;->sendLogs(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/perm/kate/LogCollector$CollectLogTask;->this$0:Lcom/perm/kate/LogCollector;

    invoke-static {v0}, Lcom/perm/kate/LogCollector;->access$100(Lcom/perm/kate/LogCollector;)V

    .line 78
    iget-object v0, p0, Lcom/perm/kate/LogCollector$CollectLogTask;->this$0:Lcom/perm/kate/LogCollector;

    iget-object v0, v0, Lcom/perm/kate/LogCollector;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 79
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 50
    iget-object v0, p0, Lcom/perm/kate/LogCollector$CollectLogTask;->this$0:Lcom/perm/kate/LogCollector;

    iget-object v1, p0, Lcom/perm/kate/LogCollector$CollectLogTask;->this$0:Lcom/perm/kate/LogCollector;

    iget-object v1, v1, Lcom/perm/kate/LogCollector;->context:Landroid/content/Context;

    const v2, 0x7f070386

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/LogCollector;->showProgressDialog(Ljava/lang/String;)V

    .line 51
    return-void
.end method
