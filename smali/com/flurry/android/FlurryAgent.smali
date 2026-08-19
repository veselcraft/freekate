.class public abstract Lcom/flurry/android/FlurryAgent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "FlurryAgent"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getAgentVersion()I
    .locals 1

    .line 75
    invoke-static {}, Lcom/flurry/sdk/dk;->a()Lcom/flurry/sdk/dk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/dk;->b()I

    move-result v0

    return v0
.end method

.method public static logEvent(Ljava/lang/String;)V
    .locals 4

    .line 389
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 390
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 394
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "String eventId passed to logEvent was null."

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 398
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cu;->a()Lcom/flurry/sdk/cu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/cu;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 400
    sget-object v1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to log event: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 423
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 424
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 428
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String eventId passed to logEvent was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 432
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String parameters passed to logEvent was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 436
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cu;->a()Lcom/flurry/sdk/cu;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/cu;->a(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 438
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to log event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static onEndSession(Landroid/content/Context;)V
    .locals 2

    .line 355
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 356
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 364
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/flurry/sdk/di;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 366
    sget-object v0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 360
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Null context"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 584
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 585
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p0, :cond_1

    .line 589
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String errorId passed to onError was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    .line 593
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "String message passed to onError was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p2, :cond_3

    .line 597
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Throwable passed to onError was null."

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 601
    :cond_3
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/cu;->a()Lcom/flurry/sdk/cu;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/flurry/sdk/cu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 603
    sget-object p1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p2, ""

    invoke-static {p1, p2, p0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static onStartSession(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 314
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 315
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string p1, "Device SDK Version older than 10"

    invoke-static {p0, p1}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    .line 321
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    :try_start_0
    invoke-static {}, Lcom/flurry/sdk/di;->a()Lcom/flurry/sdk/di;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/flurry/sdk/di;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 328
    sget-object p1, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p1, v0, p0}, Lcom/flurry/sdk/el;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    .line 322
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Api key not specified"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 319
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Null context"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setCaptureUncaughtExceptions(Z)V
    .locals 2

    .line 224
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 225
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 228
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "CaptureUncaughtExceptions"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setReportLocation(Z)V
    .locals 2

    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 93
    sget-object p0, Lcom/flurry/android/FlurryAgent;->a:Ljava/lang/String;

    const-string v0, "Device SDK Version older than 10"

    invoke-static {p0, v0}, Lcom/flurry/sdk/el;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 96
    :cond_0
    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "ReportLocation"

    invoke-virtual {v0, v1, p0}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
