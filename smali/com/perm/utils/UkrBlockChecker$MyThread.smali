.class Lcom/perm/utils/UkrBlockChecker$MyThread;
.super Ljava/lang/Thread;
.source "UkrBlockChecker.java"


# instance fields
.field public index:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/perm/utils/UkrBlockChecker$1;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lcom/perm/utils/UkrBlockChecker$MyThread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    .line 84
    :try_start_0
    iget v1, p0, Lcom/perm/utils/UkrBlockChecker$MyThread;->index:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "https://api.vk.com"

    if-eqz v1, :cond_3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    :try_start_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const-string v0, "https://vk.com"

    .line 95
    invoke-static {v0}, Lcom/perm/utils/UkrBlockChecker;->access$100(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 87
    :cond_2
    invoke-static {v2}, Lcom/perm/utils/UkrBlockChecker;->access$100(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_3
    invoke-static {v2}, Lcom/perm/utils/UkrBlockChecker;->checkUrlWithProxyOkHttp(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 101
    :goto_0
    sget-object v1, Lcom/perm/utils/UkrBlockChecker;->results:Ljava/util/List;

    iget v2, p0, Lcom/perm/utils/UkrBlockChecker$MyThread;->index:I

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 104
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
