.class public final Lcom/my/target/core/b;
.super Ljava/lang/Object;
.source "Tracer.java"


# static fields
.field public static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/my/target/core/b;->a:Z

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/my/target/core/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "[myTarget]"

    if-eqz p0, :cond_1

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    return-void

    .line 28
    :cond_1
    const-string p0, "null"

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/my/target/core/b;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "[myTarget]"

    if-eqz p0, :cond_1

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_0
    return-void

    .line 33
    :cond_1
    const-string p0, "null"

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 38
    const-string v0, "[myTarget]"

    if-eqz p0, :cond_0

    :goto_0
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    return-void

    .line 38
    :cond_0
    const-string p0, "null"

    goto :goto_0
.end method
