.class public abstract Lcom/airbnb/lottie/LottieCompositionFactory;
.super Ljava/lang/Object;
.source "LottieCompositionFactory.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public static fromJsonReaderSync(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 1

    const/4 v0, 0x1

    .line 242
    invoke-static {p0, p1, v0}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSyncInternal(Landroid/util/JsonReader;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method

.method private static fromJsonReaderSyncInternal(Landroid/util/JsonReader;Ljava/lang/String;Z)Lcom/airbnb/lottie/LottieResult;
    .locals 2

    .line 248
    :try_start_0
    invoke-static {p0}, Lcom/airbnb/lottie/parser/LottieCompositionParser;->parse(Landroid/util/JsonReader;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v0

    .line 249
    invoke-static {}, Lcom/airbnb/lottie/model/LottieCompositionCache;->getInstance()Lcom/airbnb/lottie/model/LottieCompositionCache;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/airbnb/lottie/model/LottieCompositionCache;->put(Ljava/lang/String;Lcom/airbnb/lottie/LottieComposition;)V

    .line 250
    new-instance p1, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {p1, v0}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_0

    .line 255
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_0
    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 252
    :try_start_1
    new-instance v0, Lcom/airbnb/lottie/LottieResult;

    invoke-direct {v0, p1}, Lcom/airbnb/lottie/LottieResult;-><init>(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_1

    .line 255
    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_1
    return-object v0

    :goto_0
    if-eqz p2, :cond_2

    invoke-static {p0}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 257
    :cond_2
    throw p1
.end method

.method public static fromJsonStringSync(Ljava/lang/String;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;
    .locals 2

    .line 226
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromJsonReaderSync(Landroid/util/JsonReader;Ljava/lang/String;)Lcom/airbnb/lottie/LottieResult;

    move-result-object p0

    return-object p0
.end method
