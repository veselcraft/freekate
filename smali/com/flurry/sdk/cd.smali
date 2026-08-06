.class public Lcom/flurry/sdk/cd;
.super Lcom/flurry/sdk/cf;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/ei$a;


# static fields
.field static a:Ljava/lang/String;

.field static b:Ljava/lang/String;

.field static c:Ljava/lang/String;


# instance fields
.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "http://data.flurry.com/aap.do"

    sput-object v0, Lcom/flurry/sdk/cd;->b:Ljava/lang/String;

    .line 33
    const-string v0, "https://data.flurry.com/aap.do"

    sput-object v0, Lcom/flurry/sdk/cd;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/flurry/sdk/cd;-><init>(Lcom/flurry/sdk/cf$a;)V

    .line 40
    return-void
.end method

.method constructor <init>(Lcom/flurry/sdk/cf$a;)V
    .locals 2

    .prologue
    .line 43
    const-string v0, "Analytics"

    const-class v1, Lcom/flurry/sdk/cd;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/flurry/sdk/cf;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v0, "AnalyticsData_"

    iput-object v0, p0, Lcom/flurry/sdk/cd;->i:Ljava/lang/String;

    .line 45
    invoke-direct {p0}, Lcom/flurry/sdk/cd;->b()V

    .line 46
    invoke-virtual {p0, p1}, Lcom/flurry/sdk/cd;->a(Lcom/flurry/sdk/cf$a;)V

    .line 47
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 50
    invoke-static {}, Lcom/flurry/sdk/eh;->a()Lcom/flurry/sdk/ei;

    move-result-object v1

    .line 52
    const-string v0, "UseHttps"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/cd;->j:Z

    .line 53
    const-string v0, "UseHttps"

    invoke-virtual {v1, v0, p0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)V

    .line 54
    sget-object v0, Lcom/flurry/sdk/cd;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, UseHttps = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/flurry/sdk/cd;->j:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v0, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 56
    const-string v0, "ReportUrl"

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    const-string v2, "ReportUrl"

    invoke-virtual {v1, v2, p0}, Lcom/flurry/sdk/ei;->a(Ljava/lang/String;Lcom/flurry/sdk/ei$a;)V

    .line 58
    invoke-direct {p0, v0}, Lcom/flurry/sdk/cd;->b(Ljava/lang/String;)V

    .line 59
    sget-object v1, Lcom/flurry/sdk/cd;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSettings, ReportUrl = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v1, v0}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 87
    if-eqz p1, :cond_0

    const-string v0, ".do"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    const/4 v0, 0x5

    sget-object v1, Lcom/flurry/sdk/cd;->d:Ljava/lang/String;

    const-string v2, "overriding analytics agent report URL without an endpoint, are you sure?"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    sput-object p1, Lcom/flurry/sdk/cd;->a:Ljava/lang/String;

    .line 92
    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/flurry/sdk/cd;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 97
    sget-object v0, Lcom/flurry/sdk/cd;->a:Ljava/lang/String;

    .line 103
    :goto_0
    return-object v0

    .line 100
    :cond_0
    iget-boolean v0, p0, Lcom/flurry/sdk/cd;->j:Z

    if-eqz v0, :cond_1

    .line 101
    sget-object v0, Lcom/flurry/sdk/cd;->c:Ljava/lang/String;

    goto :goto_0

    .line 103
    :cond_1
    sget-object v0, Lcom/flurry/sdk/cd;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 69
    const-string v0, "UseHttps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/flurry/sdk/cd;->j:Z

    .line 71
    sget-object v0, Lcom/flurry/sdk/cd;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, UseHttps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/flurry/sdk/cd;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 72
    :cond_0
    const-string v0, "ReportUrl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    check-cast p2, Ljava/lang/String;

    .line 74
    invoke-direct {p0, p2}, Lcom/flurry/sdk/cd;->b(Ljava/lang/String;)V

    .line 75
    sget-object v0, Lcom/flurry/sdk/cd;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSettingUpdate, ReportUrl = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_1
    const/4 v0, 0x6

    sget-object v1, Lcom/flurry/sdk/cd;->d:Ljava/lang/String;

    const-string v2, "onSettingUpdate internal error!"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/flurry/sdk/cd;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/flurry/sdk/cd$2;

    invoke-direct {v1, p0, p3}, Lcom/flurry/sdk/cd$2;-><init>(Lcom/flurry/sdk/cd;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 176
    invoke-super {p0, p1, p2, p3}, Lcom/flurry/sdk/cf;->a(Ljava/lang/String;Ljava/lang/String;I)V

    .line 177
    return-void
.end method

.method protected a([BLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/flurry/sdk/cd;->a()Ljava/lang/String;

    move-result-object v1

    .line 116
    const/4 v0, 0x4

    sget-object v2, Lcom/flurry/sdk/cd;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FlurryDataSender: start upload data "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/flurry/sdk/ex;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 122
    new-instance v5, Lcom/flurry/sdk/cd$1;

    invoke-direct {v5, p0}, Lcom/flurry/sdk/cd$1;-><init>(Lcom/flurry/sdk/cd;)V

    .line 152
    iget-object v6, p0, Lcom/flurry/sdk/cd;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/flurry/sdk/ce;

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/flurry/sdk/ce;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLcom/flurry/sdk/ch;)V

    invoke-interface {v6, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 154
    return-void
.end method
