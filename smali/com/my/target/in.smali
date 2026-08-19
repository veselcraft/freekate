.class public abstract Lcom/my/target/in;
.super Ljava/lang/Object;
.source "LoggingUtils.java"


# static fields
.field public static pt:Z


# direct methods
.method public static N(Landroid/content/Context;)V
    .locals 3

    .line 19
    sget-boolean v0, Lcom/my/target/ah;->enabled:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/my/target/in;->pt:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 23
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 24
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v1, "com.my.target.debugMode"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_0

    .line 27
    sput-boolean v0, Lcom/my/target/ah;->enabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :catch_0
    :cond_0
    sput-boolean v0, Lcom/my/target/in;->pt:Z

    :cond_1
    return-void
.end method
