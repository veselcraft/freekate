.class public final Lcom/my/target/core/utils/g;
.super Ljava/lang/Object;
.source "LoggerConfig.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 181
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/my/target/core/utils/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    .line 182
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 1

    .prologue
    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 194
    iput-object p4, p0, Lcom/my/target/core/utils/g;->a:Ljava/lang/String;

    .line 195
    iput-object p1, p0, Lcom/my/target/core/utils/g;->b:Ljava/lang/String;

    .line 197
    const-string v0, ""

    iput-object v0, p0, Lcom/my/target/core/utils/g;->e:Ljava/lang/String;

    .line 198
    iput-object p5, p0, Lcom/my/target/core/utils/g;->f:Ljava/lang/String;

    .line 200
    iput-object p3, p0, Lcom/my/target/core/utils/g;->d:Ljava/lang/String;

    .line 201
    iput-object p2, p0, Lcom/my/target/core/utils/g;->c:Ljava/lang/String;

    .line 203
    const/4 v0, -0x1

    iput v0, p0, Lcom/my/target/core/utils/g;->g:I

    .line 212
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/my/target/core/utils/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/my/target/core/utils/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/my/target/core/utils/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/my/target/core/utils/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/my/target/core/utils/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/my/target/core/utils/g;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/my/target/core/utils/g;->g:I

    return v0
.end method
