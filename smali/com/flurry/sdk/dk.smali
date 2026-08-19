.class public Lcom/flurry/sdk/dk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "dk"

.field private static b:Lcom/flurry/sdk/dk;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/flurry/sdk/dk;
    .locals 2

    const-class v0, Lcom/flurry/sdk/dk;

    monitor-enter v0

    .line 25
    :try_start_0
    sget-object v1, Lcom/flurry/sdk/dk;->b:Lcom/flurry/sdk/dk;

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Lcom/flurry/sdk/dk;

    invoke-direct {v1}, Lcom/flurry/sdk/dk;-><init>()V

    sput-object v1, Lcom/flurry/sdk/dk;->b:Lcom/flurry/sdk/dk;

    .line 29
    :cond_0
    sget-object v1, Lcom/flurry/sdk/dk;->b:Lcom/flurry/sdk/dk;
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
.method public b()I
    .locals 4

    .line 33
    invoke-static {}, Lcom/flurry/sdk/dm;->a()Lcom/flurry/sdk/dn;

    move-result-object v0

    const-string v1, "AgentVersion"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/dn;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 34
    sget-object v1, Lcom/flurry/sdk/dk;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAgentVersion() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v3, v1, v2}, Lcom/flurry/sdk/el;->a(ILjava/lang/String;Ljava/lang/String;)V

    return v0
.end method
