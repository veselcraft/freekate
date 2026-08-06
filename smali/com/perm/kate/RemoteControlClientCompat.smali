.class public Lcom/perm/kate/RemoteControlClientCompat;
.super Ljava/lang/Object;
.source "RemoteControlClientCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/RemoteControlClientCompat$MetadataEditorCompat;
    }
.end annotation


# static fields
.field private static sHasRemoteControlAPIs:Z

.field private static sRCCEditMetadataMethod:Ljava/lang/reflect/Method;

.field private static sRCCSetPlayStateMethod:Ljava/lang/reflect/Method;

.field private static sRCCSetTransportControlFlags:Ljava/lang/reflect/Method;

.field private static sRemoteControlClientClass:Ljava/lang/Class;


# instance fields
.field private mActualRemoteControlClient:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 48
    sput-boolean v5, Lcom/perm/kate/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    .line 52
    :try_start_0
    const-class v6, Lcom/perm/kate/RemoteControlClientCompat;

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 53
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    invoke-static {v0}, Lcom/perm/kate/RemoteControlClientCompat;->getActualRemoteControlClientClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/perm/kate/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    .line 56
    const-class v6, Lcom/perm/kate/RemoteControlClientCompat;

    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_0

    aget-object v2, v6, v5
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6

    .line 58
    .local v2, "field":Ljava/lang/reflect/Field;
    :try_start_1
    sget-object v8, Lcom/perm/kate/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 59
    .local v3, "realField":Ljava/lang/reflect/Field;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 60
    .local v4, "realValue":Ljava/lang/Object;
    const/4 v8, 0x0

    invoke-virtual {v2, v8, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6

    .line 56
    .end local v3    # "realField":Ljava/lang/reflect/Field;
    .end local v4    # "realValue":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/NoSuchFieldException;
    :try_start_2
    const-string v8, "RemoteControlCompat"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Could not get real field: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 81
    .end local v1    # "e":Ljava/lang/NoSuchFieldException;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v5

    .line 90
    :goto_2
    return-void

    .line 63
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    :catch_2
    move-exception v1

    .line 64
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "RemoteControlCompat"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error trying to pull field value for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 65
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 64
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 83
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :catch_3
    move-exception v5

    goto :goto_2

    .line 66
    .restart local v2    # "field":Ljava/lang/reflect/Field;
    :catch_4
    move-exception v1

    .line 67
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v8, "RemoteControlCompat"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error trying to pull field value for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 68
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 67
    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 85
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :catch_5
    move-exception v5

    goto :goto_2

    .line 73
    :cond_0
    sget-object v5, Lcom/perm/kate/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    const-string v6, "editMetadata"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/perm/kate/RemoteControlClientCompat;->sRCCEditMetadataMethod:Ljava/lang/reflect/Method;

    .line 75
    sget-object v5, Lcom/perm/kate/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    const-string v6, "setPlaybackState"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/perm/kate/RemoteControlClientCompat;->sRCCSetPlayStateMethod:Ljava/lang/reflect/Method;

    .line 77
    sget-object v5, Lcom/perm/kate/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    const-string v6, "setTransportControlFlags"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    sput-object v5, Lcom/perm/kate/RemoteControlClientCompat;->sRCCSetTransportControlFlags:Ljava/lang/reflect/Method;

    .line 80
    const/4 v5, 0x1

    sput-boolean v5, Lcom/perm/kate/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_6

    goto/16 :goto_2

    .line 87
    :catch_6
    move-exception v5

    goto/16 :goto_2
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 5
    .param p1, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    sget-boolean v1, Lcom/perm/kate/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    if-nez v1, :cond_0

    .line 110
    :goto_0
    return-void

    .line 104
    :cond_0
    :try_start_0
    sget-object v1, Lcom/perm/kate/RemoteControlClientCompat;->sRemoteControlClientClass:Ljava/lang/Class;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/PendingIntent;

    aput-object v4, v2, v3

    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 106
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/perm/kate/RemoteControlClientCompat;->mActualRemoteControlClient:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/perm/kate/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    return v0
.end method

.method public static getActualRemoteControlClientClass(Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 94
    const-string v0, "android.media.RemoteControlClient"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public editMetadata(Z)Lcom/perm/kate/RemoteControlClientCompat$MetadataEditorCompat;
    .locals 7
    .param p1, "startEmpty"    # Z

    .prologue
    .line 291
    sget-boolean v2, Lcom/perm/kate/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    if-eqz v2, :cond_0

    .line 293
    :try_start_0
    sget-object v2, Lcom/perm/kate/RemoteControlClientCompat;->sRCCEditMetadataMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/perm/kate/RemoteControlClientCompat;->mActualRemoteControlClient:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 294
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    .line 293
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 301
    :goto_0
    new-instance v2, Lcom/perm/kate/RemoteControlClientCompat$MetadataEditorCompat;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v1, v3}, Lcom/perm/kate/RemoteControlClientCompat$MetadataEditorCompat;-><init>(Lcom/perm/kate/RemoteControlClientCompat;Ljava/lang/Object;Lcom/perm/kate/RemoteControlClientCompat$1;)V

    return-object v2

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 299
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    .local v1, "metadataEditor":Ljava/lang/Object;
    goto :goto_0
.end method

.method public final getActualRemoteControlClientObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/perm/kate/RemoteControlClientCompat;->mActualRemoteControlClient:Ljava/lang/Object;

    return-object v0
.end method

.method public setPlaybackState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 318
    sget-boolean v1, Lcom/perm/kate/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    if-eqz v1, :cond_0

    .line 320
    :try_start_0
    sget-object v1, Lcom/perm/kate/RemoteControlClientCompat;->sRCCSetPlayStateMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/perm/kate/RemoteControlClientCompat;->mActualRemoteControlClient:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :cond_0
    return-void

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setTransportControlFlags(I)V
    .locals 6
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 340
    sget-boolean v1, Lcom/perm/kate/RemoteControlClientCompat;->sHasRemoteControlAPIs:Z

    if-eqz v1, :cond_0

    .line 342
    :try_start_0
    sget-object v1, Lcom/perm/kate/RemoteControlClientCompat;->sRCCSetTransportControlFlags:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/perm/kate/RemoteControlClientCompat;->mActualRemoteControlClient:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 343
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 342
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :cond_0
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
