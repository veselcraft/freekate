.class public Lcom/my/target/df;
.super Lcom/my/target/dj;
.source "OvvStat.java"


# instance fields
.field private eb:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/my/target/dj;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static L(Ljava/lang/String;)Lcom/my/target/df;
    .locals 2

    .line 9
    new-instance v0, Lcom/my/target/df;

    const-string v1, "ovvStat"

    invoke-direct {v0, v1, p0}, Lcom/my/target/df;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public ct()Z
    .locals 1

    .line 21
    iget-boolean v0, p0, Lcom/my/target/df;->eb:Z

    return v0
.end method

.method public q(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/my/target/df;->eb:Z

    return-void
.end method
