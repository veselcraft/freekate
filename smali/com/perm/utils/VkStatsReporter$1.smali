.class Lcom/perm/utils/VkStatsReporter$1;
.super Ljava/lang/Thread;
.source "VkStatsReporter.java"


# instance fields
.field final synthetic val$event:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/perm/utils/VkStatsReporter$1;->val$event:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 15
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, v0, Lcom/perm/kate/session/Session;->api:Lcom/perm/kate/api/Api;

    iget-object v1, p0, Lcom/perm/utils/VkStatsReporter$1;->val$event:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/perm/kate/api/Api;->trackEvents(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
