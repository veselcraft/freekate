.class public Lcom/my/target/core/models/k;
.super Lcom/my/target/core/models/b;
.source "Stat.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/my/target/core/models/b;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/my/target/core/models/k;->a:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lcom/my/target/core/models/k;->b:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/my/target/core/models/k;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/my/target/core/models/k;->b:Ljava/lang/String;

    return-object v0
.end method
