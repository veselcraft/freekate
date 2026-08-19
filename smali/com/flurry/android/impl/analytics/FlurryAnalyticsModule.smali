.class public Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/eq;


# static fields
.field private static a:Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;


# instance fields
.field private b:Lcom/flurry/sdk/da;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;
    .locals 2

    const-class v0, Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;

    monitor-enter v0

    .line 15
    :try_start_0
    sget-object v1, Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;->a:Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;

    if-nez v1, :cond_0

    .line 16
    new-instance v1, Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;

    invoke-direct {v1}, Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;-><init>()V

    sput-object v1, Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;->a:Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;

    .line 18
    :cond_0
    sget-object v1, Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;->a:Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a()Lcom/flurry/sdk/da;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;->b:Lcom/flurry/sdk/da;

    return-object v0
.end method

.method public a(Lcom/flurry/sdk/dg;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
    .locals 0

    .line 36
    iget-object p1, p0, Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;->b:Lcom/flurry/sdk/da;

    if-nez p1, :cond_0

    .line 37
    new-instance p1, Lcom/flurry/sdk/da;

    invoke-direct {p1}, Lcom/flurry/sdk/da;-><init>()V

    iput-object p1, p0, Lcom/flurry/android/impl/analytics/FlurryAnalyticsModule;->b:Lcom/flurry/sdk/da;

    :cond_0
    return-void
.end method

.method public b(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/flurry/sdk/dg;Landroid/content/Context;)V
    .locals 0

    return-void
.end method
