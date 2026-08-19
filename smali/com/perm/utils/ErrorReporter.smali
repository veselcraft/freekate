.class public abstract Lcom/perm/utils/ErrorReporter;
.super Ljava/lang/Object;
.source "ErrorReporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/utils/ErrorReporter$CallBack;
    }
.end annotation


# static fields
.field static callback:Lcom/perm/utils/ErrorReporter$CallBack;


# direct methods
.method public static report(Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 21
    invoke-static {p0, v0, v1}, Lcom/perm/utils/ErrorReporter;->report(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    return-void
.end method

.method public static report(Ljava/lang/Throwable;Ljava/lang/String;Z)V
    .locals 1

    .line 15
    sget-object v0, Lcom/perm/utils/ErrorReporter;->callback:Lcom/perm/utils/ErrorReporter$CallBack;

    if-nez v0, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-interface {v0, p0, p1, p2}, Lcom/perm/utils/ErrorReporter$CallBack;->report(Ljava/lang/Throwable;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setCallback(Lcom/perm/utils/ErrorReporter$CallBack;)V
    .locals 0

    .line 10
    sput-object p0, Lcom/perm/utils/ErrorReporter;->callback:Lcom/perm/utils/ErrorReporter$CallBack;

    return-void
.end method
