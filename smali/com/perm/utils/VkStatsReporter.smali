.class public abstract Lcom/perm/utils/VkStatsReporter;
.super Ljava/lang/Object;
.source "VkStatsReporter.java"


# direct methods
.method public static report(Ljava/lang/String;)V
    .locals 1

    .line 10
    new-instance v0, Lcom/perm/utils/VkStatsReporter$1;

    invoke-direct {v0, p0}, Lcom/perm/utils/VkStatsReporter$1;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
