.class public Lcom/perm/kate/MediaButtonHelper;
.super Ljava/lang/Object;
.source "MediaButtonHelper.java"


# static fields
.field static sMethodRegisterMediaButtonEventReceiver:Ljava/lang/reflect/Method;

.field static sMethodUnregisterMediaButtonEventReceiver:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 17
    invoke-static {}, Lcom/perm/kate/MediaButtonHelper;->initializeStaticCompatMethods()V

    .line 18
    return-void
.end method

.method static initializeStaticCompatMethods()V
    .locals 5

    .prologue
    .line 25
    :try_start_0
    const-class v0, Landroid/media/AudioManager;

    const-string v1, "registerMediaButtonEventReceiver"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/ComponentName;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/MediaButtonHelper;->sMethodRegisterMediaButtonEventReceiver:Ljava/lang/reflect/Method;

    .line 27
    const-class v0, Landroid/media/AudioManager;

    const-string v1, "unregisterMediaButtonEventReceiver"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/ComponentName;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/perm/kate/MediaButtonHelper;->sMethodUnregisterMediaButtonEventReceiver:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static registerMediaButtonEventReceiverCompat(Landroid/media/AudioManager;Landroid/content/ComponentName;)V
    .locals 5
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "receiver"    # Landroid/content/ComponentName;

    .prologue
    .line 36
    sget-object v2, Lcom/perm/kate/MediaButtonHelper;->sMethodRegisterMediaButtonEventReceiver:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 56
    :goto_0
    return-void

    .line 40
    :cond_0
    :try_start_0
    sget-object v2, Lcom/perm/kate/MediaButtonHelper;->sMethodRegisterMediaButtonEventReceiver:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 41
    :catch_0
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 44
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_1

    .line 45
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 46
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_2

    .line 47
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 50
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 52
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 53
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "MediaButtonHelper"

    const-string v3, "IllegalAccessException invoking registerMediaButtonEventReceiver."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method public static unregisterMediaButtonEventReceiverCompat(Landroid/media/AudioManager;Landroid/content/ComponentName;)V
    .locals 5
    .param p0, "audioManager"    # Landroid/media/AudioManager;
    .param p1, "receiver"    # Landroid/content/ComponentName;

    .prologue
    .line 60
    sget-object v2, Lcom/perm/kate/MediaButtonHelper;->sMethodUnregisterMediaButtonEventReceiver:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    .line 80
    :goto_0
    return-void

    .line 64
    :cond_0
    :try_start_0
    sget-object v2, Lcom/perm/kate/MediaButtonHelper;->sMethodUnregisterMediaButtonEventReceiver:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 68
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_1

    .line 69
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 70
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_2

    .line 71
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 74
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_2
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 76
    .end local v0    # "cause":Ljava/lang/Throwable;
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 77
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "MediaButtonHelper"

    const-string v3, "IllegalAccessException invoking unregisterMediaButtonEventReceiver."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method
